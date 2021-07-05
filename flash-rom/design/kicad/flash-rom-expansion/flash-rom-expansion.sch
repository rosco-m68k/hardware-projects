EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "rosco_m68k r1.x FLASH ROM Adapter"
Date "2021-06-27"
Rev "0"
Comp "The Really Old-School Company Ltd"
Comment1 "Copyright (c)2021"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Memory_Flash:SST39SF040 U2
U 1 1 60D7C0CF
P 5300 3200
F 0 "U2" H 5300 4681 50  0000 C CNN
F 1 "SST39SF040" H 5300 4590 50  0000 C CNN
F 2 "Package_DIP:DIP-32_W15.24mm_LongPads" H 5300 3500 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/25022B.pdf" H 5300 3500 50  0001 C CNN
	1    5300 3200
	1    0    0    -1  
$EndComp
$Comp
L Memory_Flash:SST39SF040 U3
U 1 1 60D7DDEE
P 7700 3200
F 0 "U3" H 7700 4681 50  0000 C CNN
F 1 "SST39SF040" H 7700 4590 50  0000 C CNN
F 2 "Package_DIP:DIP-32_W15.24mm_LongPads" H 7700 3500 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/25022B.pdf" H 7700 3500 50  0001 C CNN
	1    7700 3200
	1    0    0    -1  
$EndComp
Text GLabel 2200 2100 0    50   Input ~ 0
A1
Text GLabel 2200 2200 0    50   Input ~ 0
A2
Text GLabel 2200 2300 0    50   Input ~ 0
A3
Text GLabel 2200 2400 0    50   Input ~ 0
A4
Text GLabel 2200 2500 0    50   Input ~ 0
A5
Text GLabel 2200 2600 0    50   Input ~ 0
A6
Text GLabel 2200 2700 0    50   Input ~ 0
A7
Text GLabel 2200 2800 0    50   Input ~ 0
A8
Text GLabel 2200 2900 0    50   Input ~ 0
A9
Text GLabel 2200 3000 0    50   Input ~ 0
A10
Text GLabel 2200 3100 0    50   Input ~ 0
A11
Text GLabel 2200 3200 0    50   Input ~ 0
A12
Text GLabel 2200 3300 0    50   Input ~ 0
A13
Text GLabel 2200 3400 0    50   Input ~ 0
A14
Text GLabel 2200 3500 0    50   Input ~ 0
A15
Text GLabel 2200 3600 0    50   Input ~ 0
A16
Text GLabel 2200 3700 0    50   Input ~ 0
A17
Text GLabel 2200 3800 0    50   Input ~ 0
A18
Text GLabel 2200 3900 0    50   Input ~ 0
A19
Text GLabel 3200 2100 2    50   BiDi ~ 0
D0
Text GLabel 3200 2200 2    50   BiDi ~ 0
D1
Text GLabel 3200 2300 2    50   BiDi ~ 0
D2
Text GLabel 3200 2400 2    50   BiDi ~ 0
D3
Text GLabel 3200 2500 2    50   BiDi ~ 0
D4
Text GLabel 3200 2600 2    50   BiDi ~ 0
D5
Text GLabel 3200 2700 2    50   BiDi ~ 0
D6
Text GLabel 3200 2800 2    50   BiDi ~ 0
D7
Text GLabel 3200 3100 2    50   Input ~ 0
RAMCE
Text GLabel 3200 3200 2    50   Input ~ 0
RAMOE
$Comp
L Memory_RAM:AS6C4008-55PCN U1
U 1 1 60D7BD24
P 2700 3000
F 0 "U1" H 2700 4281 50  0000 C CNN
F 1 "AS6C4008-55PCN" H 2700 4190 50  0000 C CNN
F 2 "Package_DIP:DIP-32_W15.24mm_LongPads" H 2700 3100 50  0001 C CNN
F 3 "https://www.alliancememory.com/wp-content/uploads/pdf/AS6C4008.pdf" H 2700 3100 50  0001 C CNN
	1    2700 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 1900 5300 1900
