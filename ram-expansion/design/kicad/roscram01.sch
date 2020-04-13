EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "rosco_m68k RAM expansion 1"
Date "2020-04-12"
Rev "0"
Comp "The Really Old-School Company"
Comment1 "Buy online: https://rosco-m68k.com"
Comment2 "See https://github.com/rosco-m68k/hardware-projects/blob/master/LICENCE.hardware.txt"
Comment3 "Open-Source Hardware licenced under the CERN Open Hardware Licence"
Comment4 "Copyright ©2020 Ross Bamford and Contributors"
$EndDescr
$Comp
L Connector_Generic:Conn_02x32_Odd_Even J1
U 1 1 5E973BB2
P 1200 3700
F 0 "J1" H 1250 5325 50  0000 C CNN
F 1 "Conn_02x32_Odd_Even" H 1250 5326 50  0001 C CNN
F 2 "rosco_m68k:pin-2X32" H 1200 3700 50  0001 C CNN
F 3 "~" H 1200 3700 50  0001 C CNN
	1    1200 3700
	1    0    0    -1  
$EndComp
$Comp
L Logic_Programmable:GAL16V8 IC1
U 1 1 5E97D5F3
P 1500 6650
F 0 "IC1" H 1500 7531 50  0000 C CNN
F 1 "ATF16V8VQL-15PU" H 1500 7440 50  0000 C CNN
F 2 "rosco_m68k:DIL20" H 1500 6650 50  0001 C CNN
F 3 "" H 1500 6650 50  0001 C CNN
	1    1500 6650
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q1
U 1 1 5E97F074
P 1950 1350
F 0 "Q1" H 2140 1396 50  0000 L CNN
F 1 "2N3904" H 2140 1305 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2150 1275 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 1950 1350 50  0001 L CNN
	1    1950 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5E98056A
P 1400 900
F 0 "R1" V 1193 900 50  0000 C CNN
F 1 "10K" V 1284 900 50  0000 C CNN
F 2 "rosco_m68k:R-0207_10" V 1330 900 50  0001 C CNN
F 3 "~" H 1400 900 50  0001 C CNN
	1    1400 900 
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5E980E0E
P 1400 1350
F 0 "R2" V 1193 1350 50  0000 C CNN
F 1 "100K" V 1284 1350 50  0000 C CNN
F 2 "rosco_m68k:R-0207_10" V 1330 1350 50  0001 C CNN
F 3 "~" H 1400 1350 50  0001 C CNN
	1    1400 1350
	0    1    1    0   
$EndComp
Wire Wire Line
	1550 1350 1750 1350
Wire Wire Line
	2050 1550 2050 1750
Wire Wire Line
	2050 1050 2450 1050
Connection ~ 2050 1050
Wire Wire Line
	2050 1050 2050 1150
Text GLabel 950  1350 0    50   Input ~ 0
RnW
Text GLabel 2450 1050 2    50   Output ~ 0
WnR
Wire Wire Line
	1250 1350 950  1350
Wire Wire Line
	1000 3000 900  3000
Wire Wire Line
	1000 3700 900  3700
Wire Wire Line
	1000 3800 900  3800
Wire Wire Line
	1000 4100 900  4100
Wire Wire Line
	1000 4200 900  4200
Wire Wire Line
	1000 4300 900  4300
Wire Wire Line
	1000 4400 900  4400
Text GLabel 1600 2200 2    50   Output ~ 0
A1
Text GLabel 1600 2300 2    50   Output ~ 0
A2
Text GLabel 1600 2400 2    50   Output ~ 0
A3
Text GLabel 1600 2500 2    50   Output ~ 0
A4
Text GLabel 1600 2600 2    50   Output ~ 0
A5
Text GLabel 1600 2700 2    50   Output ~ 0
A6
Text GLabel 1600 2800 2    50   Output ~ 0
A7
Text GLabel 1600 2900 2    50   Output ~ 0
A8
Text GLabel 1600 3000 2    50   Output ~ 0
A9
Text GLabel 1600 3100 2    50   Output ~ 0
A10
Text GLabel 1600 3200 2    50   Output ~ 0
A11
Text GLabel 1600 3300 2    50   Output ~ 0
A12
Text GLabel 1600 3400 2    50   Output ~ 0
A13
Text GLabel 1600 3500 2    50   Output ~ 0
A14
Text GLabel 1600 3600 2    50   Output ~ 0
A15
Text GLabel 1600 3700 2    50   Output ~ 0
A16
Text GLabel 1600 3800 2    50   Output ~ 0
A17
Text GLabel 1600 3900 2    50   Output ~ 0
A18
Text GLabel 1600 4100 2    50   Output ~ 0
A20
Text GLabel 1600 4200 2    50   Output ~ 0
A21
Text GLabel 1600 4300 2    50   Output ~ 0
A22
Text GLabel 1600 4400 2    50   Output ~ 0
A23
$Comp
L Device:C C2
U 1 1 5E9BD4B6
P 2900 7000
F 0 "C2" H 3015 7046 50  0000 L CNN
F 1 "100nF" H 3015 6955 50  0000 L CNN
F 2 "rosco_m68k:C2.5-3" H 2938 6850 50  0001 C CNN
F 3 "~" H 2900 7000 50  0001 C CNN
	1    2900 7000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5E9BDFA6
P 3350 7000
F 0 "C3" H 3465 7046 50  0000 L CNN
F 1 "100nF" H 3465 6955 50  0000 L CNN
F 2 "rosco_m68k:C2.5-3" H 3388 6850 50  0001 C CNN
F 3 "~" H 3350 7000 50  0001 C CNN
	1    3350 7000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5E9BED47
P 3800 7000
F 0 "C4" H 3915 7046 50  0000 L CNN
F 1 "100nF" H 3915 6955 50  0000 L CNN
F 2 "rosco_m68k:C2.5-3" H 3838 6850 50  0001 C CNN
F 3 "~" H 3800 7000 50  0001 C CNN
	1    3800 7000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5E9C0124
P 4750 7000
F 0 "C6" H 4865 7046 50  0000 L CNN
F 1 "100nF" H 4865 6955 50  0000 L CNN
F 2 "rosco_m68k:C2.5-3" H 4788 6850 50  0001 C CNN
F 3 "~" H 4750 7000 50  0001 C CNN
	1    4750 7000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5E9C05A8
P 5200 7000
F 0 "C7" H 5315 7046 50  0000 L CNN
F 1 "100nF" H 5315 6955 50  0000 L CNN
F 2 "rosco_m68k:C2.5-3" H 5238 6850 50  0001 C CNN
F 3 "~" H 5200 7000 50  0001 C CNN
	1    5200 7000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5E9C0AFB
P 5650 7000
F 0 "C8" H 5765 7046 50  0000 L CNN
F 1 "100nF" H 5765 6955 50  0000 L CNN
F 2 "rosco_m68k:C2.5-3" H 5688 6850 50  0001 C CNN
F 3 "~" H 5650 7000 50  0001 C CNN
	1    5650 7000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5E9C0CB6
P 6100 7000
F 0 "C9" H 6215 7046 50  0000 L CNN
F 1 "100nF" H 6215 6955 50  0000 L CNN
F 2 "rosco_m68k:C2.5-3" H 6138 6850 50  0001 C CNN
F 3 "~" H 6100 7000 50  0001 C CNN
	1    6100 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 5200 900  5200
Wire Wire Line
	1000 5300 900  5300
Wire Wire Line
	1500 5300 1600 5300
Wire Wire Line
	1500 5200 1600 5200
Wire Wire Line
	1500 5100 1600 5100
