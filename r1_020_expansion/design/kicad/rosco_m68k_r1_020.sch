EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "ROSCO_M68K r1.x 68020 EXPANSION"
Date "2020-11-10"
Rev "0"
Comp "The Really Old-School Company Limited"
Comment1 "rosco_m68k r1.x Superboard 68020 accelerator"
Comment2 "Open Source Hardware licenced under CERN Open Hardware Licence"
Comment3 "See https://github.com/rosco-m68k"
Comment4 "Copyright 2020 Ross Bamford (and contributors)"
$EndDescr
Wire Wire Line
	3650 5300 3050 5300
Wire Wire Line
	3050 5200 3650 5200
Wire Wire Line
	3050 5100 3650 5100
Wire Wire Line
	3050 5000 3650 5000
Wire Wire Line
	3050 4900 3650 4900
Wire Wire Line
	3050 4800 3650 4800
Wire Wire Line
	3050 4700 3650 4700
Wire Wire Line
	3050 4600 3650 4600
Wire Wire Line
	3050 4500 3650 4500
Wire Wire Line
	3050 4400 3650 4400
Wire Wire Line
	3050 4300 3650 4300
Wire Wire Line
	3050 4200 3650 4200
Wire Wire Line
	3050 4100 3650 4100
Wire Wire Line
	3050 4000 3650 4000
Wire Wire Line
	3050 3900 3650 3900
Wire Wire Line
	3050 3800 3650 3800
Wire Wire Line
	5750 5300 4950 5300
Wire Wire Line
	5750 5200 4950 5200
Wire Wire Line
	5750 5100 4950 5100
Wire Wire Line
	5750 5000 4950 5000
Wire Wire Line
	5750 4800 4950 4800
Wire Wire Line
	5750 4700 4950 4700
Wire Wire Line
	5750 4600 4950 4600
Wire Wire Line
	5750 4500 4950 4500
Wire Wire Line
	5750 4400 4950 4400
Wire Wire Line
	5750 4300 4950 4300
Wire Wire Line
	5750 4200 4950 4200
Wire Wire Line
	5750 4100 4950 4100
Wire Wire Line
	5750 4000 4950 4000
Wire Wire Line
	5750 3900 4950 3900
Wire Wire Line
	5750 3800 4950 3800
Wire Wire Line
	5750 3700 4950 3700
Wire Wire Line
	5750 3600 4950 3600
Wire Wire Line
	5750 3500 4950 3500
Wire Wire Line
	5750 3400 4950 3400
Wire Wire Line
	5750 3300 4950 3300
Wire Wire Line
	5750 3200 4950 3200
Wire Wire Line
	5750 3100 4950 3100
Wire Wire Line
	5750 4900 4950 4900
Text GLabel 3650 3100 0    47   Output ~ 0
IPL2
Text GLabel 3650 3000 0    47   Output ~ 0
IPL1
Text GLabel 3650 2900 0    47   Output ~ 0
IPL0
Text GLabel 3650 2700 0    47   Output ~ 0
DSACK1
Text GLabel 3650 2500 0    47   Input ~ 0
BGACK
Text GLabel 3650 2400 0    47   Output ~ 0
BR
Text GLabel 3650 1900 0    47   BiDi ~ 0
RESET
Text GLabel 3650 1800 0    47   Input ~ 0
BERR
Text GLabel 3650 1600 0    47   Output ~ 0
MCLK
Text GLabel 4950 2900 2    47   Input ~ 0
LDS
Text GLabel 4950 2800 2    47   Input ~ 0
UDS
Text GLabel 4950 2700 2    47   Input ~ 0
RW
Text GLabel 4950 2600 2    47   Input ~ 0
AS
Text GLabel 4950 2400 2    47   Input ~ 0
BG
Text GLabel 4950 1800 2    47   Input ~ 0
FC2
Text GLabel 4950 1700 2    47   Input ~ 0
FC1
Text GLabel 4950 1600 2    47   Input ~ 0
FC0
Text GLabel 3650 2000 0    47   BiDi ~ 0
HALT
Entry Wire Line
	5750 5300 5850 5200
Entry Wire Line
	5750 5200 5850 5100
Entry Wire Line
	5750 5100 5850 5000
Entry Wire Line
	5750 5000 5850 4900
Entry Wire Line
	5750 4800 5850 4700
Entry Wire Line
	5750 4700 5850 4600
Entry Wire Line
	5750 4600 5850 4500
Entry Wire Line
	5750 4500 5850 4400
Entry Wire Line
	5750 4400 5850 4300
Entry Wire Line
	5750 4300 5850 4200
Entry Wire Line
	5750 4200 5850 4100
Entry Wire Line
	5750 4100 5850 4000
Entry Wire Line
	5750 4000 5850 3900
Entry Wire Line
	5750 3900 5850 3800
Entry Wire Line
	5750 3800 5850 3700
Entry Wire Line
	5750 3700 5850 3600
Entry Wire Line
	5750 3600 5850 3500
Entry Wire Line
	5750 3500 5850 3400
Entry Wire Line
	5750 3400 5850 3300
Entry Wire Line
	5750 3300 5850 3200
Entry Wire Line
	5750 3200 5850 3100
Entry Wire Line
	5750 3100 5850 3000
Entry Wire Line
	5750 4900 5850 4800
$Comp
L rosco_m68k-eagle-import:MC68000P J1
U 1 1 5FCE9135
P 4350 3400
AR Path="/5FCE9135" Ref="J1"  Part="1" 
AR Path="/5E53B4B8/5FCE9135" Ref="IC?"  Part="1" 
F 0 "J1" H 4300 5380 59  0000 C CNN
F 1 "MC68010P10" H 3850 1300 59  0001 L BNN
F 2 "rosco_m68k:DIL64" H 4350 3400 50  0001 C CNN
F 3 "" H 4350 3400 50  0001 C CNN
	1    4350 3400
	1    0    0    -1  
$EndComp
Text Label 3350 3800 0    50   ~ 0
D0
Text Label 3350 3900 0    50   ~ 0
D1
Text Label 3350 4000 0    50   ~ 0
D2
Text Label 3350 4100 0    50   ~ 0
D3
Text Label 3350 4200 0    50   ~ 0
D4
Text Label 3350 4300 0    50   ~ 0
D5
Text Label 3350 4400 0    50   ~ 0
D6
Text Label 3350 4500 0    50   ~ 0
D7
Text Label 3350 4600 0    50   ~ 0
D8
Text Label 3350 4700 0    50   ~ 0
D9
Text Label 3350 4800 0    50   ~ 0
D10
Text Label 3350 4900 0    50   ~ 0
D11
Text Label 3350 5000 0    50   ~ 0
D12
Text Label 3350 5100 0    50   ~ 0
D13
Text Label 3350 5200 0    50   ~ 0
D14
Text Label 3350 5300 0    50   ~ 0
D15
Entry Wire Line
	2950 3700 3050 3800
