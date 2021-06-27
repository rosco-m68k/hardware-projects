EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "ROSCO_M68K MC68681 DUART EXPANSION"
Date "2021-06-26"
Rev "2.1"
Comp "The Really Old School Company Limited"
Comment1 ""
Comment2 "See https://github.com/rosco-m68k/hardware-projects/blob/master/LICENCE.hardware.txt"
Comment3 "Open Source Hardware licenced under CERN Open Hardware Licence"
Comment4 "Copyright ©2020-2021 Ross Bamford and Contributors"
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
L Device:Crystal Q1
U 1 1 5EDD7329
P 6900 4450
F 0 "Q1" H 6900 4718 50  0000 C CNN
F 1 "Crystal" H 6900 4627 50  0000 C CNN
F 2 "Crystal:Crystal_HC49-4H_Vertical" H 6900 4450 50  0001 C CNN
F 3 "~" H 6900 4450 50  0001 C CNN
	1    6900 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5EDD83D0
P 6550 5150
F 0 "C3" H 6665 5196 50  0000 L CNN
F 1 "7pF" H 6665 5105 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W2.0mm_P5.00mm" H 6588 5000 50  0001 C CNN
F 3 "~" H 6550 5150 50  0001 C CNN
	1    6550 5150
	-1   0    0    1   
$EndComp
$Comp
L Device:C C5
U 1 1 5EDD8A07
P 7200 5150
F 0 "C5" H 7315 5196 50  0000 L CNN
F 1 "7pF" H 7315 5105 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W2.0mm_P5.00mm" H 7238 5000 50  0001 C CNN
F 3 "~" H 7200 5150 50  0001 C CNN
	1    7200 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 5000 7200 4450
Wire Wire Line
	7050 4450 7200 4450
Wire Wire Line
	6750 4450 6550 4450
Wire Wire Line
	6550 4450 6550 5000
Wire Wire Line
	7200 5300 7200 5600
Wire Wire Line
	6550 5300 6550 5600
Text GLabel 6550 5500 3    50   UnSpc ~ 0
GND
Text GLabel 7200 5500 3    50   UnSpc ~ 0
GND
Text GLabel 5400 4700 2    50   BiDi ~ 0
BD0
Text GLabel 3400 4800 0    50   BiDi ~ 0
BD1
Text GLabel 5400 4800 2    50   BiDi ~ 0
BD2
Text GLabel 3400 4900 0    50   BiDi ~ 0
BD3
Text GLabel 5400 4900 2    50   BiDi ~ 0
BD4
Text GLabel 3400 5000 0    50   BiDi ~ 0
BD5
Text GLabel 5400 5000 2    50   BiDi ~ 0
BD6
Text GLabel 3400 5100 0    50   BiDi ~ 0
BD7
Text GLabel 3400 3900 0    50   Input ~ 0
RnW
Text GLabel 5400 3700 2    50   Input ~ 0
RESET
Text GLabel 1550 3500 2    50   Input ~ 0
DTACK
Wire Wire Line
	9550 5550 8750 5550
Wire Wire Line
	10050 5550 10550 5550
Text GLabel 10550 5550 2    50   Output ~ 0
DTACK
Text GLabel 8750 5550 0    50   Input ~ 0
UDTACK
Text GLabel 3400 4000 0    50   Output ~ 0
UDTACK
Connection ~ 6550 4450
Text GLabel 5400 3600 2    50   Input ~ 0
SEL
Text GLabel 3400 3200 0    50   Input ~ 0
A1
Text GLabel 3400 3400 0    50   Input ~ 0
A2
Text GLabel 3400 3600 0    50   Input ~ 0
A3
Text GLabel 3400 3700 0    50   Input ~ 0
A4
$Comp
L Connector:Conn_01x06_Male J3
U 1 1 5EE19F70
P 2300 3500
F 0 "J3" H 2408 3881 50  0000 C CNN
F 1 "UART_A" H 2408 3790 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 2300 3500 50  0001 C CNN
F 3 "~" H 2300 3500 50  0001 C CNN
	1    2300 3500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Male J4
U 1 1 5EE1B2ED
P 2300 4350
F 0 "J4" H 2408 4731 50  0000 C CNN
F 1 "UART_B" H 2408 4640 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 2300 4350 50  0001 C CNN
F 3 "~" H 2300 4350 50  0001 C CNN
	1    2300 4350
	1    0    0    -1  