Wire Wire Line
	1500 4400 1600 4400
Wire Wire Line
	1500 4300 1600 4300
Wire Wire Line
	1500 4200 1600 4200
Wire Wire Line
	1500 4100 1600 4100
Wire Wire Line
	1500 4000 1600 4000
Text GLabel 1600 5200 2    50   Output ~ 0
D0
Text GLabel 1600 5300 2    50   Output ~ 0
D1
Text GLabel 900  5300 0    50   Output ~ 0
D2
Text GLabel 900  5200 0    50   Output ~ 0
D3
Text GLabel 900  5100 0    50   Output ~ 0
D4
Text GLabel 900  5000 0    50   Output ~ 0
D5
Text GLabel 900  4900 0    50   Output ~ 0
D6
Text GLabel 900  4800 0    50   Output ~ 0
D7
Text GLabel 900  4700 0    50   Output ~ 0
D8
Text GLabel 900  4600 0    50   Output ~ 0
D9
Text GLabel 900  4500 0    50   Output ~ 0
D10
Text GLabel 900  4400 0    50   Output ~ 0
D11
Text GLabel 900  4300 0    50   Output ~ 0
D12
Text GLabel 900  4200 0    50   Output ~ 0
D13
Text GLabel 900  4100 0    50   Output ~ 0
D14
Text GLabel 900  4000 0    50   Output ~ 0
D15
Wire Wire Line
	1500 3000 1600 3000
Text GLabel 900  3000 0    50   Output ~ 0
EXPSEL
Wire Wire Line
	1500 3700 1600 3700
Wire Wire Line
	1500 3800 1600 3800
Text GLabel 900  3700 0    50   Output ~ 0
LDS
Text GLabel 900  3800 0    50   Output ~ 0
UDS
Text GLabel 800  2200 0    50   UnSpc ~ 0
VCC
Text GLabel 800  2400 0    50   UnSpc ~ 0
GND
Text GLabel 2050 1750 0    50   UnSpc ~ 0
GND
Wire Wire Line
	1000 5100 900  5100
Text GLabel 1600 5100 2    50   Output ~ 0
RnW
Text GLabel 4950 4700 2    50   BiDi ~ 0
D7
Text GLabel 4950 4600 2    50   BiDi ~ 0
D6
Text GLabel 4950 4500 2    50   BiDi ~ 0
D5
Text GLabel 4950 4400 2    50   BiDi ~ 0
D4
Text GLabel 4950 4300 2    50   BiDi ~ 0
D3
Text GLabel 4950 4200 2    50   BiDi ~ 0
D2
Text GLabel 4950 4100 2    50   BiDi ~ 0
D1
Text GLabel 4950 4000 2    50   BiDi ~ 0
D0
Text GLabel 4950 1900 2    50   BiDi ~ 0
D15
Text GLabel 4950 1800 2    50   BiDi ~ 0
D14
Text GLabel 4950 1700 2    50   BiDi ~ 0
D13
Text GLabel 4950 1600 2    50   BiDi ~ 0
D12
Text GLabel 4950 1500 2    50   BiDi ~ 0
D11
Text GLabel 4950 1400 2    50   BiDi ~ 0
D10
Text GLabel 4950 1300 2    50   BiDi ~ 0
D9
Text GLabel 4950 1200 2    50   BiDi ~ 0
D8
Text GLabel 3850 5800 0    50   Input ~ 0
A19
Text GLabel 3850 5700 0    50   Input ~ 0
A18
Text GLabel 3850 5600 0    50   Input ~ 0
A17
Text GLabel 3850 5500 0    50   Input ~ 0
A16
Text GLabel 3850 5400 0    50   Input ~ 0
A15
Text GLabel 3850 5300 0    50   Input ~ 0
A14
Text GLabel 3850 5200 0    50   Input ~ 0
A13
Text GLabel 3850 5100 0    50   Input ~ 0
A12
Text GLabel 3850 5000 0    50   Input ~ 0
A11
Text GLabel 3850 4900 0    50   Input ~ 0
A10
Text GLabel 3800 4800 0    50   Input ~ 0
A9
Text GLabel 3800 4700 0    50   Input ~ 0
A8
Text GLabel 3800 4600 0    50   Input ~ 0
A7
Text GLabel 3800 4500 0    50   Input ~ 0
A6
Text GLabel 3800 4400 0    50   Input ~ 0
A5
Text GLabel 3800 4300 0    50   Input ~ 0
A4
Text GLabel 3800 4200 0    50   Input ~ 0
A3
Text GLabel 3800 4100 0    50   Input ~ 0
A2
Text GLabel 3800 4000 0    50   Input ~ 0
A1
Wire Wire Line
	3900 5800 3850 5800
Wire Wire Line
	3900 5700 3850 5700
Wire Wire Line
	3900 5600 3850 5600
Wire Wire Line
	3900 5500 3850 5500
Wire Wire Line
	3900 5400 3850 5400
Wire Wire Line
	3900 5300 3850 5300
Wire Wire Line
	3900 5200 3850 5200
Wire Wire Line
	3900 5100 3850 5100
Wire Wire Line
	3900 5000 3850 5000
Wire Wire Line
	3900 4900 3850 4900
Wire Wire Line
	3900 4800 3800 4800
Wire Wire Line
	3900 4700 3800 4700
Wire Wire Line
	3900 4600 3800 4600
Wire Wire Line
	3900 4500 3800 4500
Wire Wire Line
	3900 4400 3800 4400
Wire Wire Line
	3900 4300 3800 4300
Wire Wire Line
	3900 4200 3800 4200
Wire Wire Line
	3900 4100 3800 4100
Wire Wire Line
	3900 4000 3800 4000
Wire Wire Line
	4900 4000 4950 4000
Wire Wire Line
	4900 4100 4950 4100
Wire Wire Line
	4900 4200 4950 4200
Wire Wire Line
	4900 4300 4950 4300
Wire Wire Line
	4900 4400 4950 4400
Wire Wire Line
	4900 4500 4950 4500
Wire Wire Line
	4900 4600 4950 4600
Wire Wire Line
	4900 4700 4950 4700
Text GLabel 4950 5200 2    50   Input ~ 0
RnW
Text GLabel 4950 5100 2    50   Input ~ 0
WnR
Text GLabel 4950 5000 2    50   Input ~ 0
ORAM1
Wire Wire Line
	4900 5000 4950 5000
Wire Wire Line
	4900 5200 4950 5200
Wire Wire Line
	4900 5100 4950 5100
Text GLabel 3800 3000 0    50   Input ~ 0
A19
Text GLabel 3800 2900 0    50   Input ~ 0
A18
Text GLabel 3800 2800 0    50   Input ~ 0
A17
Text GLabel 3800 2700 0    50   Input ~ 0
A16
Text GLabel 3800 2600 0    50   Input ~ 0
A15
Text GLabel 3800 2500 0    50   Input ~ 0
A14
Text GLabel 3800 2400 0    50   Input ~ 0
A13
Text GLabel 3800 2300 0    50   Input ~ 0
A12
Text GLabel 3800 2200 0    50   Input ~ 0
A11
Text GLabel 3800 2100 0    50   Input ~ 0
A10
Text GLabel 3750 2000 0    50   Input ~ 0
A9
Text GLabel 3750 1900 0    50   Input ~ 0
A8
Text GLabel 3750 1800 0    50   Input ~ 0
A7
Text GLabel 3750 1700 0    50   Input ~ 0
A6
Text GLabel 3750 1600 0    50   Input ~ 0
A5
Text GLabel 3750 1500 0    50   Input ~ 0
A4
Text GLabel 3750 1400 0    50   Input ~ 0
A3
Text GLabel 3750 1300 0    50   Input ~ 0
A2
Text GLabel 3750 1200 0    50   Input ~ 0
A1
Wire Wire Line
	3900 3000 3800 3000
