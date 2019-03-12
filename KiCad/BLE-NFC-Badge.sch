EESchema Schematic File Version 4
LIBS:BLE-NFC-Badge-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	3850 3600 3050 3600
Wire Wire Line
	3850 4000 3050 4000
Wire Wire Line
	3050 4000 3050 3950
Wire Wire Line
	3050 3600 3050 3650
$Comp
L Device:Crystal_GND24 Y1
U 1 1 5C5B2CE7
P 3050 3800
F 0 "Y1" V 3000 4150 50  0000 L CNN
F 1 "32Mhz" V 3100 4150 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_2016-4Pin_2.0x1.6mm" H 3050 3800 50  0001 C CNN
F 3 "~" H 3050 3800 50  0001 C CNN
	1    3050 3800
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5C5B2E1C
P 2650 3600
F 0 "C1" V 2421 3600 50  0000 C CNN
F 1 "12pF" V 2512 3600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2650 3600 50  0001 C CNN
F 3 "~" H 2650 3600 50  0001 C CNN
	1    2650 3600
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5C5B2FD8
P 2650 4000
F 0 "C2" V 2800 4000 50  0000 C CNN
F 1 "12pF" V 2900 4000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2650 4000 50  0001 C CNN
F 3 "~" H 2650 4000 50  0001 C CNN
	1    2650 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	2750 4000 3050 4000
Connection ~ 3050 4000
Wire Wire Line
	3050 3600 2750 3600
Connection ~ 3050 3600
Wire Wire Line
	2550 3600 2400 3600
Wire Wire Line
	2400 3600 2400 3800
Wire Wire Line
	2400 4000 2550 4000
Wire Wire Line
	2850 3800 2800 3800
Connection ~ 2400 3800
Wire Wire Line
	2400 3800 2400 4000
$Comp
L power:GND #PWR0101
U 1 1 5C5B34C5
P 2400 4000
F 0 "#PWR0101" H 2400 3750 50  0001 C CNN
F 1 "GND" H 2405 3827 50  0000 C CNN
F 2 "" H 2400 4000 50  0001 C CNN
F 3 "" H 2400 4000 50  0001 C CNN
	1    2400 4000
	1    0    0    -1  
$EndComp
Connection ~ 2400 4000
$Comp
L Device:Antenna_Dipole Antenna1
U 1 1 5C5B37A4
P 6950 3200
F 0 "Antenna1" V 6954 3180 50  0000 L CNN
F 1 "NFC" V 7045 3180 50  0000 L CNN
F 2 "" H 6950 3200 50  0001 C CNN
F 3 "~" H 6950 3200 50  0001 C CNN
	1    6950 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	5650 3200 6350 3200
Wire Wire Line
	6750 3300 6700 3300
$Comp
L Device:C_Small C10
U 1 1 5C5B3CC2
P 6700 3500
F 0 "C10" H 6500 3550 50  0000 L CNN
F 1 "tbd" H 6500 3450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6700 3500 50  0001 C CNN
F 3 "~" H 6700 3500 50  0001 C CNN
	1    6700 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C9
U 1 1 5C5B3D9E
P 6700 3000
F 0 "C9" H 6500 3050 50  0000 L CNN
F 1 "tbd" H 6500 2950 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6700 3000 50  0001 C CNN
F 3 "~" H 6700 3000 50  0001 C CNN
	1    6700 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5C5B40DD
P 6700 3600
F 0 "#PWR0102" H 6700 3350 50  0001 C CNN
F 1 "GND" H 6705 3427 50  0000 C CNN
F 2 "" H 6700 3600 50  0001 C CNN
F 3 "" H 6700 3600 50  0001 C CNN
	1    6700 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5C5B41BB
P 6700 2900
F 0 "#PWR0103" H 6700 2650 50  0001 C CNN
F 1 "GND" H 6705 2727 50  0000 C CNN
F 2 "" H 6700 2900 50  0001 C CNN
F 3 "" H 6700 2900 50  0001 C CNN
	1    6700 2900
	-1   0    0    1   
$EndComp
Wire Wire Line
	6700 3100 6700 3200
Connection ~ 6700 3200
Wire Wire Line
	6700 3200 6750 3200
Wire Wire Line
	6700 3400 6700 3300
Connection ~ 6700 3300
Wire Wire Line
	6700 3300 6350 3300
