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
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x32_P2.54mm_Vertical" H 1250 2200 50  0001 C CNN
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
F 2 "Package_DIP:DIP-40_W15.24mm_Socket_LongPads" H 5950 4300 50  0001 C CNN
F 3 "http://bitsavers.trailing-edge.com/components/motorola/68000/68681_Dual_Asynchronous_Receiver_Transmitter_DUART_Sep85.pdf" H 5950 4300 50  0001 C CNN
	1    5950 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Q1
U 1 1 5EDD7329
P 4200 3600
F 0 "Q1" H 4200 3868 50  0000 C CNN
F 1 "Crystal" H 4200 3777 50  0000 C CNN
F 2 "Crystal:Crystal_HC49-4H_Vertical" H 4200 3600 50  0001 C CNN
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
F 2 "rosco_m68k:C2.5-3" H 3888 4150 50  0001 C CNN
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
F 2 "rosco_m68k:C2.5-3" H 4538 4150 50  0001 C CNN
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
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 9550 6000 50  0001 C CNN
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
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 2600 3500 50  0001 C CNN
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
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 2600 4350 50  0001 C CNN
F 3 "~" H 2600 4350 50  0001 C CNN
	1    2600 4350
	1    0    0    -1  
$EndComp
Text GLabel 2800 3300 2    50   UnSpc ~ 0
GND
Text GLabel 2800 3400 2    50   Output ~ 0
CTSA
Text GLabel 2800 3700 2    50   Input ~ 0
TXDA
Text GLabel 2800 3600 2    50   Output ~ 0
RXDA
NoConn ~ 2800 3800
$Comp
L Device:Jumper JP3
U 1 1 5EE1EE9F
P 9550 5650
F 0 "JP3" H 9550 5914 50  0000 C CNN
F 1 "Jumper" H 9550 5823 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 9550 5650 50  0001 C CNN
F 3 "~" H 9550 5650 50  0001 C CNN
	1    9550 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 5650 10350 5650
$Comp
L Device:Jumper JP2
U 1 1 5EE1F91D
P 9550 5300
F 0 "JP2" H 9550 5564 50  0000 C CNN
F 1 "Jumper" H 9550 5473 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 9550 5300 50  0001 C CNN
F 3 "~" H 9550 5300 50  0001 C CNN
	1    9550 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 5300 10350 5300
Text GLabel 8700 5650 0    50   UnSpc ~ 0
VCC
Text GLabel 10350 5300 2    50   UnSpc ~ 0
VCCUA
Text GLabel 10350 5650 2    50   UnSpc ~ 0
VCCUB
Text GLabel 2800 3500 2    50   UnSpc ~ 0
VCCUA
Text GLabel 2800 4350 2    50   UnSpc ~ 0
VCCUB
Text GLabel 2800 4150 2    50   UnSpc ~ 0
GND
Text GLabel 2800 4250 2    50   Output ~ 0
CTSB
Text GLabel 2800 4550 2    50   Input ~ 0
TXDB
Text GLabel 2800 4450 2    50   Output ~ 0
RXDB
NoConn ~ 2800 4650
Wire Wire Line
	9250 5300 8950 5300
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J2
U 1 1 5EE2B8E5
P 1250 4700
F 0 "J2" H 1300 5217 50  0000 C CNN
F 1 "EXTBUS" H 1300 5126 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x08_P2.54mm_Vertical" H 1250 4700 50  0001 C CNN
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
F 2 "Package_DIP:DIP-20_W7.62mm_Socket_LongPads" H 1950 6500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 1950 6500 50  0001 C CNN
	1    1950 6500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS245 IC4
U 1 1 5EE31204
P 3700 6500
F 0 "IC4" H 3700 7481 50  0000 C CNN
F 1 "74HCT245" H 3700 7390 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket_LongPads" H 3700 6500 50  0001 C CNN
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
P 9550 4950
F 0 "JP1" H 9550 5214 50  0000 C CNN
F 1 "Jumper" H 9550 5123 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 9550 4950 50  0001 C CNN
F 3 "~" H 9550 4950 50  0001 C CNN
	1    9550 4950
	1    0    0    -1  