Wire Wire Line
	3900 2900 3800 2900
Wire Wire Line
	3900 2800 3800 2800
Wire Wire Line
	3900 2700 3800 2700
Wire Wire Line
	3900 2600 3800 2600
Wire Wire Line
	3900 2500 3800 2500
Wire Wire Line
	3900 2400 3800 2400
Wire Wire Line
	3900 2300 3800 2300
Wire Wire Line
	3900 2200 3800 2200
Wire Wire Line
	3900 2100 3800 2100
Wire Wire Line
	3900 2000 3750 2000
Wire Wire Line
	3900 1900 3750 1900
Wire Wire Line
	3900 1800 3750 1800
Wire Wire Line
	3900 1700 3750 1700
Wire Wire Line
	3900 1600 3750 1600
Wire Wire Line
	3900 1500 3750 1500
Wire Wire Line
	3900 1400 3750 1400
Wire Wire Line
	3900 1300 3750 1300
Wire Wire Line
	3900 1200 3750 1200
Wire Wire Line
	4900 1200 4950 1200
Wire Wire Line
	4900 1300 4950 1300
Wire Wire Line
	4900 1400 4950 1400
Wire Wire Line
	4900 1500 4950 1500
Wire Wire Line
	4900 1600 4950 1600
Wire Wire Line
	4900 1700 4950 1700
Wire Wire Line
	4900 1800 4950 1800
Wire Wire Line
	4900 1900 4950 1900
Text GLabel 4950 2400 2    50   Input ~ 0
RnW
Text GLabel 4950 2300 2    50   Input ~ 0
WnR
Text GLabel 4950 2200 2    50   Input ~ 0
ERAM1
Wire Wire Line
	4900 2200 4950 2200
Wire Wire Line
	4900 2400 4950 2400
Wire Wire Line
	4900 2300 4950 2300
$Comp
L Memory_RAM:AS6C4008-55PCN U2
U 1 1 5E933255
P 4400 2100
F 0 "U2" H 4400 3381 50  0000 C CNN
F 1 "AS6C4008-55PCN" H 4400 3290 50  0000 C CNN
F 2 "Package_DIP:DIP-32_W15.24mm" H 4400 2200 50  0001 C CNN
F 3 "https://www.alliancememory.com/wp-content/uploads/pdf/AS6C4008.pdf" H 4400 2200 50  0001 C CNN
	1    4400 2100
	1    0    0    -1  
$EndComp
Text GLabel 6850 4700 2    50   BiDi ~ 0
D7
Text GLabel 6850 4600 2    50   BiDi ~ 0
D6
Text GLabel 6850 4500 2    50   BiDi ~ 0
D5
Text GLabel 6850 4400 2    50   BiDi ~ 0
D4
Text GLabel 6850 4300 2    50   BiDi ~ 0
D3
Text GLabel 6850 4200 2    50   BiDi ~ 0
D2
Text GLabel 6850 4100 2    50   BiDi ~ 0
D1
Text GLabel 6850 4000 2    50   BiDi ~ 0
D0
Text GLabel 6850 1900 2    50   BiDi ~ 0
D15
Text GLabel 6850 1800 2    50   BiDi ~ 0
D14
Text GLabel 6850 1700 2    50   BiDi ~ 0
D13
Text GLabel 6850 1600 2    50   BiDi ~ 0
D12
Text GLabel 6850 1500 2    50   BiDi ~ 0
D11
Text GLabel 6850 1400 2    50   BiDi ~ 0
D10
Text GLabel 6850 1300 2    50   BiDi ~ 0
D9
Text GLabel 6850 1200 2    50   BiDi ~ 0
D8
Text GLabel 5750 5800 0    50   Input ~ 0
A19
Text GLabel 5750 5700 0    50   Input ~ 0
A18
Text GLabel 5750 5600 0    50   Input ~ 0
A17
Text GLabel 5750 5500 0    50   Input ~ 0
A16
Text GLabel 5750 5400 0    50   Input ~ 0
A15
Text GLabel 5750 5300 0    50   Input ~ 0
A14
Text GLabel 5750 5200 0    50   Input ~ 0
A13
Text GLabel 5750 5100 0    50   Input ~ 0
A12
Text GLabel 5750 5000 0    50   Input ~ 0
A11
Text GLabel 5750 4900 0    50   Input ~ 0
A10
Text GLabel 5700 4800 0    50   Input ~ 0
A9
Text GLabel 5700 4700 0    50   Input ~ 0
A8
Text GLabel 5700 4600 0    50   Input ~ 0
A7
Text GLabel 5700 4500 0    50   Input ~ 0
A6
Text GLabel 5700 4400 0    50   Input ~ 0
A5
Text GLabel 5700 4300 0    50   Input ~ 0
A4
Text GLabel 5700 4200 0    50   Input ~ 0
A3
Text GLabel 5700 4100 0    50   Input ~ 0
A2
Text GLabel 5700 4000 0    50   Input ~ 0
A1
Wire Wire Line
	5800 5800 5750 5800
Wire Wire Line
	5800 5700 5750 5700
Wire Wire Line
	5800 5600 5750 5600
Wire Wire Line
	5800 5500 5750 5500
Wire Wire Line
	5800 5400 5750 5400
Wire Wire Line
	5800 5300 5750 5300
Wire Wire Line
	5800 5200 5750 5200
Wire Wire Line
	5800 5100 5750 5100
Wire Wire Line
	5800 5000 5750 5000
Wire Wire Line
	5800 4900 5750 4900
Wire Wire Line
	5800 4800 5700 4800
Wire Wire Line
	5800 4700 5700 4700
Wire Wire Line
	5800 4600 5700 4600
Wire Wire Line
	5800 4500 5700 4500
Wire Wire Line
	5800 4400 5700 4400
Wire Wire Line
	5800 4300 5700 4300
Wire Wire Line
	5800 4200 5700 4200
Wire Wire Line
	5800 4100 5700 4100
Wire Wire Line
	5800 4000 5700 4000
Wire Wire Line
	6800 4000 6850 4000
Wire Wire Line
	6800 4100 6850 4100
Wire Wire Line
	6800 4200 6850 4200
Wire Wire Line
	6800 4300 6850 4300
Wire Wire Line
	6800 4400 6850 4400
Wire Wire Line
	6800 4500 6850 4500
Wire Wire Line
	6800 4600 6850 4600
Wire Wire Line
	6800 4700 6850 4700
Text GLabel 6850 5200 2    50   Input ~ 0
RnW
Text GLabel 6850 5100 2    50   Input ~ 0
WnR
Text GLabel 6850 5000 2    50   Input ~ 0
ORAM2
Wire Wire Line
	6800 5000 6850 5000
Wire Wire Line
	6800 5200 6850 5200
Wire Wire Line
	6800 5100 6850 5100
$Comp
L Memory_RAM:AS6C4008-55PCN U3
U 1 1 5EC3F911
P 6300 4900
F 0 "U3" H 6300 6181 50  0000 C CNN
F 1 "AS6C4008-55PCN" H 6300 6090 50  0000 C CNN
F 2 "Package_DIP:DIP-32_W15.24mm" H 6300 5000 50  0001 C CNN
F 3 "https://www.alliancememory.com/wp-content/uploads/pdf/AS6C4008.pdf" H 6300 5000 50  0001 C CNN
	1    6300 4900
	1    0    0    -1  
