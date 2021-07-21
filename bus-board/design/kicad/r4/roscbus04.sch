EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
Title "ROSCO_M68K LOCAL BUS BACKPLANE r4"
Date "2021-05-22"
Rev "4"
Comp "The Really Old-School Company Limited"
Comment1 "Open Source Hardware licenced under CERN Open Hardware Licence"
Comment2 "Copyright 2020-2021 Ross Bamford and Contributors"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Mechanical:MountingHole H1
U 1 1 5EC55986
P 3500 650
F 0 "H1" H 3600 696 50  0000 L CNN
F 1 "MountingHole" H 3600 605 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 3500 650 50  0001 C CNN
F 3 "~" H 3500 650 50  0001 C CNN
	1    3500 650 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5EC576ED
P 4200 650
F 0 "H2" H 4300 696 50  0000 L CNN
F 1 "MountingHole" H 4300 605 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 4200 650 50  0001 C CNN
F 3 "~" H 4200 650 50  0001 C CNN
	1    4200 650 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5EC5806F
P 4900 650
F 0 "H3" H 5000 696 50  0000 L CNN
F 1 "MountingHole" H 5000 605 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 4900 650 50  0001 C CNN
F 3 "~" H 4900 650 50  0001 C CNN
	1    4900 650 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5EC589F1
P 5600 650
F 0 "H4" H 5700 696 50  0000 L CNN
F 1 "MountingHole" H 5700 605 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 5600 650 50  0001 C CNN
F 3 "~" H 5600 650 50  0001 C CNN
	1    5600 650 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H5
U 1 1 5EC5B126
P 6300 650
F 0 "H5" H 6400 696 50  0000 L CNN
F 1 "MountingHole" H 6400 605 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 6300 650 50  0001 C CNN
F 3 "~" H 6300 650 50  0001 C CNN
	1    6300 650 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H6
U 1 1 5EC5BAC5
P 7000 650
F 0 "H6" H 7100 696 50  0000 L CNN
F 1 "MountingHole" H 7100 605 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 7000 650 50  0001 C CNN
F 3 "~" H 7000 650 50  0001 C CNN
	1    7000 650 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H8
U 1 1 5EC5CE9C
P 8500 650
F 0 "H8" H 8600 696 50  0000 L CNN
F 1 "MountingHole" H 8600 605 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 8500 650 50  0001 C CNN
F 3 "~" H 8500 650 50  0001 C CNN
	1    8500 650 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H7
U 1 1 5EC5D853
P 7750 650
F 0 "H7" H 7850 696 50  0000 L CNN
F 1 "MountingHole" H 7850 605 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 7750 650 50  0001 C CNN
F 3 "~" H 7750 650 50  0001 C CNN
	1    7750 650 
	1    0    0    -1  
$EndComp
$Sheet
S 2700 6400 700  650 
U 60AC6B8E
F0 "PowerSection" 50
F1 "PowerSection.sch" 50
$EndSheet
$Sheet
S 3900 6400 700  650 
U 60AC8424
F0 "DriverSection" 50
F1 "DriverSection.sch" 50
$EndSheet
$Comp
L Connector_Generic:Conn_02x32_Odd_Even BUS1-1
U 1 1 5EAFAE42
P 10200 2700
F 0 "BUS1-1" H 10250 4417 50  0000 C CNN
F 1 "Conn_02x32_Odd_Even" H 10250 4326 50  0000 C CNN
F 2 "rosco_m68k:pin-2X32" H 10200 2700 50  0001 C CNN
F 3 "~" H 10200 2700 50  0001 C CNN
	1    10200 2700
	1    0    0    -1  
