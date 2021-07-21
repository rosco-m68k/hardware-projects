EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
Title "ROSCO_M68K LOCAL BUS BACKPLANE r4"
Date "2021-05-22"
Rev "4"
Comp "The Really Old-School Company Limited"
Comment1 "Open Source Hardware licenced under CERN Open Hardware Licence"
Comment2 "Copyright 2020-2021 Ross Bamford and Contributors"
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	7150 4050 8400 4050
Wire Wire Line
	3850 3600 4400 3600
$Comp
L Connector:USB_B_Micro J1
U 1 1 60ADAA2C
P 3150 3100
F 0 "J1" H 3207 3567 50  0000 C CNN
F 1 "USB_B_Micro" H 3207 3476 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Wuerth_614105150721_Vertical" H 3300 3050 50  0001 C CNN
F 3 "~" H 3300 3050 50  0001 C CNN
	1    3150 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 2900 4400 2900
Wire Wire Line
	5100 3250 5300 3250
Wire Wire Line
	5300 2900 5500 2900
Wire Wire Line
	5300 3250 5300 2900
Wire Wire Line
	3850 3800 4200 3800
Wire Wire Line
	4200 3800 4200 4350
Wire Wire Line
	3750 4250 4400 4250
Wire Wire Line
	4400 4250 4400 3600
Connection ~ 4200 4350
Wire Wire Line
	3750 4350 4200 4350
Wire Wire Line
	3150 3900 3150 4300
Wire Wire Line
	3050 3900 3150 3900
Wire Wire Line
	3050 3500 3050 3900
Connection ~ 3150 3900
Wire Wire Line
	3150 3500 3150 3900
Wire Wire Line
	5350 3450 5500 3450
Wire Wire Line
	5100 3450 5350 3450
Connection ~ 5350 3450
Wire Wire Line
	5350 3450 5350 4050
Wire Wire Line
	4400 3250 4700 3250
Wire Wire Line
	4400 2900 4400 3250
Wire Wire Line
	4400 3450 4700 3450
Connection ~ 4400 3600
Wire Wire Line
	4400 3600 4400 3450
$Comp
L Switch:SW_DPST SW1
U 1 1 60ADAA4A
P 4900 3350
F 0 "SW1" H 4900 3675 50  0000 C CNN
F 1 "POWER" H 4900 3584 50  0000 C CNN
F 2 "local-footprints:NKK-M2021SS1W01" H 4900 3350 50  0001 C CNN
F 3 "~" H 4900 3350 50  0001 C CNN
	1    4900 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 3050 8050 3050
Wire Wire Line
	8650 3050 8500 3050
Wire Wire Line
	8950 3050 9150 3050
Wire Wire Line
	9150 3050 9150 3100
Text Notes 6400 4450 0    50   ~ 0
Optional
$Comp
L power:GND #PWR0101
U 1 1 60ADAA55
P 9150 3100
F 0 "#PWR0101" H 9150 2850 50  0001 C CNN
F 1 "GND" H 9155 2927 50  0000 C CNN
F 2 "" H 9150 3100 50  0001 C CNN
F 3 "" H 9150 3100 50  0001 C CNN
	1    9150 3100
	1    0    0    -1  
$EndComp
Text GLabel 8050 3050 0    50   UnSpc ~ 0
VCC
$Comp
L Device:R R1
U 1 1 60ADAA5C
P 8350 3050
F 0 "R1" V 8143 3050 50  0000 C CNN
F 1 "1K" V 8234 3050 50  0000 C CNN
F 2 "rosco_m68k:R-0207_10" V 8280 3050 50  0001 C CNN
F 3 "~" H 8350 3050 50  0001 C CNN
	1    8350 3050
	0    1    1    0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J3
U 1 1 60ADAA62
P 3550 4350
F 0 "J3" H 3468 4025 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 3468 4116 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MPT-0,5-2-2.54_1x02_P2.54mm_Horizontal" H 3550 4350 50  0001 C CNN
F 3 "~" H 3550 4350 50  0001 C CNN
	1    3550 4350
	-1   0    0    1   