$Comp
L Device:L_Small L1
U 1 1 5C5B4B1C
P 3300 3100
F 0 "L1" V 3485 3100 50  0000 C CNN
F 1 "3.9nH" V 3394 3100 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric" H 3300 3100 50  0001 C CNN
F 3 "~" H 3300 3100 50  0001 C CNN
	1    3300 3100
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5C5B4D0B
P 3050 3200
F 0 "C3" H 2900 3200 50  0000 C CNN
F 1 "0.8pF" H 3250 3200 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3050 3200 50  0001 C CNN
F 3 "~" H 3050 3200 50  0001 C CNN
	1    3050 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5C5B51FC
P 3050 3300
F 0 "#PWR0104" H 3050 3050 50  0001 C CNN
F 1 "GND" H 3200 3200 50  0000 C CNN
F 2 "" H 3050 3300 50  0001 C CNN
F 3 "" H 3050 3300 50  0001 C CNN
	1    3050 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 3100 3050 3100
Wire Wire Line
	3400 3100 3850 3100
$Comp
L Device:C_Small C4
U 1 1 5C5B595C
P 3150 2300
F 0 "C4" H 2950 2350 50  0000 L CNN
F 1 "100pF" H 2850 2250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3150 2300 50  0001 C CNN
F 3 "~" H 3150 2300 50  0001 C CNN
	1    3150 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5C5B5963
P 3150 2500
F 0 "#PWR0105" H 3150 2250 50  0001 C CNN
F 1 "GND" H 3155 2327 50  0000 C CNN
F 2 "" H 3150 2500 50  0001 C CNN
F 3 "" H 3150 2500 50  0001 C CNN
	1    3150 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5C5B5B64
P 3450 2300
F 0 "C5" H 3250 2350 50  0000 L CNN
F 1 "nc" H 3250 2250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3450 2300 50  0001 C CNN
F 3 "~" H 3450 2300 50  0001 C CNN
	1    3450 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 2100 4350 2000
Wire Wire Line
	4450 2100 4450 1950
$Comp
L Device:C_Small C6
U 1 1 5C5B68F8
P 3800 2300
F 0 "C6" H 3650 2500 50  0000 L CNN
F 1 "100nF" H 3550 2400 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3800 2300 50  0001 C CNN
F 3 "~" H 3800 2300 50  0001 C CNN
	1    3800 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 2400 3150 2450
Wire Wire Line
	3150 2450 3450 2450
Wire Wire Line
	3450 2450 3450 2400
Connection ~ 3150 2450
Wire Wire Line
	3150 2450 3150 2500
Wire Wire Line
	3800 2450 3800 2400
Connection ~ 3450 2450
Wire Wire Line
	3800 2200 3800 2050
Wire Wire Line
	3800 2050 4250 2050
Wire Wire Line
	4250 2050 4250 2100
Wire Wire Line
	3450 2000 3450 2200
Wire Wire Line
	3150 1950 3150 2200
$Comp
L power:GND #PWR0106
U 1 1 5C5B8AFF
P 5650 2000
F 0 "#PWR0106" H 5650 1750 50  0001 C CNN
F 1 "GND" H 5655 1827 50  0000 C CNN
F 2 "" H 5650 2000 50  0001 C CNN
F 3 "" H 5650 2000 50  0001 C CNN
	1    5650 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Small L3
U 1 1 5C5B9035
P 4950 1950
F 0 "L3" H 4998 1996 50  0000 L CNN
F 1 "10uH" H 4998 1905 50  0000 L CNN
F 2 "Inductor_SMD:L_0805_2012Metric" H 4950 1950 50  0001 C CNN
F 3 "~" H 4950 1950 50  0001 C CNN
	1    4950 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Small L2
U 1 1 5C5B95E9
P 4950 1650
F 0 "L2" H 4998 1696 50  0000 L CNN
F 1 "15nH" H 4998 1605 50  0000 L CNN
F 2 "Inductor_SMD:L_0805_2012Metric" H 4950 1650 50  0001 C CNN
F 3 "~" H 4950 1650 50  0001 C CNN
	1    4950 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 2050 4950 2100
Wire Wire Line
	4950 1850 4950 1750
Wire Wire Line
	4950 1550 4550 1550
Wire Wire Line
	4550 1550 4550 2100
$Comp
L Device:C_Small C7
U 1 1 5C5BACFB
P 5350 1800
F 0 "C7" H 5500 1900 50  0000 C CNN
F 1 "1.0uF" H 5550 1800 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5350 1800 50  0001 C CNN
F 3 "~" H 5350 1800 50  0001 C CNN
	1    5350 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 1700 5350 1550
Wire Wire Line
	5350 1550 4950 1550