$EndComp
Text GLabel 10000 3500 0    50   Output ~ 0
BAS
Text GLabel 10000 3600 0    50   BiDi ~ 0
BERR
Text GLabel 10000 3700 0    50   Output ~ 0
BG
Text GLabel 10000 3800 0    50   Output ~ 0
BGACK
Text GLabel 10000 3900 0    50   Input ~ 0
BR
Text GLabel 10000 4000 0    50   BiDi ~ 0
DTACK
Text GLabel 10000 4100 0    50   Output ~ 0
BRW
Text GLabel 10000 4200 0    50   BiDi ~ 0
BD0
Text GLabel 10000 4300 0    50   BiDi ~ 0
BD1
Text GLabel 10500 1300 2    50   Input ~ 0
CPUCLK
Text GLabel 10500 1500 2    50   Input ~ 0
VPA
Text GLabel 10500 1600 2    50   Output ~ 0
E
Text GLabel 10500 1700 2    50   Output ~ 0
VMA
Text GLabel 10500 1800 2    50   Output ~ 0
MFPIEO
Text GLabel 10500 2400 2    50   3State ~ 0
IPL0
Text GLabel 10500 2500 2    50   3State ~ 0
IPL1
Text GLabel 10500 2600 2    50   3State ~ 0
IPL2
Text GLabel 10500 2700 2    50   Output ~ 0
BLDS
Text GLabel 10500 2800 2    50   Output ~ 0
BUDS
Text GLabel 10500 2900 2    50   BiDi ~ 0
RESET
Text GLabel 10500 1200 2    50   UnSpc ~ 0
VCC
Text GLabel 10500 1400 2    50   UnSpc ~ 0
GND
Text GLabel 10000 1200 0    50   Output ~ 0
BA1
Text GLabel 10000 1300 0    50   Output ~ 0
BA2
Text GLabel 10000 1400 0    50   Output ~ 0
BA3
Text GLabel 10000 1500 0    50   Output ~ 0
BA4
Text GLabel 10000 1600 0    50   Output ~ 0
BA5
Text GLabel 10000 1700 0    50   Output ~ 0
BA6
Text GLabel 10000 1800 0    50   Output ~ 0
BA7
Text GLabel 10000 1900 0    50   Output ~ 0
BA8
Text GLabel 10000 2000 0    50   Output ~ 0
BA9
Text GLabel 10000 2100 0    50   Output ~ 0
BA10
Text GLabel 10000 2200 0    50   Output ~ 0
BA11
Text GLabel 10000 2300 0    50   Output ~ 0
BA12
Text GLabel 10000 2400 0    50   Output ~ 0
BA13
Text GLabel 10000 2500 0    50   Output ~ 0
BA14
Text GLabel 10000 2600 0    50   Output ~ 0
BA15
Text GLabel 10000 2700 0    50   Output ~ 0
BA16
Text GLabel 10000 2800 0    50   Output ~ 0
BA17
Text GLabel 10000 2900 0    50   Output ~ 0
BA18
Text GLabel 10000 3000 0    50   Output ~ 0
BA19
Text GLabel 10000 3100 0    50   Output ~ 0
BA20
Text GLabel 10000 3200 0    50   Output ~ 0
BA21
Text GLabel 10000 3300 0    50   Output ~ 0
BA22
Text GLabel 10000 3400 0    50   Output ~ 0
BA23
Text GLabel 10500 4300 2    50   BiDi ~ 0
BD2
Text GLabel 10500 4200 2    50   BiDi ~ 0
BD3
Text GLabel 10500 4100 2    50   BiDi ~ 0
BD4
Text GLabel 10500 4000 2    50   BiDi ~ 0
BD5
Text GLabel 10500 3900 2    50   BiDi ~ 0
BD6
Text GLabel 10500 3800 2    50   BiDi ~ 0
BD7
Text GLabel 10500 3700 2    50   BiDi ~ 0
BD8
Text GLabel 10500 3600 2    50   BiDi ~ 0
BD9
Text GLabel 10500 3500 2    50   BiDi ~ 0
BD10
Text GLabel 10500 3400 2    50   BiDi ~ 0
BD11
Text GLabel 10500 3300 2    50   BiDi ~ 0
BD12
Text GLabel 10500 3200 2    50   BiDi ~ 0
BD13
Text GLabel 10500 3100 2    50   BiDi ~ 0
BD14
Text GLabel 10500 3000 2    50   BiDi ~ 0
BD15
Text GLabel 10500 1900 2    50   Output ~ 0
BIOSEL
Text GLabel 10500 2000 2    50   Output ~ 0
BEXPSEL
Text GLabel 10500 2100 2    50   Output ~ 0
BFC0
Text GLabel 10500 2200 2    50   Output ~ 0
BFC1
Text GLabel 10500 2300 2    50   Output ~ 0
BFC2
Text GLabel 10500 4750 2    50   3State ~ 0
EXT2
Text GLabel 10000 4750 0    50   3State ~ 0
EXT1
Text GLabel 10500 5450 2    50   3State ~ 0
EXT16
Text GLabel 10500 5350 2    50   3State ~ 0
EXT14
Text GLabel 10500 5250 2    50   3State ~ 0
EXT12
Text GLabel 10500 5150 2    50   3State ~ 0
EXT10
Text GLabel 10500 5050 2    50   3State ~ 0
EXT8
Text GLabel 10500 4950 2    50   3State ~ 0
EXT6
Text GLabel 10500 4850 2    50   3State ~ 0
EXT4
Text GLabel 10000 5450 0    50   3State ~ 0
EXT15
Text GLabel 10000 5350 0    50   3State ~ 0
EXT13
Text GLabel 10000 5250 0    50   3State ~ 0
EXT11
Text GLabel 10000 5150 0    50   3State ~ 0
EXT9
Text GLabel 10000 5050 0    50   3State ~ 0
EXT7
Text GLabel 10000 4950 0    50   3State ~ 0
EXT5
Text GLabel 10000 4850 0    50   3State ~ 0
EXT3
$Comp
L Connector_Generic:Conn_02x08_Odd_Even BUS1-2
U 1 1 5EAFAE48
P 10200 5050
F 0 "BUS1-2" H 10250 5567 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 10250 5476 50  0000 C CNN
F 2 "rosco_m68k:pin-2X8" H 10200 5050 50  0001 C CNN
F 3 "~" H 10200 5050 50  0001 C CNN
	1    10200 5050
	1    0    0    -1  
