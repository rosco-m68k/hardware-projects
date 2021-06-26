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
P 1000 650
F 0 "H1" H 1100 696 50  0000 L CNN
F 1 "MountingHole" H 1100 605 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 1000 650 50  0001 C CNN
F 3 "~" H 1000 650 50  0001 C CNN
	1    1000 650 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5EC576ED
P 1700 650
F 0 "H2" H 1800 696 50  0000 L CNN
F 1 "MountingHole" H 1800 605 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 1700 650 50  0001 C CNN
F 3 "~" H 1700 650 50  0001 C CNN
	1    1700 650 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5EC5806F
P 2400 650
F 0 "H3" H 2500 696 50  0000 L CNN
F 1 "MountingHole" H 2500 605 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 2400 650 50  0001 C CNN
F 3 "~" H 2400 650 50  0001 C CNN
	1    2400 650 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5EC589F1
P 3100 650
F 0 "H4" H 3200 696 50  0000 L CNN
F 1 "MountingHole" H 3200 605 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 3100 650 50  0001 C CNN
F 3 "~" H 3100 650 50  0001 C CNN
	1    3100 650 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H5
U 1 1 5EC5B126
P 3800 650
F 0 "H5" H 3900 696 50  0000 L CNN
F 1 "MountingHole" H 3900 605 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 3800 650 50  0001 C CNN
F 3 "~" H 3800 650 50  0001 C CNN
	1    3800 650 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H6
U 1 1 5EC5BAC5
P 4500 650
F 0 "H6" H 4600 696 50  0000 L CNN
F 1 "MountingHole" H 4600 605 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 4500 650 50  0001 C CNN
F 3 "~" H 4500 650 50  0001 C CNN
	1    4500 650 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H8
U 1 1 5EC5CE9C
P 6000 650
F 0 "H8" H 6100 696 50  0000 L CNN
F 1 "MountingHole" H 6100 605 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 6000 650 50  0001 C CNN
F 3 "~" H 6000 650 50  0001 C CNN
	1    6000 650 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H7
U 1 1 5EC5D853
P 5250 650
F 0 "H7" H 5350 696 50  0000 L CNN
F 1 "MountingHole" H 5350 605 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 5250 650 50  0001 C CNN
F 3 "~" H 5250 650 50  0001 C CNN
	1    5250 650 
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
L Connector_Generic:Conn_02x08_Odd_Even BUS1-2
U 1 1 5EAFAE48
P 10400 5050
F 0 "BUS1-2" H 10450 5567 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 10450 5476 50  0000 C CNN
F 2 "rosco_m68k:pin-2X8" H 10400 5050 50  0001 C CNN
F 3 "~" H 10400 5050 50  0001 C CNN
	1    10400 5050
	1    0    0    -1  
$EndComp
Text GLabel 10200 4850 0    50   3State ~ 0
EXT3
Text GLabel 10200 4950 0    50   3State ~ 0
EXT5
Text GLabel 10200 5050 0    50   3State ~ 0
EXT7
Text GLabel 10200 5150 0    50   3State ~ 0
EXT9
Text GLabel 10200 5250 0    50   3State ~ 0
EXT11
Text GLabel 10200 5350 0    50   3State ~ 0
EXT13
Text GLabel 10200 5450 0    50   3State ~ 0
EXT15
Text GLabel 10700 4850 2    50   3State ~ 0
EXT4
Text GLabel 10700 4950 2    50   3State ~ 0
EXT6
Text GLabel 10700 5050 2    50   3State ~ 0
EXT8
Text GLabel 10700 5150 2    50   3State ~ 0
EXT10
Text GLabel 10700 5250 2    50   3State ~ 0
EXT12
Text GLabel 10700 5350 2    50   3State ~ 0
EXT14
Text GLabel 10700 5450 2    50   3State ~ 0
EXT16
Text GLabel 10200 4750 0    50   3State ~ 0
EXT1
Text GLabel 10700 4750 2    50   3State ~ 0
EXT2
Text GLabel 10700 2300 2    50   Output ~ 0
BFC2
Text GLabel 10700 2200 2    50   Output ~ 0
BFC1
Text GLabel 10700 2100 2    50   Output ~ 0
BFC0
Text GLabel 10700 2000 2    50   Output ~ 0
BEXPSEL
Text GLabel 10700 1900 2    50   Output ~ 0
BIOSEL
Text GLabel 10700 3000 2    50   BiDi ~ 0
BD15
Text GLabel 10700 3100 2    50   BiDi ~ 0
BD14
Text GLabel 10700 3200 2    50   BiDi ~ 0
BD13
Text GLabel 10700 3300 2    50   BiDi ~ 0
BD12
Text GLabel 10700 3400 2    50   BiDi ~ 0
BD11
Text GLabel 10700 3500 2    50   BiDi ~ 0
BD10
Text GLabel 10700 3600 2    50   BiDi ~ 0
BD9
Text GLabel 10700 3700 2    50   BiDi ~ 0
BD8
Text GLabel 10700 3800 2    50   BiDi ~ 0
BD7
Text GLabel 10700 3900 2    50   BiDi ~ 0
BD6
Text GLabel 10700 4000 2    50   BiDi ~ 0
BD5
Text GLabel 10700 4100 2    50   BiDi ~ 0
BD4
Text GLabel 10700 4200 2    50   BiDi ~ 0
BD3
Text GLabel 10700 4300 2    50   BiDi ~ 0
BD2
Text GLabel 10200 3400 0    50   Output ~ 0
BA23
Text GLabel 10200 3300 0    50   Output ~ 0
BA22
Text GLabel 10200 3200 0    50   Output ~ 0
BA21
Text GLabel 10200 3100 0    50   Output ~ 0
BA20
Text GLabel 10200 3000 0    50   Output ~ 0
BA19
Text GLabel 10200 2900 0    50   Output ~ 0
BA18
Text GLabel 10200 2800 0    50   Output ~ 0
BA17
Text GLabel 10200 2700 0    50   Output ~ 0
BA16
Text GLabel 10200 2600 0    50   Output ~ 0
BA15
Text GLabel 10200 2500 0    50   Output ~ 0
BA14
Text GLabel 10200 2400 0    50   Output ~ 0
BA13
Text GLabel 10200 2300 0    50   Output ~ 0
BA12
Text GLabel 10200 2200 0    50   Output ~ 0
BA11
Text GLabel 10200 2100 0    50   Output ~ 0
BA10
Text GLabel 10200 2000 0    50   Output ~ 0
BA9
Text GLabel 10200 1900 0    50   Output ~ 0
BA8
Text GLabel 10200 1800 0    50   Output ~ 0
BA7
Text GLabel 10200 1700 0    50   Output ~ 0
BA6
Text GLabel 10200 1600 0    50   Output ~ 0
BA5
Text GLabel 10200 1500 0    50   Output ~ 0
BA4
Text GLabel 10200 1400 0    50   Output ~ 0
BA3
Text GLabel 10200 1300 0    50   Output ~ 0
BA2
Text GLabel 10200 1200 0    50   Output ~ 0
BA1
Text GLabel 10700 1400 2    50   UnSpc ~ 0
GND
Text GLabel 10700 1200 2    50   UnSpc ~ 0
VCC
Text GLabel 10700 2900 2    50   BiDi ~ 0
RESET
Text GLabel 10700 2800 2    50   Output ~ 0
BUDS
Text GLabel 10700 2700 2    50   Output ~ 0
BLDS
Text GLabel 10700 2600 2    50   3State ~ 0
IPL2
Text GLabel 10700 2500 2    50   3State ~ 0
IPL1
Text GLabel 10700 2400 2    50   3State ~ 0
IPL0
Text GLabel 10700 1800 2    50   Output ~ 0
MFPIEO
Text GLabel 10700 1700 2    50   Output ~ 0
VMA
Text GLabel 10700 1600 2    50   Output ~ 0
E
Text GLabel 10700 1500 2    50   Input ~ 0
VPA
Text GLabel 10700 1300 2    50   Input ~ 0
CPUCLK
Text GLabel 10200 4300 0    50   BiDi ~ 0
BD1
Text GLabel 10200 4200 0    50   BiDi ~ 0
BD0
Text GLabel 10200 4100 0    50   Output ~ 0
BRW
Text GLabel 10200 4000 0    50   BiDi ~ 0
DTACK
Text GLabel 10200 3900 0    50   Input ~ 0
BR
Text GLabel 10200 3800 0    50   Output ~ 0
BGACK
Text GLabel 10200 3700 0    50   Output ~ 0
BG
Text GLabel 10200 3600 0    50   BiDi ~ 0
BERR
Text GLabel 10200 3500 0    50   Output ~ 0
BAS
$Comp
L Connector_Generic:Conn_02x32_Odd_Even BUS1-1
U 1 1 5EAFAE42
P 10400 2700
F 0 "BUS1-1" H 10450 4417 50  0000 C CNN
F 1 "Conn_02x32_Odd_Even" H 10450 4326 50  0000 C CNN
F 2 "rosco_m68k:pin-2X32" H 10400 2700 50  0001 C CNN
F 3 "~" H 10400 2700 50  0001 C CNN
	1    10400 2700
	1    0    0    -1  