Connection ~ 4950 1550
$Comp
L power:GND #PWR0107
U 1 1 5C5BBB57
P 4750 5600
F 0 "#PWR0107" H 4750 5350 50  0001 C CNN
F 1 "GND" H 4755 5427 50  0000 C CNN
F 2 "" H 4750 5600 50  0001 C CNN
F 3 "" H 4750 5600 50  0001 C CNN
	1    4750 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 5600 4750 5500
$Comp
L Device:C_Small C8
U 1 1 5C5BCABB
P 5850 1700
F 0 "C8" H 6000 1800 50  0000 C CNN
F 1 "4.7uF" H 6050 1700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5850 1700 50  0001 C CNN
F 3 "~" H 5850 1700 50  0001 C CNN
	1    5850 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 2000 5350 2000
Wire Wire Line
	5350 2000 5350 1900
Connection ~ 5650 2000
Wire Wire Line
	4750 1400 4750 2100
Wire Wire Line
	5900 2500 6700 2500
Wire Wire Line
	5900 2100 6700 2100
Wire Wire Line
	6700 2100 6700 2150
Wire Wire Line
	6700 2500 6700 2450
$Comp
L Device:Crystal Y2
U 1 1 5C5BEE34
P 6700 2300
F 0 "Y2" V 6750 2500 50  0000 L CNN
F 1 "32.768 kHz" V 6650 2500 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_3215-2Pin_3.2x1.5mm" H 6700 2300 50  0001 C CNN
F 3 "~" H 6700 2300 50  0001 C CNN
	1    6700 2300
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C12
U 1 1 5C5BEE3B
P 7100 2500
F 0 "C12" V 6950 2500 50  0000 C CNN
F 1 "12pF" V 6850 2500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7100 2500 50  0001 C CNN
F 3 "~" H 7100 2500 50  0001 C CNN
	1    7100 2500
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C11
U 1 1 5C5BEE42
P 7100 2100
F 0 "C11" V 7150 1950 50  0000 C CNN
F 1 "12pF" V 7000 1950 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7100 2100 50  0001 C CNN
F 3 "~" H 7100 2100 50  0001 C CNN
	1    7100 2100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7000 2100 6700 2100
Connection ~ 6700 2100
Wire Wire Line
	6700 2500 7000 2500
Connection ~ 6700 2500
Wire Wire Line
	7200 2500 7350 2500
Wire Wire Line
	7350 2100 7200 2100
$Comp
L power:GND #PWR0108
U 1 1 5C5BEE53
P 7350 2550
F 0 "#PWR0108" H 7350 2300 50  0001 C CNN
F 1 "GND" H 7355 2377 50  0000 C CNN
F 2 "" H 7350 2550 50  0001 C CNN
F 3 "" H 7350 2550 50  0001 C CNN
	1    7350 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 2400 5900 2400
Wire Wire Line
	5900 2400 5900 2500
Wire Wire Line
	5900 2100 5900 2300
Wire Wire Line
	5900 2300 5650 2300
Wire Wire Line
	7350 2500 7350 2550
Connection ~ 7350 2500
Wire Wire Line
	3450 2450 3800 2450
Wire Wire Line
	3450 2000 4350 2000
Wire Wire Line
	3150 1950 4450 1950
$Comp
L Device:C_Small C13
U 1 1 5C5CA62D
P 6300 1700
F 0 "C13" H 6450 1800 50  0000 C CNN
F 1 "100nF" H 6500 1700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6300 1700 50  0001 C CNN
F 3 "~" H 6300 1700 50  0001 C CNN
	1    6300 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C14
U 1 1 5C5CD82E
P 6750 1700
F 0 "C14" H 6900 1800 50  0000 C CNN
F 1 "100nF" H 6950 1700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6750 1700 50  0001 C CNN
F 3 "~" H 6750 1700 50  0001 C CNN
	1    6750 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 1400 5850 1400
Wire Wire Line
	5850 1800 5850 1900
Wire Wire Line
	6750 1800 6750 1900
Wire Wire Line
	6750 1900 6300 1900
Wire Wire Line
	5650 2000 6300 2000
Wire Wire Line
	6300 1800 6300 1900
Connection ~ 6300 1900
Wire Wire Line
	6300 1900 5850 1900
Wire Wire Line
	6300 2000 6300 1900
Wire Wire Line
	6300 1600 6300 1400
Wire Wire Line
	6750 1600 6750 1400
Wire Wire Line
	6750 1400 6300 1400
Connection ~ 6300 1400
Wire Wire Line
	5850 1600 5850 1400
Connection ~ 5850 1400
Wire Wire Line
	5850 1400 6300 1400
NoConn ~ 5650 4300
Text GLabel 6000 4100 2    50   Input ~ 0
SWO
Wire Wire Line
	6000 4100 5650 4100