$EndComp
Text GLabel 8350 2300 2    50   Output ~ 0
BFC2
Text GLabel 8350 2200 2    50   Output ~ 0
BFC1
Text GLabel 8350 2100 2    50   Output ~ 0
BFC0
Text GLabel 8350 2000 2    50   Output ~ 0
BEXPSEL
Text GLabel 8350 1900 2    50   Output ~ 0
BIOSEL
Text GLabel 8350 3000 2    50   BiDi ~ 0
BD15
Text GLabel 8350 3100 2    50   BiDi ~ 0
BD14
Text GLabel 8350 3200 2    50   BiDi ~ 0
BD13
Text GLabel 8350 3300 2    50   BiDi ~ 0
BD12
Text GLabel 8350 3400 2    50   BiDi ~ 0
BD11
Text GLabel 8350 3500 2    50   BiDi ~ 0
BD10
Text GLabel 8350 3600 2    50   BiDi ~ 0
BD9
Text GLabel 8350 3700 2    50   BiDi ~ 0
BD8
Text GLabel 8350 3800 2    50   BiDi ~ 0
BD7
Text GLabel 8350 3900 2    50   BiDi ~ 0
BD6
Text GLabel 8350 4000 2    50   BiDi ~ 0
BD5
Text GLabel 8350 4100 2    50   BiDi ~ 0
BD4
Text GLabel 8350 4200 2    50   BiDi ~ 0
BD3
Text GLabel 8350 4300 2    50   BiDi ~ 0
BD2
Text GLabel 7850 3400 0    50   Output ~ 0
BA23
Text GLabel 7850 3300 0    50   Output ~ 0
BA22
Text GLabel 7850 3200 0    50   Output ~ 0
BA21
Text GLabel 7850 3100 0    50   Output ~ 0
BA20
Text GLabel 7850 3000 0    50   Output ~ 0
BA19
Text GLabel 7850 2900 0    50   Output ~ 0
BA18
Text GLabel 7850 2800 0    50   Output ~ 0
BA17
Text GLabel 7850 2700 0    50   Output ~ 0
BA16
Text GLabel 7850 2600 0    50   Output ~ 0
BA15
Text GLabel 7850 2500 0    50   Output ~ 0
BA14
Text GLabel 7850 2400 0    50   Output ~ 0
BA13
Text GLabel 7850 2300 0    50   Output ~ 0
BA12
Text GLabel 7850 2200 0    50   Output ~ 0
BA11
Text GLabel 7850 2100 0    50   Output ~ 0
BA10
Text GLabel 7850 2000 0    50   Output ~ 0
BA9
Text GLabel 7850 1900 0    50   Output ~ 0
BA8
Text GLabel 7850 1800 0    50   Output ~ 0
BA7
Text GLabel 7850 1700 0    50   Output ~ 0
BA6
Text GLabel 7850 1600 0    50   Output ~ 0
BA5
Text GLabel 7850 1500 0    50   Output ~ 0
BA4
Text GLabel 7850 1400 0    50   Output ~ 0
BA3
Text GLabel 7850 1300 0    50   Output ~ 0
BA2
Text GLabel 7850 1200 0    50   Output ~ 0
BA1
Text GLabel 8350 1400 2    50   UnSpc ~ 0
GND
Text GLabel 8350 1200 2    50   UnSpc ~ 0
VCC
Text GLabel 8350 2900 2    50   BiDi ~ 0
RESET
Text GLabel 8350 2800 2    50   Output ~ 0
BUDS
Text GLabel 8350 2700 2    50   Output ~ 0
BLDS
Text GLabel 8350 2600 2    50   3State ~ 0
IPL2
Text GLabel 8350 2500 2    50   3State ~ 0
IPL1
Text GLabel 8350 2400 2    50   3State ~ 0
IPL0
Text GLabel 8350 1800 2    50   Output ~ 0
MFPIEO
Text GLabel 8350 1700 2    50   Output ~ 0
VMA
Text GLabel 8350 1600 2    50   Output ~ 0
E
Text GLabel 8350 1500 2    50   Input ~ 0
VPA
Text GLabel 8350 1300 2    50   Input ~ 0
CPUCLK
Text GLabel 7850 4300 0    50   BiDi ~ 0
BD1
Text GLabel 7850 4200 0    50   BiDi ~ 0
BD0
Text GLabel 7850 4100 0    50   Output ~ 0
BRW
Text GLabel 7850 4000 0    50   BiDi ~ 0
DTACK
Text GLabel 7850 3900 0    50   Input ~ 0
BR
Text GLabel 7850 3800 0    50   Output ~ 0
BGACK
Text GLabel 7850 3700 0    50   Output ~ 0
BG
Text GLabel 7850 3600 0    50   BiDi ~ 0
BERR
Text GLabel 7850 3500 0    50   Output ~ 0
BAS
$Comp
L Connector_Generic:Conn_02x32_Odd_Even BUS2-1
U 1 1 5EAFADE6
P 8050 2700
F 0 "BUS2-1" H 8100 4417 50  0000 C CNN
F 1 "Conn_02x32_Odd_Even" H 8100 4326 50  0000 C CNN
F 2 "rosco_m68k:pin-2X32" H 8050 2700 50  0001 C CNN
F 3 "~" H 8050 2700 50  0001 C CNN
	1    8050 2700
	1    0    0    -1  
