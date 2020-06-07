EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "ROSCO_M68K MC68681 DUART EXPANSION"
Date "2020-06-07"
Rev "0"
Comp "The Really Old School Company Limited"
Comment1 ""
Comment2 "See https://github.com/rosco-m68k/hardware-projects/blob/master/LICENCE.hardware.txt"
Comment3 "Open Source Hardware licenced under CERN Open Hardware Licence"
Comment4 "Copyright ©2020 Ross Bamford and Contributors"
$EndDescr
$Comp
L Connector_Generic:Conn_02x32_Odd_Even J1
U 1 1 5EB06E33
P 1250 2200
F 0 "J1" H 1300 3825 50  0000 C CNN
F 1 "Conn_02x32_Odd_Even" H 1300 3826 50  0001 C CNN
F 2 "rosco_m68k:pin-2X32" H 1250 2200 50  0001 C CNN
F 3 "~" H 1250 2200 50  0001 C CNN
	1    1250 2200
	1    0    0    -1  
$EndComp
Text GLabel 1550 700  2    50   Output ~ 0
A1
Text GLabel 1550 800  2    50   Output ~ 0
A2
Text GLabel 1550 900  2    50   Output ~ 0
A3
Text GLabel 1550 1000 2    50   Output ~ 0
A4
Text GLabel 1550 1100 2    50   Output ~ 0
A5
Text GLabel 1550 1200 2    50   Output ~ 0
A6
Text GLabel 1550 1300 2    50   Output ~ 0
A7
Text GLabel 1550 1400 2    50   Output ~ 0
A8
Text GLabel 1550 1500 2    50   Output ~ 0
A9
Text GLabel 1550 1600 2    50   Output ~ 0
A10
Text GLabel 1550 1700 2    50   Output ~ 0
A11
Text GLabel 1550 1800 2    50   Output ~ 0
A12
Text GLabel 1550 1900 2    50   Output ~ 0
A13
Text GLabel 1550 2000 2    50   Output ~ 0
A14
Text GLabel 1550 2200 2    50   Output ~ 0
A16
Text GLabel 1550 2300 2    50   Output ~ 0
A17
Text GLabel 1050 3200 0    50   BiDi ~ 0
D8
Text GLabel 1050 3100 0    50   BiDi ~ 0
D9
Text GLabel 1050 3000 0    50   BiDi ~ 0
D10
Text GLabel 1050 2900 0    50   BiDi ~ 0
D11
Text GLabel 1050 2800 0    50   BiDi ~ 0
D12
Text GLabel 1050 2700 0    50   BiDi ~ 0
D13
Text GLabel 1050 2600 0    50   BiDi ~ 0
D14
Text GLabel 1050 2500 0    50   BiDi ~ 0
D15
Text GLabel 1050 2300 0    50   Output ~ 0
UDS
Text GLabel 700  700  0    50   UnSpc ~ 0
VCC
Text GLabel 700  900  0    50   UnSpc ~ 0
GND
Text GLabel 1550 3600 2    50   Output ~ 0
RnW
$Comp
L power:PWR_FLAG #GND01
U 1 1 5EB06E7A
P 800 900
F 0 "#GND01" H 800 975 50  0001 C CNN
F 1 "PWR_FLAG" H 800 1073 50  0001 C CNN
F 2 "" H 800 900 50  0001 C CNN
F 3 "~" H 800 900 50  0001 C CNN
	1    800  900 
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #VCC01
U 1 1 5EB06E82
P 800 650
F 0 "#VCC01" H 800 725 50  0001 C CNN
F 1 "PWR_FLAG" H 800 823 50  0001 C CNN
F 2 "" H 800 650 50  0001 C CNN
F 3 "~" H 800 650 50  0001 C CNN
	1    800  650 
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  700  800  700 
Wire Wire Line
	800  650  800  700 
Wire Wire Line
	700  900  800  900 