$EndComp
Text GLabel 5700 3000 0    50   Input ~ 0
A19
Text GLabel 5700 2900 0    50   Input ~ 0
A18
Text GLabel 5700 2800 0    50   Input ~ 0
A17
Text GLabel 5700 2700 0    50   Input ~ 0
A16
Text GLabel 5700 2600 0    50   Input ~ 0
A15
Text GLabel 5700 2500 0    50   Input ~ 0
A14
Text GLabel 5700 2400 0    50   Input ~ 0
A13
Text GLabel 5700 2300 0    50   Input ~ 0
A12
Text GLabel 5700 2200 0    50   Input ~ 0
A11
Text GLabel 5700 2100 0    50   Input ~ 0
A10
Text GLabel 5650 2000 0    50   Input ~ 0
A9
Text GLabel 5650 1900 0    50   Input ~ 0
A8
Text GLabel 5650 1800 0    50   Input ~ 0
A7
Text GLabel 5650 1700 0    50   Input ~ 0
A6
Text GLabel 5650 1600 0    50   Input ~ 0
A5
Text GLabel 5650 1500 0    50   Input ~ 0
A4
Text GLabel 5650 1400 0    50   Input ~ 0
A3
Text GLabel 5650 1300 0    50   Input ~ 0
A2
Text GLabel 5650 1200 0    50   Input ~ 0
A1
Wire Wire Line
	5800 3000 5700 3000
Wire Wire Line
	5800 2900 5700 2900
Wire Wire Line
	5800 2800 5700 2800
Wire Wire Line
	5800 2700 5700 2700
Wire Wire Line
	5800 2600 5700 2600
Wire Wire Line
	5800 2500 5700 2500
Wire Wire Line
	5800 2400 5700 2400
Wire Wire Line
	5800 2300 5700 2300
Wire Wire Line
	5800 2200 5700 2200
Wire Wire Line
	5800 2100 5700 2100
Wire Wire Line
	5800 2000 5650 2000
Wire Wire Line
	5800 1900 5650 1900
Wire Wire Line
	5800 1800 5650 1800
Wire Wire Line
	5800 1700 5650 1700
Wire Wire Line
	5800 1600 5650 1600
Wire Wire Line
	5800 1500 5650 1500
Wire Wire Line
	5800 1400 5650 1400
Wire Wire Line
	5800 1300 5650 1300
Wire Wire Line
	5800 1200 5650 1200
Wire Wire Line
	6800 1200 6850 1200
Wire Wire Line
	6800 1300 6850 1300
Wire Wire Line
	6800 1400 6850 1400
Wire Wire Line
	6800 1500 6850 1500
Wire Wire Line
	6800 1600 6850 1600
Wire Wire Line
	6800 1700 6850 1700
Wire Wire Line
	6800 1800 6850 1800
Wire Wire Line
	6800 1900 6850 1900
Text GLabel 6850 2400 2    50   Input ~ 0
RnW
Text GLabel 6850 2300 2    50   Input ~ 0
WnR
Text GLabel 6850 2200 2    50   Input ~ 0
ERAM2
Wire Wire Line
	6800 2200 6850 2200
Wire Wire Line
	6800 2400 6850 2400
Wire Wire Line
	6800 2300 6850 2300
$Comp
L Memory_RAM:AS6C4008-55PCN U4
U 1 1 5EC3F94F
P 6300 2100
F 0 "U4" H 6300 3381 50  0000 C CNN
F 1 "AS6C4008-55PCN" H 6300 3290 50  0000 C CNN
F 2 "Package_DIP:DIP-32_W15.24mm" H 6300 2200 50  0001 C CNN
F 3 "https://www.alliancememory.com/wp-content/uploads/pdf/AS6C4008.pdf" H 6300 2200 50  0001 C CNN
	1    6300 2100
	1    0    0    -1  
$EndComp
Text GLabel 8800 4700 2    50   BiDi ~ 0
D7
Text GLabel 8800 4600 2    50   BiDi ~ 0
D6
Text GLabel 8800 4500 2    50   BiDi ~ 0
D5
Text GLabel 8800 4400 2    50   BiDi ~ 0
D4
Text GLabel 8800 4300 2    50   BiDi ~ 0
D3
Text GLabel 8800 4200 2    50   BiDi ~ 0
D2
Text GLabel 8800 4100 2    50   BiDi ~ 0
D1
Text GLabel 8800 4000 2    50   BiDi ~ 0
D0
Text GLabel 7700 5800 0    50   Input ~ 0
A19
Text GLabel 7700 5700 0    50   Input ~ 0
A18
Text GLabel 7700 5600 0    50   Input ~ 0
A17
Text GLabel 7700 5500 0    50   Input ~ 0
A16
Text GLabel 7700 5400 0    50   Input ~ 0
A15
Text GLabel 7700 5300 0    50   Input ~ 0
A14
Text GLabel 7700 5200 0    50   Input ~ 0
A13
Text GLabel 7700 5100 0    50   Input ~ 0
A12
Text GLabel 7700 5000 0    50   Input ~ 0
A11
Text GLabel 7650 4900 0    50   Input ~ 0
A10
Text GLabel 7650 4800 0    50   Input ~ 0
A9
Text GLabel 7650 4700 0    50   Input ~ 0
A8
Text GLabel 7650 4600 0    50   Input ~ 0
A7
Text GLabel 7650 4500 0    50   Input ~ 0
A6
Text GLabel 7650 4400 0    50   Input ~ 0
A5
Text GLabel 7650 4300 0    50   Input ~ 0
A4
Text GLabel 7650 4200 0    50   Input ~ 0
A3
Text GLabel 7650 4100 0    50   Input ~ 0
A2
Text GLabel 7650 4000 0    50   Input ~ 0
A1
Wire Wire Line
	7750 5800 7700 5800
Wire Wire Line
	7750 5700 7700 5700
Wire Wire Line
	7750 5600 7700 5600
Wire Wire Line
	7750 5500 7700 5500
Wire Wire Line
	7750 5400 7700 5400
Wire Wire Line
	7750 5300 7700 5300
Wire Wire Line
	7750 5200 7700 5200
Wire Wire Line
	7750 5100 7700 5100
Wire Wire Line
	7750 5000 7700 5000
Wire Wire Line
	7750 4900 7650 4900
Wire Wire Line
	7750 4800 7650 4800
Wire Wire Line
	7750 4700 7650 4700
Wire Wire Line
	7750 4600 7650 4600
Wire Wire Line
	7750 4500 7650 4500
Wire Wire Line
	7750 4400 7650 4400
Wire Wire Line
	7750 4300 7650 4300
Wire Wire Line
	7750 4200 7650 4200
Wire Wire Line
	7750 4100 7650 4100
Wire Wire Line
	7750 4000 7650 4000
Wire Wire Line
	8750 4000 8800 4000
Wire Wire Line
	8750 4100 8800 4100
Wire Wire Line
	8750 4200 8800 4200
Wire Wire Line
	8750 4300 8800 4300
Wire Wire Line
	8750 4400 8800 4400
Wire Wire Line
	8750 4500 8800 4500
Wire Wire Line
	8750 4600 8800 4600
Wire Wire Line
	8750 4700 8800 4700
Text GLabel 8800 5200 2    50   Input ~ 0
RnW
Text GLabel 8800 5100 2    50   Input ~ 0
WnR
Text GLabel 8800 5000 2    50   Input ~ 0
ORAM3
Wire Wire Line
	8750 5000 8800 5000
Wire Wire Line
	8750 5200 8800 5200
Wire Wire Line
	8750 5100 8800 5100