$EndComp
Text GLabel 8350 4750 2    50   3State ~ 0
EXT2
Text GLabel 7850 4750 0    50   3State ~ 0
EXT1
Text GLabel 8350 5450 2    50   3State ~ 0
EXT16
Text GLabel 8350 5350 2    50   3State ~ 0
EXT14
Text GLabel 8350 5250 2    50   3State ~ 0
EXT12
Text GLabel 8350 5150 2    50   3State ~ 0
EXT10
Text GLabel 8350 5050 2    50   3State ~ 0
EXT8
Text GLabel 8350 4950 2    50   3State ~ 0
EXT6
Text GLabel 8350 4850 2    50   3State ~ 0
EXT4
Text GLabel 7850 5450 0    50   3State ~ 0
EXT15
Text GLabel 7850 5350 0    50   3State ~ 0
EXT13
Text GLabel 7850 5250 0    50   3State ~ 0
EXT11
Text GLabel 7850 5150 0    50   3State ~ 0
EXT9
Text GLabel 7850 5050 0    50   3State ~ 0
EXT7
Text GLabel 7850 4950 0    50   3State ~ 0
EXT5
Text GLabel 7850 4850 0    50   3State ~ 0
EXT3
$Comp
L Connector_Generic:Conn_02x08_Odd_Even BUS2-2
U 1 1 5EAFADEC
P 8050 5050
F 0 "BUS2-2" H 8100 5567 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 8100 5476 50  0000 C CNN
F 2 "rosco_m68k:pin-2X8" H 8050 5050 50  0001 C CNN
F 3 "~" H 8050 5050 50  0001 C CNN
	1    8050 5050
	1    0    0    -1  