NoConn ~ 1050 800 
NoConn ~ 1050 1100
NoConn ~ 1050 1200
NoConn ~ 1050 1300
NoConn ~ 1550 3000
NoConn ~ 1550 3100
NoConn ~ 1550 3200
NoConn ~ 1550 3300
NoConn ~ 1550 3400
Text Notes 800  4000 0    50   ~ 0
Note - Inverted layout!
Text GLabel 1050 1400 0    50   Output ~ 0
IOSEL
Text GLabel 1050 1600 0    50   Output ~ 0
FC0
Text GLabel 1050 1700 0    50   Output ~ 0
FC1
Text GLabel 1050 1800 0    50   Output ~ 0
FC2
NoConn ~ 1050 2200
NoConn ~ 1050 3300
NoConn ~ 1050 3400
NoConn ~ 1050 3500
NoConn ~ 1050 3600
NoConn ~ 1050 3700
NoConn ~ 1050 3800
NoConn ~ 1550 3800
NoConn ~ 1550 3700
NoConn ~ 1550 2900
NoConn ~ 1550 2800
NoConn ~ 1550 2700
NoConn ~ 1550 2600
NoConn ~ 1550 2500
Text GLabel 1050 1000 0    50   Output ~ 0
VPA
Text GLabel 1050 2400 0    50   Output ~ 0
RESET
NoConn ~ 1050 1500
NoConn ~ -2300 8300
$Comp
L Interface:68681 IC1
U 1 1 5EDD5E74
P 5950 4300
F 0 "IC1" H 5750 5900 50  0000 C CNN
F 1 "68681" H 5750 5800 50  0000 C CNN
F 2 "" H 5950 4300 50  0001 C CNN
F 3 "" H 5950 4300 50  0001 C CNN
	1    5950 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Q1
U 1 1 5EDD7329
P 4200 3600
F 0 "Q1" H 4200 3868 50  0000 C CNN
F 1 "Crystal" H 4200 3777 50  0000 C CNN
F 2 "" H 4200 3600 50  0001 C CNN
F 3 "~" H 4200 3600 50  0001 C CNN
	1    4200 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5EDD83D0
P 3850 4300
F 0 "C3" H 3965 4346 50  0000 L CNN
F 1 "33pF" H 3965 4255 50  0000 L CNN
F 2 "" H 3888 4150 50  0001 C CNN
F 3 "~" H 3850 4300 50  0001 C CNN
	1    3850 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5EDD8A07
P 4500 4300
F 0 "C5" H 4615 4346 50  0000 L CNN
F 1 "33pF" H 4615 4255 50  0000 L CNN
F 2 "" H 4538 4150 50  0001 C CNN
F 3 "~" H 4500 4300 50  0001 C CNN
	1    4500 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 4150 4500 3600
Wire Wire Line
	4350 3600 4500 3600
Wire Wire Line
	4050 3600 3850 3600
Wire Wire Line
	3850 3600 3850 4150
Wire Wire Line
	4500 4450 4500 4750
Wire Wire Line
	3850 4450 3850 4750
Text GLabel 3850 4750 3    50   UnSpc ~ 0
GND
Text GLabel 4500 4750 3    50   UnSpc ~ 0
GND
Text GLabel 4950 3400 0    50   BiDi ~ 0
BD0
Text GLabel 4950 3500 0    50   BiDi ~ 0
BD1
Text GLabel 4950 3600 0    50   BiDi ~ 0
BD2
Text GLabel 4950 3700 0    50   BiDi ~ 0
BD3
Text GLabel 4950 3800 0    50   BiDi ~ 0
BD4
Text GLabel 4950 3900 0    50   BiDi ~ 0
BD5
Text GLabel 4950 4000 0    50   BiDi ~ 0
BD6
Text GLabel 4950 4100 0    50   BiDi ~ 0
BD7
Text GLabel 4950 4900 0    50   Input ~ 0
RnW
Text GLabel 4950 5100 0    50   Input ~ 0
RESET
Text GLabel 1550 3500 2    50   Input ~ 0
DTACK
$Comp
L Device:Jumper JP4
U 1 1 5EDE345B
P 9550 6000
F 0 "JP4" H 9550 6264 50  0000 C CNN
F 1 "Jumper" H 9550 6173 50  0000 C CNN
F 2 "" H 9550 6000 50  0001 C CNN
F 3 "~" H 9550 6000 50  0001 C CNN
	1    9550 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 6000 8700 6000
Wire Wire Line
	9850 6000 10350 6000
Text GLabel 10350 6000 2    50   Output ~ 0
DTACK
Text GLabel 8700 6000 0    50   Input ~ 0
UDTACK
Text GLabel 4950 5300 0    50   Output ~ 0
UDTACK
Wire Wire Line
	3850 3100 3850 3600