$EndComp
Text GLabel 1000 4850 0    50   3State ~ 0
EXT3
Text GLabel 1000 4950 0    50   3State ~ 0
EXT5
Text GLabel 1000 5050 0    50   3State ~ 0
EXT7
Text GLabel 1000 5150 0    50   3State ~ 0
EXT9
Text GLabel 1000 5250 0    50   3State ~ 0
EXT11
Text GLabel 1000 5350 0    50   3State ~ 0
EXT13
Text GLabel 1000 5450 0    50   3State ~ 0
EXT15
Text GLabel 1500 4850 2    50   3State ~ 0
EXT4
Text GLabel 1500 4950 2    50   3State ~ 0
EXT6
Text GLabel 1500 5050 2    50   3State ~ 0
EXT8
Text GLabel 1500 5150 2    50   3State ~ 0
EXT10
Text GLabel 1500 5250 2    50   3State ~ 0
EXT12
Text GLabel 1500 5350 2    50   3State ~ 0
EXT14
Text GLabel 1500 5450 2    50   3State ~ 0
EXT16
$Comp
L Connector_Generic:Conn_02x08_Odd_Even CPU-2
U 1 1 60B1D0D0
P 1200 5050
F 0 "CPU-2" H 1250 5567 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 1250 5476 50  0000 C CNN
F 2 "rosco_m68k:pin-2X8" H 1200 5050 50  0001 C CNN
F 3 "~" H 1200 5050 50  0001 C CNN
	1    1200 5050
	1    0    0    -1  
$EndComp
Text GLabel 1000 4750 0    50   3State ~ 0
EXT1
Text GLabel 1500 4750 2    50   3State ~ 0
EXT2
$Comp
L Connector_Generic:Conn_02x32_Odd_Even CPU-1
U 1 1 60B1D07A
P 1200 2700
F 0 "CPU-1" H 1250 4417 50  0000 C CNN
F 1 "Conn_02x32_Odd_Even" H 1250 4326 50  0000 C CNN
F 2 "rosco_m68k:pin-2X32" H 1200 2700 50  0001 C CNN
F 3 "~" H 1200 2700 50  0001 C CNN
	1    1200 2700
	1    0    0    -1  
$EndComp
Text GLabel 1000 1200 0    50   Output ~ 0
A1
Text GLabel 1000 1300 0    50   Output ~ 0
A2
Text GLabel 1000 1400 0    50   Output ~ 0
A3
Text GLabel 1000 1500 0    50   Output ~ 0
A4
Text GLabel 1000 1600 0    50   Output ~ 0
A5
Text GLabel 1000 1700 0    50   Output ~ 0
A6
Text GLabel 1000 1800 0    50   Output ~ 0
A7
Text GLabel 1000 1900 0    50   Output ~ 0
A8
Text GLabel 1000 2000 0    50   Output ~ 0
A9
Text GLabel 1000 2100 0    50   Output ~ 0
A10
Text GLabel 1000 2200 0    50   Output ~ 0
A11
Text GLabel 1000 2300 0    50   Output ~ 0
A12
Text GLabel 1000 2400 0    50   Output ~ 0
A13
Text GLabel 1000 2500 0    50   Output ~ 0
A14
Text GLabel 1000 2600 0    50   Output ~ 0
A15
Text GLabel 1000 2700 0    50   Output ~ 0
A16
Text GLabel 1000 2800 0    50   Output ~ 0
A17
Text GLabel 1000 2900 0    50   Output ~ 0
A18
Text GLabel 1000 3000 0    50   Output ~ 0
A19
Text GLabel 1000 3100 0    50   Output ~ 0
A20
Text GLabel 1000 3200 0    50   Output ~ 0
A21
Text GLabel 1000 3300 0    50   Output ~ 0
A22
Text GLabel 1000 3400 0    50   Output ~ 0
A23
Text GLabel 1000 3500 0    50   Output ~ 0
AS
Text GLabel 1000 3600 0    50   BiDi ~ 0
BERR
Text GLabel 1000 3700 0    50   Output ~ 0
BG
Text GLabel 1000 3800 0    50   Output ~ 0
BGACK
Text GLabel 1000 3900 0    50   Input ~ 0
BR
Text GLabel 1000 4000 0    50   BiDi ~ 0
DTACK
Text GLabel 1000 4100 0    50   Output ~ 0
RW
Text GLabel 1000 4200 0    50   BiDi ~ 0
D0
Text GLabel 1000 4300 0    50   BiDi ~ 0
D1
Text GLabel 1500 4300 2    50   BiDi ~ 0
D2
Text GLabel 1500 4200 2    50   BiDi ~ 0
D3
Text GLabel 1500 4100 2    50   BiDi ~ 0
D4
Text GLabel 1500 4000 2    50   BiDi ~ 0
D5
Text GLabel 1500 3900 2    50   BiDi ~ 0
D6
Text GLabel 1500 3800 2    50   BiDi ~ 0
D7
Text GLabel 1500 3700 2    50   BiDi ~ 0
D8
Text GLabel 1500 3600 2    50   BiDi ~ 0
D9
Text GLabel 1500 3500 2    50   BiDi ~ 0
D10
Text GLabel 1500 3400 2    50   BiDi ~ 0
D11
Text GLabel 1500 3300 2    50   BiDi ~ 0
D12
Text GLabel 1500 3200 2    50   BiDi ~ 0
D13
Text GLabel 1500 3100 2    50   BiDi ~ 0
D14
Text GLabel 1500 3000 2    50   BiDi ~ 0
D15
Text GLabel 1500 1300 2    50   Input ~ 0
CPUCLK
Text GLabel 1500 1500 2    50   Input ~ 0
VPA
Text GLabel 1500 1600 2    50   Output ~ 0
E
Text GLabel 1500 1700 2    50   Output ~ 0
VMA
Text GLabel 1500 1800 2    50   Output ~ 0
MFPIEO
Text GLabel 1500 1900 2    50   Output ~ 0
IOSEL
Text GLabel 1500 2000 2    50   Output ~ 0
EXPSEL
Text GLabel 1500 2100 2    50   Output ~ 0
CPUFC0
Text GLabel 1500 2200 2    50   Output ~ 0
CPUFC1
Text GLabel 1500 2300 2    50   Output ~ 0
CPUFC2
Text GLabel 1500 2400 2    50   3State ~ 0
IPL0
Text GLabel 1500 2500 2    50   3State ~ 0
IPL1
Text GLabel 1500 2600 2    50   3State ~ 0
IPL2
Text GLabel 1500 2700 2    50   Output ~ 0
LDS
Text GLabel 1500 2800 2    50   Output ~ 0
UDS
Text GLabel 1500 2900 2    50   BiDi ~ 0
RESET
Text GLabel 1500 1200 2    50   UnSpc ~ 0
VCC
Text GLabel 1500 1400 2    50   UnSpc ~ 0
GND
Text GLabel 6750 4850 0    50   3State ~ 0
EXT3
Text GLabel 6750 4950 0    50   3State ~ 0
EXT5
Text GLabel 6750 5050 0    50   3State ~ 0
EXT7
Text GLabel 6750 5150 0    50   3State ~ 0
EXT9
Text GLabel 6750 5250 0    50   3State ~ 0
EXT11
Text GLabel 6750 5350 0    50   3State ~ 0
EXT13
Text GLabel 6750 5450 0    50   3State ~ 0
EXT15
Text GLabel 7250 4850 2    50   3State ~ 0
EXT4
Text GLabel 7250 4950 2    50   3State ~ 0
EXT6
Text GLabel 7250 5050 2    50   3State ~ 0
EXT8
Text GLabel 7250 5150 2    50   3State ~ 0
EXT10
Text GLabel 7250 5250 2    50   3State ~ 0
EXT12
Text GLabel 7250 5350 2    50   3State ~ 0
EXT14
Text GLabel 7250 5450 2    50   3State ~ 0
EXT16
$Comp
L Connector_Generic:Conn_02x08_Odd_Even BUS4-2
U 1 1 5EAD0E6E
P 6950 5050
F 0 "BUS4-2" H 7000 5567 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 7000 5476 50  0000 C CNN
F 2 "rosco_m68k:pin-2X8" H 6950 5050 50  0001 C CNN
F 3 "~" H 6950 5050 50  0001 C CNN
	1    6950 5050
	1    0    0    -1  