$EndComp
Text GLabel 6150 2300 2    50   Output ~ 0
BFC2
Text GLabel 6150 2200 2    50   Output ~ 0
BFC1
Text GLabel 6150 2100 2    50   Output ~ 0
BFC0
Text GLabel 6150 2000 2    50   Output ~ 0
BEXPSEL
Text GLabel 6150 1900 2    50   Output ~ 0
BIOSEL
Text GLabel 6150 3000 2    50   BiDi ~ 0
BD15
Text GLabel 6150 3100 2    50   BiDi ~ 0
BD14
Text GLabel 6150 3200 2    50   BiDi ~ 0
BD13
Text GLabel 6150 3300 2    50   BiDi ~ 0
BD12
Text GLabel 6150 3400 2    50   BiDi ~ 0
BD11
Text GLabel 6150 3500 2    50   BiDi ~ 0
BD10
Text GLabel 6150 3600 2    50   BiDi ~ 0
BD9
Text GLabel 6150 3700 2    50   BiDi ~ 0
BD8
Text GLabel 6150 3800 2    50   BiDi ~ 0
BD7
Text GLabel 6150 3900 2    50   BiDi ~ 0
BD6
Text GLabel 6150 4000 2    50   BiDi ~ 0
BD5
Text GLabel 6150 4100 2    50   BiDi ~ 0
BD4
Text GLabel 6150 4200 2    50   BiDi ~ 0
BD3
Text GLabel 6150 4300 2    50   BiDi ~ 0
BD2
Text GLabel 5650 3400 0    50   Output ~ 0
BA23
Text GLabel 5650 3300 0    50   Output ~ 0
BA22
Text GLabel 5650 3200 0    50   Output ~ 0
BA21
Text GLabel 5650 3100 0    50   Output ~ 0
BA20
Text GLabel 5650 3000 0    50   Output ~ 0
BA19
Text GLabel 5650 2900 0    50   Output ~ 0
BA18
Text GLabel 5650 2800 0    50   Output ~ 0
BA17
Text GLabel 5650 2700 0    50   Output ~ 0
BA16
Text GLabel 5650 2600 0    50   Output ~ 0
BA15
Text GLabel 5650 2500 0    50   Output ~ 0
BA14
Text GLabel 5650 2400 0    50   Output ~ 0
BA13
Text GLabel 5650 2300 0    50   Output ~ 0
BA12
Text GLabel 5650 2200 0    50   Output ~ 0
BA11
Text GLabel 5650 2100 0    50   Output ~ 0
BA10
Text GLabel 5650 2000 0    50   Output ~ 0
BA9
Text GLabel 5650 1900 0    50   Output ~ 0
BA8
Text GLabel 5650 1800 0    50   Output ~ 0
BA7
Text GLabel 5650 1700 0    50   Output ~ 0
BA6
Text GLabel 5650 1600 0    50   Output ~ 0
BA5
Text GLabel 5650 1500 0    50   Output ~ 0
BA4
Text GLabel 5650 1400 0    50   Output ~ 0
BA3
Text GLabel 5650 1300 0    50   Output ~ 0
BA2
Text GLabel 5650 1200 0    50   Output ~ 0
BA1
Text GLabel 6150 1400 2    50   UnSpc ~ 0
GND
Text GLabel 6150 1200 2    50   UnSpc ~ 0
VCC
Text GLabel 6150 2900 2    50   BiDi ~ 0
RESET
Text GLabel 6150 2800 2    50   Output ~ 0
BUDS
Text GLabel 6150 2700 2    50   Output ~ 0
BLDS
Text GLabel 6150 2600 2    50   3State ~ 0
IPL2
Text GLabel 6150 2500 2    50   3State ~ 0
IPL1
Text GLabel 6150 2400 2    50   3State ~ 0
IPL0
Text GLabel 6150 1800 2    50   Output ~ 0
MFPIEO
Text GLabel 6150 1700 2    50   Output ~ 0
VMA
Text GLabel 6150 1600 2    50   Output ~ 0
E
Text GLabel 6150 1500 2    50   Input ~ 0
VPA
Text GLabel 6150 1300 2    50   Input ~ 0
CPUCLK
Text GLabel 5650 4300 0    50   BiDi ~ 0
BD1
Text GLabel 5650 4200 0    50   BiDi ~ 0
BD0
Text GLabel 5650 4100 0    50   Output ~ 0
BRW
Text GLabel 5650 4000 0    50   BiDi ~ 0
DTACK
Text GLabel 5650 3900 0    50   Input ~ 0
BR
Text GLabel 5650 3800 0    50   Output ~ 0
BGACK
Text GLabel 5650 3700 0    50   Output ~ 0
BG
Text GLabel 5650 3600 0    50   BiDi ~ 0
BERR
Text GLabel 5650 3500 0    50   Output ~ 0
BAS
$Comp
L Connector_Generic:Conn_02x32_Odd_Even BUS3-1
U 1 1 5EAE6D8A
P 5850 2700
F 0 "BUS3-1" H 5900 4417 50  0000 C CNN
F 1 "Conn_02x32_Odd_Even" H 5900 4326 50  0000 C CNN
F 2 "rosco_m68k:pin-2X32" H 5850 2700 50  0001 C CNN
F 3 "~" H 5850 2700 50  0001 C CNN
	1    5850 2700
	1    0    0    -1  
$EndComp
Text GLabel 6150 4750 2    50   3State ~ 0
EXT2
Text GLabel 5650 4750 0    50   3State ~ 0
EXT1
$Comp
L Connector_Generic:Conn_02x08_Odd_Even BUS3-2
U 1 1 5EAE6D90
P 5850 5050
F 0 "BUS3-2" H 5900 5567 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 5900 5476 50  0000 C CNN
F 2 "rosco_m68k:pin-2X8" H 5850 5050 50  0001 C CNN
F 3 "~" H 5850 5050 50  0001 C CNN
	1    5850 5050
	1    0    0    -1  