Connection ~ 3850 3600
Text GLabel 4950 4800 0    50   Input ~ 0
SEL
Text GLabel 4950 4300 0    50   Input ~ 0
A1
Text GLabel 4950 4400 0    50   Input ~ 0
A2
Text GLabel 4950 4500 0    50   Input ~ 0
A3
Text GLabel 4950 4600 0    50   Input ~ 0
A4
$Comp
L Connector:Conn_01x06_Male J3
U 1 1 5EE19F70
P 2600 3500
F 0 "J3" H 2708 3881 50  0000 C CNN
F 1 "UART_A" H 2708 3790 50  0000 C CNN
F 2 "" H 2600 3500 50  0001 C CNN
F 3 "~" H 2600 3500 50  0001 C CNN
	1    2600 3500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Male J4
U 1 1 5EE1B2ED
P 2600 4350
F 0 "J4" H 2708 4731 50  0000 C CNN
F 1 "UART_B" H 2708 4640 50  0000 C CNN
F 2 "" H 2600 4350 50  0001 C CNN
F 3 "~" H 2600 4350 50  0001 C CNN
	1    2600 4350
	1    0    0    -1  
$EndComp
Text GLabel 2800 3300 2    50   UnSpc ~ 0
GND
Text GLabel 2800 3400 2    50   Output ~ 0
CTSA
Text GLabel 2800 3600 2    50   Input ~ 0
TXDA
Text GLabel 2800 3700 2    50   Output ~ 0
RXDA
NoConn ~ 2800 3800
$Comp
L Device:Jumper JP3
U 1 1 5EE1EE9F
P 9550 5500
F 0 "JP3" H 9550 5764 50  0000 C CNN
F 1 "Jumper" H 9550 5673 50  0000 C CNN
F 2 "" H 9550 5500 50  0001 C CNN
F 3 "~" H 9550 5500 50  0001 C CNN
	1    9550 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 5500 8950 5500
Wire Wire Line
	9850 5500 10350 5500
$Comp
L Device:Jumper JP2
U 1 1 5EE1F91D
P 9550 5000
F 0 "JP2" H 9550 5264 50  0000 C CNN
F 1 "Jumper" H 9550 5173 50  0000 C CNN
F 2 "" H 9550 5000 50  0001 C CNN
F 3 "~" H 9550 5000 50  0001 C CNN
	1    9550 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 5000 10350 5000
Text GLabel 8700 5500 0    50   UnSpc ~ 0
VCC
Text GLabel 10350 5000 2    50   UnSpc ~ 0
VCCUA
Text GLabel 10350 5500 2    50   UnSpc ~ 0
VCCUB
Text GLabel 2800 3500 2    50   UnSpc ~ 0
VCCUA
Text GLabel 2800 4350 2    50   UnSpc ~ 0
VCCUB
Text GLabel 2800 4150 2    50   UnSpc ~ 0
GND
Text GLabel 2800 4250 2    50   Output ~ 0
CTSB
Text GLabel 2800 4450 2    50   Input ~ 0
TXDB
Text GLabel 2800 4550 2    50   Output ~ 0
RXDB
NoConn ~ 2800 4650
Wire Wire Line
	9250 5000 8950 5000
Wire Wire Line
	8950 5000 8950 5500
Connection ~ 8950 5500
Wire Wire Line
	8950 5500 8700 5500
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J2
U 1 1 5EE2B8E5
P 1250 4700
F 0 "J2" H 1300 5217 50  0000 C CNN
F 1 "EXTBUS" H 1300 5126 50  0000 C CNN
F 2 "" H 1250 4700 50  0001 C CNN
F 3 "~" H 1250 4700 50  0001 C CNN
	1    1250 4700
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS245 IC3
U 1 1 5EE2FF54
P 1950 6500
F 0 "IC3" H 1950 7481 50  0000 C CNN
F 1 "74HCT245" H 1950 7390 50  0000 C CNN
F 2 "" H 1950 6500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 1950 6500 50  0001 C CNN
	1    1950 6500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS245 UIC4
U 1 1 5EE31204
P 3700 6500
F 0 "UIC4" H 3700 7481 50  0000 C CNN
F 1 "74HCT245" H 3700 7390 50  0000 C CNN
F 2 "" H 3700 6500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 3700 6500 50  0001 C CNN
	1    3700 6500
	1    0    0    -1  