Entry Wire Line
	2950 3800 3050 3900
Entry Wire Line
	2950 3900 3050 4000
Entry Wire Line
	2950 4000 3050 4100
Entry Wire Line
	2950 4100 3050 4200
Entry Wire Line
	2950 4200 3050 4300
Entry Wire Line
	2950 4300 3050 4400
Entry Wire Line
	2950 4400 3050 4500
Entry Wire Line
	2950 4500 3050 4600
Entry Wire Line
	2950 4600 3050 4700
Entry Wire Line
	2950 4700 3050 4800
Entry Wire Line
	2950 4800 3050 4900
Entry Wire Line
	2950 4900 3050 5000
Entry Wire Line
	2950 5000 3050 5100
Entry Wire Line
	2950 5100 3050 5200
Entry Wire Line
	2950 5200 3050 5300
Wire Bus Line
	2950 3550 2800 3550
Text Label 5100 3100 0    50   ~ 0
A1
Text Label 5100 3200 0    50   ~ 0
A2
Text Label 5100 3300 0    50   ~ 0
A3
Text Label 5100 3400 0    50   ~ 0
A4
Text Label 5100 3500 0    50   ~ 0
A5
Text Label 5100 3600 0    50   ~ 0
A6
Text Label 5100 3700 0    50   ~ 0
A7
Text Label 5100 3800 0    50   ~ 0
A8
Text Label 5100 3900 0    50   ~ 0
A9
Text Label 5100 4000 0    50   ~ 0
A10
Text Label 5100 4100 0    50   ~ 0
A11
Text Label 5100 4200 0    50   ~ 0
A12
Text Label 5100 4300 0    50   ~ 0
A13
Text Label 5100 4400 0    50   ~ 0
A14
Text Label 5100 4500 0    50   ~ 0
A15
Text Label 5100 4600 0    50   ~ 0
A16
Text Label 5100 4700 0    50   ~ 0
A17
Text Label 5100 4800 0    50   ~ 0
A18
Text Label 5100 4900 0    50   ~ 0
A19
Text Label 5100 5000 0    50   ~ 0
A20
Text Label 5100 5100 0    50   ~ 0
A21
Text Label 5100 5200 0    50   ~ 0
A22
Text Label 5100 5300 0    50   ~ 0
A23
Wire Bus Line
	6000 2900 5850 2900
Text GLabel 3650 2200 0    47   Output ~ 0
VPA
Text GLabel 4950 2100 2    47   Input ~ 0
E
Text Notes 3850 5800 0    98   ~ 0
MC68010P10\nSocket
Text GLabel 11200 1400 1    50   Input ~ 0
CLK
Text GLabel 10400 1800 0    50   Output ~ 0
FC0
Text GLabel 10400 1900 0    50   Output ~ 0
FC1
Text GLabel 10400 2000 0    50   Output ~ 0
FC2
Text GLabel 10400 2750 0    50   Output ~ 0
RW
Text GLabel 10400 2950 0    50   Output ~ 0
AS
Text GLabel 13200 2700 2    50   Input ~ 0
BR
Text GLabel 13200 2800 2    50   Output ~ 0
BG
Text GLabel 13200 2900 2    50   Input ~ 0
BGACK
Text GLabel 13200 3150 2    50   3State ~ 0
RESET
Text GLabel 13200 3250 2    50   3State ~ 0
HALT
Text GLabel 13200 3350 2    50   Input ~ 0
BERR
Text GLabel 13200 2000 2    50   3State ~ 0
IPL2
Text GLabel 13200 2100 2    50   3State ~ 0
IPL1
Text GLabel 13200 2200 2    50   3State ~ 0
IPL0
Text GLabel 13200 1800 2    50   Input ~ 0
VPA
Wire Wire Line
	12500 1400 12500 1100
Wire Wire Line
	12500 1100 12400 1100
Wire Wire Line
	11450 1100 11450 950 
Wire Wire Line
	11600 1400 11600 1100
Connection ~ 11600 1100
Wire Wire Line
	11600 1100 11450 1100
Wire Wire Line
	11700 1400 11700 1100
Connection ~ 11700 1100
Wire Wire Line
	11700 1100 11600 1100
Wire Wire Line
	11800 1400 11800 1100
Connection ~ 11800 1100
Wire Wire Line
	11800 1100 11700 1100
Wire Wire Line
	11900 1400 11900 1100
Connection ~ 11900 1100
Wire Wire Line
	11900 1100 11800 1100
Wire Wire Line
	12000 1400 12000 1100
Connection ~ 12000 1100
Wire Wire Line
	12000 1100 11900 1100
Wire Wire Line
	12100 1400 12100 1100
Connection ~ 12100 1100
Wire Wire Line
	12100 1100 12000 1100
Wire Wire Line
	12200 1400 12200 1100
Connection ~ 12200 1100
Wire Wire Line
	12200 1100 12100 1100
Wire Wire Line
	12300 1400 12300 1100
Connection ~ 12300 1100
Wire Wire Line
	12300 1100 12200 1100
Wire Wire Line
	12400 1400 12400 1100
Connection ~ 12400 1100
Wire Wire Line
	12400 1100 12300 1100
Wire Wire Line
	13200 2450 13650 2450
Wire Wire Line
	13650 2450 13650 1750
$Comp
L Device:R R?
U 1 1 5FCE91B2
P 13650 1600
AR Path="/5ED0C0AA/5FCE91B2" Ref="R?"  Part="1" 
AR Path="/5E53B4B8/5FCE91B2" Ref="R?"  Part="1" 
AR Path="/5FCE91B2" Ref="R2"  Part="1" 
F 0 "R2" H 13720 1646 50  0000 L CNN
F 1 "4K7" H 13720 1555 50  0000 L CNN
F 2 "rosco_m68k:0207_10" V 13580 1600 50  0001 C CNN
F 3 "~" H 13650 1600 50  0001 C CNN
	1    13650 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	13650 1450 13650 1100
Wire Wire Line
	13650 1100 12500 1100