$EndComp
Text GLabel 6150 5450 2    50   3State ~ 0
EXT16
Text GLabel 6150 5350 2    50   3State ~ 0
EXT14
Text GLabel 6150 5250 2    50   3State ~ 0
EXT12
Text GLabel 6150 5150 2    50   3State ~ 0
EXT10
Text GLabel 6150 5050 2    50   3State ~ 0
EXT8
Text GLabel 6150 4950 2    50   3State ~ 0
EXT6
Text GLabel 6150 4850 2    50   3State ~ 0
EXT4
Text GLabel 5650 5450 0    50   3State ~ 0
EXT15
Text GLabel 5650 5350 0    50   3State ~ 0
EXT13
Text GLabel 5650 5250 0    50   3State ~ 0
EXT11
Text GLabel 5650 5150 0    50   3State ~ 0
EXT9
Text GLabel 5650 5050 0    50   3State ~ 0
EXT7
Text GLabel 5650 4950 0    50   3State ~ 0
EXT5
Text GLabel 5650 4850 0    50   3State ~ 0
EXT3
Text GLabel 4000 1400 2    50   UnSpc ~ 0
GND
Text GLabel 4000 1200 2    50   UnSpc ~ 0
VCC
Text GLabel 4000 2900 2    50   BiDi ~ 0
RESET
Text GLabel 4000 2800 2    50   Output ~ 0
BUDS
Text GLabel 4000 2700 2    50   Output ~ 0
BLDS
Text GLabel 4000 2600 2    50   3State ~ 0
IPL2
Text GLabel 4000 2500 2    50   3State ~ 0
IPL1
Text GLabel 4000 2400 2    50   3State ~ 0
IPL0
Text GLabel 4000 2300 2    50   Output ~ 0
BFC2
Text GLabel 4000 2200 2    50   Output ~ 0
BFC1
Text GLabel 4000 2100 2    50   Output ~ 0
BFC0
Text GLabel 4000 2000 2    50   Output ~ 0
BEXPSEL
Text GLabel 4000 1900 2    50   Output ~ 0
BIOSEL
Text GLabel 4000 1800 2    50   Output ~ 0
MFPIEO
Text GLabel 4000 1700 2    50   Output ~ 0
VMA
Text GLabel 4000 1600 2    50   Output ~ 0
E
Text GLabel 4000 1500 2    50   Input ~ 0
VPA
Text GLabel 4000 1300 2    50   Input ~ 0
CPUCLK
Text GLabel 4000 3000 2    50   BiDi ~ 0
BD15
Text GLabel 4000 3100 2    50   BiDi ~ 0
BD14
Text GLabel 4000 3200 2    50   BiDi ~ 0
BD13
Text GLabel 4000 3300 2    50   BiDi ~ 0
BD12
Text GLabel 4000 3400 2    50   BiDi ~ 0
BD11
Text GLabel 4000 3500 2    50   BiDi ~ 0
BD10
Text GLabel 4000 3600 2    50   BiDi ~ 0
BD9
Text GLabel 4000 3700 2    50   BiDi ~ 0
BD8
Text GLabel 4000 3800 2    50   BiDi ~ 0
BD7
Text GLabel 4000 3900 2    50   BiDi ~ 0
BD6
Text GLabel 4000 4000 2    50   BiDi ~ 0
BD5
Text GLabel 4000 4100 2    50   BiDi ~ 0
BD4
Text GLabel 4000 4200 2    50   BiDi ~ 0
BD3
Text GLabel 4000 4300 2    50   BiDi ~ 0
BD2
Text GLabel 3500 4300 0    50   BiDi ~ 0
BD1
Text GLabel 3500 4200 0    50   BiDi ~ 0
BD0
Text GLabel 3500 4100 0    50   Output ~ 0
BRW
Text GLabel 3500 4000 0    50   BiDi ~ 0
DTACK
Text GLabel 3500 3900 0    50   Input ~ 0
BR
Text GLabel 3500 3800 0    50   Output ~ 0
BGACK
Text GLabel 3500 3700 0    50   Output ~ 0
BG
Text GLabel 3500 3600 0    50   BiDi ~ 0
BERR
Text GLabel 3500 3500 0    50   Output ~ 0
BAS
Text GLabel 3500 3400 0    50   Output ~ 0
BA23
Text GLabel 3500 3300 0    50   Output ~ 0
BA22
Text GLabel 3500 3200 0    50   Output ~ 0
BA21
Text GLabel 3500 3100 0    50   Output ~ 0
BA20
Text GLabel 3500 3000 0    50   Output ~ 0
BA19
Text GLabel 3500 2900 0    50   Output ~ 0
BA18
Text GLabel 3500 2800 0    50   Output ~ 0
BA17
Text GLabel 3500 2700 0    50   Output ~ 0
BA16
Text GLabel 3500 2600 0    50   Output ~ 0
BA15
Text GLabel 3500 2500 0    50   Output ~ 0
BA14
Text GLabel 3500 2400 0    50   Output ~ 0
BA13
Text GLabel 3500 2300 0    50   Output ~ 0
BA12
Text GLabel 3500 2200 0    50   Output ~ 0
BA11
Text GLabel 3500 2100 0    50   Output ~ 0
BA10
Text GLabel 3500 2000 0    50   Output ~ 0
BA9
Text GLabel 3500 1900 0    50   Output ~ 0
BA8
Text GLabel 3500 1800 0    50   Output ~ 0
BA7
Text GLabel 3500 1700 0    50   Output ~ 0
BA6
Text GLabel 3500 1600 0    50   Output ~ 0
BA5
Text GLabel 3500 1500 0    50   Output ~ 0
BA4
Text GLabel 3500 1400 0    50   Output ~ 0
BA3
Text GLabel 3500 1300 0    50   Output ~ 0
BA2
Text GLabel 3500 1200 0    50   Output ~ 0
BA1
$Comp
L Connector_Generic:Conn_02x32_Odd_Even BUS4-1
U 1 1 5EAD0E68
P 3700 2700
F 0 "BUS4-1" H 3750 4417 50  0000 C CNN
F 1 "Conn_02x32_Odd_Even" H 3750 4326 50  0000 C CNN
F 2 "rosco_m68k:pin-2X32" H 3700 2700 50  0001 C CNN
F 3 "~" H 3700 2700 50  0001 C CNN
	1    3700 2700
	1    0    0    -1  