$EndComp
Text GLabel 2500 3300 2    50   UnSpc ~ 0
GND
Text GLabel 2500 3400 2    50   Output ~ 0
CTSA
Text GLabel 2500 3700 2    50   Input ~ 0
TXDCA
Text GLabel 2500 3600 2    50   Output ~ 0
RXDCA
NoConn ~ 2500 3800
Text GLabel 10550 5350 2    50   UnSpc ~ 0
VCC
Text GLabel 8750 5450 0    50   UnSpc ~ 0
VCCUA
Text GLabel 8750 5350 0    50   UnSpc ~ 0
VCCUB
Text GLabel 2500 3500 2    50   UnSpc ~ 0
VCCUA
Text GLabel 2500 4350 2    50   UnSpc ~ 0
VCCUB
Text GLabel 2500 4150 2    50   UnSpc ~ 0
GND
Text GLabel 2500 4250 2    50   Output ~ 0
CTSB
Text GLabel 2500 4550 2    50   Input ~ 0
TXDCB
Text GLabel 2500 4450 2    50   Output ~ 0
RXDCB
NoConn ~ 2500 4650
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
Text GLabel 8750 4900 0    50   Output ~ 0
EXTEN
$Comp
L Device:R R1
U 1 1 5EE446D1
P 10500 4900
F 0 "R1" V 10400 4850 50  0000 L CNN
F 1 "10K" V 10600 4800 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 10430 4900 50  0001 C CNN
F 3 "~" H 10500 4900 50  0001 C CNN
	1    10500 4900
	0    -1   -1   0   
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
Text GLabel 5400 4400 2    50   Output ~ 0
OP2
Text GLabel 3400 4500 0    50   Output ~ 0
OP3
Text GLabel 5400 4500 2    50   Output ~ 0
OP4
Text GLabel 3400 4600 0    50   Output ~ 0
OP5
Text GLabel 5400 4600 2    50   Output ~ 0
OP6
Text GLabel 3400 4700 0    50   Output ~ 0
OP7
Text GLabel 3400 3800 0    50   Input ~ 0
IP0
Text GLabel 3400 3500 0    50   Input ~ 0
IP1
Text GLabel 5400 3500 2    50   Input ~ 0
IP2
Text GLabel 3400 3300 0    50   Input ~ 0
IP3
Text GLabel 5400 3200 2    50   Input ~ 0
IP4
Text GLabel 5400 3300 2    50   Input ~ 0
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
Text GLabel 8750 5250 0    50   UnSpc ~ 0
GND
Text GLabel 10750 4900 2    50   UnSpc ~ 0
VCC
Connection ~ 7200 4450
Text GLabel 3400 4300 0    50   Output ~ 0
TXDB
Text GLabel 3400 4100 0    50   Input ~ 0
RXDB
Text GLabel 5400 4000 2    50   Input ~ 0
RXDA
Text GLabel 5400 4200 2    50   Output ~ 0
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
NoConn ~ 6900 2000
NoConn ~ 7900 1800
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
Text GLabel 7900 1700 2    50   Output ~ 0
SEL_IN
Text GLabel 7900 1600 2    50   3State ~ 0
UVPA
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
Text GLabel 5400 3100 2    50   UnSpc ~ 0
VCC
Text GLabel 3400 5200 0    50   UnSpc ~ 0
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
Text GLabel 5400 4300 2    50   Output ~ 0
CTSA
Text GLabel 3400 4400 0    50   Output ~ 0
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
$Comp
L mc68681-basic-rescue:XR68C681CJTR-F-XR68C681 IC1
U 1 1 603DDDD7
P 3400 3100
F 0 "IC1" H 4400 3593 60  0000 C CNN
F 1 "XR68C681CJTR-F" H 4400 3487 60  0000 C CNN
F 2 "Package_LCC:PLCC-44_THT-Socket" H 4400 3340 60  0001 C CNN
F 3 "https://www.maxlinear.com/ds/xr68c681v210.pdf" H 4400 3381 60  0000 C CNN
	1    3400 3100
	1    0    0    -1  
$EndComp
Text GLabel 6900 1700 0    50   Input ~ 0
A1
Text GLabel 6900 1800 0    50   Input ~ 0
A2
Text GLabel 6900 1900 0    50   Input ~ 0
A3
Text GLabel 7900 1500 2    50   Output ~ 0
IACK
Wire Wire Line
	9550 5650 8750 5650
Wire Wire Line
	10050 5650 10550 5650
Text GLabel 10550 5650 2    50   Output ~ 0
VPA
Text GLabel 8750 5650 0    50   Input ~ 0
UVPA
Text GLabel 5400 3400 2    50   Input ~ 0
IACK
Wire Wire Line
	7200 3800 7200 4450