Connection ~ 12500 1100
Text GLabel 10400 3050 0    50   Output ~ 0
DS
Text GLabel 10400 2850 0    50   Output ~ 0
RMC
Text GLabel 10400 3350 0    50   Input ~ 0
DSACK1
Text GLabel 10400 2200 0    50   Output ~ 0
SIZ0
Text GLabel 10400 2300 0    50   Output ~ 0
SIZ1
Wire Wire Line
	11200 7100 11200 7400
Wire Wire Line
	11200 7400 11300 7400
Wire Wire Line
	13550 7400 13550 7500
Wire Wire Line
	11300 7100 11300 7400
Connection ~ 11300 7400
Wire Wire Line
	11300 7400 11400 7400
Wire Wire Line
	11400 7100 11400 7400
Connection ~ 11400 7400
Wire Wire Line
	11500 7100 11500 7400
Wire Wire Line
	11400 7400 11500 7400
Connection ~ 11500 7400
Wire Wire Line
	11500 7400 11600 7400
Wire Wire Line
	11600 7100 11600 7400
Connection ~ 11600 7400
Wire Wire Line
	11600 7400 11700 7400
Wire Wire Line
	11700 7100 11700 7400
Connection ~ 11700 7400
Wire Wire Line
	11700 7400 11800 7400
Wire Wire Line
	11800 7100 11800 7400
Connection ~ 11800 7400
Wire Wire Line
	11800 7400 11900 7400
Wire Wire Line
	11900 7100 11900 7400
Connection ~ 11900 7400
Wire Wire Line
	11900 7400 12000 7400
Wire Wire Line
	12000 7100 12000 7400
Connection ~ 12000 7400
Wire Wire Line
	12000 7400 12100 7400
Wire Wire Line
	12100 7100 12100 7400
Connection ~ 12100 7400
Wire Wire Line
	12100 7400 12200 7400
Wire Wire Line
	12200 7100 12200 7400
Connection ~ 12200 7400
Wire Wire Line
	12200 7400 12300 7400
Wire Wire Line
	12300 7100 12300 7400
Connection ~ 12300 7400
Wire Wire Line
	12300 7400 12400 7400
Wire Wire Line
	12400 7100 12400 7400
Connection ~ 12400 7400
Wire Wire Line
	12400 7400 13550 7400
Wire Bus Line
	9550 2900 9350 2900
Entry Wire Line
	9550 3500 9650 3600
Entry Wire Line
	9550 3600 9650 3700
Entry Wire Line
	9550 3700 9650 3800
Entry Wire Line
	9550 3800 9650 3900
Entry Wire Line
	9550 3900 9650 4000
Entry Wire Line
	9550 4000 9650 4100
Entry Wire Line
	9550 4100 9650 4200
Entry Wire Line
	9550 4200 9650 4300
Entry Wire Line
	9550 4300 9650 4400
Entry Wire Line
	9550 4400 9650 4500
Entry Wire Line
	9550 4500 9650 4600
Entry Wire Line
	9550 4600 9650 4700
Entry Wire Line
	9550 4700 9650 4800
Entry Wire Line
	9550 4800 9650 4900
Entry Wire Line
	9550 4900 9650 5000
Entry Wire Line
	9550 5000 9650 5100
Entry Wire Line
	9550 5100 9650 5200
Entry Wire Line
	9550 5200 9650 5300
Entry Wire Line
	9550 5300 9650 5400
Entry Wire Line
	9550 5400 9650 5500
Entry Wire Line
	9550 5500 9650 5600
Entry Wire Line
	9550 5600 9650 5700
Entry Wire Line
	9550 5700 9650 5800
Entry Wire Line
	9550 5800 9650 5900
Entry Wire Line
	9550 5900 9650 6000
Entry Wire Line
	9550 6000 9650 6100
Entry Wire Line
	9550 6100 9650 6200
Entry Wire Line
	9550 6200 9650 6300
Entry Wire Line
	9550 6300 9650 6400
Entry Wire Line
	9550 6400 9650 6500
Entry Wire Line
	9550 6500 9650 6600
Entry Wire Line
	9550 6600 9650 6700
$Comp
L m68k:MC68020RC IC?
U 1 1 5FCE9211
P 11800 4050
AR Path="/5ED0C0AA/5FCE9211" Ref="IC?"  Part="1" 
AR Path="/5E53B4B8/5FCE9211" Ref="IC?"  Part="1" 
AR Path="/5FCE9211" Ref="IC1"  Part="1" 
F 0 "IC1" H 11750 4200 60  0000 C CNN
F 1 "MC68020RC" H 11750 4100 60  0000 C CNN
F 2 "rosco_m68k:MC68020RC" H 11800 4050 60  0000 C CNN
F 3 "" H 11800 4050 60  0000 C CNN
	1    11800 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 3600 9650 3600
Wire Wire Line
	9650 3700 10400 3700
Wire Wire Line
	10400 3800 9650 3800
Wire Wire Line
	9650 3900 10400 3900
Wire Wire Line
	10400 4000 9650 4000
Wire Wire Line
	9650 4100 10400 4100
Wire Wire Line
	10400 4200 9650 4200
Wire Wire Line
	9650 4300 10400 4300
Wire Wire Line
	10400 4400 9650 4400
Wire Wire Line
	9650 4500 10400 4500
Wire Wire Line
	10400 4600 9650 4600
Wire Wire Line
	9650 4700 10400 4700
Wire Wire Line
	10400 4800 9650 4800
Wire Wire Line
	9650 4900 10400 4900
Wire Wire Line
	10400 5000 9650 5000
Wire Wire Line
	9650 5100 10400 5100
Wire Wire Line
	10400 5200 9650 5200
Wire Wire Line
	9650 5300 10400 5300
Wire Wire Line
	10400 5400 9650 5400
Wire Wire Line
	9650 5500 10400 5500
Wire Wire Line
	10400 5600 9650 5600
Wire Wire Line
	9650 5700 10400 5700
Wire Wire Line
	10400 5800 9650 5800
Wire Wire Line
	9650 5900 10400 5900
Wire Wire Line
	10400 6000 9650 6000
Wire Wire Line
	9650 6100 10400 6100
Wire Wire Line
	10400 6200 9650 6200
Wire Wire Line
	10400 6300 9650 6300
Wire Wire Line
	9650 6400 10400 6400
Wire Wire Line
	10400 6500 9650 6500
Wire Wire Line
	9650 6600 10400 6600
Wire Wire Line
	10400 6700 9650 6700