$EndComp
Text GLabel 1450 6200 0    50   Input ~ 0
OP2
Text GLabel 1450 6300 0    50   Input ~ 0
OP3
Text GLabel 1450 6400 0    50   Input ~ 0
OP4
Text GLabel 1450 6500 0    50   Input ~ 0
OP5
Text GLabel 1450 6600 0    50   Input ~ 0
OP6
Text GLabel 1450 6700 0    50   Input ~ 0
OP7
Text GLabel 2450 6200 2    50   3State ~ 0
BOP2
Text GLabel 2450 6300 2    50   3State ~ 0
BOP3
Text GLabel 2450 6400 2    50   3State ~ 0
BOP4
Text GLabel 2450 6500 2    50   3State ~ 0
BOP5
Text GLabel 2450 6600 2    50   3State ~ 0
BOP6
Text GLabel 2450 6700 2    50   3State ~ 0
BOP7
Text GLabel 1450 7000 0    50   Input ~ 0
EXTEN
Text GLabel 3200 7000 0    50   Input ~ 0
EXTEN
$Comp
L Device:Jumper JP1
U 1 1 5EE39530
P 9550 4500
F 0 "JP1" H 9550 4764 50  0000 C CNN
F 1 "Jumper" H 9550 4673 50  0000 C CNN
F 2 "" H 9550 4500 50  0001 C CNN
F 3 "~" H 9550 4500 50  0001 C CNN
	1    9550 4500
	1    0    0    -1  
$EndComp
Text GLabel 10350 3900 2    50   Output ~ 0
EXTEN
$Comp
L Device:R R1
U 1 1 5EE446D1
P 9250 3400
F 0 "R1" H 9320 3446 50  0000 L CNN
F 1 "10K" H 9320 3355 50  0000 L CNN
F 2 "" V 9180 3400 50  0001 C CNN
F 3 "~" H 9250 3400 50  0001 C CNN
	1    9250 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 6900 2800 6900
Wire Wire Line
	2800 6900 2800 7300
Wire Wire Line
	2800 7300 3700 7300
Wire Wire Line
	1950 7300 2800 7300
Connection ~ 2800 7300
Connection ~ 1950 7300
Text GLabel 3200 6000 0    50   Input ~ 0
BIP0
Text GLabel 3200 6100 0    50   Input ~ 0
BIP1
Text GLabel 3200 6200 0    50   Input ~ 0
BIP2
Text GLabel 3200 6300 0    50   Input ~ 0
BIP3
Text GLabel 3200 6400 0    50   Input ~ 0
BIP4
Text GLabel 3200 6500 0    50   Input ~ 0
BIP5
Text GLabel 3200 6600 0    50   Input ~ 0
BRXDA
Text GLabel 4200 6600 2    50   Output ~ 0
RXDA
Text GLabel 4200 6500 2    50   Output ~ 0
IP5
Text GLabel 4200 6400 2    50   Output ~ 0
IP4
Text GLabel 4200 6300 2    50   Output ~ 0
IP3
Text GLabel 4200 6200 2    50   Output ~ 0
IP2
Text GLabel 4200 6100 2    50   Output ~ 0
IP1
Text GLabel 4200 6000 2    50   Output ~ 0
IP0
Text GLabel 6950 3900 2    50   Output ~ 0
OP2
Text GLabel 6950 4000 2    50   Output ~ 0
OP3
Text GLabel 6950 4100 2    50   Output ~ 0
OP4
Text GLabel 6950 4200 2    50   Output ~ 0
OP5
Text GLabel 6950 4300 2    50   Output ~ 0
OP6
Text GLabel 6950 4400 2    50   Output ~ 0
OP7
Text GLabel 6950 4600 2    50   Input ~ 0
IP0
Text GLabel 6950 4700 2    50   Input ~ 0
IP1
Text GLabel 6950 4800 2    50   Input ~ 0
IP2
Text GLabel 6950 4900 2    50   Input ~ 0
IP3
Text GLabel 6950 5000 2    50   Input ~ 0
IP4
Text GLabel 6950 5100 2    50   Input ~ 0
IP5
$Comp
L 74xx_IEEE:74126 IC5
U 1 1 5EE55503
P 10050 1100
F 0 "IC5" H 10050 1566 50  0000 C CNN
F 1 "74126" H 10050 1475 50  0000 C CNN
F 2 "" H 10050 1100 50  0001 C CNN
F 3 "" H 10050 1100 50  0001 C CNN
	1    10050 1100
	1    0    0    -1  