Wire Wire Line
	5300 1900 7700 1900
Connection ~ 5300 1900
Wire Wire Line
	1950 1900 1950 1450
Wire Wire Line
	1950 1900 2700 1900
Connection ~ 2700 1900
Text GLabel 1950 1450 1    50   UnSpc ~ 0
VCC
Wire Wire Line
	2700 4100 2700 4400
Wire Wire Line
	2700 4400 5300 4400
Wire Wire Line
	5300 4400 7700 4400
Connection ~ 5300 4400
Wire Wire Line
	7700 4400 8350 4400
Connection ~ 7700 4400
Text GLabel 4700 2000 0    50   Input ~ 0
A1
Text GLabel 4700 2100 0    50   Input ~ 0
A2
Text GLabel 4700 2200 0    50   Input ~ 0
A3
Text GLabel 4700 2300 0    50   Input ~ 0
A4
Text GLabel 4700 2400 0    50   Input ~ 0
A5
Text GLabel 4700 2500 0    50   Input ~ 0
A6
Text GLabel 4700 2600 0    50   Input ~ 0
A7
Text GLabel 4700 2700 0    50   Input ~ 0
A8
Text GLabel 4700 2800 0    50   Input ~ 0
A9
Text GLabel 4700 2900 0    50   Input ~ 0
A10
Text GLabel 4700 3000 0    50   Input ~ 0
A11
Text GLabel 4700 3100 0    50   Input ~ 0
A12
Text GLabel 4700 3200 0    50   Input ~ 0
A13
Text GLabel 4700 3300 0    50   Input ~ 0
A14
Text GLabel 4700 3400 0    50   Input ~ 0
A15
Text GLabel 4700 3500 0    50   Input ~ 0
A16
Text GLabel 4700 3600 0    50   Input ~ 0
A17
Text GLabel 4700 3700 0    50   Input ~ 0
A18
Text GLabel 4700 3800 0    50   Input ~ 0
A19
Text GLabel 7100 2000 0    50   Input ~ 0
A1
Text GLabel 7100 2100 0    50   Input ~ 0
A2
Text GLabel 7100 2200 0    50   Input ~ 0
A3
Text GLabel 7100 2300 0    50   Input ~ 0
A4
Text GLabel 7100 2400 0    50   Input ~ 0
A5
Text GLabel 7100 2500 0    50   Input ~ 0
A6
Text GLabel 7100 2600 0    50   Input ~ 0
A7
Text GLabel 7100 2700 0    50   Input ~ 0
A8
Text GLabel 7100 2800 0    50   Input ~ 0
A9
Text GLabel 7100 2900 0    50   Input ~ 0
A10
Text GLabel 7100 3000 0    50   Input ~ 0
A11
Text GLabel 7100 3100 0    50   Input ~ 0
A12
Text GLabel 7100 3200 0    50   Input ~ 0
A13
Text GLabel 7100 3300 0    50   Input ~ 0
A14
Text GLabel 7100 3400 0    50   Input ~ 0
A15
Text GLabel 7100 3500 0    50   Input ~ 0
A16
Text GLabel 7100 3600 0    50   Input ~ 0
A17
Text GLabel 7100 3700 0    50   Input ~ 0
A18
Text GLabel 7100 3800 0    50   Input ~ 0
A19
Text GLabel 5900 2000 2    50   BiDi ~ 0
D0
Text GLabel 5900 2100 2    50   BiDi ~ 0
D1
Text GLabel 5900 2200 2    50   BiDi ~ 0
D2
Text GLabel 5900 2300 2    50   BiDi ~ 0
D3
Text GLabel 5900 2400 2    50   BiDi ~ 0
D4
Text GLabel 5900 2500 2    50   BiDi ~ 0
D5
Text GLabel 5900 2600 2    50   BiDi ~ 0
D6
Text GLabel 5900 2700 2    50   BiDi ~ 0
D7
Text GLabel 4700 4000 0    50   Input ~ 0
R~W~
Text GLabel 4700 4200 0    50   Input ~ 0
ODDROMCS
Text GLabel 7100 4000 0    50   Input ~ 0
R~W~
Text GLabel 7100 4200 0    50   Input ~ 0
EVENROMCS
Text GLabel 8300 2000 2    50   BiDi ~ 0
D8
Text GLabel 8300 2100 2    50   BiDi ~ 0
D9
Text GLabel 8300 2200 2    50   BiDi ~ 0
D10
Text GLabel 8300 2300 2    50   BiDi ~ 0
D11
Text GLabel 8300 2400 2    50   BiDi ~ 0
D12
Text GLabel 8300 2500 2    50   BiDi ~ 0
D13
Text GLabel 8300 2600 2    50   BiDi ~ 0
D14
Text GLabel 8300 2700 2    50   BiDi ~ 0
D15
Text GLabel 4700 4300 0    50   Input ~ 0
RAMOE
Text GLabel 7100 4300 0    50   Input ~ 0
RAMOE
Text GLabel 3200 3300 2    50   Input ~ 0
R~W~
$Comp
L Connector:Conn_01x16_Male J4
U 1 1 60DAC854
P 5000 6150
F 0 "J4" H 5108 7031 50  0000 C CNN
F 1 "Conn_01x16_Male" H 5108 6940 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x16_P2.54mm_Vertical" H 5000 6150 50  0001 C CNN
F 3 "~" H 5000 6150 50  0001 C CNN
	1    5000 6150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x16_Male J5