$EndComp
Text GLabel 4000 4750 2    50   3State ~ 0
EXT2
Text GLabel 3500 4750 0    50   3State ~ 0
EXT1
$Comp
L Connector_Generic:Conn_02x08_Odd_Even BUS4-2
U 1 1 5EAD0E6E
P 3700 5050
F 0 "BUS4-2" H 3750 5567 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 3750 5476 50  0000 C CNN
F 2 "rosco_m68k:pin-2X8" H 3700 5050 50  0001 C CNN
F 3 "~" H 3700 5050 50  0001 C CNN
	1    3700 5050
	1    0    0    -1  
$EndComp
Text GLabel 4000 5450 2    50   3State ~ 0
EXT16
Text GLabel 4000 5350 2    50   3State ~ 0
EXT14
Text GLabel 4000 5250 2    50   3State ~ 0
EXT12
Text GLabel 4000 5150 2    50   3State ~ 0
EXT10
Text GLabel 4000 5050 2    50   3State ~ 0
EXT8
Text GLabel 4000 4950 2    50   3State ~ 0
EXT6
Text GLabel 4000 4850 2    50   3State ~ 0
EXT4
Text GLabel 3500 5450 0    50   3State ~ 0
EXT15
Text GLabel 3500 5350 0    50   3State ~ 0
EXT13
Text GLabel 3500 5250 0    50   3State ~ 0
EXT11
Text GLabel 3500 5150 0    50   3State ~ 0
EXT9
Text GLabel 3500 5050 0    50   3State ~ 0
EXT7
Text GLabel 3500 4950 0    50   3State ~ 0
EXT5
Text GLabel 3500 4850 0    50   3State ~ 0
EXT3
Text GLabel 1950 1400 2    50   UnSpc ~ 0
GND
Text GLabel 1950 1200 2    50   UnSpc ~ 0
VCC
Text GLabel 1950 2900 2    50   BiDi ~ 0
RESET
Text GLabel 1950 2800 2    50   Output ~ 0
UDS
Text GLabel 1950 2700 2    50   Output ~ 0
LDS
Text GLabel 1950 2600 2    50   3State ~ 0
IPL2
Text GLabel 1950 2500 2    50   3State ~ 0
IPL1
Text GLabel 1950 2400 2    50   3State ~ 0
IPL0
Text GLabel 1950 2300 2    50   Output ~ 0
CPUFC2
Text GLabel 1950 2200 2    50   Output ~ 0
CPUFC1
Text GLabel 1950 2100 2    50   Output ~ 0
CPUFC0
Text GLabel 1950 2000 2    50   Output ~ 0
EXPSEL
Text GLabel 1950 1900 2    50   Output ~ 0
IOSEL
Text GLabel 1950 1800 2    50   Output ~ 0
MFPIEO
Text GLabel 1950 1700 2    50   Output ~ 0
VMA
Text GLabel 1950 1600 2    50   Output ~ 0
E
Text GLabel 1950 1500 2    50   Input ~ 0
VPA
Text GLabel 1950 1300 2    50   Input ~ 0
CPUCLK
Text GLabel 1950 3000 2    50   BiDi ~ 0
D15
Text GLabel 1950 3100 2    50   BiDi ~ 0
D14
Text GLabel 1950 3200 2    50   BiDi ~ 0
D13
Text GLabel 1950 3300 2    50   BiDi ~ 0
D12
Text GLabel 1950 3400 2    50   BiDi ~ 0
D11
Text GLabel 1950 3500 2    50   BiDi ~ 0
D10
Text GLabel 1950 3600 2    50   BiDi ~ 0
D9
Text GLabel 1950 3700 2    50   BiDi ~ 0
D8
Text GLabel 1950 3800 2    50   BiDi ~ 0
D7
Text GLabel 1950 3900 2    50   BiDi ~ 0
D6
Text GLabel 1950 4000 2    50   BiDi ~ 0
D5
Text GLabel 1950 4100 2    50   BiDi ~ 0
D4
Text GLabel 1950 4200 2    50   BiDi ~ 0
D3
Text GLabel 1950 4300 2    50   BiDi ~ 0
D2
Text GLabel 1450 4300 0    50   BiDi ~ 0
D1
Text GLabel 1450 4200 0    50   BiDi ~ 0
D0
Text GLabel 1450 4100 0    50   Output ~ 0
RW
Text GLabel 1450 4000 0    50   BiDi ~ 0
DTACK
Text GLabel 1450 3900 0    50   Input ~ 0
BR
Text GLabel 1450 3800 0    50   Output ~ 0
BGACK
Text GLabel 1450 3700 0    50   Output ~ 0
BG
Text GLabel 1450 3600 0    50   BiDi ~ 0
BERR
Text GLabel 1450 3500 0    50   Output ~ 0
AS
Text GLabel 1450 3400 0    50   Output ~ 0
A23
Text GLabel 1450 3300 0    50   Output ~ 0
A22
Text GLabel 1450 3200 0    50   Output ~ 0
A21
Text GLabel 1450 3100 0    50   Output ~ 0
A20
Text GLabel 1450 3000 0    50   Output ~ 0
A19
Text GLabel 1450 2900 0    50   Output ~ 0
A18
Text GLabel 1450 2800 0    50   Output ~ 0
A17
Text GLabel 1450 2700 0    50   Output ~ 0
A16
Text GLabel 1450 2600 0    50   Output ~ 0
A15
Text GLabel 1450 2500 0    50   Output ~ 0
A14
Text GLabel 1450 2400 0    50   Output ~ 0
A13
Text GLabel 1450 2300 0    50   Output ~ 0
A12
Text GLabel 1450 2200 0    50   Output ~ 0
A11
Text GLabel 1450 2100 0    50   Output ~ 0
A10
Text GLabel 1450 2000 0    50   Output ~ 0
A9
Text GLabel 1450 1900 0    50   Output ~ 0
A8
Text GLabel 1450 1800 0    50   Output ~ 0
A7
Text GLabel 1450 1700 0    50   Output ~ 0
A6
Text GLabel 1450 1600 0    50   Output ~ 0
A5
Text GLabel 1450 1500 0    50   Output ~ 0
A4
Text GLabel 1450 1400 0    50   Output ~ 0
A3
Text GLabel 1450 1300 0    50   Output ~ 0
A2
Text GLabel 1450 1200 0    50   Output ~ 0
A1
Text GLabel 1950 4750 2    50   3State ~ 0
EXT2
Text GLabel 1450 4750 0    50   3State ~ 0
EXT1
Text GLabel 1950 5450 2    50   3State ~ 0
EXT16
Text GLabel 1950 5350 2    50   3State ~ 0
EXT14
Text GLabel 1950 5250 2    50   3State ~ 0
EXT12
Text GLabel 1950 5150 2    50   3State ~ 0
EXT10
Text GLabel 1950 5050 2    50   3State ~ 0
EXT8
Text GLabel 1950 4950 2    50   3State ~ 0
EXT6
Text GLabel 1950 4850 2    50   3State ~ 0
EXT4
Text GLabel 1450 5450 0    50   3State ~ 0
EXT15
Text GLabel 1450 5350 0    50   3State ~ 0
EXT13
Text GLabel 1450 5250 0    50   3State ~ 0
EXT11
Text GLabel 1450 5150 0    50   3State ~ 0
EXT9
Text GLabel 1450 5050 0    50   3State ~ 0
EXT7
Text GLabel 1450 4950 0    50   3State ~ 0
EXT5
Text GLabel 1450 4850 0    50   3State ~ 0
EXT3
$Comp
L Connector_Generic:Conn_02x08_Odd_Even BUS5-2
U 1 1 60B1D0D0
P 1650 5050
F 0 "BUS5-2" H 1700 5567 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 1700 5476 50  0000 C CNN
F 2 "rosco_m68k:pin-2X8" H 1650 5050 50  0001 C CNN
F 3 "~" H 1650 5050 50  0001 C CNN
	1    1650 5050
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x32_Odd_Even BUS5-1
U 1 1 60B1D07A
P 1650 2700
F 0 "BUS5-1" H 1700 4417 50  0000 C CNN
F 1 "Conn_02x32_Odd_Even" H 1700 4326 50  0000 C CNN
F 2 "rosco_m68k:pin-2X32" H 1650 2700 50  0001 C CNN
F 3 "~" H 1650 2700 50  0001 C CNN
	1    1650 2700
	1    0    0    -1  
$EndComp
$EndSCHEMATC