$EndComp
Text GLabel 6750 4750 0    50   3State ~ 0
EXT1
Text GLabel 7250 4750 2    50   3State ~ 0
EXT2
$Comp
L Connector_Generic:Conn_02x32_Odd_Even BUS4-1
U 1 1 5EAD0E68
P 6950 2700
F 0 "BUS4-1" H 7000 4417 50  0000 C CNN
F 1 "Conn_02x32_Odd_Even" H 7000 4326 50  0000 C CNN
F 2 "rosco_m68k:pin-2X32" H 6950 2700 50  0001 C CNN
F 3 "~" H 6950 2700 50  0001 C CNN
	1    6950 2700
	1    0    0    -1  
$EndComp
Text GLabel 6750 1200 0    50   Output ~ 0
BA1
Text GLabel 6750 1300 0    50   Output ~ 0
BA2
Text GLabel 6750 1400 0    50   Output ~ 0
BA3
Text GLabel 6750 1500 0    50   Output ~ 0
BA4
Text GLabel 6750 1600 0    50   Output ~ 0
BA5
Text GLabel 6750 1700 0    50   Output ~ 0
BA6
Text GLabel 6750 1800 0    50   Output ~ 0
BA7
Text GLabel 6750 1900 0    50   Output ~ 0
BA8
Text GLabel 6750 2000 0    50   Output ~ 0
BA9
Text GLabel 6750 2100 0    50   Output ~ 0
BA10
Text GLabel 6750 2200 0    50   Output ~ 0
BA11
Text GLabel 6750 2300 0    50   Output ~ 0
BA12
Text GLabel 6750 2400 0    50   Output ~ 0
BA13
Text GLabel 6750 2500 0    50   Output ~ 0
BA14
Text GLabel 6750 2600 0    50   Output ~ 0
BA15
Text GLabel 6750 2700 0    50   Output ~ 0
BA16
Text GLabel 6750 2800 0    50   Output ~ 0
BA17
Text GLabel 6750 2900 0    50   Output ~ 0
BA18
Text GLabel 6750 3000 0    50   Output ~ 0
BA19
Text GLabel 6750 3100 0    50   Output ~ 0
BA20
Text GLabel 6750 3200 0    50   Output ~ 0
BA21
Text GLabel 6750 3300 0    50   Output ~ 0
BA22
Text GLabel 6750 3400 0    50   Output ~ 0
BA23
Text GLabel 6750 3500 0    50   Output ~ 0
BAS
Text GLabel 6750 3600 0    50   BiDi ~ 0
BERR
Text GLabel 6750 3700 0    50   Output ~ 0
BG
Text GLabel 6750 3800 0    50   Output ~ 0
BGACK
Text GLabel 6750 3900 0    50   Input ~ 0
BR
Text GLabel 6750 4000 0    50   BiDi ~ 0
DTACK
Text GLabel 6750 4100 0    50   Output ~ 0
BRW
Text GLabel 6750 4200 0    50   BiDi ~ 0
BD0
Text GLabel 6750 4300 0    50   BiDi ~ 0
BD1
Text GLabel 7250 4300 2    50   BiDi ~ 0
BD2
Text GLabel 7250 4200 2    50   BiDi ~ 0
BD3
Text GLabel 7250 4100 2    50   BiDi ~ 0
BD4
Text GLabel 7250 4000 2    50   BiDi ~ 0
BD5
Text GLabel 7250 3900 2    50   BiDi ~ 0
BD6
Text GLabel 7250 3800 2    50   BiDi ~ 0
BD7
Text GLabel 7250 3700 2    50   BiDi ~ 0
BD8
Text GLabel 7250 3600 2    50   BiDi ~ 0
BD9
Text GLabel 7250 3500 2    50   BiDi ~ 0
BD10
Text GLabel 7250 3400 2    50   BiDi ~ 0
BD11
Text GLabel 7250 3300 2    50   BiDi ~ 0
BD12
Text GLabel 7250 3200 2    50   BiDi ~ 0
BD13
Text GLabel 7250 3100 2    50   BiDi ~ 0
BD14
Text GLabel 7250 3000 2    50   BiDi ~ 0
BD15
Text GLabel 7250 1300 2    50   Input ~ 0
CPUCLK
Text GLabel 7250 1500 2    50   Input ~ 0
VPA
Text GLabel 7250 1600 2    50   Output ~ 0
E
Text GLabel 7250 1700 2    50   Output ~ 0
VMA
Text GLabel 7250 1800 2    50   Output ~ 0
MFPIEO
Text GLabel 7250 1900 2    50   Output ~ 0
BIOSEL
Text GLabel 7250 2000 2    50   Output ~ 0
BEXPSEL
Text GLabel 7250 2100 2    50   Output ~ 0
BFC0
Text GLabel 7250 2200 2    50   Output ~ 0
BFC1
Text GLabel 7250 2300 2    50   Output ~ 0
BFC2
Text GLabel 7250 2400 2    50   3State ~ 0
IPL0
Text GLabel 7250 2500 2    50   3State ~ 0
IPL1
Text GLabel 7250 2600 2    50   3State ~ 0
IPL2
Text GLabel 7250 2700 2    50   Output ~ 0
BLDS
Text GLabel 7250 2800 2    50   Output ~ 0
BUDS
Text GLabel 7250 2900 2    50   BiDi ~ 0
RESET
Text GLabel 7250 1200 2    50   UnSpc ~ 0
VCC
Text GLabel 7250 1400 2    50   UnSpc ~ 0
GND
Text GLabel 7900 4850 0    50   3State ~ 0
EXT3
Text GLabel 7900 4950 0    50   3State ~ 0
EXT5
Text GLabel 7900 5050 0    50   3State ~ 0
EXT7
Text GLabel 7900 5150 0    50   3State ~ 0
EXT9
Text GLabel 7900 5250 0    50   3State ~ 0
EXT11
Text GLabel 7900 5350 0    50   3State ~ 0
EXT13
Text GLabel 7900 5450 0    50   3State ~ 0
EXT15
Text GLabel 8400 4850 2    50   3State ~ 0
EXT4
Text GLabel 8400 4950 2    50   3State ~ 0
EXT6
Text GLabel 8400 5050 2    50   3State ~ 0
EXT8
Text GLabel 8400 5150 2    50   3State ~ 0
EXT10
Text GLabel 8400 5250 2    50   3State ~ 0
EXT12
Text GLabel 8400 5350 2    50   3State ~ 0
EXT14
Text GLabel 8400 5450 2    50   3State ~ 0
EXT16
$Comp
L Connector_Generic:Conn_02x08_Odd_Even BUS3-2
U 1 1 5EAE6D90
P 8100 5050
F 0 "BUS3-2" H 8150 5567 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 8150 5476 50  0000 C CNN
F 2 "rosco_m68k:pin-2X8" H 8100 5050 50  0001 C CNN
F 3 "~" H 8100 5050 50  0001 C CNN
	1    8100 5050
	1    0    0    -1  
$EndComp
Text GLabel 7900 4750 0    50   3State ~ 0
EXT1
Text GLabel 8400 4750 2    50   3State ~ 0
EXT2
$Comp
L Connector_Generic:Conn_02x32_Odd_Even BUS3-1
U 1 1 5EAE6D8A
P 8100 2700
F 0 "BUS3-1" H 8150 4417 50  0000 C CNN
F 1 "Conn_02x32_Odd_Even" H 8150 4326 50  0000 C CNN
F 2 "rosco_m68k:pin-2X32" H 8100 2700 50  0001 C CNN
F 3 "~" H 8100 2700 50  0001 C CNN
	1    8100 2700
	1    0    0    -1  