$EndComp
$Comp
L Device:LED LED1
U 1 1 60ADAA68
P 8800 3050
F 0 "LED1" H 8793 2795 50  0000 C CNN
F 1 "PWR GOOD" H 8793 2886 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 8800 3050 50  0001 C CNN
F 3 "~" H 8800 3050 50  0001 C CNN
	1    8800 3050
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x03_Male J4
U 1 1 60ADAA6E
P 3650 3200
F 0 "J4" H 3622 3132 50  0000 R CNN
F 1 "Conn_01x03_Male" H 3622 3223 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 3650 3200 50  0001 C CNN
F 3 "~" H 3650 3200 50  0001 C CNN
	1    3650 3200
	-1   0    0    1   
$EndComp
Wire Wire Line
	6100 2900 7150 2900
Wire Wire Line
	5500 4050 5350 4050
Wire Wire Line
	7150 2900 7150 3450
Wire Wire Line
	7150 3450 7150 4050
Connection ~ 7150 3450
Wire Wire Line
	6100 3450 7150 3450
$Comp
L Device:Jumper JP3
U 1 1 60ADAA7A
P 5800 4050
F 0 "JP3" H 5800 4314 50  0000 C CNN
F 1 "Jumper" H 5800 4223 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5800 4050 50  0001 C CNN
F 3 "~" H 5800 4050 50  0001 C CNN
	1    5800 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 4050 6250 4050
Wire Wire Line
	6100 4050 6150 4050
Connection ~ 6150 4050
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 60ADAA83
P 6150 4050
F 0 "#FLG0101" H 6150 4125 50  0001 C CNN
F 1 "PWR_FLAG" H 6150 4200 50  0001 C CNN
F 2 "" H 6150 4050 50  0001 C CNN
F 3 "~" H 6150 4050 50  0001 C CNN
	1    6150 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP1
U 1 1 60ADAA89
P 5800 2900
F 0 "JP1" H 5800 3164 50  0000 C CNN
F 1 "Jumper" H 5800 3073 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5800 2900 50  0001 C CNN
F 3 "~" H 5800 2900 50  0001 C CNN
	1    5800 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP2
U 1 1 60ADAA8F
P 5800 3450
F 0 "JP2" H 5800 3714 50  0000 C CNN
F 1 "Jumper" H 5800 3623 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5800 3450 50  0001 C CNN
F 3 "~" H 5800 3450 50  0001 C CNN
	1    5800 3450
	1    0    0    -1  
$EndComp
Text GLabel 8400 4050 2    50   UnSpc ~ 0
VCC
$Comp
L power:GND #PWR0102
U 1 1 60ADAA96
P 7650 4500
F 0 "#PWR0102" H 7650 4250 50  0001 C CNN
F 1 "GND" H 7655 4327 50  0000 C CNN
F 2 "" H 7650 4500 50  0001 C CNN
F 3 "" H 7650 4500 50  0001 C CNN
	1    7650 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 4350 7650 4500
Connection ~ 7150 4050
Wire Wire Line
	6850 4050 7150 4050
$Comp
L power:GND #PWR0103
U 1 1 60ADAA9F
P 3150 4300
F 0 "#PWR0103" H 3150 4050 50  0001 C CNN
F 1 "GND" H 3155 4127 50  0000 C CNN
F 2 "" H 3150 4300 50  0001 C CNN
F 3 "" H 3150 4300 50  0001 C CNN
	1    3150 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 4350 7650 4350
Connection ~ 7150 4350
$Comp
L Device:C C7
U 1 1 60ADAAA7
P 7150 4200
F 0 "C7" H 7265 4246 50  0000 L CNN
F 1 "100nf" H 7265 4155 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 7188 4050 50  0001 C CNN
F 3 "~" H 7150 4200 50  0001 C CNN
	1    7150 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 4350 5350 4350
Connection ~ 5350 4350
Connection ~ 5350 4050
$Comp
L Device:C C2
U 1 1 60ADAAB0
P 5350 4200
F 0 "C2" H 5465 4246 50  0000 L CNN
F 1 "330nf" H 5465 4155 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 5388 4050 50  0001 C CNN
F 3 "~" H 5350 4200 50  0001 C CNN
	1    5350 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 4350 6550 4350
Wire Wire Line
	7150 4350 6550 4350
Connection ~ 6550 4350
$Comp
L Regulator_Linear:L7805 U1
U 1 1 60ADAAB9
P 6550 4050
F 0 "U1" H 6550 4292 50  0000 C CNN
F 1 "L7805" H 6550 4201 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220F-3_Horizontal_TabDown" H 6575 3900 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 6550 4000 50  0001 C CNN
	1    6550 4050
	1    0    0    -1  