$Comp
L Memory_RAM:AS6C4008-55PCN U5
U 1 1 5EC537BE
P 8250 4900
F 0 "U5" H 8250 6181 50  0000 C CNN
F 1 "AS6C4008-55PCN" H 8250 6090 50  0000 C CNN
F 2 "Package_DIP:DIP-32_W15.24mm" H 8250 5000 50  0001 C CNN
F 3 "https://www.alliancememory.com/wp-content/uploads/pdf/AS6C4008.pdf" H 8250 5000 50  0001 C CNN
	1    8250 4900
	1    0    0    -1  
$EndComp
$Comp
L Memory_RAM:AS6C4008-55PCN U1
U 1 1 5EA64136
P 4400 4900
F 0 "U1" H 4400 6181 50  0000 C CNN
F 1 "AS6C4008-55PCN" H 4400 6090 50  0000 C CNN
F 2 "Package_DIP:DIP-32_W15.24mm" H 4400 5000 50  0001 C CNN
F 3 "https://www.alliancememory.com/wp-content/uploads/pdf/AS6C4008.pdf" H 4400 5000 50  0001 C CNN
	1    4400 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 3200 6300 3450
Connection ~ 6300 3450
Text GLabel 3550 6300 0    50   UnSpc ~ 0
GND
Text GLabel 3550 3550 0    50   UnSpc ~ 0
VCC
Text GLabel 3550 3450 0    50   UnSpc ~ 0
GND
Text GLabel 3550 650  0    50   UnSpc ~ 0
VCC
Wire Wire Line
	3550 3450 4400 3450
$Comp
L Memory_RAM:AS6C4008-55PCN U6
U 1 1 5EC537FC
P 8250 2100
F 0 "U6" H 8250 3381 50  0000 C CNN
F 1 "AS6C4008-55PCN" H 8250 3290 50  0000 C CNN
F 2 "Package_DIP:DIP-32_W15.24mm" H 8250 2200 50  0001 C CNN
F 3 "https://www.alliancememory.com/wp-content/uploads/pdf/AS6C4008.pdf" H 8250 2200 50  0001 C CNN
	1    8250 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 2300 8800 2300
Wire Wire Line
	8750 2400 8800 2400
Wire Wire Line
	8750 2200 8800 2200
Text GLabel 8800 2200 2    50   Input ~ 0
ERAM3
Text GLabel 8800 2300 2    50   Input ~ 0
WnR
Text GLabel 8800 2400 2    50   Input ~ 0
RnW
Wire Wire Line
	8750 1900 8800 1900
Wire Wire Line
	8750 1800 8800 1800
Wire Wire Line
	8750 1700 8800 1700
Wire Wire Line
	8750 1600 8800 1600
Wire Wire Line
	8750 1500 8800 1500
Wire Wire Line
	8750 1400 8800 1400
Wire Wire Line
	8750 1300 8800 1300
Wire Wire Line
	8750 1200 8800 1200
Wire Wire Line
	7750 1200 7600 1200
Wire Wire Line
	7750 1300 7600 1300
Wire Wire Line
	7750 1400 7600 1400
Wire Wire Line
	7750 1500 7600 1500
Wire Wire Line
	7750 1600 7600 1600
Wire Wire Line
	7750 1700 7600 1700
Wire Wire Line
	7750 1800 7600 1800
Wire Wire Line
	7750 1900 7600 1900
Wire Wire Line
	7750 2000 7600 2000
Wire Wire Line
	7750 2100 7650 2100
Wire Wire Line
	7750 2200 7650 2200
Wire Wire Line
	7750 2300 7650 2300
Wire Wire Line
	7750 2400 7650 2400
Wire Wire Line
	7750 2500 7650 2500
Wire Wire Line
	7750 2600 7650 2600
Wire Wire Line
	7750 2700 7650 2700
Wire Wire Line
	7750 2800 7650 2800
Wire Wire Line
	7750 2900 7650 2900
Wire Wire Line
	7750 3000 7650 3000
Text GLabel 7600 1200 0    50   Input ~ 0
A1
Text GLabel 7600 1300 0    50   Input ~ 0
A2
Text GLabel 7600 1400 0    50   Input ~ 0
A3
Text GLabel 7600 1500 0    50   Input ~ 0
A4
Text GLabel 7600 1600 0    50   Input ~ 0
A5
Text GLabel 7600 1700 0    50   Input ~ 0
A6
Text GLabel 7600 1800 0    50   Input ~ 0
A7
Text GLabel 7600 1900 0    50   Input ~ 0
A8
Text GLabel 7600 2000 0    50   Input ~ 0
A9
Text GLabel 7650 2100 0    50   Input ~ 0
A10
Text GLabel 7650 2200 0    50   Input ~ 0
A11
Text GLabel 7650 2300 0    50   Input ~ 0
A12
Text GLabel 7650 2400 0    50   Input ~ 0
A13
Text GLabel 7650 2500 0    50   Input ~ 0
A14
Text GLabel 7650 2600 0    50   Input ~ 0
A15
Text GLabel 7650 2700 0    50   Input ~ 0
A16
Text GLabel 7650 2800 0    50   Input ~ 0
A17
Text GLabel 7650 2900 0    50   Input ~ 0
A18
Text GLabel 7650 3000 0    50   Input ~ 0
A19
Text GLabel 8800 1200 2    50   BiDi ~ 0
D8
Text GLabel 8800 1300 2    50   BiDi ~ 0
D9
Text GLabel 8800 1400 2    50   BiDi ~ 0
D10
Text GLabel 8800 1500 2    50   BiDi ~ 0
D11
Text GLabel 8800 1600 2    50   BiDi ~ 0
D12
Text GLabel 8800 1700 2    50   BiDi ~ 0
D13
Text GLabel 8800 1800 2    50   BiDi ~ 0
D14
Text GLabel 8800 1900 2    50   BiDi ~ 0
D15
$Comp
L Device:C C5
U 1 1 5E9BF725
P 4250 7000
F 0 "C5" H 4365 7046 50  0000 L CNN
F 1 "100nF" H 4365 6955 50  0000 L CNN
F 2 "rosco_m68k:C2.5-3" H 4288 6850 50  0001 C CNN
F 3 "~" H 4250 7000 50  0001 C CNN
	1    4250 7000
	1    0    0    -1  
$EndComp
$Comp
L Memory_RAM:AS6C4008-55PCN U8
U 1 1 5EC88D3A
P 10300 2100
F 0 "U8" H 10300 3381 50  0000 C CNN
F 1 "AS6C4008-55PCN" H 10300 3290 50  0000 C CNN
F 2 "Package_DIP:DIP-32_W15.24mm" H 10300 2200 50  0001 C CNN
F 3 "https://www.alliancememory.com/wp-content/uploads/pdf/AS6C4008.pdf" H 10300 2200 50  0001 C CNN
	1    10300 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10800 2300 10850 2300
Wire Wire Line
	10800 2400 10850 2400
Wire Wire Line
	10800 2200 10850 2200
Text GLabel 10850 2200 2    50   Input ~ 0
ERAM4
Text GLabel 10850 2300 2    50   Input ~ 0
WnR
Text GLabel 10850 2400 2    50   Input ~ 0
RnW
Wire Wire Line
	10800 1900 10850 1900
Wire Wire Line
	10800 1800 10850 1800
Wire Wire Line
	10800 1700 10850 1700
Wire Wire Line
	10800 1600 10850 1600
Wire Wire Line
	10800 1500 10850 1500
Wire Wire Line
	10800 1400 10850 1400
Wire Wire Line
	10800 1300 10850 1300
Wire Wire Line
	10800 1200 10850 1200