$EndComp
$Comp
L 74xx_IEEE:74126 IC5
U 2 1 5EE57459
P 10050 1950
F 0 "IC5" H 10050 2416 50  0000 C CNN
F 1 "74126" H 10050 2325 50  0000 C CNN
F 2 "" H 10050 1950 50  0001 C CNN
F 3 "" H 10050 1950 50  0001 C CNN
	2    10050 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 1200 9350 1200
Wire Wire Line
	9350 1200 9350 2050
Wire Wire Line
	9550 2050 9350 2050
Connection ~ 9350 2050
Wire Wire Line
	9350 2050 9350 2300
Wire Wire Line
	9550 1850 9200 1850
Wire Wire Line
	9200 1850 9200 1000
Wire Wire Line
	9200 1000 9550 1000
Wire Wire Line
	9200 1000 9050 1000
Connection ~ 9200 1000
Text GLabel 9050 1000 0    50   Input ~ 0
IRQ
Text GLabel 1050 2100 0    50   3State ~ 0
IPL2
Text GLabel 1050 1900 0    50   3State ~ 0
IPL0
Text GLabel 10550 1100 2    50   3State ~ 0
IPL0
Text GLabel 10550 1950 2    50   3State ~ 0
IPL2
Text GLabel 9350 2300 3    50   UnSpc ~ 0
GND
Wire Wire Line
	9250 3550 9250 3900
Connection ~ 9250 3900
Wire Wire Line
	9250 3900 9250 4500
Wire Wire Line
	9250 3250 9250 3100
Text GLabel 10350 4500 2    50   UnSpc ~ 0
GND
Text GLabel 9250 3100 1    50   UnSpc ~ 0
VCC
Wire Wire Line
	9250 3900 10350 3900
Wire Wire Line
	9850 4500 10350 4500
Wire Wire Line
	4950 3100 3850 3100
Wire Wire Line
	4950 3200 4500 3200
Wire Wire Line
	4500 3200 4500 3600
Connection ~ 4500 3600
Text GLabel 6950 3400 2    50   Output ~ 0
TXDB
Text GLabel 6950 3500 2    50   Input ~ 0
RXDB
Text GLabel 6950 3200 2    50   Input ~ 0
RXDA
Text GLabel 6950 3100 2    50   Output ~ 0
TXDA
Wire Wire Line
	800  700  1050 700 
Connection ~ 800  700 
Wire Wire Line
	800  900  1050 900 
Connection ~ 800  900 
$Comp
L 74xx:74LS245 IC2
U 1 1 5EDDAAB5
P 3300 1700
F 0 "IC2" H 3300 2681 50  0000 C CNN
F 1 "74HCT245" H 3300 2590 50  0000 C CNN
F 2 "" H 3300 1700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 3300 1700 50  0001 C CNN
	1    3300 1700
	1    0    0    -1  