U 1 1 60DAEBC9
P 5850 6150
F 0 "J5" H 5958 7031 50  0000 C CNN
F 1 "Conn_01x16_Male" H 5958 6940 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x16_P2.54mm_Vertical" H 5850 6150 50  0001 C CNN
F 3 "~" H 5850 6150 50  0001 C CNN
	1    5850 6150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x14_Male J1
U 1 1 60DAF400
P 1150 6050
F 0 "J1" H 1258 6831 50  0000 C CNN
F 1 "Conn_01x14_Male" H 1258 6740 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x14_P2.54mm_Vertical" H 1150 6050 50  0001 C CNN
F 3 "~" H 1150 6050 50  0001 C CNN
	1    1150 6050
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x14_Male J3
U 1 1 60DB200A
P 3550 6050
F 0 "J3" H 3658 6831 50  0000 C CNN
F 1 "Conn_01x14_Male" H 3658 6740 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x14_P2.54mm_Vertical" H 3550 6050 50  0001 C CNN
F 3 "~" H 3550 6050 50  0001 C CNN
	1    3550 6050
	1    0    0    -1  
$EndComp
Text GLabel 5200 5450 2    50   Output ~ 0
A19
Text GLabel 5200 5550 2    50   Output ~ 0
A17
Text GLabel 5200 5650 2    50   Output ~ 0
A15
Text GLabel 5200 5750 2    50   Output ~ 0
A13
Text GLabel 5200 5850 2    50   Output ~ 0
A8
Text GLabel 5200 5950 2    50   Output ~ 0
A7
Text GLabel 5200 6050 2    50   Output ~ 0
A6
Text GLabel 5200 6150 2    50   Output ~ 0
A5
Text GLabel 5200 6250 2    50   Output ~ 0
A4
Text GLabel 5200 6350 2    50   Output ~ 0
A3
Text GLabel 5200 6450 2    50   Output ~ 0
A2
Text GLabel 5200 6550 2    50   Output ~ 0
A1
Text GLabel 5200 6650 2    50   BiDi ~ 0
D0
Text GLabel 5200 6750 2    50   BiDi ~ 0
D1
Text GLabel 5200 6850 2    50   BiDi ~ 0
D2
Text GLabel 5200 6950 2    50   UnSpc ~ 0
GND
Wire Wire Line
	8350 4400 8350 4800