Wire Wire Line
	9800 1300 9650 1300
Wire Wire Line
	9800 1400 9650 1400
Wire Wire Line
	9800 1500 9650 1500
Wire Wire Line
	9800 1600 9650 1600
Wire Wire Line
	9800 1700 9650 1700
Wire Wire Line
	9800 1800 9650 1800
Wire Wire Line
	9800 1900 9650 1900
Wire Wire Line
	9800 2000 9650 2000
Wire Wire Line
	9800 2100 9700 2100
Wire Wire Line
	9800 2200 9700 2200
Wire Wire Line
	9800 2300 9700 2300
Wire Wire Line
	9800 2400 9700 2400
Wire Wire Line
	9800 2500 9700 2500
Wire Wire Line
	9800 2600 9700 2600
Wire Wire Line
	9800 2700 9700 2700
Wire Wire Line
	9800 2800 9700 2800
Wire Wire Line
	9800 2900 9700 2900
Wire Wire Line
	9800 3000 9700 3000
Text GLabel 9650 1200 0    50   Input ~ 0
A1
Text GLabel 9650 1300 0    50   Input ~ 0
A2
Text GLabel 9650 1400 0    50   Input ~ 0
A3
Text GLabel 9650 1500 0    50   Input ~ 0
A4
Text GLabel 9650 1600 0    50   Input ~ 0
A5
Text GLabel 9650 1700 0    50   Input ~ 0
A6
Text GLabel 9650 1800 0    50   Input ~ 0
A7
Text GLabel 9650 1900 0    50   Input ~ 0
A8
Text GLabel 9650 2000 0    50   Input ~ 0
A9
Text GLabel 9700 2100 0    50   Input ~ 0
A10
Text GLabel 9700 2200 0    50   Input ~ 0
A11
Text GLabel 9700 2300 0    50   Input ~ 0
A12
Text GLabel 9700 2400 0    50   Input ~ 0
A13
Text GLabel 9700 2500 0    50   Input ~ 0
A14
Text GLabel 9700 2600 0    50   Input ~ 0
A15
Text GLabel 9700 2700 0    50   Input ~ 0
A16
Text GLabel 9700 2800 0    50   Input ~ 0
A17
Text GLabel 9700 2900 0    50   Input ~ 0
A18
Text GLabel 9700 3000 0    50   Input ~ 0
A19
Text GLabel 10850 1200 2    50   BiDi ~ 0
D8
Text GLabel 10850 1300 2    50   BiDi ~ 0
D9
Text GLabel 10850 1400 2    50   BiDi ~ 0
D10
Text GLabel 10850 1500 2    50   BiDi ~ 0
D11
Text GLabel 10850 1600 2    50   BiDi ~ 0
D12
Text GLabel 10850 1700 2    50   BiDi ~ 0
D13
Text GLabel 10850 1800 2    50   BiDi ~ 0
D14
Text GLabel 10850 1900 2    50   BiDi ~ 0
D15
$Comp
L Memory_RAM:AS6C4008-55PCN U7
U 1 1 5EC88CFC
P 10300 4900
F 0 "U7" H 10300 6181 50  0000 C CNN
F 1 "AS6C4008-55PCN" H 10300 6090 50  0000 C CNN
F 2 "Package_DIP:DIP-32_W15.24mm" H 10300 5000 50  0001 C CNN
F 3 "https://www.alliancememory.com/wp-content/uploads/pdf/AS6C4008.pdf" H 10300 5000 50  0001 C CNN
	1    10300 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10800 5100 10850 5100
Wire Wire Line
	10800 5200 10850 5200
Wire Wire Line
	10800 5000 10850 5000
Text GLabel 10850 5000 2    50   Input ~ 0
ORAM4
Text GLabel 10850 5100 2    50   Input ~ 0
WnR
Text GLabel 10850 5200 2    50   Input ~ 0
RnW
Wire Wire Line
	10800 4700 10850 4700
Wire Wire Line
	10800 4600 10850 4600
Wire Wire Line
	10800 4500 10850 4500
Wire Wire Line
	10800 4400 10850 4400
Wire Wire Line
	10800 4300 10850 4300
Wire Wire Line
	10800 4200 10850 4200
Wire Wire Line
	10800 4100 10850 4100
Wire Wire Line
	10800 4000 10850 4000
Wire Wire Line
	9800 4000 9700 4000
Wire Wire Line
	9800 4100 9700 4100
Wire Wire Line
	9800 4200 9700 4200
Wire Wire Line
	9800 4300 9700 4300
Wire Wire Line
	9800 4400 9700 4400
Wire Wire Line
	9800 4500 9700 4500
Wire Wire Line
	9800 4600 9700 4600
Wire Wire Line
	9800 4700 9700 4700
Wire Wire Line
	9800 4800 9700 4800
Wire Wire Line
	9800 4900 9700 4900
Wire Wire Line
	9800 5000 9750 5000
Wire Wire Line
	9800 5100 9750 5100
Wire Wire Line
	9800 5200 9750 5200
Wire Wire Line
	9800 5300 9750 5300
Wire Wire Line
	9800 5400 9750 5400
Wire Wire Line
	9800 5500 9750 5500
Wire Wire Line
	9800 5600 9750 5600
Wire Wire Line
	9800 5700 9750 5700
Wire Wire Line
	9800 5800 9750 5800
Text GLabel 9700 4000 0    50   Input ~ 0
A1
Text GLabel 9700 4100 0    50   Input ~ 0
A2
Text GLabel 9700 4200 0    50   Input ~ 0
A3
Text GLabel 9700 4300 0    50   Input ~ 0
A4
Text GLabel 9700 4400 0    50   Input ~ 0
A5
Text GLabel 9700 4500 0    50   Input ~ 0
A6
Text GLabel 9700 4600 0    50   Input ~ 0
A7
Text GLabel 9700 4700 0    50   Input ~ 0
A8
Text GLabel 9700 4800 0    50   Input ~ 0
A9
Text GLabel 9700 4900 0    50   Input ~ 0
A10
Text GLabel 9750 5000 0    50   Input ~ 0
A11
Text GLabel 9750 5100 0    50   Input ~ 0
A12
Text GLabel 9750 5200 0    50   Input ~ 0
A13
Text GLabel 9750 5300 0    50   Input ~ 0
A14
Text GLabel 9750 5400 0    50   Input ~ 0
A15
Text GLabel 9750 5500 0    50   Input ~ 0
A16
Text GLabel 9750 5600 0    50   Input ~ 0
A17
Text GLabel 9750 5700 0    50   Input ~ 0
A18
Text GLabel 9750 5800 0    50   Input ~ 0
A19
Text GLabel 10850 4000 2    50   BiDi ~ 0
D0
Text GLabel 10850 4100 2    50   BiDi ~ 0
D1
Text GLabel 10850 4200 2    50   BiDi ~ 0
D2
Text GLabel 10850 4300 2    50   BiDi ~ 0
D3
Text GLabel 10850 4400 2    50   BiDi ~ 0
D4
Text GLabel 10850 4500 2    50   BiDi ~ 0
D5
Text GLabel 10850 4600 2    50   BiDi ~ 0
D6
Text GLabel 10850 4700 2    50   BiDi ~ 0
D7
Wire Wire Line
	10300 6000 10300 6300
Wire Wire Line
	10300 6300 8250 6300
Connection ~ 8250 6300
Wire Wire Line
	8250 6000 8250 6300
Wire Wire Line
	8250 6300 6300 6300
Connection ~ 6300 6300
Wire Wire Line
	6300 6000 6300 6300