Text GLabel 3300 4500 0    50   Input ~ 0
SWDCLK
Wire Wire Line
	3850 4500 3300 4500
Text GLabel 3300 4600 0    50   Input ~ 0
SWDIO
Wire Wire Line
	3850 4600 3300 4600
$Comp
L power:VCC #PWR02
U 1 1 5C5EB290
P 4750 1400
F 0 "#PWR02" H 4750 1250 50  0001 C CNN
F 1 "VCC" H 4767 1573 50  0000 C CNN
F 2 "" H 4750 1400 50  0001 C CNN
F 3 "" H 4750 1400 50  0001 C CNN
	1    4750 1400
	1    0    0    -1  
$EndComp
Text GLabel 3300 4400 0    50   Input Italic 0
RST
NoConn ~ 5650 4400
NoConn ~ 5650 4500
NoConn ~ 5650 4600
NoConn ~ 5650 4700
NoConn ~ 5650 4800
NoConn ~ 5650 4900
NoConn ~ 5650 5200
NoConn ~ 5650 5300
NoConn ~ 5650 2500
$Comp
L Connector:Conn_01x06_Male J1
U 1 1 5C60A4BA
P 2750 5300
F 0 "J1" H 2650 5500 50  0000 R CNN
F 1 "Prog" H 2700 5400 50  0000 R CNN
F 2 "lib:PinHeader_1x06_P2.00mm_Pad" H 2750 5300 50  0001 C CNN
F 3 "~" H 2750 5300 50  0001 C CNN
	1    2750 5300
	1    0    0    -1  
$EndComp
Text GLabel 3250 5500 2    50   Input ~ 0
SWO
Text GLabel 3250 5400 2    50   Input ~ 0
SWDCLK
Text GLabel 3250 5300 2    50   Input ~ 0
SWDIO
$Comp
L power:VCC #PWR03
U 1 1 5C61585E
P 3250 5050
F 0 "#PWR03" H 3250 4900 50  0001 C CNN
F 1 "VCC" H 3250 5200 50  0000 C CNN
F 2 "" H 3250 5050 50  0001 C CNN
F 3 "" H 3250 5050 50  0001 C CNN
	1    3250 5050
	1    0    0    -1  
$EndComp
Text GLabel 3250 5200 2    50   Input Italic 0
RST
$Comp
L power:GND #PWR04
U 1 1 5C618A38
P 3250 5650
F 0 "#PWR04" H 3250 5400 50  0001 C CNN
F 1 "GND" H 3255 5477 50  0000 C CNN
F 2 "" H 3250 5650 50  0001 C CNN
F 3 "" H 3250 5650 50  0001 C CNN
	1    3250 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 5100 3250 5100
Wire Wire Line
	3250 5100 3250 5050
Wire Wire Line
	3250 5200 2950 5200
Wire Wire Line
	2950 5300 3250 5300
Wire Wire Line
	3250 5400 2950 5400
Wire Wire Line
	2950 5500 3250 5500
Wire Wire Line
	2950 5600 3250 5600
Wire Wire Line
	3250 5650 3250 5600
Connection ~ 4750 1400
$Comp
L Device:Battery_Cell BT1
U 1 1 5C62868F
P 7200 1700
F 0 "BT1" H 7318 1796 50  0000 L CNN
F 1 "CR2032" H 7318 1705 50  0000 L CNN
F 2 "Battery:BatteryHolder_Keystone_1060_1x2032" V 7200 1760 50  0001 C CNN
F 3 "~" V 7200 1760 50  0001 C CNN
	1    7200 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 1800 7200 1900
Wire Wire Line
	7200 1900 6750 1900
Connection ~ 6750 1900
Wire Wire Line
	7200 1500 7200 1400
Wire Wire Line
	7200 1400 6950 1400
Connection ~ 6750 1400
$Comp
L power:+BATT #PWR05
U 1 1 5C62CD2C
P 7200 1400
F 0 "#PWR05" H 7200 1250 50  0001 C CNN
F 1 "+BATT" H 7215 1573 50  0000 C CNN
F 2 "" H 7200 1400 50  0001 C CNN
F 3 "" H 7200 1400 50  0001 C CNN
	1    7200 1400
	1    0    0    -1  
$EndComp
Connection ~ 7200 1400
Wire Wire Line
	2800 4100 2800 3800
Connection ~ 2800 3800
Wire Wire Line
	2800 3800 2400 3800
Wire Wire Line
	7350 2100 7350 2500
Wire Wire Line
	3300 4400 3850 4400