Text Label 9650 3600 0    50   ~ 0
A0
Text Label 9650 3700 0    50   ~ 0
A1
Text Label 9650 3800 0    50   ~ 0
A2
Text Label 9650 3900 0    50   ~ 0
A3
Text Label 9650 4000 0    50   ~ 0
A4
Text Label 9650 4100 0    50   ~ 0
A5
Text Label 9650 4200 0    50   ~ 0
A6
Text Label 9650 4300 0    50   ~ 0
A7
Text Label 9650 4400 0    50   ~ 0
A8
Text Label 9650 4500 0    50   ~ 0
A9
Text Label 9650 4600 0    50   ~ 0
A10
Text Label 9650 4700 0    50   ~ 0
A11
Text Label 9650 4800 0    50   ~ 0
A12
Text Label 9650 4900 0    50   ~ 0
A13
Text Label 9650 5000 0    50   ~ 0
A14
Text Label 9650 5100 0    50   ~ 0
A15
Text Label 9650 5200 0    50   ~ 0
A16
Text Label 9650 5300 0    50   ~ 0
A17
Text Label 9650 5400 0    50   ~ 0
A18
Text Label 9650 5500 0    50   ~ 0
A19
Text Label 9650 5600 0    50   ~ 0
A20
Text Label 9650 5700 0    50   ~ 0
A21
Text Label 9650 5800 0    50   ~ 0
A22
Text Label 9650 5900 0    50   ~ 0
A23
Text Label 9650 6000 0    50   ~ 0
A24
Text Label 9650 6100 0    50   ~ 0
A25
Text Label 9650 6200 0    50   ~ 0
A26
Text Label 9650 6300 0    50   ~ 0
A27
Text Label 9650 6400 0    50   ~ 0
A28
Text Label 9650 6500 0    50   ~ 0
A29
Text Label 9650 6600 0    50   ~ 0
A30
Text Label 9650 6700 0    50   ~ 0
A31
Wire Bus Line
	14600 3100 14350 3100
Entry Wire Line
	14250 6700 14350 6600
Entry Wire Line
	14250 6600 14350 6500
Entry Wire Line
	14250 6500 14350 6400
Entry Wire Line
	14250 6400 14350 6300
Entry Wire Line
	14250 6300 14350 6200
Entry Wire Line
	14250 6200 14350 6100
Entry Wire Line
	14250 6100 14350 6000
Entry Wire Line
	14250 6000 14350 5900
Entry Wire Line
	14250 5900 14350 5800
Entry Wire Line
	14250 5800 14350 5700
Entry Wire Line
	14250 5700 14350 5600
Entry Wire Line
	14250 5600 14350 5500
Entry Wire Line
	14250 5500 14350 5400
Entry Wire Line
	14250 5400 14350 5300
Entry Wire Line
	14250 5300 14350 5200
Text Label 13800 5200 2    50   ~ 0
D0
Text Label 13800 5300 2    50   ~ 0
D1
Text Label 13800 5400 2    50   ~ 0
D2
Text Label 13800 5500 2    50   ~ 0
D3
Text Label 13800 5600 2    50   ~ 0
D4
Text Label 13800 5700 2    50   ~ 0
D5
Text Label 13800 5800 2    50   ~ 0
D6
Text Label 13800 5900 2    50   ~ 0
D7
Text Label 13800 6000 2    50   ~ 0
D8
Text Label 13800 6100 2    50   ~ 0
D9
Text Label 13800 6200 2    50   ~ 0
D10
Text Label 13800 6300 2    50   ~ 0
D11
Text Label 13800 6400 2    50   ~ 0
D12
Text Label 13800 6500 2    50   ~ 0
D13
Text Label 13800 6600 2    50   ~ 0
D14
Text Label 13800 6700 2    50   ~ 0
D15
$Comp
L Device:R_Network08 RN?
U 1 1 5FCE9279
P 15300 4000
AR Path="/5E53B4B8/5FCE9279" Ref="RN?"  Part="1" 
AR Path="/5FCE9279" Ref="RN1"  Part="1" 
F 0 "RN1" V 15250 4250 50  0000 C CNN
F 1 "10K" V 14774 4000 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP9" V 15775 4000 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 15300 4000 50  0001 C CNN
	1    15300 4000
	0    1    1    0   
$EndComp
$Comp
L Device:R_Network08 RN?
U 1 1 5FCE927F
P 15300 4800
AR Path="/5E53B4B8/5FCE927F" Ref="RN?"  Part="1" 
AR Path="/5FCE927F" Ref="RN2"  Part="1" 
F 0 "RN2" V 15250 5050 50  0000 C CNN
F 1 "R_Network08" V 15400 5150 50  0001 C CNN
F 2 "Resistor_THT:R_Array_SIP9" V 15775 4800 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 15300 4800 50  0001 C CNN
	1    15300 4800
	0    1    1    0   
$EndComp
Entry Wire Line
	14250 5200 14350 5100
Wire Wire Line
	13200 5200 14250 5200
Wire Wire Line
	13200 5300 14250 5300
Wire Wire Line
	13200 5400 14250 5400
Wire Wire Line
	13200 5500 14250 5500
Wire Wire Line
	13200 5600 14250 5600
Wire Wire Line
	13200 5700 14250 5700
Wire Wire Line
	13200 5800 14250 5800
Wire Wire Line
	13200 5900 14250 5900
Wire Wire Line
	13200 6000 14250 6000
Wire Wire Line
	13200 6100 14250 6100
Wire Wire Line
	13200 6200 14250 6200
Wire Wire Line
	13200 6300 14250 6300
Wire Wire Line
	13200 6400 14250 6400
Wire Wire Line
	13200 6500 14250 6500
Wire Wire Line
	13200 6600 14250 6600
Wire Wire Line
	13200 6700 14250 6700
Wire Wire Line
	13200 3600 13350 3600
Wire Wire Line
	13200 3700 13350 3700
Wire Wire Line
	13200 3800 13350 3800
Wire Wire Line
	13200 3900 13350 3900
Wire Wire Line
	13200 4000 13350 4000
Wire Wire Line
	13200 4100 13350 4100
Wire Wire Line
	13200 4200 13350 4200
Wire Wire Line
	13200 4300 13350 4300
Wire Wire Line
	13200 4400 13350 4400
Wire Wire Line
	13200 4500 13350 4500
Wire Wire Line
	13200 4600 13350 4600
Wire Wire Line
	13200 4700 13350 4700
Wire Wire Line
	13200 4800 13350 4800
Wire Wire Line
	13200 4900 13350 4900
Wire Wire Line
	13200 5000 13350 5000
Wire Wire Line
	13200 5100 13350 5100
Wire Wire Line
	15500 3600 15800 3600
Wire Wire Line
	15800 3600 15800 4400
Wire Wire Line
	15500 4400 15800 4400