Wire Wire Line
	6550 3900 6550 4450
Wire Wire Line
	5850 5100 6100 5100
Wire Wire Line
	5850 5000 5850 5100
Wire Wire Line
	5850 4600 5850 4700
Text GLabel 5850 4600 1    50   UnSpc ~ 0
VCC
$Comp
L Device:R R2
U 1 1 5EFEF14E
P 5850 4850
F 0 "R2" H 5920 4896 50  0000 L CNN
F 1 "10K" H 5920 4805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5780 4850 50  0001 C CNN
F 3 "~" H 5850 4850 50  0001 C CNN
	1    5850 4850
	1    0    0    -1  
$EndComp
Text GLabel 6100 5100 2    50   Output ~ 0
IRQ
Wire Wire Line
	5400 5100 5850 5100
Connection ~ 5850 5100
Wire Wire Line
	5400 3900 6550 3900
Wire Wire Line
	7200 3800 5400 3800
$Comp
L Connector_Generic:Conn_02x05_Odd_Even JP1-5
U 1 1 60587A30
P 9750 5450
F 0 "JP1-5" H 9800 5867 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 9800 5776 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical" H 9750 5450 50  0001 C CNN
F 3 "~" H 9750 5450 50  0001 C CNN
	1    9750 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10550 5350 10300 5350
Wire Wire Line
	10050 5450 10300 5450
Wire Wire Line
	10300 5450 10300 5350
Connection ~ 10300 5350
Wire Wire Line
	10300 5350 10050 5350
Wire Wire Line
	8750 5450 9550 5450
Wire Wire Line
	9550 5350 8750 5350
Wire Wire Line
	10650 4900 10750 4900
Wire Wire Line
	10050 5250 10250 5250
Wire Wire Line
	10250 5250 10250 4900
Wire Wire Line
	10250 4900 10350 4900
Wire Wire Line
	8750 4900 10250 4900
Connection ~ 10250 4900
Wire Wire Line
	8750 5250 9550 5250
Text GLabel 5650 6100 0    50   Input ~ 0
RXDCA
$Comp
L Device:CP1_Small C16
U 1 1 60D6C450
P 5900 6100
F 0 "C16" V 6128 6100 50  0000 C CNN
F 1 "10uF" V 6037 6100 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 5900 6100 50  0001 C CNN
F 3 "~" H 5900 6100 50  0001 C CNN
	1    5900 6100
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP1_Small C17
U 1 1 60D6DFF3
P 5900 6450
F 0 "C17" V 5672 6450 50  0000 C CNN
F 1 "10uF" V 5763 6450 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 5900 6450 50  0001 C CNN
F 3 "~" H 5900 6450 50  0001 C CNN
	1    5900 6450
	0    1    1    0   
$EndComp
$Comp
L Device:CP1_Small C18
U 1 1 60D73E6D
P 5900 6800
F 0 "C18" V 6128 6800 50  0000 C CNN
F 1 "10uF" V 6037 6800 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 5900 6800 50  0001 C CNN
F 3 "~" H 5900 6800 50  0001 C CNN
	1    5900 6800
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP1_Small C19
U 1 1 60D797B1
P 5900 7200
F 0 "C19" V 5672 7200 50  0000 C CNN
F 1 "10uF" V 5763 7200 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 5900 7200 50  0001 C CNN
F 3 "~" H 5900 7200 50  0001 C CNN
	1    5900 7200
	0    1    1    0   
$EndComp
Text GLabel 5650 6800 0    50   Input ~ 0
RXDCB
Text GLabel 6150 6450 2    50   Input ~ 0
TXDA
Text GLabel 6150 7200 2    50   Input ~ 0
TXDB
Text GLabel 6150 6100 2    50   Output ~ 0
RXDA
Text GLabel 6150 6800 2    50   Output ~ 0
RXDB
Text GLabel 5650 6450 0    50   Output ~ 0
TXDCA
Text GLabel 5650 7200 0    50   Output ~ 0
TXDCB
Wire Wire Line
	5650 6100 5800 6100
Wire Wire Line
	6000 6100 6150 6100
Wire Wire Line
	5650 6450 5800 6450
Wire Wire Line
	6000 6450 6150 6450
Wire Wire Line
	5650 6800 5800 6800
Wire Wire Line
	6000 6800 6150 6800
Wire Wire Line
	5650 7200 5800 7200
Wire Wire Line
	6000 7200 6150 7200
$EndSCHEMATC