$EndComp
Text GLabel 10350 4350 2    50   Output ~ 0
EXTEN
$Comp
L Device:R R1
U 1 1 5EE446D1
P 8950 4350
F 0 "R1" V 8850 4300 50  0000 L CNN
F 1 "10K" V 9050 4250 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8880 4350 50  0001 C CNN
F 3 "~" H 8950 4350 50  0001 C CNN
	1    8950 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	3200 6900 2800 6900
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
P 10300 1100
F 0 "IC5" H 10300 1566 50  0000 C CNN
F 1 "74125" H 10300 1475 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 10300 1100 50  0001 C CNN
F 3 "" H 10300 1100 50  0001 C CNN
	1    10300 1100
	1    0    0    -1  
$EndComp
$Comp
L 74xx_IEEE:74126 IC5
U 2 1 5EE57459
P 10300 1950
F 0 "IC5" H 10300 2416 50  0000 C CNN
F 1 "74125" H 10300 2325 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 10300 1950 50  0001 C CNN
F 3 "" H 10300 1950 50  0001 C CNN
	2    10300 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 1200 9600 1200
Wire Wire Line
	9600 1200 9600 2050
Wire Wire Line
	9800 2050 9600 2050
Connection ~ 9600 2050
Wire Wire Line
	9600 2050 9600 2300
Wire Wire Line
	9800 1850 9450 1850
Wire Wire Line
	9450 1850 9450 1000
Wire Wire Line
	9450 1000 9800 1000
Wire Wire Line
	9450 1000 9300 1000
Connection ~ 9450 1000
Text GLabel 9300 1000 0    50   Input ~ 0
IRQ
Text GLabel 1050 2100 0    50   3State ~ 0
IPL2
Text GLabel 1050 1900 0    50   3State ~ 0
IPL0
Text GLabel 10800 1100 2    50   3State ~ 0
IPL0
Text GLabel 10800 1950 2    50   3State ~ 0
IPL2
Text GLabel 9600 2300 3    50   UnSpc ~ 0
GND
Wire Wire Line
	9250 4350 9250 4950
Text GLabel 10350 4950 2    50   UnSpc ~ 0
GND
Text GLabel 8700 4350 0    50   UnSpc ~ 0
VCC
Wire Wire Line
	9250 4350 10350 4350
Wire Wire Line
	9850 4950 10350 4950
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
F 2 "Package_DIP:DIP-20_W7.62mm_Socket_LongPads" H 3300 1700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 3300 1700 50  0001 C CNN
	1    3300 1700
	1    0    0    -1  
$EndComp
Text GLabel 3800 1900 2    50   BiDi ~ 0
D8
Text GLabel 3800 1800 2    50   BiDi ~ 0
D9
Text GLabel 3800 1700 2    50   BiDi ~ 0
D10
Text GLabel 3800 1600 2    50   BiDi ~ 0
D11
Text GLabel 3800 1500 2    50   BiDi ~ 0
D12
Text GLabel 3800 1400 2    50   BiDi ~ 0
D13
Text GLabel 3800 1300 2    50   BiDi ~ 0
D14
Text GLabel 3800 1200 2    50   BiDi ~ 0
D15
Text GLabel 2800 1900 0    50   BiDi ~ 0
BD0
Text GLabel 2800 1800 0    50   BiDi ~ 0
BD1
Text GLabel 2800 1700 0    50   BiDi ~ 0
BD2
Text GLabel 2800 1600 0    50   BiDi ~ 0
BD3
Text GLabel 2800 1500 0    50   BiDi ~ 0
BD4
Text GLabel 2800 1400 0    50   BiDi ~ 0
BD5
Text GLabel 2800 1300 0    50   BiDi ~ 0
BD6
Text GLabel 2800 1200 0    50   BiDi ~ 0
BD7
Text GLabel 2800 2100 0    50   Input ~ 0
RnW
Text GLabel 2800 2200 0    50   Input ~ 0
SEL
Text GLabel 1550 5000 2    50   Output ~ 0
BOP2
Text GLabel 1050 4800 0    50   Output ~ 0
BOP3
Text GLabel 1550 4800 2    50   Output ~ 0
BOP4
Text GLabel 1550 4900 2    50   Output ~ 0
BOP5
Text GLabel 1050 4900 0    50   Output ~ 0
BOP6
Text GLabel 1050 5000 0    50   Output ~ 0
BOP7
Text GLabel 1050 4400 0    50   Input ~ 0
BIP0
Text GLabel 1550 4400 2    50   Input ~ 0
BIP1
Text GLabel 1550 4500 2    50   Input ~ 0
BIP2
Text GLabel 1050 4500 0    50   Input ~ 0
BIP3
Text GLabel 1050 4700 0    50   Input ~ 0
BIP4
Text GLabel 1550 4700 2    50   Input ~ 0
BIP5
Text GLabel 1050 4600 0    50   Input ~ 0
BRXDB
Text GLabel 1550 5100 2    50   Output ~ 0
BTXDB
$Comp
L Logic_Programmable:GAL16V8 IC6
U 1 1 5EF2E07A
P 5350 1600
F 0 "IC6" H 5350 2481 50  0000 C CNN
F 1 "IC6_DECO.PLD" H 5350 2390 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket_LongPads" H 5350 1600 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/devicedoc/atmel-0364-pld-atf16v8b-8bq-8bql-datasheet.pdf" H 5350 1600 50  0001 C CNN
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
Text GLabel 5850 1600 2    50   Input ~ 0
A15
Text GLabel 5850 1700 2    50   Input ~ 0
A16
Text GLabel 4850 2000 0    50   Input ~ 0
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
F 2 "Package_DIP:DIP-20_W7.62mm_Socket_LongPads" H 7400 1600 50  0001 C CNN
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
Text GLabel 3700 5400 0    50   Output ~ 0
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
F 2 "rosco_m68k:C2.5-3" H 2338 1500 50  0001 C CNN
F 3 "~" H 2300 1650 50  0001 C CNN
	1    2300 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C15