Connection ~ 15800 4400
Wire Wire Line
	15800 4400 15800 4550
$Comp
L power:GND #PWR?
U 1 1 5FCE92AB
P 15800 4550
AR Path="/5E53B4B8/5FCE92AB" Ref="#PWR?"  Part="1" 
AR Path="/5FCE92AB" Ref="#PWR09"  Part="1" 
F 0 "#PWR09" H 15800 4300 50  0001 C CNN
F 1 "GND" H 15805 4377 50  0000 C CNN
F 2 "" H 15800 4550 50  0001 C CNN
F 3 "" H 15800 4550 50  0001 C CNN
	1    15800 4550
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J?
U 1 1 5FCE92B1
P 7350 3800
AR Path="/5E53B4B8/5FCE92B1" Ref="J?"  Part="1" 
AR Path="/5FCE92B1" Ref="J2"  Part="1" 
F 0 "J2" H 7400 4317 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 7400 4226 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x08_P2.54mm_Vertical" H 7350 3800 50  0001 C CNN
F 3 "~" H 7350 3800 50  0001 C CNN
	1    7350 3800
	1    0    0    -1  
$EndComp
Wire Bus Line
	8200 2900 8300 2900
Entry Wire Line
	8100 4200 8200 4100
Entry Wire Line
	8200 4000 8100 4100
Entry Wire Line
	8200 3900 8100 4000
Entry Wire Line
	8200 3800 8100 3900
Entry Wire Line
	8200 3700 8100 3800
Entry Wire Line
	8200 3600 8100 3700
Entry Wire Line
	8200 3500 8100 3600
Entry Wire Line
	8200 3400 8100 3500
Wire Wire Line
	7650 3500 8100 3500
Wire Wire Line
	7650 3600 8100 3600
Wire Wire Line
	7650 3700 8100 3700
Wire Wire Line
	7650 3800 8100 3800
Wire Wire Line
	7650 3900 8100 3900
Wire Wire Line
	7650 4000 8100 4000
Wire Wire Line
	7650 4100 8100 4100
Wire Wire Line
	8100 4200 7650 4200
Text Label 7950 3500 0    50   ~ 0
A24
Text Label 7950 3600 0    50   ~ 0
A25
Text Label 7950 3700 0    50   ~ 0
A26
Text Label 7950 3800 0    50   ~ 0
A27
Text Label 7950 3900 0    50   ~ 0
A28
Text Label 7950 4000 0    50   ~ 0
A29
Text Label 7950 4100 0    50   ~ 0
A30
Text Label 7950 4200 0    50   ~ 0
A31
Text GLabel 7150 3500 0    50   Input ~ 0
OCS
Text GLabel 7150 3900 0    50   Input ~ 0
ECS
Text GLabel 7150 3600 0    50   Input ~ 0
RMC
Text GLabel 7150 4000 0    50   Input ~ 0
DBEN
Text GLabel 7150 3700 0    50   Input ~ 0
IPEND
Text GLabel 7150 3800 0    50   Input ~ 0
SIZ0
Text GLabel 7150 4100 0    50   Input ~ 0
SIZ1
Text GLabel 7150 4200 0    50   UnSpc ~ 0
GND
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J?
U 1 1 5FCE92D9
P 7350 5100
AR Path="/5E53B4B8/5FCE92D9" Ref="J?"  Part="1" 
AR Path="/5FCE92D9" Ref="J3"  Part="1" 
F 0 "J3" H 7400 5417 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 7400 5326 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 7350 5100 50  0001 C CNN
F 3 "~" H 7350 5100 50  0001 C CNN
	1    7350 5100
	1    0    0    -1  
$EndComp
Text GLabel 7150 5000 0    50   UnSpc ~ 0
VCC
Text GLabel 7150 5100 0    50   UnSpc ~ 0
VCC
Text GLabel 7150 5200 0    50   UnSpc ~ 0
VCC
Text GLabel 7150 5300 0    50   UnSpc ~ 0
VCC
Text GLabel 7650 5000 2    50   UnSpc ~ 0
GND
Text GLabel 7650 5100 2    50   UnSpc ~ 0
GND
Text GLabel 7650 5200 2    50   UnSpc ~ 0
GND
Text GLabel 7650 5300 2    50   UnSpc ~ 0
GND
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J?
U 1 1 5FCE92E7
P 7350 6200
AR Path="/5E53B4B8/5FCE92E7" Ref="J?"  Part="1" 
AR Path="/5FCE92E7" Ref="JP1"  Part="1" 
F 0 "JP1" H 7400 6417 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 7400 6326 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical" H 7350 6200 50  0001 C CNN
F 3 "~" H 7350 6200 50  0001 C CNN
	1    7350 6200
	1    0    0    -1  
$EndComp
Text GLabel 7150 6200 0    50   Input ~ 0
MCLK
Text GLabel 7150 6300 0    50   Input ~ 0
OCLK
Text GLabel 7650 6200 2    50   Output ~ 0
CLK
Text GLabel 7650 6300 2    50   Output ~ 0
CLK
Wire Wire Line
	2050 7000 2450 7000
Wire Wire Line
	2050 7000 1550 7000
Connection ~ 2050 7000
Wire Wire Line
	2450 8200 2050 8200
Wire Wire Line
	1550 8700 2050 8700
Connection ~ 2050 8700
Text GLabel 2450 7700 0    47   Input ~ 0
AS
Text GLabel 2450 7300 0    47   Input ~ 0
DS
Text GLabel 2450 7400 0    47   Input ~ 0
SIZ0
Text GLabel 2450 7500 0    47   Input ~ 0
SIZ1
Text GLabel 3250 7800 2    47   Output ~ 0
UDS
Text GLabel 3250 7900 2    47   Output ~ 0
LDS
$Comp
L rosco_m68k-eagle-import:C2,5-3 C1
U 1 1 5FCE92FE
P 1550 7700
AR Path="/5FCE92FE" Ref="C1"  Part="1" 
AR Path="/5E53B810/5FCE92FE" Ref="C?"  Part="1" 
AR Path="/5E53B952/5FCE92FE" Ref="C?"  Part="1" 
AR Path="/5E53B4B8/5FCE92FE" Ref="C?"  Part="1" 
F 0 "C1" H 1610 7715 59  0000 L BNN
F 1 "100nF" H 1610 7515 59  0000 L BNN
F 2 "rosco_m68k:C2.5-3" H 1550 7700 50  0001 C CNN
F 3 "" H 1550 7700 50  0001 C CNN
	1    1550 7700
	1    0    0    -1  