Wire Wire Line
	6300 6300 4400 6300
Wire Wire Line
	4400 6300 3550 6300
Connection ~ 4400 6300
Wire Wire Line
	4400 6000 4400 6300
Wire Wire Line
	4400 3550 3550 3550
Connection ~ 4400 3550
Wire Wire Line
	4400 3550 4400 3800
Wire Wire Line
	4400 3550 6300 3550
Connection ~ 6300 3550
Wire Wire Line
	6300 3550 6300 3800
Wire Wire Line
	6300 3550 8250 3550
Wire Wire Line
	8250 3550 10300 3550
Connection ~ 8250 3550
Wire Wire Line
	8250 3550 8250 3800
Wire Wire Line
	10300 3550 10300 3800
Wire Wire Line
	10300 3200 10300 3450
Wire Wire Line
	10300 650  10300 1000
Wire Wire Line
	10300 650  8250 650 
Connection ~ 8250 650 
Wire Wire Line
	8250 650  8250 1000
Wire Wire Line
	8250 650  6300 650 
Connection ~ 6300 650 
Wire Wire Line
	6300 650  4400 650 
Wire Wire Line
	4400 650  3550 650 
Connection ~ 4400 650 
Wire Wire Line
	4400 650  4400 1000
Wire Wire Line
	6100 6600 5650 6600
Wire Wire Line
	2900 6850 2900 6600
Wire Wire Line
	3350 6850 3350 6600
Connection ~ 3350 6600
Wire Wire Line
	3350 6600 2900 6600
Wire Wire Line
	3800 6850 3800 6600
Connection ~ 3800 6600
Wire Wire Line
	3800 6600 3350 6600
Wire Wire Line
	4250 6850 4250 6600
Connection ~ 4250 6600
Wire Wire Line
	4250 6600 3800 6600
Wire Wire Line
	4750 6850 4750 6600
Connection ~ 4750 6600
Wire Wire Line
	4750 6600 4250 6600
Wire Wire Line
	5200 6850 5200 6600
Connection ~ 5200 6600
Wire Wire Line
	5200 6600 4750 6600
Wire Wire Line
	5650 6850 5650 6600
Connection ~ 5650 6600
Wire Wire Line
	5650 6600 5200 6600
Wire Wire Line
	6100 6600 6100 6850
Wire Wire Line
	2900 7150 2900 7450
Wire Wire Line
	2900 7450 3350 7450
Wire Wire Line
	6100 7150 6100 7450
Connection ~ 6100 7450
Wire Wire Line
	6100 7450 6400 7450
Wire Wire Line
	5650 7150 5650 7450
Connection ~ 5650 7450
Wire Wire Line
	5650 7450 6100 7450
Wire Wire Line
	5200 7150 5200 7450
Connection ~ 5200 7450
Wire Wire Line
	5200 7450 5650 7450
Wire Wire Line
	4750 7150 4750 7450
Connection ~ 4750 7450
Wire Wire Line
	4750 7450 5200 7450
Wire Wire Line
	4250 7150 4250 7450
Connection ~ 4250 7450
Wire Wire Line
	4250 7450 4750 7450
Wire Wire Line
	3800 7150 3800 7450
Connection ~ 3800 7450
Wire Wire Line
	3800 7450 4250 7450
Wire Wire Line
	3350 7150 3350 7450
Connection ~ 3350 7450
Wire Wire Line
	3350 7450 3800 7450
Wire Wire Line
	1550 900  2050 900 
Wire Wire Line
	1250 900  950  900 
Text GLabel 950  900  0    50   UnSpc ~ 0
VCC
Wire Wire Line
	2050 900  2050 1050
Wire Wire Line
	1500 7350 1500 7450
Wire Wire Line
	1500 7450 2450 7450
Connection ~ 2900 7450
$Comp
L Device:C C1
U 1 1 5FB5669C
P 2450 7000
F 0 "C1" H 2565 7046 50  0000 L CNN
F 1 "100nF" H 2565 6955 50  0000 L CNN
F 2 "rosco_m68k:C2.5-3" H 2488 6850 50  0001 C CNN
F 3 "~" H 2450 7000 50  0001 C CNN
	1    2450 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 5950 2450 5950
Wire Wire Line
	2450 5950 2450 6600
Wire Wire Line
	2450 7150 2450 7450
Connection ~ 2450 7450
Wire Wire Line
	2450 7450 2900 7450
Wire Wire Line
	2900 6600 2450 6600
Connection ~ 2900 6600
Connection ~ 2450 6600
Wire Wire Line
	2450 6600 2450 6850
Wire Wire Line
	1000 6150 950  6150
Wire Wire Line
	1000 6250 950  6250
Wire Wire Line
	1000 6350 950  6350
Wire Wire Line
	1000 6450 950  6450
Wire Wire Line
	1000 6550 950  6550
Wire Wire Line
	1000 6650 950  6650
Wire Wire Line
	1000 6750 950  6750
Wire Wire Line
	1000 6850 950  6850
Wire Wire Line
	1000 6950 950  6950
Wire Wire Line
	1000 7050 950  7050
Wire Wire Line
	2000 6150 2050 6150
Wire Wire Line
	2000 6250 2050 6250
Wire Wire Line
	2000 6350 2050 6350
Wire Wire Line
	2000 6450 2050 6450
Wire Wire Line
	2000 6650 2050 6650
Wire Wire Line
	2000 6750 2050 6750
Wire Wire Line
	2000 6850 2050 6850
Text GLabel 950  6150 0    50   Input ~ 0
A23
Text GLabel 950  6250 0    50   Input ~ 0
A22
Text GLabel 950  6350 0    50   Input ~ 0
A21
Text GLabel 950  6450 0    50   Input ~ 0
A20
Text GLabel 950  6550 0    50   UnSpc ~ 0
JP1
Text GLabel 950  6650 0    50   UnSpc ~ 0
JP2
Text GLabel 950  6750 0    50   UnSpc ~ 0
JP3
Text GLabel 950  6850 0    50   Input ~ 0
UDS
Text GLabel 950  6950 0    50   Input ~ 0
LDS
Text GLabel 950  7050 0    50   Input ~ 0
EXPSEL
Text GLabel 2050 6850 2    50   Input ~ 0
ORAM4
Text GLabel 2050 6750 2    50   Input ~ 0
ORAM3
Text GLabel 2050 6650 2    50   Input ~ 0
ORAM2
Text GLabel 2050 6450 2    50   Input ~ 0
ERAM1
Text GLabel 2050 6350 2    50   Input ~ 0
ERAM2
Text GLabel 2050 6250 2    50   Input ~ 0
ERAM3
Text GLabel 2050 6150 2    50   Input ~ 0
ERAM4
Text GLabel 3350 1900 1    50   UnSpc ~ 0
VCC
Wire Wire Line
	2750 2500 2700 2500
Text GLabel 2150 2400 0    50   UnSpc ~ 0
JP2
Text GLabel 2150 2300 0    50   UnSpc ~ 0
JP3
Wire Wire Line
	2000 6550 2050 6550
Text GLabel 2050 6550 2    50   Input ~ 0
ORAM1
$Comp
L Device:R R3
U 1 1 61256F81
P 2200 2950
F 0 "R3" H 2270 2996 50  0000 L CNN
F 1 "4K7" H 2270 2905 50  0000 L CNN
F 2 "rosco_m68k:R-0207_10" V 2130 2950 50  0001 C CNN
F 3 "~" H 2200 2950 50  0001 C CNN
	1    2200 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 61256FD7