$EndComp
$Comp
L Connector:Jack-DC J2
U 1 1 60ADAABF
P 3550 3700
F 0 "J2" H 3607 4025 50  0000 C CNN
F 1 "Jack-DC" H 3607 3934 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_Wuerth_6941xx301002" H 3600 3660 50  0001 C CNN
F 3 "~" H 3600 3660 50  0001 C CNN
	1    3550 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 60AE147D
P 4950 1500
AR Path="/60AE147D" Ref="C?"  Part="1" 
AR Path="/60AC6B8E/60AE147D" Ref="C1"  Part="1" 
F 0 "C1" H 5068 1546 50  0000 L CNN
F 1 "470uF" H 5068 1455 50  0000 L CNN
F 2 "rosco_m68k:C-Electrolytic-3,5-10" H 4988 1350 50  0001 C CNN
F 3 "~" H 4950 1500 50  0001 C CNN
	1    4950 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60AE1483
P 5450 1500
AR Path="/60AE1483" Ref="C?"  Part="1" 
AR Path="/60AC6B8E/60AE1483" Ref="C3"  Part="1" 
F 0 "C3" H 5565 1546 50  0000 L CNN
F 1 "100nF" H 5565 1455 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 5488 1350 50  0001 C CNN
F 3 "~" H 5450 1500 50  0001 C CNN
	1    5450 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60AE1489
P 5900 1500
AR Path="/60AE1489" Ref="C?"  Part="1" 
AR Path="/60AC6B8E/60AE1489" Ref="C4"  Part="1" 
F 0 "C4" H 6015 1546 50  0000 L CNN
F 1 "100nF" H 6015 1455 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 5938 1350 50  0001 C CNN
F 3 "~" H 5900 1500 50  0001 C CNN
	1    5900 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60AE148F
P 6350 1500
AR Path="/60AE148F" Ref="C?"  Part="1" 
AR Path="/60AC6B8E/60AE148F" Ref="C5"  Part="1" 
F 0 "C5" H 6465 1546 50  0000 L CNN
F 1 "100nF" H 6465 1455 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 6388 1350 50  0001 C CNN
F 3 "~" H 6350 1500 50  0001 C CNN
	1    6350 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60AE1495
P 6800 1500
AR Path="/60AE1495" Ref="C?"  Part="1" 
AR Path="/60AC6B8E/60AE1495" Ref="C6"  Part="1" 
F 0 "C6" H 6915 1546 50  0000 L CNN
F 1 "100nF" H 6915 1455 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 6838 1350 50  0001 C CNN
F 3 "~" H 6800 1500 50  0001 C CNN
	1    6800 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60AE149B
P 7250 1500
AR Path="/60AE149B" Ref="C?"  Part="1" 
AR Path="/60AC6B8E/60AE149B" Ref="C8"  Part="1" 
F 0 "C8" H 7365 1546 50  0000 L CNN
F 1 "100nF" H 7365 1455 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 7288 1350 50  0001 C CNN
F 3 "~" H 7250 1500 50  0001 C CNN
	1    7250 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 1350 4950 1350
Connection ~ 4950 1350
Wire Wire Line
	4950 1350 5450 1350
Connection ~ 5450 1350
Wire Wire Line
	5450 1350 5900 1350
Connection ~ 5900 1350
Wire Wire Line
	5900 1350 6350 1350
Connection ~ 6350 1350
Wire Wire Line
	6350 1350 6800 1350
Connection ~ 6800 1350
Wire Wire Line
	6800 1350 7250 1350
Wire Wire Line
	7250 1650 6800 1650
Connection ~ 4950 1650
Wire Wire Line
	4950 1650 4600 1650
Connection ~ 5450 1650
Wire Wire Line
	5450 1650 4950 1650
Connection ~ 5900 1650
Wire Wire Line
	5900 1650 5450 1650
Connection ~ 6350 1650
Wire Wire Line
	6350 1650 5900 1650
Connection ~ 6800 1650
Wire Wire Line
	6800 1650 6350 1650
Text GLabel 4600 1350 0    50   UnSpc ~ 0
VCC
Text GLabel 4600 1650 0    50   UnSpc ~ 0
GND
$EndSCHEMATC