$EndComp
NoConn ~ 3250 8000
Wire Wire Line
	2050 8700 2050 9050
$Comp
L rosco_m68k-eagle-import:ATF16V8BP3 IC?
U 1 1 5FCE9314
P 2850 7600
AR Path="/5E53B810/5FCE9314" Ref="IC?"  Part="1" 
AR Path="/5E53B952/5FCE9314" Ref="IC?"  Part="1" 
AR Path="/5E53B4B8/5FCE9314" Ref="IC?"  Part="1" 
AR Path="/5FCE9314" Ref="IC2"  Part="1" 
F 0 "IC2" H 2850 8486 59  0000 C CNN
F 1 "ATF16V8BQL" H 2850 8381 59  0000 C CNN
F 2 "rosco_m68k:DIL20" H 2850 7600 50  0001 C CNN
F 3 "" H 2850 7600 50  0001 C CNN
	1    2850 7600
	1    0    0    -1  
$EndComp
Text Notes 2550 8450 0    50   ~ 0
020_GLUE.PLD
Wire Wire Line
	3950 7100 3950 8700
Wire Wire Line
	3250 7100 3950 7100
Wire Wire Line
	2050 8700 3950 8700
Wire Wire Line
	1550 7000 1550 7600
Wire Wire Line
	1550 7900 1550 8700
NoConn ~ 3250 7700
NoConn ~ 2450 7800
NoConn ~ 2450 7900
NoConn ~ 2450 8000
Connection ~ 2650 10150
$Comp
L Device:CP C2
U 1 1 5FCE932D
P 2650 10000
AR Path="/5FCE932D" Ref="C2"  Part="1" 
AR Path="/5E53B952/5FCE932D" Ref="C?"  Part="1" 
AR Path="/5E53BC83/5FCE932D" Ref="C?"  Part="1" 
AR Path="/5E53B4B8/5FCE932D" Ref="C?"  Part="1" 
F 0 "C2" H 2750 10000 59  0000 L BNN
F 1 "100uF" H 2750 9900 59  0000 L BNN
F 2 "rosco_m68k:E2,5-5" H 2650 10000 50  0001 C CNN
F 3 "" H 2650 10000 50  0001 C CNN
	1    2650 10000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FCE934E
P 3750 10000
AR Path="/5E53B952/5FCE934E" Ref="C?"  Part="1" 
AR Path="/5E53B4B8/5FCE934E" Ref="C?"  Part="1" 
AR Path="/5FCE934E" Ref="C3"  Part="1" 
F 0 "C3" H 3865 10046 50  0000 L CNN
F 1 "100nF" H 3865 9955 50  0000 L CNN
F 2 "rosco_m68k:C2.5-3" H 3788 9850 50  0001 C CNN
F 3 "~" H 3750 10000 50  0001 C CNN
	1    3750 10000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FCE9354
P 4250 10000
AR Path="/5E53B952/5FCE9354" Ref="C?"  Part="1" 
AR Path="/5E53B4B8/5FCE9354" Ref="C?"  Part="1" 
AR Path="/5FCE9354" Ref="C4"  Part="1" 
F 0 "C4" H 4365 10046 50  0000 L CNN
F 1 "100nF" H 4365 9955 50  0000 L CNN
F 2 "rosco_m68k:C2.5-3" H 4288 9850 50  0001 C CNN
F 3 "~" H 4250 10000 50  0001 C CNN
	1    4250 10000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FCE935A
P 4750 10000
AR Path="/5E53B952/5FCE935A" Ref="C?"  Part="1" 
AR Path="/5E53B4B8/5FCE935A" Ref="C?"  Part="1" 
AR Path="/5FCE935A" Ref="C6"  Part="1" 
F 0 "C6" H 4865 10046 50  0000 L CNN
F 1 "100nF" H 4865 9955 50  0000 L CNN
F 2 "rosco_m68k:C2.5-3" H 4788 9850 50  0001 C CNN
F 3 "~" H 4750 10000 50  0001 C CNN
	1    4750 10000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FCE9360
P 5250 10000
AR Path="/5E53B952/5FCE9360" Ref="C?"  Part="1" 
AR Path="/5E53B4B8/5FCE9360" Ref="C?"  Part="1" 
AR Path="/5FCE9360" Ref="C7"  Part="1" 
F 0 "C7" H 5365 10046 50  0000 L CNN
F 1 "100nF" H 5365 9955 50  0000 L CNN
F 2 "rosco_m68k:C2.5-3" H 5288 9850 50  0001 C CNN
F 3 "~" H 5250 10000 50  0001 C CNN
	1    5250 10000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FCE9366
P 5750 10000
AR Path="/5E53B952/5FCE9366" Ref="C?"  Part="1" 
AR Path="/5E53B4B8/5FCE9366" Ref="C?"  Part="1" 
AR Path="/5FCE9366" Ref="C8"  Part="1" 
F 0 "C8" H 5865 10046 50  0000 L CNN
F 1 "100nF" H 5865 9955 50  0000 L CNN
F 2 "rosco_m68k:C2.5-3" H 5788 9850 50  0001 C CNN
F 3 "~" H 5750 10000 50  0001 C CNN
	1    5750 10000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FCE936C
P 6250 10000
AR Path="/5E53B952/5FCE936C" Ref="C?"  Part="1" 
AR Path="/5E53B4B8/5FCE936C" Ref="C?"  Part="1" 
AR Path="/5FCE936C" Ref="C9"  Part="1" 
F 0 "C9" H 6365 10046 50  0000 L CNN
F 1 "100nF" H 6365 9955 50  0000 L CNN
F 2 "rosco_m68k:C2.5-3" H 6288 9850 50  0001 C CNN
F 3 "~" H 6250 10000 50  0001 C CNN
	1    6250 10000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FCE9372
P 6750 10000
AR Path="/5E53B952/5FCE9372" Ref="C?"  Part="1" 
AR Path="/5E53B4B8/5FCE9372" Ref="C?"  Part="1" 
AR Path="/5FCE9372" Ref="C10"  Part="1" 
F 0 "C10" H 6865 10046 50  0000 L CNN
F 1 "100nF" H 6865 9955 50  0000 L CNN
F 2 "rosco_m68k:C2.5-3" H 6788 9850 50  0001 C CNN
F 3 "~" H 6750 10000 50  0001 C CNN
	1    6750 10000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FCE9378