$EndComp
Text GLabel 7900 3500 0    50   Output ~ 0
BAS
Text GLabel 7900 3600 0    50   BiDi ~ 0
BERR
Text GLabel 7900 3700 0    50   Output ~ 0
BG
Text GLabel 7900 3800 0    50   Output ~ 0
BGACK
Text GLabel 7900 3900 0    50   Input ~ 0
BR
Text GLabel 7900 4000 0    50   BiDi ~ 0
DTACK
Text GLabel 7900 4100 0    50   Output ~ 0
BRW
Text GLabel 7900 4200 0    50   BiDi ~ 0
BD0
Text GLabel 7900 4300 0    50   BiDi ~ 0
BD1
Text GLabel 8400 1300 2    50   Input ~ 0
CPUCLK
Text GLabel 8400 1500 2    50   Input ~ 0
VPA
Text GLabel 8400 1600 2    50   Output ~ 0
E
Text GLabel 8400 1700 2    50   Output ~ 0
VMA
Text GLabel 8400 1800 2    50   Output ~ 0
MFPIEO
Text GLabel 8400 2400 2    50   3State ~ 0
IPL0
Text GLabel 8400 2500 2    50   3State ~ 0
IPL1
Text GLabel 8400 2600 2    50   3State ~ 0
IPL2
Text GLabel 8400 2700 2    50   Output ~ 0
BLDS
Text GLabel 8400 2800 2    50   Output ~ 0
BUDS
Text GLabel 8400 2900 2    50   BiDi ~ 0
RESET
Text GLabel 8400 1200 2    50   UnSpc ~ 0
VCC
Text GLabel 8400 1400 2    50   UnSpc ~ 0
GND
Text GLabel 7900 1200 0    50   Output ~ 0
BA1
Text GLabel 7900 1300 0    50   Output ~ 0
BA2
Text GLabel 7900 1400 0    50   Output ~ 0
BA3
Text GLabel 7900 1500 0    50   Output ~ 0
BA4
Text GLabel 7900 1600 0    50   Output ~ 0
BA5
Text GLabel 7900 1700 0    50   Output ~ 0
BA6
Text GLabel 7900 1800 0    50   Output ~ 0
BA7
Text GLabel 7900 1900 0    50   Output ~ 0
BA8
Text GLabel 7900 2000 0    50   Output ~ 0
BA9
Text GLabel 7900 2100 0    50   Output ~ 0
BA10
Text GLabel 7900 2200 0    50   Output ~ 0
BA11
Text GLabel 7900 2300 0    50   Output ~ 0
BA12
Text GLabel 7900 2400 0    50   Output ~ 0
BA13
Text GLabel 7900 2500 0    50   Output ~ 0
BA14
Text GLabel 7900 2600 0    50   Output ~ 0
BA15
Text GLabel 7900 2700 0    50   Output ~ 0
BA16
Text GLabel 7900 2800 0    50   Output ~ 0
BA17
Text GLabel 7900 2900 0    50   Output ~ 0
BA18
Text GLabel 7900 3000 0    50   Output ~ 0
BA19
Text GLabel 7900 3100 0    50   Output ~ 0
BA20
Text GLabel 7900 3200 0    50   Output ~ 0
BA21
Text GLabel 7900 3300 0    50   Output ~ 0
BA22
Text GLabel 7900 3400 0    50   Output ~ 0
BA23
Text GLabel 8400 4300 2    50   BiDi ~ 0
BD2
Text GLabel 8400 4200 2    50   BiDi ~ 0
BD3
Text GLabel 8400 4100 2    50   BiDi ~ 0
BD4
Text GLabel 8400 4000 2    50   BiDi ~ 0
BD5
Text GLabel 8400 3900 2    50   BiDi ~ 0
BD6
Text GLabel 8400 3800 2    50   BiDi ~ 0
BD7
Text GLabel 8400 3700 2    50   BiDi ~ 0
BD8
Text GLabel 8400 3600 2    50   BiDi ~ 0
BD9
Text GLabel 8400 3500 2    50   BiDi ~ 0
BD10
Text GLabel 8400 3400 2    50   BiDi ~ 0
BD11
Text GLabel 8400 3300 2    50   BiDi ~ 0
BD12
Text GLabel 8400 3200 2    50   BiDi ~ 0
BD13
Text GLabel 8400 3100 2    50   BiDi ~ 0
BD14
Text GLabel 8400 3000 2    50   BiDi ~ 0
BD15
Text GLabel 8400 1900 2    50   Output ~ 0
BIOSEL
Text GLabel 8400 2000 2    50   Output ~ 0
BEXPSEL
Text GLabel 8400 2100 2    50   Output ~ 0
BFC0
Text GLabel 8400 2200 2    50   Output ~ 0
BFC1
Text GLabel 8400 2300 2    50   Output ~ 0
BFC2
$Comp
L Connector_Generic:Conn_02x08_Odd_Even BUS2-2
U 1 1 5EAFADEC
P 9250 5050
F 0 "BUS2-2" H 9300 5567 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 9300 5476 50  0000 C CNN
F 2 "rosco_m68k:pin-2X8" H 9250 5050 50  0001 C CNN
F 3 "~" H 9250 5050 50  0001 C CNN
	1    9250 5050
	1    0    0    -1  
$EndComp
Text GLabel 9050 4850 0    50   3State ~ 0
EXT3
Text GLabel 9050 4950 0    50   3State ~ 0
EXT5
Text GLabel 9050 5050 0    50   3State ~ 0
EXT7
Text GLabel 9050 5150 0    50   3State ~ 0
EXT9
Text GLabel 9050 5250 0    50   3State ~ 0
EXT11
Text GLabel 9050 5350 0    50   3State ~ 0
EXT13
Text GLabel 9050 5450 0    50   3State ~ 0
EXT15
Text GLabel 9550 4850 2    50   3State ~ 0
EXT4
Text GLabel 9550 4950 2    50   3State ~ 0
EXT6
Text GLabel 9550 5050 2    50   3State ~ 0
EXT8
Text GLabel 9550 5150 2    50   3State ~ 0
EXT10
Text GLabel 9550 5250 2    50   3State ~ 0
EXT12
Text GLabel 9550 5350 2    50   3State ~ 0
EXT14
Text GLabel 9550 5450 2    50   3State ~ 0
EXT16
Text GLabel 9050 4750 0    50   3State ~ 0
EXT1
Text GLabel 9550 4750 2    50   3State ~ 0
EXT2
$Comp
L Connector_Generic:Conn_02x32_Odd_Even BUS2-1
U 1 1 5EAFADE6
P 9250 2700
F 0 "BUS2-1" H 9300 4417 50  0000 C CNN
F 1 "Conn_02x32_Odd_Even" H 9300 4326 50  0000 C CNN
F 2 "rosco_m68k:pin-2X32" H 9250 2700 50  0001 C CNN
F 3 "~" H 9250 2700 50  0001 C CNN
	1    9250 2700
	1    0    0    -1  