Wire Wire Line
	3250 3800 3300 3800
Wire Wire Line
	2800 4100 3300 4100
Wire Wire Line
	3300 3800 3300 4100
$Comp
L Device:Antenna_Shield Antenna2
U 1 1 5C643A55
P 2200 2800
F 0 "Antenna2" H 2341 2841 50  0000 L CNN
F 1 "BLE" H 2341 2750 50  0000 L CNN
F 2 "RF_Antenna:Texas_SWRA117D_2.4GHz_Right" H 2200 2900 50  0001 C CNN
F 3 "~" H 2200 2900 50  0001 C CNN
	1    2200 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R1
U 1 1 5C648484
P 2700 3100
F 0 "R1" V 2800 3100 50  0000 C CNN
F 1 "0R" V 2600 3100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 2700 3100 50  0001 C CNN
F 3 "~" H 2700 3100 50  0001 C CNN
	1    2700 3100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2800 3100 3050 3100
Connection ~ 3050 3100
$Comp
L Device:C_Small C15
U 1 1 5C64A8AE
P 2350 3200
F 0 "C15" H 2100 3200 50  0000 L CNN
F 1 "tbd" H 2100 3100 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2350 3200 50  0001 C CNN
F 3 "~" H 2350 3200 50  0001 C CNN
	1    2350 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 3300 2500 3300
Connection ~ 3050 3300
Wire Wire Line
	2350 3100 2600 3100
Wire Wire Line
	2350 3100 2200 3100
Wire Wire Line
	2200 3100 2200 3000
Connection ~ 2350 3100
Wire Wire Line
	2300 3000 2500 3000
Wire Wire Line
	2500 3000 2500 3300
Connection ~ 2500 3300
Wire Wire Line
	2500 3300 2350 3300
$Comp
L Device:LED_ARGB D2
U 1 1 5C61F1F3
P 8650 3500
F 0 "D2" H 8650 3997 50  0000 C CNN
F 1 "LED_ARGB" H 8650 3906 50  0000 C CNN
F 2 "LED_SMD:LED_Kingbright_AAA3528ESGCT" H 8650 3450 50  0001 C CNN
F 3 "~" H 8650 3450 50  0001 C CNN
	1    8650 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_ARGB D1
U 1 1 5C61F92C
P 8650 2600
F 0 "D1" H 8650 3097 50  0000 C CNN
F 1 "LED_ARGB" H 8650 3006 50  0000 C CNN
F 2 "LED_SMD:LED_Kingbright_AAA3528ESGCT" H 8650 2550 50  0001 C CNN
F 3 "~" H 8650 2550 50  0001 C CNN
	1    8650 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_ARGB D3
U 1 1 5C61F9F8
P 8650 4400
F 0 "D3" H 8650 4897 50  0000 C CNN
F 1 "LED_ARGB" H 8650 4806 50  0000 C CNN
F 2 "LED_SMD:LED_Kingbright_AAA3528ESGCT" H 8650 4350 50  0001 C CNN
F 3 "~" H 8650 4350 50  0001 C CNN
	1    8650 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C16
U 1 1 5C620221
P 6350 3000
F 0 "C16" H 6150 3050 50  0000 L CNN
F 1 "tbd" H 6150 2950 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6350 3000 50  0001 C CNN
F 3 "~" H 6350 3000 50  0001 C CNN
	1    6350 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5C620228
P 6350 2900
F 0 "#PWR01" H 6350 2650 50  0001 C CNN
F 1 "GND" H 6355 2727 50  0000 C CNN
F 2 "" H 6350 2900 50  0001 C CNN
F 3 "" H 6350 2900 50  0001 C CNN
	1    6350 2900
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C17
U 1 1 5C622C4D
P 6350 3500
F 0 "C17" H 6150 3550 50  0000 L CNN
F 1 "tbd" H 6150 3450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6350 3500 50  0001 C CNN
F 3 "~" H 6350 3500 50  0001 C CNN
	1    6350 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5C622C54
P 6350 3600
F 0 "#PWR06" H 6350 3350 50  0001 C CNN
F 1 "GND" H 6355 3427 50  0000 C CNN
F 2 "" H 6350 3600 50  0001 C CNN
F 3 "" H 6350 3600 50  0001 C CNN
	1    6350 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 3400 6350 3300
Wire Wire Line
	6350 3100 6350 3200
Connection ~ 6350 3200
Wire Wire Line
	6350 3200 6700 3200