P 7250 10000
AR Path="/5E53B952/5FCE9378" Ref="C?"  Part="1" 
AR Path="/5E53B4B8/5FCE9378" Ref="C?"  Part="1" 
AR Path="/5FCE9378" Ref="C11"  Part="1" 
F 0 "C11" H 7365 10046 50  0000 L CNN
F 1 "100nF" H 7365 9955 50  0000 L CNN
F 2 "rosco_m68k:C2.5-3" H 7288 9850 50  0001 C CNN
F 3 "~" H 7250 10000 50  0001 C CNN
	1    7250 10000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FCE937E
P 7750 10000
AR Path="/5E53B952/5FCE937E" Ref="C?"  Part="1" 
AR Path="/5E53B4B8/5FCE937E" Ref="C?"  Part="1" 
AR Path="/5FCE937E" Ref="C12"  Part="1" 
F 0 "C12" H 7865 10046 50  0000 L CNN
F 1 "100nF" H 7865 9955 50  0000 L CNN
F 2 "rosco_m68k:C2.5-3" H 7788 9850 50  0001 C CNN
F 3 "~" H 7750 10000 50  0001 C CNN
	1    7750 10000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FCE9384
P 8250 10000
AR Path="/5E53B952/5FCE9384" Ref="C?"  Part="1" 
AR Path="/5E53B4B8/5FCE9384" Ref="C?"  Part="1" 
AR Path="/5FCE9384" Ref="C13"  Part="1" 
F 0 "C13" H 8365 10046 50  0000 L CNN
F 1 "100nF" H 8365 9955 50  0000 L CNN
F 2 "rosco_m68k:C2.5-3" H 8288 9850 50  0001 C CNN
F 3 "~" H 8250 10000 50  0001 C CNN
	1    8250 10000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 9850 3750 9850
Connection ~ 3750 9850
Wire Wire Line
	4250 9850 4750 9850
Connection ~ 4250 9850
Wire Wire Line
	5250 9850 4750 9850
Connection ~ 4750 9850
Wire Wire Line
	5750 9850 5250 9850
Connection ~ 5250 9850
Wire Wire Line
	6250 9850 5750 9850
Connection ~ 5750 9850
Wire Wire Line
	6750 9850 6250 9850
Connection ~ 6250 9850
Wire Wire Line
	7250 9850 6750 9850
Connection ~ 6750 9850
Wire Wire Line
	7750 9850 7250 9850
Connection ~ 7250 9850
Wire Wire Line
	8250 9850 7750 9850
Connection ~ 7750 9850
Wire Wire Line
	8250 10150 7750 10150
Wire Wire Line
	7750 10150 7250 10150
Connection ~ 7750 10150
Wire Wire Line
	6750 10150 7250 10150
Connection ~ 7250 10150
Wire Wire Line
	6750 10150 6250 10150
Connection ~ 6750 10150
Wire Wire Line
	6250 10150 5750 10150
Connection ~ 6250 10150
Wire Wire Line
	5750 10150 5250 10150
Connection ~ 5750 10150
Wire Wire Line
	5250 10150 4750 10150
Connection ~ 5250 10150
Wire Wire Line
	4750 10150 4250 10150
Connection ~ 4750 10150
Wire Wire Line
	4250 10150 3750 10150
Connection ~ 4250 10150
Connection ~ 3750 10150
Text GLabel 5900 7900 2    50   Output ~ 0
OCLK
Wire Wire Line
	5400 7200 5400 7600
Wire Wire Line
	5400 8200 5400 8550
Wire Wire Line
	5400 8850 5400 8550
Wire Wire Line
	5700 7900 5900 7900
$Comp
L rosco_m68k-eagle-import:C2,5-3 C5
U 1 1 5FCE93C4
P 4650 7850
AR Path="/5FCE93C4" Ref="C5"  Part="1" 
AR Path="/5E53B952/5FCE93C4" Ref="C?"  Part="1" 
AR Path="/5E53B4B8/5FCE93C4" Ref="C?"  Part="1" 
F 0 "C5" H 4710 7865 59  0000 L BNN
F 1 "100nF" H 4710 7665 59  0000 L BNN
F 2 "rosco_m68k:C2.5-3" H 4650 7850 50  0001 C CNN
F 3 "" H 4650 7850 50  0001 C CNN
	1    4650 7850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 7750 4650 7200
Wire Wire Line
	4650 7200 5000 7200
Wire Wire Line
	4650 8050 4650 8550
Wire Wire Line
	4650 8550 5400 8550
Connection ~ 5400 8550
$Comp
L Oscillator:CXO_DIP8 Q?
U 1 1 5FCE93D0
P 5400 7900
AR Path="/5E53B952/5FCE93D0" Ref="Q?"  Part="1" 
AR Path="/5E53B4B8/5FCE93D0" Ref="Q?"  Part="1" 
AR Path="/5FCE93D0" Ref="Q1"  Part="1" 
F 0 "Q1" H 5550 8150 50  0000 L CNN
F 1 "5H8ET-12.000" H 5550 7650 50  0000 L CNN
F 2 "Oscillator:Oscillator_DIP-8" H 5850 7550 50  0001 C CNN
F 3 "https://docs.rs-online.com/4a59/0900766b81111d78.pdf" H 5300 7900 50  0001 C CNN
	1    5400 7900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FCE93D6
P 5000 7450
AR Path="/5E53B952/5FCE93D6" Ref="R?"  Part="1" 
AR Path="/5E53B4B8/5FCE93D6" Ref="R?"  Part="1" 
AR Path="/5FCE93D6" Ref="R1"  Part="1" 
F 0 "R1" H 5070 7496 50  0000 L CNN
F 1 "4K7" H 5070 7405 50  0000 L CNN
F 2 "rosco_m68k:0207_10" V 4930 7450 50  0001 C CNN
F 3 "~" H 5000 7450 50  0001 C CNN
	1    5000 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 7300 5000 7200
Connection ~ 5000 7200
Wire Wire Line
	5000 7200 5400 7200
Wire Wire Line
	5000 7600 5000 7900
Wire Wire Line
	5000 7900 5100 7900
Text Notes 5950 7500 2    50   ~ 0
Socket This!
Wire Wire Line
	4650 6700 4650 7200
Wire Wire Line
	2050 6500 2050 7000
Wire Wire Line
	2050 8200 2050 8700