$EndComp
Text GLabel 9050 3500 0    50   Output ~ 0
BAS
Text GLabel 9050 3600 0    50   BiDi ~ 0
BERR
Text GLabel 9050 3700 0    50   Output ~ 0
BG
Text GLabel 9050 3800 0    50   Output ~ 0
BGACK
Text GLabel 9050 3900 0    50   Input ~ 0
BR
Text GLabel 9050 4000 0    50   BiDi ~ 0
DTACK
Text GLabel 9050 4100 0    50   Output ~ 0
BRW
Text GLabel 9050 4200 0    50   BiDi ~ 0
BD0
Text GLabel 9050 4300 0    50   BiDi ~ 0
BD1
Text GLabel 9550 1300 2    50   Input ~ 0
CPUCLK
Text GLabel 9550 1500 2    50   Input ~ 0
VPA
Text GLabel 9550 1600 2    50   Output ~ 0
E
Text GLabel 9550 1700 2    50   Output ~ 0
VMA
Text GLabel 9550 1800 2    50   Output ~ 0
MFPIEO
Text GLabel 9550 2400 2    50   3State ~ 0
IPL0
Text GLabel 9550 2500 2    50   3State ~ 0
IPL1
Text GLabel 9550 2600 2    50   3State ~ 0
IPL2
Text GLabel 9550 2700 2    50   Output ~ 0
BLDS
Text GLabel 9550 2800 2    50   Output ~ 0
BUDS
Text GLabel 9550 2900 2    50   BiDi ~ 0
RESET
Text GLabel 9550 1200 2    50   UnSpc ~ 0
VCC
Text GLabel 9550 1400 2    50   UnSpc ~ 0
GND
Text GLabel 9050 1200 0    50   Output ~ 0
BA1
Text GLabel 9050 1300 0    50   Output ~ 0
BA2
Text GLabel 9050 1400 0    50   Output ~ 0
BA3
Text GLabel 9050 1500 0    50   Output ~ 0
BA4
Text GLabel 9050 1600 0    50   Output ~ 0
BA5
Text GLabel 9050 1700 0    50   Output ~ 0
BA6
Text GLabel 9050 1800 0    50   Output ~ 0
BA7
Text GLabel 9050 1900 0    50   Output ~ 0
BA8
Text GLabel 9050 2000 0    50   Output ~ 0
BA9
Text GLabel 9050 2100 0    50   Output ~ 0
BA10
Text GLabel 9050 2200 0    50   Output ~ 0
BA11
Text GLabel 9050 2300 0    50   Output ~ 0
BA12
Text GLabel 9050 2400 0    50   Output ~ 0
BA13
Text GLabel 9050 2500 0    50   Output ~ 0
BA14
Text GLabel 9050 2600 0    50   Output ~ 0
BA15
Text GLabel 9050 2700 0    50   Output ~ 0
BA16
Text GLabel 9050 2800 0    50   Output ~ 0
BA17
Text GLabel 9050 2900 0    50   Output ~ 0
BA18
Text GLabel 9050 3000 0    50   Output ~ 0
BA19
Text GLabel 9050 3100 0    50   Output ~ 0
BA20
Text GLabel 9050 3200 0    50   Output ~ 0
BA21
Text GLabel 9050 3300 0    50   Output ~ 0
BA22
Text GLabel 9050 3400 0    50   Output ~ 0
BA23
Text GLabel 9550 4300 2    50   BiDi ~ 0
BD2
Text GLabel 9550 4200 2    50   BiDi ~ 0
BD3
Text GLabel 9550 4100 2    50   BiDi ~ 0
BD4
Text GLabel 9550 4000 2    50   BiDi ~ 0
BD5
Text GLabel 9550 3900 2    50   BiDi ~ 0
BD6
Text GLabel 9550 3800 2    50   BiDi ~ 0
BD7
Text GLabel 9550 3700 2    50   BiDi ~ 0
BD8
Text GLabel 9550 3600 2    50   BiDi ~ 0
BD9
Text GLabel 9550 3500 2    50   BiDi ~ 0
BD10
Text GLabel 9550 3400 2    50   BiDi ~ 0
BD11
Text GLabel 9550 3300 2    50   BiDi ~ 0
BD12
Text GLabel 9550 3200 2    50   BiDi ~ 0
BD13
Text GLabel 9550 3100 2    50   BiDi ~ 0
BD14
Text GLabel 9550 3000 2    50   BiDi ~ 0
BD15
Text GLabel 9550 1900 2    50   Output ~ 0
BIOSEL
Text GLabel 9550 2000 2    50   Output ~ 0
BEXPSEL
Text GLabel 9550 2100 2    50   Output ~ 0
BFC0
Text GLabel 9550 2200 2    50   Output ~ 0
BFC1
Text GLabel 9550 2300 2    50   Output ~ 0
BFC2
Text GLabel 5600 4850 0    50   3State ~ 0
EXT3
Text GLabel 5600 4950 0    50   3State ~ 0
EXT5
Text GLabel 5600 5050 0    50   3State ~ 0
EXT7
Text GLabel 5600 5150 0    50   3State ~ 0
EXT9
Text GLabel 5600 5250 0    50   3State ~ 0
EXT11
Text GLabel 5600 5350 0    50   3State ~ 0
EXT13
Text GLabel 5600 5450 0    50   3State ~ 0
EXT15
Text GLabel 6100 4850 2    50   3State ~ 0
EXT4
Text GLabel 6100 4950 2    50   3State ~ 0
EXT6
Text GLabel 6100 5050 2    50   3State ~ 0
EXT8
Text GLabel 6100 5150 2    50   3State ~ 0
EXT10
Text GLabel 6100 5250 2    50   3State ~ 0
EXT12
Text GLabel 6100 5350 2    50   3State ~ 0
EXT14
Text GLabel 6100 5450 2    50   3State ~ 0
EXT16
$Comp
L Connector_Generic:Conn_02x08_Odd_Even BUS5-2
U 1 1 60EF030B
P 5800 5050
F 0 "BUS5-2" H 5850 5567 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 5850 5476 50  0000 C CNN
F 2 "rosco_m68k:pin-2X8" H 5800 5050 50  0001 C CNN
F 3 "~" H 5800 5050 50  0001 C CNN
	1    5800 5050
	1    0    0    -1  
$EndComp
Text GLabel 5600 4750 0    50   3State ~ 0
EXT1
Text GLabel 6100 4750 2    50   3State ~ 0
EXT2
$Comp
L Connector_Generic:Conn_02x32_Odd_Even BUS5-1
U 1 1 60EF0313
P 5800 2700
F 0 "BUS5-1" H 5850 4417 50  0000 C CNN
F 1 "Conn_02x32_Odd_Even" H 5850 4326 50  0000 C CNN
F 2 "rosco_m68k:pin-2X32" H 5800 2700 50  0001 C CNN
F 3 "~" H 5800 2700 50  0001 C CNN
	1    5800 2700
	1    0    0    -1  
$EndComp
Text GLabel 5600 1200 0    50   Output ~ 0
BA1
Text GLabel 5600 1300 0    50   Output ~ 0
BA2
Text GLabel 5600 1400 0    50   Output ~ 0
BA3
Text GLabel 5600 1500 0    50   Output ~ 0
BA4
Text GLabel 5600 1600 0    50   Output ~ 0
BA5
Text GLabel 5600 1700 0    50   Output ~ 0
BA6
Text GLabel 5600 1800 0    50   Output ~ 0
BA7
Text GLabel 5600 1900 0    50   Output ~ 0
BA8
Text GLabel 5600 2000 0    50   Output ~ 0
BA9
Text GLabel 5600 2100 0    50   Output ~ 0
BA10
Text GLabel 5600 2200 0    50   Output ~ 0
BA11
Text GLabel 5600 2300 0    50   Output ~ 0
BA12
Text GLabel 5600 2400 0    50   Output ~ 0
BA13
Text GLabel 5600 2500 0    50   Output ~ 0
BA14
Text GLabel 5600 2600 0    50   Output ~ 0
BA15
Text GLabel 5600 2700 0    50   Output ~ 0
BA16
Text GLabel 5600 2800 0    50   Output ~ 0
BA17
Text GLabel 5600 2900 0    50   Output ~ 0
BA18
Text GLabel 5600 3000 0    50   Output ~ 0
BA19
Text GLabel 5600 3100 0    50   Output ~ 0
BA20
Text GLabel 5600 3200 0    50   Output ~ 0
BA21
Text GLabel 5600 3300 0    50   Output ~ 0
BA22
Text GLabel 5600 3400 0    50   Output ~ 0
BA23
Text GLabel 5600 3500 0    50   Output ~ 0
BAS
Text GLabel 5600 3600 0    50   BiDi ~ 0
BERR
Text GLabel 5600 3700 0    50   Output ~ 0
BG
Text GLabel 5600 3800 0    50   Output ~ 0
BGACK
Text GLabel 5600 3900 0    50   Input ~ 0
BR
Text GLabel 5600 4000 0    50   BiDi ~ 0
DTACK
Text GLabel 5600 4100 0    50   Output ~ 0
BRW
Text GLabel 5600 4200 0    50   BiDi ~ 0
BD0
Text GLabel 5600 4300 0    50   BiDi ~ 0
BD1
Text GLabel 6100 4300 2    50   BiDi ~ 0
BD2
Text GLabel 6100 4200 2    50   BiDi ~ 0
BD3
Text GLabel 6100 4100 2    50   BiDi ~ 0
BD4
Text GLabel 6100 4000 2    50   BiDi ~ 0
BD5
Text GLabel 6100 3900 2    50   BiDi ~ 0
BD6
Text GLabel 6100 3800 2    50   BiDi ~ 0
BD7
Text GLabel 6100 3700 2    50   BiDi ~ 0
BD8
Text GLabel 6100 3600 2    50   BiDi ~ 0
BD9
Text GLabel 6100 3500 2    50   BiDi ~ 0
BD10
Text GLabel 6100 3400 2    50   BiDi ~ 0
BD11
Text GLabel 6100 3300 2    50   BiDi ~ 0
BD12
Text GLabel 6100 3200 2    50   BiDi ~ 0
BD13
Text GLabel 6100 3100 2    50   BiDi ~ 0
BD14
Text GLabel 6100 3000 2    50   BiDi ~ 0
BD15
Text GLabel 6100 1300 2    50   Input ~ 0
CPUCLK
Text GLabel 6100 1500 2    50   Input ~ 0
VPA
Text GLabel 6100 1600 2    50   Output ~ 0
E
Text GLabel 6100 1700 2    50   Output ~ 0
VMA
Text GLabel 6100 1800 2    50   Output ~ 0
MFPIEO
Text GLabel 6100 1900 2    50   Output ~ 0
BIOSEL
Text GLabel 6100 2000 2    50   Output ~ 0
BEXPSEL
Text GLabel 6100 2100 2    50   Output ~ 0
BFC0
Text GLabel 6100 2200 2    50   Output ~ 0
BFC1
Text GLabel 6100 2300 2    50   Output ~ 0
BFC2
Text GLabel 6100 2400 2    50   3State ~ 0
IPL0
Text GLabel 6100 2500 2    50   3State ~ 0
IPL1
Text GLabel 6100 2600 2    50   3State ~ 0
IPL2
Text GLabel 6100 2700 2    50   Output ~ 0
BLDS
Text GLabel 6100 2800 2    50   Output ~ 0
BUDS
Text GLabel 6100 2900 2    50   BiDi ~ 0
RESET
Text GLabel 6100 1200 2    50   UnSpc ~ 0
VCC
Text GLabel 6100 1400 2    50   UnSpc ~ 0
GND
Text GLabel 4450 4850 0    50   3State ~ 0
EXT3
Text GLabel 4450 4950 0    50   3State ~ 0
EXT5
Text GLabel 4450 5050 0    50   3State ~ 0
EXT7
Text GLabel 4450 5150 0    50   3State ~ 0
EXT9
Text GLabel 4450 5250 0    50   3State ~ 0
EXT11
Text GLabel 4450 5350 0    50   3State ~ 0
EXT13
Text GLabel 4450 5450 0    50   3State ~ 0
EXT15
Text GLabel 4950 4850 2    50   3State ~ 0
EXT4
Text GLabel 4950 4950 2    50   3State ~ 0
EXT6
Text GLabel 4950 5050 2    50   3State ~ 0
EXT8
Text GLabel 4950 5150 2    50   3State ~ 0
EXT10
Text GLabel 4950 5250 2    50   3State ~ 0
EXT12
Text GLabel 4950 5350 2    50   3State ~ 0
EXT14
Text GLabel 4950 5450 2    50   3State ~ 0
EXT16
$Comp
L Connector_Generic:Conn_02x08_Odd_Even BUS6-2
U 1 1 60EF66E1
P 4650 5050
F 0 "BUS6-2" H 4700 5567 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 4700 5476 50  0000 C CNN
F 2 "rosco_m68k:pin-2X8" H 4650 5050 50  0001 C CNN
F 3 "~" H 4650 5050 50  0001 C CNN
	1    4650 5050
	1    0    0    -1  