U 1 1 5EF613A8
P 8350 1650
F 0 "C15" H 8465 1696 50  0000 L CNN
F 1 "100nF" H 8465 1605 50  0000 L CNN
F 2 "rosco_m68k:C2.5-3" H 8388 1500 50  0001 C CNN
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
F 2 "rosco_m68k:C2.5-3" H 4388 1500 50  0001 C CNN
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
F 2 "rosco_m68k:C2.5-3" H 6438 1500 50  0001 C CNN
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
L Device:C C6
U 1 1 5EF76323
P 4800 7000
F 0 "C6" H 4915 7046 50  0000 L CNN
F 1 "100nF" H 4915 6955 50  0000 L CNN
F 2 "rosco_m68k:C2.5-3" H 4838 6850 50  0001 C CNN
F 3 "~" H 4800 7000 50  0001 C CNN
	1    4800 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  5700 1150 5700
Wire Wire Line
	3700 5700 4800 5700
Wire Wire Line
	4800 5700 4800 6850
Wire Wire Line
	1950 5700 2800 5700
Connection ~ 1950 5700
Connection ~ 3700 5700
Wire Wire Line
	900  7300 1950 7300
Wire Wire Line
	3700 7300 4800 7300
Wire Wire Line
	4800 7300 4800 7150
Connection ~ 3700 7300
Wire Wire Line
	900  5700 900  5550
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
P 7850 3150
F 0 "C8" V 7598 3150 50  0000 C CNN
F 1 "100nF" V 7689 3150 50  0000 C CNN
F 2 "rosco_m68k:C2.5-3" H 7888 3000 50  0001 C CNN
F 3 "~" H 7850 3150 50  0001 C CNN
	1    7850 3150
	0    1    1    0   
$EndComp
$Comp
L Device:C C9
U 1 1 5EF9CBDA
P 7850 3600
F 0 "C9" V 7598 3600 50  0000 C CNN
F 1 "100nF" V 7689 3600 50  0000 C CNN
F 2 "rosco_m68k:C2.5-3" H 7888 3450 50  0001 C CNN
F 3 "~" H 7850 3600 50  0001 C CNN
	1    7850 3600
	0    1    1    0   
$EndComp
$Comp
L Device:CP C13
U 1 1 5EF9DA6F
P 7850 5500
F 0 "C13" V 8105 5500 50  0000 C CNN
F 1 "220uF" V 8014 5500 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 7888 5350 50  0001 C CNN
F 3 "~" H 7850 5500 50  0001 C CNN
	1    7850 5500
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP C14
U 1 1 5EF9E65A
P 7850 5950
F 0 "C14" V 8105 5950 50  0000 C CNN
F 1 "220uF" V 8014 5950 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 7888 5800 50  0001 C CNN
F 3 "~" H 7850 5950 50  0001 C CNN
	1    7850 5950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7600 2800 7600 3150