$EndComp
Text GLabel 3800 1200 2    50   BiDi ~ 0
D8
Text GLabel 3800 1300 2    50   BiDi ~ 0
D9
Text GLabel 3800 1400 2    50   BiDi ~ 0
D10
Text GLabel 3800 1500 2    50   BiDi ~ 0
D11
Text GLabel 3800 1600 2    50   BiDi ~ 0
D12
Text GLabel 3800 1700 2    50   BiDi ~ 0
D13
Text GLabel 3800 1800 2    50   BiDi ~ 0
D14
Text GLabel 3800 1900 2    50   BiDi ~ 0
D15
Text GLabel 2800 1200 0    50   BiDi ~ 0
BD0
Text GLabel 2800 1300 0    50   BiDi ~ 0
BD1
Text GLabel 2800 1400 0    50   BiDi ~ 0
BD2
Text GLabel 2800 1500 0    50   BiDi ~ 0
BD3
Text GLabel 2800 1600 0    50   BiDi ~ 0
BD4
Text GLabel 2800 1700 0    50   BiDi ~ 0
BD5
Text GLabel 2800 1800 0    50   BiDi ~ 0
BD6
Text GLabel 2800 1900 0    50   BiDi ~ 0
BD7
Text GLabel 2800 2100 0    50   Input ~ 0
RnW
Text GLabel 2800 2200 0    50   Input ~ 0
SEL
Text GLabel 1050 4600 0    50   Output ~ 0
BOP2
Text GLabel 1050 4700 0    50   Output ~ 0
BOP3
Text GLabel 1050 4800 0    50   Output ~ 0
BOP4
Text GLabel 1050 4900 0    50   Output ~ 0
BOP5
Text GLabel 1050 5000 0    50   Output ~ 0
BOP6
Text GLabel 1050 5100 0    50   Output ~ 0
BOP7
Text GLabel 1550 4400 2    50   Input ~ 0
BIP0
Text GLabel 1550 4500 2    50   Input ~ 0
BIP1
Text GLabel 1550 4600 2    50   Input ~ 0
BIP2
Text GLabel 1550 4700 2    50   Input ~ 0
BIP3
Text GLabel 1550 4800 2    50   Input ~ 0
BIP4
Text GLabel 1550 4900 2    50   Input ~ 0
BIP5
Text GLabel 1550 5000 2    50   Input ~ 0
BRXDB
Text GLabel 1550 5100 2    50   Output ~ 0
BTXDB
$Comp
L Logic_Programmable:GAL16V8 IC6
U 1 1 5EF2E07A
P 5350 1600
F 0 "IC6" H 5350 2481 50  0000 C CNN
F 1 "IC6_DECO.PLD" H 5350 2390 50  0000 C CNN
F 2 "" H 5350 1600 50  0001 C CNN
F 3 "" H 5350 1600 50  0001 C CNN
	1    5350 1600
	1    0    0    -1  
$EndComp
Text GLabel 4850 1100 0    50   Input ~ 0
A6
Text GLabel 4850 1200 0    50   Input ~ 0
A7
Text GLabel 4850 1300 0    50   Input ~ 0
A8
Text GLabel 4850 1400 0    50   Input ~ 0
A9
Text GLabel 4850 1500 0    50   Input ~ 0
A10
Text GLabel 4850 1600 0    50   Input ~ 0
A11
Text GLabel 4850 1700 0    50   Input ~ 0
A12
Text GLabel 4850 1800 0    50   Input ~ 0
A13
Text GLabel 4850 1900 0    50   Input ~ 0
A14
Text GLabel 4850 2000 0    50   Input ~ 0
A15
Text GLabel 5850 1700 2    50   Input ~ 0
A16
Text GLabel 5850 1600 2    50   Input ~ 0
A17
Text GLabel 5850 1500 2    50   Input ~ 0
A3
Text GLabel 5850 1400 2    50   Input ~ 0
A4
Text GLabel 5850 1300 2    50   Input ~ 0
A5
Text GLabel 5850 1200 2    50   Input ~ 0
SEL_IN
Text GLabel 5850 1100 2    50   Output ~ 0
SEL
NoConn ~ 5850 1800
$Comp
L Logic_Programmable:GAL16V8 IC7
U 1 1 5EF46EC2
P 7400 1600
F 0 "IC7" H 7400 2481 50  0000 C CNN
F 1 "IC7_UART_.PLD" H 7400 2390 50  0000 C CNN
F 2 "" H 7400 1600 50  0001 C CNN
F 3 "" H 7400 1600 50  0001 C CNN
	1    7400 1600
	1    0    0    -1  
$EndComp
NoConn ~ 6900 1700
NoConn ~ 6900 1800
NoConn ~ 6900 1900
NoConn ~ 6900 2000
NoConn ~ 7900 1800
NoConn ~ 7900 1500
NoConn ~ 7900 1400
NoConn ~ 7900 1300
NoConn ~ 7900 1200
NoConn ~ 7900 1100
Text GLabel 6900 1100 0    50   Input ~ 0
IOSEL
Text GLabel 6900 1200 0    50   Input ~ 0
UDS
Text GLabel 6900 1300 0    50   Input ~ 0
FC0
Text GLabel 6900 1400 0    50   Input ~ 0
FC1
Text GLabel 6900 1500 0    50   Input ~ 0
FC2
Text GLabel 6900 1600 0    50   Input ~ 0
IRQ
Text GLabel 4950 5400 0    50   Output ~ 0
IRQ
Text GLabel 7900 1700 2    50   Output ~ 0
SEL_IN
Text GLabel 7900 1600 2    50   3State ~ 0
VPA
Wire Wire Line
	7400 900  6400 900 
