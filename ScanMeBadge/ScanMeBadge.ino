#include <Arduino_nRF5x_lowPower.h>
#include "BLESerial.h"
#include <NFC.h>
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>

const int LED_1_EN = 4;
const int LED_1_R = 4;
const int LED_1_B = 5;
const int LED_1_G = 6;

const int LED_2_EN = 11;
const int LED_2_R = 11;
const int LED_2_B = 12;
const int LED_2_G = 13;

const int LED_3_EN = 14;
const int LED_3_R = 14;
const int LED_3_B = 15;
const int LED_3_G = 16;

const int BTN_1 = 17;
const int BTN_2 = 19;

const int SCREEN_SCL = 8;
const int SCREEN_SDA = 7;

const int ADD_ON_SCL = 28;
const int ADD_ON_SDA = 29;

const int SCREEN_WIDTH = 128;
const int SCREEN_HEIGHT = 64;

// ---

static int colorPin = LED_3_G;

long powerSaveStart = 0;

const int LED = 15;

BLESerial BLESerial(-1, -1, -1);
bool bleFirstConnect = true;

Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, -1);

void intHandler() {
   digitalWrite(LED_1_EN, HIGH);
   digitalWrite(LED_2_EN, HIGH);
   digitalWrite(LED_3_EN, HIGH);

   wakeDisplay();

   initBLE();
   initNFC();
}

void myNfcCallback() {
  digitalWrite(LED_2_G, LOW);   // turn the LED on (HIGH is the voltage level)
  delay(100);                       // wait for a second
  digitalWrite(LED_2_G, HIGH);    // turn the LED off by making the voltage LOW
  delay(100);  

  powerSaveStart = millis() + 10000; // 10 seconds
}

void initGPIO() {
   pinMode(LED_1_EN, OUTPUT);   
   //pinMode(LED_1_R, OUTPUT);
   pinMode(LED_1_G, OUTPUT);
   pinMode(LED_1_B, OUTPUT);
   
   pinMode(LED_2_EN, OUTPUT);
   //pinMode(LED_2_R, OUTPUT);
   pinMode(LED_2_G, OUTPUT);
   pinMode(LED_2_B, OUTPUT);
   
   pinMode(LED_3_EN, OUTPUT);
   //pinMode(LED_3_R, OUTPUT);
   pinMode(LED_3_G, OUTPUT);
   pinMode(LED_3_B, OUTPUT);

   pinMode(BTN_1, INPUT_PULLUP);
   pinMode(BTN_2, INPUT_PULLUP);
   
   digitalWrite(LED_1_EN, HIGH);
   digitalWrite(LED_1_G, HIGH);
   digitalWrite(LED_1_B, HIGH);
   
   digitalWrite(LED_2_EN, HIGH);
   digitalWrite(LED_2_G, HIGH);
   digitalWrite(LED_2_B, HIGH);
   
   digitalWrite(LED_3_EN, HIGH);
   digitalWrite(LED_3_G, HIGH);
   digitalWrite(LED_3_B, HIGH);
}

void initPower() {
   nRF5x_lowPower.enableDCDC();
    
   attachInterrupt(digitalPinToInterrupt(BTN_2), intHandler, FALLING);
   nRF5x_lowPower.enableWakeupByInterrupt(BTN_2, FALLING);

  // Switch on both RAM banks when in System OFF mode.   
  sd_power_ramon_set(0xFFFFFFFF);

  powerSaveStart = millis() + 10000; // 10 seconds
}

void initBLE() {
   // custom services and characteristics can be added as well
   BLESerial.setLocalName("Scan Me! badge"); 
   BLESerial.begin();
}

void initNFC() {
   // set the NFC message as first parameter and the language code as second
   NFC.setTXTmessage("Hello World!", "en");
   // start the NFC module
   NFC.start();
   NFC.registerCallback(myNfcCallback);  
}


void nfcSetText(String text) {
  NFC.stop();
  NFC.setTXTmessage(text.c_str(), "en");
  NFC.start();
}