Wire Wire Line
	7600 5950 7700 5950
Wire Wire Line
	8100 3150 8100 3600
Wire Wire Line
	8000 3150 8100 3150
Wire Wire Line
	7700 3150 7600 3150
Connection ~ 7600 3150
Wire Wire Line
	7600 3150 7600 3600
Wire Wire Line
	7700 3600 7600 3600
Connection ~ 7600 3600
Wire Wire Line
	8000 3600 8100 3600
Connection ~ 8100 3600
Wire Wire Line
	8000 5500 8100 5500
Wire Wire Line
	8100 5500 8100 5950
Wire Wire Line
	7700 5500 7600 5500
Wire Wire Line
	7600 5500 7600 5950
Wire Wire Line
	8000 5950 8100 5950
Connection ~ 8100 5950
Wire Wire Line
	8100 5950 8100 6200
Text GLabel 7600 2800 1    50   UnSpc ~ 0
VCC
Text GLabel 8100 6200 3    50   UnSpc ~ 0
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
Text GLabel 1550 4600 2    50   Input ~ 0
BRXDA
Text GLabel 1050 5100 0    50   Output ~ 0
BTXDA
Text GLabel 6950 3700 2    50   Output ~ 0
CTSA
Text GLabel 6950 3800 2    50   Output ~ 0
CTSB
$Comp
L Device:C C10
U 1 1 5EE63A78
P 7850 4050
F 0 "C10" V 7598 4050 50  0000 C CNN
F 1 "100nF" V 7689 4050 50  0000 C CNN
F 2 "rosco_m68k:C2.5-3" H 7888 3900 50  0001 C CNN
F 3 "~" H 7850 4050 50  0001 C CNN
	1    7850 4050
	0    1    1    0   
$EndComp
$Comp
L Device:C C11
U 1 1 5EE644CC
P 7850 4500
F 0 "C11" V 7598 4500 50  0000 C CNN
F 1 "100nF" V 7689 4500 50  0000 C CNN
F 2 "rosco_m68k:C2.5-3" H 7888 4350 50  0001 C CNN
F 3 "~" H 7850 4500 50  0001 C CNN
	1    7850 4500
	0    1    1    0   
$EndComp
$Comp
L Device:C C12
U 1 1 5EE7105F
P 7850 4950
F 0 "C12" V 7598 4950 50  0000 C CNN
F 1 "100nF" V 7689 4950 50  0000 C CNN
F 2 "rosco_m68k:C2.5-3" H 7888 4800 50  0001 C CNN
F 3 "~" H 7850 4950 50  0001 C CNN
	1    7850 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	7600 3600 7600 4050
Connection ~ 7600 5500
Wire Wire Line
	8100 3600 8100 4050
Connection ~ 8100 5500
Wire Wire Line
	8000 4950 8100 4950
Connection ~ 8100 4950
Wire Wire Line
	8100 4950 8100 5500
Wire Wire Line
	7700 4950 7600 4950
Connection ~ 7600 4950
Wire Wire Line
	7600 4950 7600 5500
Wire Wire Line
	7700 4500 7600 4500
Connection ~ 7600 4500
Wire Wire Line
	7600 4500 7600 4950
Wire Wire Line
	8000 4500 8100 4500
Connection ~ 8100 4500
Wire Wire Line
	8100 4500 8100 4950
Wire Wire Line
	8000 4050 8100 4050
Connection ~ 8100 4050
Wire Wire Line
	8100 4050 8100 4500
Wire Wire Line
	7700 4050 7600 4050
Connection ~ 7600 4050
Wire Wire Line
	7600 4050 7600 4500
$Comp
L 74xx_IEEE:74126 IC5
U 3 1 5EEB865E
P 10300 2800
F 0 "IC5" H 10300 3266 50  0000 C CNN
F 1 "74125" H 10300 3175 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 10300 2800 50  0001 C CNN
F 3 "" H 10300 2800 50  0001 C CNN
	3    10300 2800
	1    0    0    -1  
$EndComp
$Comp
L 74xx_IEEE:74126 IC5
U 4 1 5EEBC74B
P 10300 3550
F 0 "IC5" H 10300 4016 50  0000 C CNN
F 1 "74125" H 10300 3925 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 10300 3550 50  0001 C CNN
F 3 "" H 10300 3550 50  0001 C CNN
	4    10300 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 5650 8950 5650