$EndComp
Text GLabel 4450 4750 0    50   3State ~ 0
EXT1
Text GLabel 4950 4750 2    50   3State ~ 0
EXT2
$Comp
L Connector_Generic:Conn_02x32_Odd_Even BUS6-1
U 1 1 60EF66E9
P 4650 2700
F 0 "BUS6-1" H 4700 4417 50  0000 C CNN
F 1 "Conn_02x32_Odd_Even" H 4700 4326 50  0000 C CNN
F 2 "rosco_m68k:pin-2X32" H 4650 2700 50  0001 C CNN
F 3 "~" H 4650 2700 50  0001 C CNN
	1    4650 2700
	1    0    0    -1  
$EndComp
Text GLabel 4450 1200 0    50   Output ~ 0
BA1
Text GLabel 4450 1300 0    50   Output ~ 0
BA2
Text GLabel 4450 1400 0    50   Output ~ 0
BA3
Text GLabel 4450 1500 0    50   Output ~ 0
BA4
Text GLabel 4450 1600 0    50   Output ~ 0
BA5
Text GLabel 4450 1700 0    50   Output ~ 0
BA6
Text GLabel 4450 1800 0    50   Output ~ 0
BA7
Text GLabel 4450 1900 0    50   Output ~ 0
BA8
Text GLabel 4450 2000 0    50   Output ~ 0
BA9
Text GLabel 4450 2100 0    50   Output ~ 0
BA10
Text GLabel 4450 2200 0    50   Output ~ 0
BA11
Text GLabel 4450 2300 0    50   Output ~ 0
BA12
Text GLabel 4450 2400 0    50   Output ~ 0
BA13
Text GLabel 4450 2500 0    50   Output ~ 0
BA14
Text GLabel 4450 2600 0    50   Output ~ 0
BA15
Text GLabel 4450 2700 0    50   Output ~ 0
BA16
Text GLabel 4450 2800 0    50   Output ~ 0
BA17
Text GLabel 4450 2900 0    50   Output ~ 0
BA18
Text GLabel 4450 3000 0    50   Output ~ 0
BA19
Text GLabel 4450 3100 0    50   Output ~ 0
BA20
Text GLabel 4450 3200 0    50   Output ~ 0
BA21
Text GLabel 4450 3300 0    50   Output ~ 0
BA22
Text GLabel 4450 3400 0    50   Output ~ 0
BA23
Text GLabel 4450 3500 0    50   Output ~ 0
BAS
Text GLabel 4450 3600 0    50   BiDi ~ 0
BERR
Text GLabel 4450 3700 0    50   Output ~ 0
BG
Text GLabel 4450 3800 0    50   Output ~ 0
BGACK
Text GLabel 4450 3900 0    50   Input ~ 0
BR
Text GLabel 4450 4000 0    50   BiDi ~ 0
DTACK
Text GLabel 4450 4100 0    50   Output ~ 0
BRW
Text GLabel 4450 4200 0    50   BiDi ~ 0
BD0
Text GLabel 4450 4300 0    50   BiDi ~ 0
BD1
Text GLabel 4950 4300 2    50   BiDi ~ 0
BD2
Text GLabel 4950 4200 2    50   BiDi ~ 0
BD3
Text GLabel 4950 4100 2    50   BiDi ~ 0
BD4
Text GLabel 4950 4000 2    50   BiDi ~ 0
BD5
Text GLabel 4950 3900 2    50   BiDi ~ 0
BD6
Text GLabel 4950 3800 2    50   BiDi ~ 0
BD7
Text GLabel 4950 3700 2    50   BiDi ~ 0
BD8
Text GLabel 4950 3600 2    50   BiDi ~ 0
BD9
Text GLabel 4950 3500 2    50   BiDi ~ 0
BD10
Text GLabel 4950 3400 2    50   BiDi ~ 0
BD11
Text GLabel 4950 3300 2    50   BiDi ~ 0
BD12
Text GLabel 4950 3200 2    50   BiDi ~ 0
BD13
Text GLabel 4950 3100 2    50   BiDi ~ 0
BD14
Text GLabel 4950 3000 2    50   BiDi ~ 0
BD15
Text GLabel 4950 1300 2    50   Input ~ 0
CPUCLK
Text GLabel 4950 1500 2    50   Input ~ 0
VPA
Text GLabel 4950 1600 2    50   Output ~ 0
E
Text GLabel 4950 1700 2    50   Output ~ 0
VMA
Text GLabel 4950 1800 2    50   Output ~ 0
MFPIEO
Text GLabel 4950 1900 2    50   Output ~ 0
BIOSEL
Text GLabel 4950 2000 2    50   Output ~ 0
BEXPSEL
Text GLabel 4950 2100 2    50   Output ~ 0
BFC0
Text GLabel 4950 2200 2    50   Output ~ 0
BFC1
Text GLabel 4950 2300 2    50   Output ~ 0
BFC2
Text GLabel 4950 2400 2    50   3State ~ 0
IPL0
Text GLabel 4950 2500 2    50   3State ~ 0
IPL1
Text GLabel 4950 2600 2    50   3State ~ 0
IPL2
Text GLabel 4950 2700 2    50   Output ~ 0
BLDS
Text GLabel 4950 2800 2    50   Output ~ 0
BUDS
Text GLabel 4950 2900 2    50   BiDi ~ 0
RESET
Text GLabel 4950 1200 2    50   UnSpc ~ 0
VCC
Text GLabel 4950 1400 2    50   UnSpc ~ 0
GND
Text GLabel 3300 4850 0    50   3State ~ 0
EXT3
Text GLabel 3300 4950 0    50   3State ~ 0
EXT5
Text GLabel 3300 5050 0    50   3State ~ 0
EXT7
Text GLabel 3300 5150 0    50   3State ~ 0
EXT9
Text GLabel 3300 5250 0    50   3State ~ 0
EXT11
Text GLabel 3300 5350 0    50   3State ~ 0
EXT13
Text GLabel 3300 5450 0    50   3State ~ 0
EXT15
Text GLabel 3800 4850 2    50   3State ~ 0
EXT4
Text GLabel 3800 4950 2    50   3State ~ 0
EXT6
Text GLabel 3800 5050 2    50   3State ~ 0
EXT8
Text GLabel 3800 5150 2    50   3State ~ 0
EXT10
Text GLabel 3800 5250 2    50   3State ~ 0
EXT12
Text GLabel 3800 5350 2    50   3State ~ 0
EXT14
Text GLabel 3800 5450 2    50   3State ~ 0
EXT16
$Comp
L Connector_Generic:Conn_02x08_Odd_Even BUS7-2
U 1 1 60EFDB83
P 3500 5050
F 0 "BUS7-2" H 3550 5567 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 3550 5476 50  0000 C CNN
F 2 "rosco_m68k:pin-2X8" H 3500 5050 50  0001 C CNN
F 3 "~" H 3500 5050 50  0001 C CNN
	1    3500 5050
	1    0    0    -1  