$Comp
L Device:R_Small R2
U 1 1 5C628BC4
P 8250 2400
F 0 "R2" V 8150 2500 50  0000 C CNN
F 1 "0R" V 8150 2400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 8250 2400 50  0001 C CNN
F 3 "~" H 8250 2400 50  0001 C CNN
	1    8250 2400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5C62B788
P 8250 2600
F 0 "R3" V 8150 2700 50  0000 C CNN
F 1 "0R" V 8150 2600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 8250 2600 50  0001 C CNN
F 3 "~" H 8250 2600 50  0001 C CNN
	1    8250 2600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R4
U 1 1 5C62E48B
P 8250 2800
F 0 "R4" V 8150 2900 50  0000 C CNN
F 1 "0R" V 8150 2800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 8250 2800 50  0001 C CNN
F 3 "~" H 8250 2800 50  0001 C CNN
	1    8250 2800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R5
U 1 1 5C6311F5
P 8250 3300
F 0 "R5" V 8150 3400 50  0000 C CNN
F 1 "0R" V 8150 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 8250 3300 50  0001 C CNN
F 3 "~" H 8250 3300 50  0001 C CNN
	1    8250 3300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R6
U 1 1 5C6311FC
P 8250 3500
F 0 "R6" V 8150 3600 50  0000 C CNN
F 1 "0R" V 8150 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 8250 3500 50  0001 C CNN
F 3 "~" H 8250 3500 50  0001 C CNN
	1    8250 3500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R7
U 1 1 5C631203
P 8250 3700
F 0 "R7" V 8150 3800 50  0000 C CNN
F 1 "0R" V 8150 3700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 8250 3700 50  0001 C CNN
F 3 "~" H 8250 3700 50  0001 C CNN
	1    8250 3700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R8
U 1 1 5C633E0E
P 8250 4200
F 0 "R8" V 8150 4300 50  0000 C CNN
F 1 "0R" V 8150 4200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 8250 4200 50  0001 C CNN
F 3 "~" H 8250 4200 50  0001 C CNN
	1    8250 4200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R9
U 1 1 5C633E15
P 8250 4400
F 0 "R9" V 8150 4500 50  0000 C CNN
F 1 "0R" V 8150 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 8250 4400 50  0001 C CNN
F 3 "~" H 8250 4400 50  0001 C CNN
	1    8250 4400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R10
U 1 1 5C633E1C
P 8250 4600
F 0 "R10" V 8150 4700 50  0000 C CNN
F 1 "0R" V 8150 4600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 8250 4600 50  0001 C CNN
F 3 "~" H 8250 4600 50  0001 C CNN
	1    8250 4600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8350 2400 8450 2400
Wire Wire Line
	8350 2600 8450 2600
Wire Wire Line
	8350 2800 8450 2800
Wire Wire Line
	8350 3300 8450 3300
Wire Wire Line
	8350 3500 8450 3500
Wire Wire Line
	8350 3700 8450 3700
Wire Wire Line
	8350 4200 8450 4200
Wire Wire Line
	8350 4400 8450 4400
Wire Wire Line
	8350 4600 8450 4600
$Comp
L power:VCC #PWR0109
U 1 1 5C6518A1
P 9050 2350
F 0 "#PWR0109" H 9050 2200 50  0001 C CNN
F 1 "VCC" H 9067 2523 50  0000 C CNN
F 2 "" H 9050 2350 50  0001 C CNN
F 3 "" H 9050 2350 50  0001 C CNN
	1    9050 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 2600 9050 2600
Wire Wire Line
	9050 2600 9050 2350
$Comp
L power:VCC #PWR0110
U 1 1 5C65804C
P 9050 3250
F 0 "#PWR0110" H 9050 3100 50  0001 C CNN
F 1 "VCC" H 9067 3423 50  0000 C CNN
F 2 "" H 9050 3250 50  0001 C CNN
F 3 "" H 9050 3250 50  0001 C CNN
	1    9050 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 3500 9050 3500
Wire Wire Line
	9050 3500 9050 3250
$Comp
L power:VCC #PWR0111
U 1 1 5C65B634
P 9050 4150
F 0 "#PWR0111" H 9050 4000 50  0001 C CNN
F 1 "VCC" H 9067 4323 50  0000 C CNN
F 2 "" H 9050 4150 50  0001 C CNN
F 3 "" H 9050 4150 50  0001 C CNN
	1    9050 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 4400 9050 4400
Wire Wire Line
	9050 4400 9050 4150
Connection ~ 6350 3300
Wire Wire Line
	6350 3300 5650 3300