void nfcSetUrl(String url) {
  NFC.stop();
  NFC.setURImessage(url.c_str(), NFC_URI_HTTP_WWW);
  NFC.start();
}

void sleepDisplay() {
  display.ssd1306_command(SSD1306_DISPLAYOFF);
}

void wakeDisplay() {
  display.ssd1306_command(SSD1306_DISPLAYON);
}

void initOLED() {
   Wire.setPins(SCREEN_SDA, SCREEN_SCL);
   // SSD1306_SWITCHCAPVCC = generate display voltage from 3.3V internally
   if(!display.begin(SSD1306_SWITCHCAPVCC, 0x3C)) { // Address 0x3D for 128x64
      Serial.println(F("SSD1306 allocation failed"));
      for(;;); // Don't proceed, loop forever
   }

   // Show initial display buffer contents on the screen --
   // the library initializes this with an Adafruit splash screen.
   display.display();
}

void setup() {
   initGPIO();
   
   digitalWrite(LED_3_G, LOW);
   
   initPower();
   initBLE();
   initNFC();
   initOLED();

   digitalWrite(LED_3_G, HIGH);
}

void powerSaveMarkActivity() {
  powerSaveStart = millis() + 10000;
}

void enterPowerSaving() {
   digitalWrite(LED_1_EN, LOW);
   digitalWrite(LED_2_EN, LOW);
   digitalWrite(LED_3_EN, LOW);

   sleepDisplay();
   
   NFC.stop();
   
   nRF5x_lowPower.powerMode(POWER_MODE_OFF); // or POWER_MODE_LOW_POWER
   
   __DSB(); __NOP(); 
}

void loop() {  
  // after 10 seconds, enter power saving
  if (powerSaveStart <= millis()) {      
      digitalWrite(LED_2_B, LOW);
      delay(200);
      enterPowerSaving();
      return;
  } 

  digitalWrite(LED_3_G, LOW);
  
  BLESerial.poll();
  
  digitalWrite(LED_3_G, HIGH);
  //delay(300);
  //digitalWrite(LED_3_G, LOW);
  
  BLE_handleCommand();

  digitalWrite(LED_3_G, HIGH);
}


// echo all received data back
void BLE_handleCommand() {
  if (BLESerial) {
    if (bleFirstConnect && BLESerial.write("Hello from the") > 0) {
      BLESerial.flush();
      BLESerial.write("Scan Me! badge.\n"); BLESerial.flush();
      BLESerial.write("Commands:"); BLESerial.flush();
      BLESerial.write("NFC_TEXT Message"); BLESerial.flush();
      BLESerial.write("NFC_URL URL"); BLESerial.flush();
      bleFirstConnect = false;
    }
    
    int byte;
    bool seenSpace = false;
    String command = "";
    String text = "";   
    while ((byte = BLESerial.read()) > 0) {
      
      if (!seenSpace) {
        if (byte == ' ') {
          seenSpace = true;
          
        } else {
          command += (char) byte;
        }        
      } else {
          text += (char) byte;
      }   
    }
    
    if (command != "") {
      powerSaveMarkActivity();
      
      //BLESerial.write("Command: "); BLESerial.flush();
      //BLESerial.write(command.c_str()); BLESerial.flush();
      //BLESerial.write('\n'); BLESerial.flush();
            
      //BLESerial.write("Text: "); BLESerial.flush();
      //BLESerial.write(text.c_str()); BLESerial.flush();
      //BLESerial.write('\n'); BLESerial.flush();

      if (command == "NFC_TEXT") {
        nfcSetText(text);
        BLESerial.write("Set NFC text."); BLESerial.flush();
        
      } else if (command == "NFC_URL") {
        nfcSetUrl(text);
        BLESerial.write("Set NFC URL."); BLESerial.flush();
        
      } else {
        BLESerial.write("unkown command\""); BLESerial.write(command.c_str()); BLESerial.write("\"\n"); BLESerial.flush();
      }
        
    }
    
  }
}