Wire Wire Line
	5350 900  4350 900 
Connection ~ 5350 900 
Wire Wire Line
	7400 2500 7400 2300
Wire Wire Line
	5350 2300 5350 2500
Connection ~ 5350 2500
Wire Wire Line
	5350 2500 6400 2500
Connection ~ 3300 900 
Connection ~ 3300 2500
Connection ~ 7400 900 
Connection ~ 7400 2500
$Comp
L Device:C C2
U 1 1 5EF6044F
P 2300 1650
F 0 "C2" H 2415 1696 50  0000 L CNN
F 1 "100nF" H 2415 1605 50  0000 L CNN
F 2 "" H 2338 1500 50  0001 C CNN
F 3 "~" H 2300 1650 50  0001 C CNN
	1    2300 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 5EF613A8
P 8350 1650
F 0 "C12" H 8465 1696 50  0000 L CNN
F 1 "100nF" H 8465 1605 50  0000 L CNN
F 2 "" H 8388 1500 50  0001 C CNN
F 3 "~" H 8350 1650 50  0001 C CNN
	1    8350 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5EF61BE3
P 4350 1650
F 0 "C4" H 4465 1696 50  0000 L CNN
F 1 "100nF" H 4465 1605 50  0000 L CNN
F 2 "" H 4388 1500 50  0001 C CNN
F 3 "~" H 4350 1650 50  0001 C CNN
	1    4350 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5EF624E3
P 6400 1650
F 0 "C7" H 6515 1696 50  0000 L CNN
F 1 "100nF" H 6515 1605 50  0000 L CNN
F 2 "" H 6438 1500 50  0001 C CNN
F 3 "~" H 6400 1650 50  0001 C CNN
	1    6400 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 1500 6400 900 
Connection ~ 6400 900 
Wire Wire Line
	6400 900  5350 900 
Wire Wire Line
	6400 1800 6400 2500
Connection ~ 6400 2500
Wire Wire Line
	6400 2500 7400 2500
Wire Wire Line
	4350 1500 4350 900 
Connection ~ 4350 900 
Wire Wire Line
	4350 900  3300 900 
Wire Wire Line
	4350 1800 4350 2500
Wire Wire Line
	3300 2500 4350 2500
Connection ~ 4350 2500
Wire Wire Line
	4350 2500 5350 2500
Wire Wire Line
	2300 900  2300 1500
Wire Wire Line
	2300 900  3300 900 
Wire Wire Line
	2300 1800 2300 2500
Wire Wire Line
	2300 2500 3300 2500
Wire Wire Line
	8350 900  8350 1500
Wire Wire Line
	7400 900  8350 900 
Wire Wire Line
	8350 1800 8350 2500
Wire Wire Line
	7400 2500 8350 2500
Wire Wire Line
	2300 900  2300 800 
Connection ~ 2300 900 
Wire Wire Line
	8350 2500 8350 2600
Connection ~ 8350 2500
Text GLabel 2300 800  1    50   UnSpc ~ 0
VCC
Text GLabel 8350 2600 3    50   UnSpc ~ 0
GND
$Comp
L Device:C C1
U 1 1 5EF75A30
P 900 6350
F 0 "C1" H 1015 6396 50  0000 L CNN
F 1 "100nF" H 1015 6305 50  0000 L CNN
F 2 "" H 938 6200 50  0001 C CNN
F 3 "~" H 900 6350 50  0001 C CNN
	1    900  6350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5EF76323
P 4800 6350
F 0 "C6" H 4915 6396 50  0000 L CNN
F 1 "100nF" H 4915 6305 50  0000 L CNN
F 2 "" H 4838 6200 50  0001 C CNN
F 3 "~" H 4800 6350 50  0001 C CNN
	1    4800 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  5700 1950 5700
Wire Wire Line
	3700 5700 4800 5700
Wire Wire Line
	4800 5700 4800 6200
Wire Wire Line
	1950 5700 3700 5700
Connection ~ 1950 5700
Connection ~ 3700 5700
Wire Wire Line
	900  6500 900  6900
Wire Wire Line
	900  7300 1950 7300
Wire Wire Line
	900  6900 1450 6900
Connection ~ 900  6900
Wire Wire Line
	900  6900 900  7300
Wire Wire Line
	3700 7300 4800 7300