P 2450 2950
F 0 "R4" H 2520 2996 50  0000 L CNN
F 1 "4K7" H 2520 2905 50  0000 L CNN
F 2 "rosco_m68k:R-0207_10" V 2380 2950 50  0001 C CNN
F 3 "~" H 2450 2950 50  0001 C CNN
	1    2450 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 612572BC
P 2700 2950
F 0 "R5" H 2770 2996 50  0000 L CNN
F 1 "4K7" H 2770 2905 50  0000 L CNN
F 2 "rosco_m68k:R-0207_10" V 2630 2950 50  0001 C CNN
F 3 "~" H 2700 2950 50  0001 C CNN
	1    2700 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 2800 2700 2500
Wire Wire Line
	2200 3100 2200 3300
Wire Wire Line
	2200 3300 2450 3300
Wire Wire Line
	2700 3300 2700 3100
Wire Wire Line
	2450 3100 2450 3300
Connection ~ 2450 3300
Wire Wire Line
	2450 3300 2700 3300
Wire Wire Line
	2450 3300 2450 3450
Text GLabel 2450 3450 3    50   UnSpc ~ 0
GND
Wire Wire Line
	2450 5950 2450 5750
Connection ~ 2450 5950
Text GLabel 2450 5750 1    50   UnSpc ~ 0
VCC
Wire Wire Line
	6300 650  6300 1000
Wire Wire Line
	4400 3200 4400 3450
Connection ~ 4400 3450
Wire Wire Line
	4400 3450 6300 3450
Wire Wire Line
	6300 3450 8250 3450
Wire Wire Line
	8250 3450 8250 3200
Connection ~ 8250 3450
Wire Wire Line
	8250 3450 10300 3450
Wire Wire Line
	9650 1200 9800 1200
$Comp
L power:PWR_FLAG #GND0101
U 1 1 618BB686
P 900 2400
F 0 "#GND0101" H 900 2475 50  0001 C CNN
F 1 "PWR_FLAG" H 900 2573 50  0001 C CNN
F 2 "" H 900 2400 50  0001 C CNN
F 3 "~" H 900 2400 50  0001 C CNN
	1    900  2400
	-1   0    0    1   
$EndComp
Text GLabel 1600 4000 2    50   Output ~ 0
A19
Wire Wire Line
	900  4000 1000 4000
$Comp
L power:PWR_FLAG #VCC0101
U 1 1 5EA05E39
P 900 2150
F 0 "#VCC0101" H 900 2225 50  0001 C CNN
F 1 "PWR_FLAG" H 900 2323 50  0001 C CNN
F 2 "" H 900 2150 50  0001 C CNN
F 3 "~" H 900 2150 50  0001 C CNN
	1    900  2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 4500 900  4500
Wire Wire Line
	1000 4600 900  4600
Wire Wire Line
	1000 4700 900  4700
Wire Wire Line
	1000 4800 900  4800
Wire Wire Line
	1000 4900 900  4900
Wire Wire Line
	1000 5000 900  5000
Wire Wire Line
	1500 3900 1600 3900
Wire Wire Line
	1500 3600 1600 3600
Wire Wire Line
	1500 3500 1600 3500
Wire Wire Line
	1500 3400 1600 3400
Wire Wire Line
	1500 3300 1600 3300
Wire Wire Line
	1500 3200 1600 3200
Wire Wire Line
	1500 3100 1600 3100
Wire Wire Line
	1500 2900 1600 2900
Wire Wire Line
	1500 2800 1600 2800
Wire Wire Line
	1500 2700 1600 2700
Wire Wire Line
	1500 2600 1600 2600
Wire Wire Line
	1500 2500 1600 2500
Wire Wire Line
	1500 2400 1600 2400
Wire Wire Line
	1500 2300 1600 2300
Wire Wire Line
	1500 2200 1600 2200
Wire Wire Line
	800  2200 900  2200
Wire Wire Line
	900  2150 900  2200
Connection ~ 900  2200
Wire Wire Line
	900  2200 1000 2200
Wire Wire Line
	800  2400 900  2400
Connection ~ 900  2400
Wire Wire Line
	900  2400 1000 2400
NoConn ~ 1000 2300
NoConn ~ 1000 2500
NoConn ~ 1000 2600
NoConn ~ 1000 2700
NoConn ~ 1000 2800
NoConn ~ 1000 2900
NoConn ~ 1000 3100
NoConn ~ 1000 3200
NoConn ~ 1000 3300
NoConn ~ 1000 3400
NoConn ~ 1000 3500
NoConn ~ 1000 3600
NoConn ~ 1000 3900
NoConn ~ 1500 4500
NoConn ~ 1500 4600
NoConn ~ 1500 4700
NoConn ~ 1500 4800
NoConn ~ 1500 4900
NoConn ~ 1500 5000
Text Notes 750  5500 0    50   ~ 0
Note - Inverted layout!
$Comp
L Connector_Generic:Conn_02x03_Odd_Even JP1-3
U 1 1 5F7CDC64
P 2950 2400
F 0 "JP1-3" H 3000 2625 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 3000 2626 50  0001 C CNN
F 2 "rosco_m68k:pin-2X3" H 2950 2400 50  0001 C CNN
F 3 "~" H 2950 2400 50  0001 C CNN
	1    2950 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 2400 2450 2400
Wire Wire Line
	2750 2300 2200 2300
Wire Wire Line
	2700 2500 2150 2500
Connection ~ 2700 2500
Wire Wire Line
	2200 2800 2200 2300
Connection ~ 2200 2300
Wire Wire Line
	2200 2300 2150 2300
Wire Wire Line
	2450 2800 2450 2400
Connection ~ 2450 2400
Wire Wire Line
	2450 2400 2150 2400
Wire Wire Line
	3350 1900 3350 2300
Wire Wire Line
	3350 2500 3250 2500
Wire Wire Line
	3250 2400 3350 2400
Connection ~ 3350 2400
Wire Wire Line
	3350 2400 3350 2500
Wire Wire Line
	3250 2300 3350 2300
Connection ~ 3350 2300
Wire Wire Line
	3350 2300 3350 2400
Text GLabel 2150 2500 0    50   UnSpc ~ 0
JP1
$Comp
L Device:CP C10
U 1 1 5FC1741F
P 2300 4550
F 0 "C10" H 2418 4596 50  0000 L CNN
F 1 "100uF" H 2418 4505 50  0000 L CNN
F 2 "rosco_m68k:C-Electolytic-2,5-5" H 2338 4400 50  0001 C CNN
F 3 "~" H 2300 4550 50  0001 C CNN
	1    2300 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C11
U 1 1 5FC194FD
P 2750 4550
F 0 "C11" H 2868 4596 50  0000 L CNN
F 1 "100uF" H 2868 4505 50  0000 L CNN
F 2 "rosco_m68k:C-Electolytic-2,5-5" H 2788 4400 50  0001 C CNN
F 3 "~" H 2750 4550 50  0001 C CNN
	1    2750 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 4400 2300 4250
Wire Wire Line
	2300 4250 2750 4250
Wire Wire Line
	2750 4250 2750 4400
Wire Wire Line
	2750 4700 2750 4850
Wire Wire Line
	2750 4850 2300 4850
Wire Wire Line
	2300 4850 2300 4700
Wire Wire Line
	2750 4850 2750 5050
Connection ~ 2750 4850
Wire Wire Line
	2300 4250 2300 4100
Connection ~ 2300 4250
Text GLabel 2300 4100 1    50   UnSpc ~ 0
VCC
Text GLabel 2750 5050 3    50   UnSpc ~ 0
GND
Text GLabel 6400 7450 2    50   UnSpc ~ 0
GND
$EndSCHEMATC