$EndComp
Text GLabel 3300 4750 0    50   3State ~ 0
EXT1
Text GLabel 3800 4750 2    50   3State ~ 0
EXT2
$Comp
L Connector_Generic:Conn_02x32_Odd_Even BUS7-1
U 1 1 60EFDB8B
P 3500 2700
F 0 "BUS7-1" H 3550 4417 50  0000 C CNN
F 1 "Conn_02x32_Odd_Even" H 3550 4326 50  0000 C CNN
F 2 "rosco_m68k:pin-2X32" H 3500 2700 50  0001 C CNN
F 3 "~" H 3500 2700 50  0001 C CNN
	1    3500 2700
	1    0    0    -1  
$EndComp
Text GLabel 3300 1200 0    50   Output ~ 0
BA1
Text GLabel 3300 1300 0    50   Output ~ 0
BA2
Text GLabel 3300 1400 0    50   Output ~ 0
BA3
Text GLabel 3300 1500 0    50   Output ~ 0
BA4
Text GLabel 3300 1600 0    50   Output ~ 0
BA5
Text GLabel 3300 1700 0    50   Output ~ 0
BA6
Text GLabel 3300 1800 0    50   Output ~ 0
BA7
Text GLabel 3300 1900 0    50   Output ~ 0
BA8
Text GLabel 3300 2000 0    50   Output ~ 0
BA9
Text GLabel 3300 2100 0    50   Output ~ 0
BA10
Text GLabel 3300 2200 0    50   Output ~ 0
BA11
Text GLabel 3300 2300 0    50   Output ~ 0
BA12
Text GLabel 3300 2400 0    50   Output ~ 0
BA13
Text GLabel 3300 2500 0    50   Output ~ 0
BA14
Text GLabel 3300 2600 0    50   Output ~ 0
BA15
Text GLabel 3300 2700 0    50   Output ~ 0
BA16
Text GLabel 3300 2800 0    50   Output ~ 0
BA17
Text GLabel 3300 2900 0    50   Output ~ 0
BA18
Text GLabel 3300 3000 0    50   Output ~ 0
BA19
Text GLabel 3300 3100 0    50   Output ~ 0
BA20
Text GLabel 3300 3200 0    50   Output ~ 0
BA21
Text GLabel 3300 3300 0    50   Output ~ 0
BA22
Text GLabel 3300 3400 0    50   Output ~ 0
BA23
Text GLabel 3300 3500 0    50   Output ~ 0
BAS
Text GLabel 3300 3600 0    50   BiDi ~ 0
BERR
Text GLabel 3300 3700 0    50   Output ~ 0
BG
Text GLabel 3300 3800 0    50   Output ~ 0
BGACK
Text GLabel 3300 3900 0    50   Input ~ 0
BR
Text GLabel 3300 4000 0    50   BiDi ~ 0
DTACK
Text GLabel 3300 4100 0    50   Output ~ 0
BRW
Text GLabel 3300 4200 0    50   BiDi ~ 0
BD0
Text GLabel 3300 4300 0    50   BiDi ~ 0
BD1
Text GLabel 3800 4300 2    50   BiDi ~ 0
BD2
Text GLabel 3800 4200 2    50   BiDi ~ 0
BD3
Text GLabel 3800 4100 2    50   BiDi ~ 0
BD4
Text GLabel 3800 4000 2    50   BiDi ~ 0
BD5
Text GLabel 3800 3900 2    50   BiDi ~ 0
BD6
Text GLabel 3800 3800 2    50   BiDi ~ 0
BD7
Text GLabel 3800 3700 2    50   BiDi ~ 0
BD8
Text GLabel 3800 3600 2    50   BiDi ~ 0
BD9
Text GLabel 3800 3500 2    50   BiDi ~ 0
BD10
Text GLabel 3800 3400 2    50   BiDi ~ 0
BD11
Text GLabel 3800 3300 2    50   BiDi ~ 0
BD12
Text GLabel 3800 3200 2    50   BiDi ~ 0
BD13
Text GLabel 3800 3100 2    50   BiDi ~ 0
BD14
Text GLabel 3800 3000 2    50   BiDi ~ 0
BD15
Text GLabel 3800 1300 2    50   Input ~ 0
CPUCLK
Text GLabel 3800 1500 2    50   Input ~ 0
VPA
Text GLabel 3800 1600 2    50   Output ~ 0
E
Text GLabel 3800 1700 2    50   Output ~ 0
VMA
Text GLabel 3800 1800 2    50   Output ~ 0
MFPIEO
Text GLabel 3800 1900 2    50   Output ~ 0
BIOSEL
Text GLabel 3800 2000 2    50   Output ~ 0
BEXPSEL
Text GLabel 3800 2100 2    50   Output ~ 0
BFC0
Text GLabel 3800 2200 2    50   Output ~ 0
BFC1
Text GLabel 3800 2300 2    50   Output ~ 0
BFC2
Text GLabel 3800 2400 2    50   3State ~ 0
IPL0
Text GLabel 3800 2500 2    50   3State ~ 0
IPL1
Text GLabel 3800 2600 2    50   3State ~ 0
IPL2
Text GLabel 3800 2700 2    50   Output ~ 0
BLDS
Text GLabel 3800 2800 2    50   Output ~ 0
BUDS
Text GLabel 3800 2900 2    50   BiDi ~ 0
RESET
Text GLabel 3800 1200 2    50   UnSpc ~ 0
VCC
Text GLabel 3800 1400 2    50   UnSpc ~ 0
GND
Text GLabel 2150 4850 0    50   3State ~ 0
EXT3
Text GLabel 2150 4950 0    50   3State ~ 0
EXT5
Text GLabel 2150 5050 0    50   3State ~ 0
EXT7
Text GLabel 2150 5150 0    50   3State ~ 0
EXT9
Text GLabel 2150 5250 0    50   3State ~ 0
EXT11
Text GLabel 2150 5350 0    50   3State ~ 0
EXT13
Text GLabel 2150 5450 0    50   3State ~ 0
EXT15
Text GLabel 2650 4850 2    50   3State ~ 0
EXT4
Text GLabel 2650 4950 2    50   3State ~ 0
EXT6
Text GLabel 2650 5050 2    50   3State ~ 0
EXT8
Text GLabel 2650 5150 2    50   3State ~ 0
EXT10
Text GLabel 2650 5250 2    50   3State ~ 0
EXT12
Text GLabel 2650 5350 2    50   3State ~ 0
EXT14
Text GLabel 2650 5450 2    50   3State ~ 0
EXT16
$Comp
L Connector_Generic:Conn_02x08_Odd_Even BUS8-2
U 1 1 60F0496D
P 2350 5050
F 0 "BUS8-2" H 2400 5567 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 2400 5476 50  0000 C CNN
F 2 "rosco_m68k:pin-2X8" H 2350 5050 50  0001 C CNN
F 3 "~" H 2350 5050 50  0001 C CNN
	1    2350 5050
	1    0    0    -1  