Wire Wire Line
	4800 7300 4800 6500
Connection ~ 3700 7300
Wire Wire Line
	900  5700 900  6200
Wire Wire Line
	900  5700 900  5550
Connection ~ 900  5700
Wire Wire Line
	4800 7300 4800 7400
Connection ~ 4800 7300
Text GLabel 900  5550 1    50   UnSpc ~ 0
VCC
Text GLabel 4800 7400 3    50   UnSpc ~ 0
GND
$Comp
L Device:C C8
U 1 1 5EF9C0B2
P 8100 3400
F 0 "C8" V 7848 3400 50  0000 C CNN
F 1 "C" V 7939 3400 50  0000 C CNN
F 2 "" H 8138 3250 50  0001 C CNN
F 3 "~" H 8100 3400 50  0001 C CNN
	1    8100 3400
	0    1    1    0   
$EndComp
$Comp
L Device:C C9
U 1 1 5EF9CBDA
P 8100 3850
F 0 "C9" V 7848 3850 50  0000 C CNN
F 1 "C" V 7939 3850 50  0000 C CNN
F 2 "" H 8138 3700 50  0001 C CNN
F 3 "~" H 8100 3850 50  0001 C CNN
	1    8100 3850
	0    1    1    0   
$EndComp
$Comp
L Device:CP C10
U 1 1 5EF9DA6F
P 8100 4300
F 0 "C10" V 8355 4300 50  0000 C CNN
F 1 "CP" V 8264 4300 50  0000 C CNN
F 2 "" H 8138 4150 50  0001 C CNN
F 3 "~" H 8100 4300 50  0001 C CNN
	1    8100 4300
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP C11
U 1 1 5EF9E65A
P 8100 4750
F 0 "C11" V 8355 4750 50  0000 C CNN
F 1 "CP" V 8264 4750 50  0000 C CNN
F 2 "" H 8138 4600 50  0001 C CNN
F 3 "~" H 8100 4750 50  0001 C CNN
	1    8100 4750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7850 3050 7850 3400
Wire Wire Line
	7850 4750 7950 4750
Wire Wire Line
	8350 3400 8350 3850
Wire Wire Line
	8250 3400 8350 3400
Wire Wire Line
	7950 3400 7850 3400
Connection ~ 7850 3400
Wire Wire Line
	7850 3400 7850 3850
Wire Wire Line
	7950 3850 7850 3850
Connection ~ 7850 3850
Wire Wire Line
	7850 3850 7850 4300
Wire Wire Line
	8250 3850 8350 3850
Connection ~ 8350 3850
Wire Wire Line
	8350 3850 8350 4300
Wire Wire Line
	8250 4300 8350 4300
Connection ~ 8350 4300
Wire Wire Line
	8350 4300 8350 4750
Wire Wire Line
	7950 4300 7850 4300
Connection ~ 7850 4300
Wire Wire Line
	7850 4300 7850 4750
Wire Wire Line
	8250 4750 8350 4750
Connection ~ 8350 4750
Wire Wire Line
	8350 4750 8350 5000
Text GLabel 7850 3050 1    50   UnSpc ~ 0
VCC
Text GLabel 8350 5000 3    50   UnSpc ~ 0
GND
NoConn ~ 1050 2000
NoConn ~ 1550 2400
NoConn ~ 4950 5000
Text GLabel 5950 2800 1    50   UnSpc ~ 0
VCC
Text GLabel 5950 5700 3    50   UnSpc ~ 0
GND
Text GLabel 1550 2100 2    50   Output ~ 0
A15
Text GLabel 1450 6000 0    50   Input ~ 0
TXDA
Text GLabel 1450 6100 0    50   Input ~ 0
TXDB
Text GLabel 2450 6000 2    50   Output ~ 0
BTXDA
Text GLabel 2450 6100 2    50   Output ~ 0
BTXDB
Text GLabel 3200 6700 0    50   Input ~ 0
BRXDB
Text GLabel 4200 6700 2    50   Output ~ 0
RXDB
Text GLabel 1050 4400 0    50   Input ~ 0
BRXDA
Text GLabel 1050 4500 0    50   Output ~ 0
BTXDA
Text GLabel 6950 3700 2    50   Output ~ 0
CTSA
Text GLabel 6950 3800 2    50   Output ~ 0
CTSB
$EndSCHEMATC