Text GLabel 8350 4800 3    50   UnSpc ~ 0
GND
Text GLabel 6050 6950 2    50   BiDi ~ 0
D3
Text GLabel 6050 6850 2    50   BiDi ~ 0
D4
Text GLabel 6050 6750 2    50   BiDi ~ 0
D5
Text GLabel 6050 6650 2    50   BiDi ~ 0
D6
Text GLabel 6050 6550 2    50   BiDi ~ 0
D7
Text GLabel 6050 6450 2    50   Output ~ 0
RAMCE
Text GLabel 6050 6350 2    50   Output ~ 0
A11
Text GLabel 6050 6250 2    50   Output ~ 0
RAMOE
Text GLabel 6050 6150 2    50   Output ~ 0
A12
Text GLabel 6050 6050 2    50   Output ~ 0
A10
Text GLabel 6050 5950 2    50   Output ~ 0
A9
Text GLabel 6050 5850 2    50   Output ~ 0
A14
Text GLabel 6050 5750 2    50   Output ~ 0
R~W~
Text GLabel 6050 5650 2    50   Output ~ 0
A18
Text GLabel 6050 5550 2    50   Output ~ 0
A16
Text GLabel 6050 5450 2    50   UnSpc ~ 0
VCC
Text GLabel 3750 6050 2    50   Output ~ 0
EVENROMCS
Text GLabel 1350 6050 2    50   Output ~ 0
ODDROMCS
Text GLabel 1350 5450 2    50   UnSpc ~ 0
VCC
Text GLabel 3750 5450 2    50   UnSpc ~ 0
VCC
Text GLabel 1350 6250 2    50   UnSpc ~ 0
GND
Text GLabel 3750 6250 2    50   UnSpc ~ 0
GND
Text Notes 1450 7000 2    50   ~ 0
ODD ROM \nRIGHT SIDE
Text Notes 3500 6950 2    50   ~ 0
EVEN ROM
Text Notes 5750 7150 2    50   ~ 0
ODD RAM
$Comp
L Connector:Conn_01x14_Male J2
U 1 1 60DC9E10
P 2800 6050
F 0 "J2" H 2908 6831 50  0000 C CNN
F 1 "Conn_01x14_Male" H 2908 6740 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x14_P2.54mm_Vertical" H 2800 6050 50  0001 C CNN
F 3 "~" H 2800 6050 50  0001 C CNN
	1    2800 6050
	1    0    0    -1  
$EndComp
Text GLabel 3000 6450 2    50   BiDi ~ 0
D8
Text GLabel 3000 6550 2    50   BiDi ~ 0
D9
Text GLabel 3000 6650 2    50   BiDi ~ 0
D10
Text GLabel 3750 6750 2    50   BiDi ~ 0
D11
Text GLabel 3750 6650 2    50   BiDi ~ 0
D12
Text GLabel 3750 6550 2    50   BiDi ~ 0
D13
Text GLabel 3750 6450 2    50   BiDi ~ 0
D14
Text GLabel 3750 6350 2    50   BiDi ~ 0
D15
NoConn ~ 1350 6750
NoConn ~ 1350 6650
NoConn ~ 1350 6550
NoConn ~ 1350 6450
NoConn ~ 1350 6350
NoConn ~ 1350 6150
NoConn ~ 1350 5950
NoConn ~ 1350 5850
NoConn ~ 1350 5750
NoConn ~ 1350 5650
NoConn ~ 1350 5550
NoConn ~ 3000 6350
NoConn ~ 3000 6250
NoConn ~ 3000 6150
NoConn ~ 3000 6050
NoConn ~ 3000 5950
NoConn ~ 3000 5850
NoConn ~ 3000 5750
NoConn ~ 3000 5650
NoConn ~ 3000 5550
NoConn ~ 3000 5450
Text GLabel 3000 6750 2    50   UnSpc ~ 0
GND
NoConn ~ 3750 5550
NoConn ~ 3750 5650
NoConn ~ 3750 5750
NoConn ~ 3750 5850
NoConn ~ 3750 5950
NoConn ~ 3750 6150
$EndSCHEMATC