Text GLabel 10400 2550 0    50   Output ~ 0
OCS
Text GLabel 10400 2650 0    50   Output ~ 0
ECS
Text GLabel 10400 3150 0    50   Output ~ 0
DBEN
Text GLabel 13200 1900 2    50   Output ~ 0
IPEND
Text GLabel 2450 7600 0    50   Input ~ 0
A0
$Comp
L Device:R R3
U 1 1 5FEC8CC5
P 9850 2750
F 0 "R3" H 9920 2796 50  0000 L CNN
F 1 "10K" H 9920 2705 50  0000 L CNN
F 2 "rosco_m68k:0207_10" V 9780 2750 50  0001 C CNN
F 3 "~" H 9850 2750 50  0001 C CNN
	1    9850 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 2900 9850 3250
Wire Wire Line
	9850 3250 10400 3250
$Comp
L Mechanical:MountingHole H1
U 1 1 5FF537EC
P 1500 1850
F 0 "H1" H 1600 1896 50  0000 L CNN
F 1 "MountingHole" H 1600 1805 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 1500 1850 50  0001 C CNN
F 3 "~" H 1500 1850 50  0001 C CNN
	1    1500 1850
	1    0    0    -1  
$EndComp
$Comp
L rosco_m68k-eagle-import:MC68000P J1
U 2 1 5FF5D699
P 8800 10050
F 0 "J1" H 9012 10050 59  0000 L CNN
F 1 "MC68010P10" H 8300 7950 59  0001 L BNN
F 2 "rosco_m68k:DIL64" H 8800 10050 50  0001 C CNN
F 3 "" H 8800 10050 50  0001 C CNN
	2    8800 10050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 9750 8800 9750
Wire Wire Line
	8800 9750 8250 9750
Wire Wire Line
	8250 9750 8250 9850
Connection ~ 8800 9750
Connection ~ 8250 9850
Wire Wire Line
	8900 10350 8800 10350
Wire Wire Line
	8800 10350 8250 10350
Wire Wire Line
	8250 10350 8250 10150
Connection ~ 8800 10350
Connection ~ 8250 10150
Wire Wire Line
	2650 10150 2650 10300
Wire Wire Line
	2650 9850 2650 9700
Text GLabel 6000 2900 2    50   Output ~ 0
A[1..23]
Text GLabel 2800 3550 0    50   BiDi ~ 0
D[0..15]
Text GLabel 8300 2900 2    50   Input ~ 0
A[24..31]
Text GLabel 9350 2900 0    50   Output ~ 0
A[0..31]
Text GLabel 14600 3100 2    50   BiDi ~ 0
D[0..15]
Text GLabel 2450 7100 0    50   Input ~ 0
CLK
Text GLabel 3250 7600 2    50   Output ~ 0
E
NoConn ~ 3250 7500
NoConn ~ 3250 7400
NoConn ~ 3250 7300
Text GLabel 11450 950  1    50   UnSpc ~ 0
VCC
Text GLabel 9850 2600 1    50   UnSpc ~ 0
VCC
Text GLabel 2050 6500 1    50   UnSpc ~ 0
VCC
Text GLabel 4650 6700 1    50   UnSpc ~ 0
VCC
Text GLabel 2650 9700 1    50   UnSpc ~ 0
VCC
NoConn ~ 4950 2200
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 60063C68
P 2950 9850
F 0 "#FLG0101" H 2950 9925 50  0001 C CNN
F 1 "PWR_FLAG" H 2950 10023 50  0000 C CNN
F 2 "" H 2950 9850 50  0001 C CNN
F 3 "~" H 2950 9850 50  0001 C CNN
	1    2950 9850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 9850 2650 9850
Connection ~ 2950 9850
Connection ~ 2650 9850
Text GLabel 2650 10300 3    50   UnSpc ~ 0
GND
Text GLabel 2050 9050 3    50   UnSpc ~ 0
GND
Text GLabel 5400 8850 3    50   UnSpc ~ 0
GND
Text GLabel 13550 7500 3    50   UnSpc ~ 0
GND
Wire Wire Line
	2950 9850 3750 9850
Wire Wire Line
	2650 10150 3750 10150
Connection ~ 4650 7200
Wire Bus Line
	8200 2900 8200 4100
Wire Bus Line
	14350 3100 14350 6600
Wire Bus Line
	2950 3550 2950 5200
Wire Bus Line
	5850 2900 5850 5200
Wire Bus Line
	9550 2900 9550 6600
Text GLabel 13350 3600 2    50   BiDi ~ 0
UD0
Text GLabel 13350 3700 2    50   BiDi ~ 0
UD1
Text GLabel 13350 3800 2    50   BiDi ~ 0
UD2
Text GLabel 13350 3900 2    50   BiDi ~ 0
UD3
Text GLabel 13350 4000 2    50   BiDi ~ 0
UD4
Text GLabel 13350 4100 2    50   BiDi ~ 0
UD5
Text GLabel 13350 4200 2    50   BiDi ~ 0
UD6
Text GLabel 13350 4300 2    50   BiDi ~ 0
UD7
Text GLabel 13350 4400 2    50   BiDi ~ 0
UD8
Text GLabel 13350 4500 2    50   BiDi ~ 0
UD9
Text GLabel 13350 4600 2    50   BiDi ~ 0
UD10
Text GLabel 13350 4700 2    50   BiDi ~ 0
UD11
Text GLabel 13350 4800 2    50   BiDi ~ 0
UD12
Text GLabel 13350 4900 2    50   BiDi ~ 0
UD13
Text GLabel 13350 5000 2    50   BiDi ~ 0
UD14
Text GLabel 13350 5100 2    50   BiDi ~ 0
UD15
Text GLabel 15100 4300 0    50   BiDi ~ 0
UD15
Text GLabel 15100 5100 0    50   BiDi ~ 0
UD11
Text GLabel 15100 4200 0    50   BiDi ~ 0
UD13
Text GLabel 15100 5000 0    50   BiDi ~ 0
UD14
Text GLabel 15100 4100 0    50   BiDi ~ 0
UD7
Text GLabel 15100 4900 0    50   BiDi ~ 0
UD10
Text GLabel 15100 4000 0    50   BiDi ~ 0
UD12
Text GLabel 15100 3900 0    50   BiDi ~ 0
UD6
Text GLabel 15100 4800 0    50   BiDi ~ 0
UD9
Text GLabel 15100 3800 0    50   BiDi ~ 0
UD1
Text GLabel 15100 4700 0    50   BiDi ~ 0
UD3
Text GLabel 15100 3700 0    50   BiDi ~ 0
UD5
Text GLabel 15100 4600 0    50   BiDi ~ 0
UD8
Text GLabel 15100 4500 0    50   BiDi ~ 0
UD0
Text GLabel 15100 3600 0    50   BiDi ~ 0
UD2
Text GLabel 15100 4400 0    50   BiDi ~ 0
UD4
$EndSCHEMATC