$Comp
L Switch:SW_Push SW2
U 1 1 5C65FBB2
P 8650 1600
F 0 "SW2" H 8650 1885 50  0000 C CNN
F 1 "SW_Push" H 8650 1794 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3342" H 8650 1800 50  0001 C CNN
F 3 "" H 8650 1800 50  0001 C CNN
	1    8650 1600
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5C65FECA
P 8650 1050
F 0 "SW1" H 8650 1335 50  0000 C CNN
F 1 "SW_Push" H 8650 1244 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3342" H 8650 1250 50  0001 C CNN
F 3 "" H 8650 1250 50  0001 C CNN
	1    8650 1050
	1    0    0    -1  
$EndComp
$Comp
L badgelife_shitty_connector:Badgelife_shitty_connector X1
U 1 1 5C660EBD
P 6800 5850
F 0 "X1" H 6900 5413 60  0000 C CNN
F 1 "Badgelife_shitty_connector" H 6900 5519 60  0000 C CNN
F 2 "lib:Badgelife-Shitty-2x2" H 6800 5850 60  0001 C CNN
F 3 "" H 6800 5850 60  0001 C CNN
	1    6800 5850
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR0112
U 1 1 5C661B8B
P 7300 6000
F 0 "#PWR0112" H 7300 5850 50  0001 C CNN
F 1 "VCC" H 7300 6150 50  0000 C CNN
F 2 "" H 7300 6000 50  0001 C CNN
F 3 "" H 7300 6000 50  0001 C CNN
	1    7300 6000
	-1   0    0    1   
$EndComp
Wire Wire Line
	7300 6000 7300 5950
Wire Wire Line
	7300 5950 7150 5950
$Comp
L power:GND #PWR0113
U 1 1 5C6818E6
P 7400 5750
F 0 "#PWR0113" H 7400 5500 50  0001 C CNN
F 1 "GND" H 7405 5577 50  0000 C CNN
F 2 "" H 7400 5750 50  0001 C CNN
F 3 "" H 7400 5750 50  0001 C CNN
	1    7400 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 5750 7150 5750
Wire Wire Line
	5650 5000 6000 5000
Wire Wire Line
	6000 5000 6000 5750
Wire Wire Line
	6000 5750 6250 5750
Wire Wire Line
	6250 5950 5900 5950
Wire Wire Line
	5900 5950 5900 5100
Wire Wire Line
	5900 5100 5650 5100
Text GLabel 5900 2700 2    50   Input ~ 0
L1R
Text GLabel 5900 2800 2    50   Input ~ 0
L1G
Text GLabel 5900 2900 2    50   Input ~ 0
L1B
Wire Wire Line
	5900 2700 5650 2700
Wire Wire Line
	5900 2800 5650 2800
Wire Wire Line
	5900 2900 5650 2900
Text GLabel 7950 2400 0    50   Input ~ 0
L1R
Text GLabel 7950 2600 0    50   Input ~ 0
L1G
Text GLabel 7950 2800 0    50   Input ~ 0
L1B
Wire Wire Line
	7950 2400 8150 2400
Wire Wire Line
	8150 2600 7950 2600
Wire Wire Line
	8150 2800 7950 2800
NoConn ~ 5650 2600
Text GLabel 5900 3400 2    50   Input ~ 0
L2R
Text GLabel 5900 3500 2    50   Input ~ 0
L2G
Text GLabel 5900 3600 2    50   Input ~ 0
L2B
Wire Wire Line
	5900 3400 5650 3400
Wire Wire Line
	5900 3500 5650 3500
Wire Wire Line
	5900 3600 5650 3600
Text GLabel 5900 3700 2    50   Input ~ 0
L3R
Text GLabel 5900 3800 2    50   Input ~ 0
L3G
Text GLabel 5900 3900 2    50   Input ~ 0
L3B
Wire Wire Line
	5900 3700 5650 3700
Wire Wire Line
	5900 3800 5650 3800
Wire Wire Line
	5900 3900 5650 3900
$Comp
L MCU_Nordic:nRF52832-QFxx U1
U 1 1 5C5B2422
P 4750 3800
F 0 "U1" H 4050 2150 50  0000 C CNN
F 1 "nRF52832-QFxx" H 5200 2150 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-48-1EP_6x6mm_P0.4mm_EP4.66x4.66mm" H 4750 1700 50  0001 C CNN
F 3 "http://infocenter.nordicsemi.com/pdf/nRF52832_PS_v1.4.pdf" H 4250 4000 50  0001 C CNN
	1    4750 3800
	1    0    0    -1  
$EndComp
Text GLabel 7950 3300 0    50   Input ~ 0
L2R
Text GLabel 7950 3500 0    50   Input ~ 0
L2G
Text GLabel 7950 3700 0    50   Input ~ 0
L2B
Wire Wire Line
	7950 3300 8150 3300