$EndComp
Text GLabel 2150 4750 0    50   3State ~ 0
EXT1
Text GLabel 2650 4750 2    50   3State ~ 0
EXT2
$Comp
L Connector_Generic:Conn_02x32_Odd_Even BUS8-1
U 1 1 60F04975
P 2350 2700
F 0 "BUS8-1" H 2400 4417 50  0000 C CNN
F 1 "Conn_02x32_Odd_Even" H 2400 4326 50  0000 C CNN
F 2 "rosco_m68k:pin-2X32" H 2350 2700 50  0001 C CNN
F 3 "~" H 2350 2700 50  0001 C CNN
	1    2350 2700
	1    0    0    -1  
$EndComp
Text GLabel 2150 1200 0    50   Output ~ 0
BA1
Text GLabel 2150 1300 0    50   Output ~ 0
BA2
Text GLabel 2150 1400 0    50   Output ~ 0
BA3
Text GLabel 2150 1500 0    50   Output ~ 0
BA4
Text GLabel 2150 1600 0    50   Output ~ 0
BA5
Text GLabel 2150 1700 0    50   Output ~ 0
BA6
Text GLabel 2150 1800 0    50   Output ~ 0
BA7
Text GLabel 2150 1900 0    50   Output ~ 0
BA8
Text GLabel 2150 2000 0    50   Output ~ 0
BA9
Text GLabel 2150 2100 0    50   Output ~ 0
BA10
Text GLabel 2150 2200 0    50   Output ~ 0
BA11
Text GLabel 2150 2300 0    50   Output ~ 0
BA12
Text GLabel 2150 2400 0    50   Output ~ 0
BA13
Text GLabel 2150 2500 0    50   Output ~ 0
BA14
Text GLabel 2150 2600 0    50   Output ~ 0
BA15
Text GLabel 2150 2700 0    50   Output ~ 0
BA16
Text GLabel 2150 2800 0    50   Output ~ 0
BA17
Text GLabel 2150 2900 0    50   Output ~ 0
BA18
Text GLabel 2150 3000 0    50   Output ~ 0
BA19
Text GLabel 2150 3100 0    50   Output ~ 0
BA20
Text GLabel 2150 3200 0    50   Output ~ 0
BA21
Text GLabel 2150 3300 0    50   Output ~ 0
BA22
Text GLabel 2150 3400 0    50   Output ~ 0
BA23
Text GLabel 2150 3500 0    50   Output ~ 0
BAS
Text GLabel 2150 3600 0    50   BiDi ~ 0
BERR
Text GLabel 2150 3700 0    50   Output ~ 0
BG
Text GLabel 2150 3800 0    50   Output ~ 0
BGACK
Text GLabel 2150 3900 0    50   Input ~ 0
BR
Text GLabel 2150 4000 0    50   BiDi ~ 0
DTACK
Text GLabel 2150 4100 0    50   Output ~ 0
BRW
Text GLabel 2150 4200 0    50   BiDi ~ 0
BD0
Text GLabel 2150 4300 0    50   BiDi ~ 0
BD1
Text GLabel 2650 4300 2    50   BiDi ~ 0
BD2
Text GLabel 2650 4200 2    50   BiDi ~ 0
BD3
Text GLabel 2650 4100 2    50   BiDi ~ 0
BD4
Text GLabel 2650 4000 2    50   BiDi ~ 0
BD5
Text GLabel 2650 3900 2    50   BiDi ~ 0
BD6
Text GLabel 2650 3800 2    50   BiDi ~ 0
BD7
Text GLabel 2650 3700 2    50   BiDi ~ 0
BD8
Text GLabel 2650 3600 2    50   BiDi ~ 0
BD9
Text GLabel 2650 3500 2    50   BiDi ~ 0
BD10
Text GLabel 2650 3400 2    50   BiDi ~ 0
BD11
Text GLabel 2650 3300 2    50   BiDi ~ 0
BD12
Text GLabel 2650 3200 2    50   BiDi ~ 0
BD13
Text GLabel 2650 3100 2    50   BiDi ~ 0
BD14
Text GLabel 2650 3000 2    50   BiDi ~ 0
BD15
Text GLabel 2650 1300 2    50   Input ~ 0
CPUCLK
Text GLabel 2650 1500 2    50   Input ~ 0
VPA
Text GLabel 2650 1600 2    50   Output ~ 0
E
Text GLabel 2650 1700 2    50   Output ~ 0
VMA
Text GLabel 2650 1800 2    50   Output ~ 0
MFPIEO
Text GLabel 2650 1900 2    50   Output ~ 0
BIOSEL
Text GLabel 2650 2000 2    50   Output ~ 0
BEXPSEL
Text GLabel 2650 2100 2    50   Output ~ 0
BFC0
Text GLabel 2650 2200 2    50   Output ~ 0
BFC1
Text GLabel 2650 2300 2    50   Output ~ 0
BFC2
Text GLabel 2650 2400 2    50   3State ~ 0
IPL0
Text GLabel 2650 2500 2    50   3State ~ 0
IPL1
Text GLabel 2650 2600 2    50   3State ~ 0
IPL2
Text GLabel 2650 2700 2    50   Output ~ 0
BLDS
Text GLabel 2650 2800 2    50   Output ~ 0
BUDS
Text GLabel 2650 2900 2    50   BiDi ~ 0
RESET
Text GLabel 2650 1200 2    50   UnSpc ~ 0
VCC
Text GLabel 2650 1400 2    50   UnSpc ~ 0
GND
$Comp
L Mechanical:MountingHole H9
U 1 1 60FD335E
P 6700 650
F 0 "H9" H 6800 696 50  0000 L CNN
F 1 "MountingHole" H 6800 605 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 6700 650 50  0001 C CNN
F 3 "~" H 6700 650 50  0001 C CNN
	1    6700 650 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H10
U 1 1 60FD35CE
P 7400 650
F 0 "H10" H 7500 696 50  0000 L CNN
F 1 "MountingHole" H 7500 605 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 7400 650 50  0001 C CNN
F 3 "~" H 7400 650 50  0001 C CNN
	1    7400 650 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H11
U 1 1 60FD38C6
P 8100 650
F 0 "H11" H 8200 696 50  0000 L CNN
F 1 "MountingHole" H 8200 605 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 8100 650 50  0001 C CNN
F 3 "~" H 8100 650 50  0001 C CNN
	1    8100 650 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H12
U 1 1 60FD3B25
P 8800 650
F 0 "H12" H 8900 696 50  0000 L CNN
F 1 "MountingHole" H 8900 605 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 8800 650 50  0001 C CNN
F 3 "~" H 8800 650 50  0001 C CNN
	1    8800 650 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H13
U 1 1 60FD3D73
P 9500 650
F 0 "H13" H 9600 696 50  0000 L CNN
F 1 "MountingHole" H 9600 605 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 9500 650 50  0001 C CNN
F 3 "~" H 9500 650 50  0001 C CNN
	1    9500 650 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H14
U 1 1 60FD4115
P 10200 650
F 0 "H14" H 10300 696 50  0000 L CNN
F 1 "MountingHole" H 10300 605 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 10200 650 50  0001 C CNN
F 3 "~" H 10200 650 50  0001 C CNN
	1    10200 650 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H15
U 1 1 6101D1D8
P 1000 850
F 0 "H15" H 1100 896 50  0000 L CNN
F 1 "MountingHole" H 1100 805 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 1000 850 50  0001 C CNN
F 3 "~" H 1000 850 50  0001 C CNN
	1    1000 850 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H16
U 1 1 6101D1DE
P 1700 850
F 0 "H16" H 1800 896 50  0000 L CNN
F 1 "MountingHole" H 1800 805 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 1700 850 50  0001 C CNN
F 3 "~" H 1700 850 50  0001 C CNN
	1    1700 850 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H17
U 1 1 6103D69E
P 2400 850
F 0 "H17" H 2500 896 50  0000 L CNN
F 1 "MountingHole" H 2500 805 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 2400 850 50  0001 C CNN
F 3 "~" H 2400 850 50  0001 C CNN
	1    2400 850 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H18
U 1 1 6103D6A4
P 3100 850
F 0 "H18" H 3200 896 50  0000 L CNN
F 1 "MountingHole" H 3200 805 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 3100 850 50  0001 C CNN
F 3 "~" H 3100 850 50  0001 C CNN
	1    3100 850 
	1    0    0    -1  
$EndComp
$EndSCHEMATC