Wire Wire Line
	8950 5300 8950 5650
Connection ~ 8950 5650
Wire Wire Line
	8950 5650 9250 5650
Wire Wire Line
	9100 4350 9250 4350
Connection ~ 9250 4350
Wire Wire Line
	8700 4350 8800 4350
Wire Wire Line
	9800 2700 9600 2700
Wire Wire Line
	9600 2700 9600 2900
Wire Wire Line
	9600 3650 9800 3650
Connection ~ 9600 2700
Wire Wire Line
	9600 2700 9350 2700
Wire Wire Line
	9800 3450 9600 3450
Connection ~ 9600 3450
Wire Wire Line
	9600 3450 9600 3650
Wire Wire Line
	9800 2900 9600 2900
Connection ~ 9600 2900
Wire Wire Line
	9600 2900 9600 3450
Text GLabel 9350 2700 0    50   UnSpc ~ 0
VCC
NoConn ~ 10800 2800
NoConn ~ 10800 3550
Wire Wire Line
	10300 850  10300 800 
Wire Wire Line
	10300 800  9000 800 
Wire Wire Line
	9000 1650 10300 1650
Wire Wire Line
	10300 1650 10300 1700
Wire Wire Line
	9000 800  9000 1650
Wire Wire Line
	10300 2550 10300 2500
Wire Wire Line
	10300 2500 9000 2500
Wire Wire Line
	9000 2500 9000 1650
Connection ~ 9000 1650
Wire Wire Line
	10300 3300 10300 3250
Wire Wire Line
	10300 3250 9000 3250
Wire Wire Line
	9000 3250 9000 2500
Connection ~ 9000 2500
Wire Wire Line
	10300 1350 10300 1400
Wire Wire Line
	10300 1400 8900 1400
Wire Wire Line
	8900 1400 8900 2250
Wire Wire Line
	8900 2250 10300 2250
Wire Wire Line
	10300 2250 10300 2200
Wire Wire Line
	10300 3050 10300 3100
Wire Wire Line
	10300 3100 8900 3100
Wire Wire Line
	8900 3100 8900 2250
Connection ~ 8900 2250
Wire Wire Line
	10300 3800 10300 3850
Wire Wire Line
	8900 3850 8900 3100
Wire Wire Line
	8900 3850 10300 3850
Connection ~ 8900 3100
Wire Wire Line
	8900 3850 8700 3850
Connection ~ 8900 3850
Wire Wire Line
	9000 800  8800 800 
Connection ~ 9000 800 
Text GLabel 8800 800  0    50   UnSpc ~ 0
VCC
Text GLabel 8700 3850 0    50   UnSpc ~ 0
GND
$Comp
L Device:R R2
U 1 1 5EFEF14E
P 4150 5150
F 0 "R2" H 4220 5196 50  0000 L CNN
F 1 "10K" H 4220 5105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4080 5150 50  0001 C CNN
F 3 "~" H 4150 5150 50  0001 C CNN
	1    4150 5150
	1    0    0    -1  
$EndComp
Text GLabel 4150 4900 1    50   UnSpc ~ 0
VCC
Wire Wire Line
	3700 5400 4150 5400
Wire Wire Line
	4150 4900 4150 5000
Wire Wire Line
	4150 5300 4150 5400
Connection ~ 4150 5400
Wire Wire Line
	4150 5400 4950 5400
$Comp
L Device:C C1
U 1 1 5EF75A30
P 900 7000
F 0 "C1" H 1015 7046 50  0000 L CNN
F 1 "100nF" H 1000 6900 50  0000 L CNN
F 2 "rosco_m68k:C2.5-3" H 938 6850 50  0001 C CNN
F 3 "~" H 900 7000 50  0001 C CNN
	1    900  7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  7150 900  7300
Connection ~ 900  5700
Wire Wire Line
	1450 6900 1150 6900
Wire Wire Line
	900  5700 900  6850
Wire Wire Line
	1150 5700 1150 6900
Connection ~ 1150 5700
Wire Wire Line
	1150 5700 1950 5700
Wire Wire Line
	1950 7300 3700 7300
Wire Wire Line
	2800 6900 2800 5700
Connection ~ 2800 5700
Wire Wire Line
	2800 5700 3700 5700
$EndSCHEMATC