Wire Wire Line
	8150 3500 7950 3500
Wire Wire Line
	8150 3700 7950 3700
Text GLabel 7950 4200 0    50   Input ~ 0
L3R
Text GLabel 7950 4400 0    50   Input ~ 0
L3G
Text GLabel 7950 4600 0    50   Input ~ 0
L3B
Wire Wire Line
	7950 4200 8150 4200
Wire Wire Line
	8150 4400 7950 4400
Wire Wire Line
	8150 4600 7950 4600
Text GLabel 5750 3100 2    50   Input ~ 0
ScrnSCL
Text GLabel 5750 3000 2    50   Input ~ 0
ScrnSDA
Wire Wire Line
	5750 3000 5650 3000
Wire Wire Line
	5750 3100 5650 3100
Text GLabel 8200 5650 0    50   Input ~ 0
ScrnSCL
Text GLabel 8200 5550 0    50   Input ~ 0
ScrnSDA
$Comp
L Connector:Conn_01x04_Male J2
U 1 1 5C7125BE
P 8750 5750
F 0 "J2" H 8723 5630 50  0000 R CNN
F 1 "Conn_01x04_Male" H 8723 5721 50  0000 R CNN
F 2 "lib:PinHeader_1x04_P2.54mm_Pad" H 8750 5750 50  0001 C CNN
F 3 "~" H 8750 5750 50  0001 C CNN
	1    8750 5750
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR08
U 1 1 5C72B295
P 8500 5150
F 0 "#PWR08" H 8500 5000 50  0001 C CNN
F 1 "VCC" H 8517 5323 50  0000 C CNN
F 2 "" H 8500 5150 50  0001 C CNN
F 3 "" H 8500 5150 50  0001 C CNN
	1    8500 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 5150 8500 5750
Wire Wire Line
	8500 5750 8550 5750
$Comp
L power:GND #PWR07
U 1 1 5C7B4AD9
P 8350 5850
F 0 "#PWR07" H 8350 5600 50  0001 C CNN
F 1 "GND" H 8355 5677 50  0000 C CNN
F 2 "" H 8350 5850 50  0001 C CNN
F 3 "" H 8350 5850 50  0001 C CNN
	1    8350 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 5850 8350 5850
Text GLabel 5900 4000 2    50   Input ~ 0
BTN1
Text GLabel 5900 4200 2    50   Input ~ 0
BTN2
Wire Wire Line
	5900 4000 5650 4000
Wire Wire Line
	5900 4200 5650 4200
Text GLabel 8200 1050 0    50   Input ~ 0
BTN1
Text GLabel 8200 1600 0    50   Input ~ 0
BTN2
Wire Wire Line
	8200 1050 8450 1050
Wire Wire Line
	8200 1600 8450 1600
$Comp
L power:GND #PWR09
U 1 1 5C803BC9
P 9100 1050
F 0 "#PWR09" H 9100 800 50  0001 C CNN
F 1 "GND" H 9105 877 50  0000 C CNN
F 2 "" H 9100 1050 50  0001 C CNN
F 3 "" H 9100 1050 50  0001 C CNN
	1    9100 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 1050 8850 1050
$Comp
L power:GND #PWR010
U 1 1 5C80AEBE
P 9100 1600
F 0 "#PWR010" H 9100 1350 50  0001 C CNN
F 1 "GND" H 9105 1427 50  0000 C CNN
F 2 "" H 9100 1600 50  0001 C CNN
F 3 "" H 9100 1600 50  0001 C CNN
	1    9100 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 1600 8850 1600
Wire Wire Line
	8200 5650 8550 5650
Wire Wire Line
	8200 5550 8550 5550
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5C641427
P 6950 1200
F 0 "#FLG0101" H 6950 1275 50  0001 C CNN
F 1 "PWR_FLAG" H 6950 1374 50  0000 C CNN
F 2 "" H 6950 1200 50  0001 C CNN
F 3 "~" H 6950 1200 50  0001 C CNN
	1    6950 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 1200 6950 1400
Connection ~ 6950 1400
Wire Wire Line
	6950 1400 6750 1400
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5C6482A4
P 7600 1900
F 0 "#FLG0102" H 7600 1975 50  0001 C CNN
F 1 "PWR_FLAG" V 7600 2028 50  0000 L CNN
F 2 "" H 7600 1900 50  0001 C CNN
F 3 "~" H 7600 1900 50  0001 C CNN
	1    7600 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	7600 1900 7200 1900
Connection ~ 7200 1900
$EndSCHEMATC
