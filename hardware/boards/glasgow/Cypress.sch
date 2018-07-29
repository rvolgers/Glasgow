EESchema Schematic File Version 4
LIBS:glasgow-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Cypress:CY7C68013A-56LTX U?
U 1 1 5B6E603A
P 5200 3650
AR Path="/5B6E603A" Ref="U?"  Part="1" 
AR Path="/5B68477F/5B6E603A" Ref="U1"  Part="1" 
F 0 "U1" H 4650 5600 50  0000 C CNN
F 1 "CY7C68013A-56LTX" H 5700 5600 50  0000 C CNN
F 2 "Package_DFN_QFN:Cypress_QFN-56-1EP_8x8mm_P0.5mm_EP6.22x6.22mm_ThermalVias" H 5150 3750 50  0001 C CNN
F 3 "http://www.cypress.com/file/138911/download" H 5200 3850 50  0001 C CNN
F 4 "Cypress" H 2300 -450 50  0001 C CNN "Mfg"
F 5 "CY7C68013A-56LTXC" H 2300 -450 50  0001 C CNN "MPN"
	1    5200 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5B6E6041
P 5200 5750
AR Path="/5B6E6041" Ref="#PWR?"  Part="1" 
AR Path="/5B68477F/5B6E6041" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 5200 5500 50  0001 C CNN
F 1 "GND" H 5205 5577 50  0000 C CNN
F 2 "" H 5200 5750 50  0001 C CNN
F 3 "" H 5200 5750 50  0001 C CNN
	1    5200 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 5650 5000 5700
Wire Wire Line
	5000 5700 5200 5700
Wire Wire Line
	5400 5700 5400 5650
Wire Wire Line
	5200 5650 5200 5700
Connection ~ 5200 5700
Wire Wire Line
	5200 5700 5400 5700
Wire Wire Line
	5200 5700 5200 5750
$Comp
L power:+3.3V #PWR?
U 1 1 5B6E604E
P 5200 1550
AR Path="/5B6E604E" Ref="#PWR?"  Part="1" 
AR Path="/5B68477F/5B6E604E" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 5200 1400 50  0001 C CNN
F 1 "+3.3V" H 5215 1723 50  0000 C CNN
F 2 "" H 5200 1550 50  0001 C CNN
F 3 "" H 5200 1550 50  0001 C CNN
	1    5200 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 1550 5200 1600
Wire Wire Line
	4200 4750 4500 4750
Wire Wire Line
	4300 4850 4500 4850
Wire Wire Line
	5000 1650 5000 1600
Wire Wire Line
	5000 1600 5200 1600
Connection ~ 5200 1600
Wire Wire Line
	5200 1600 5200 1650
Wire Wire Line
	4800 5650 4800 5700
Wire Wire Line
	4800 5700 5000 5700
Connection ~ 5000 5700
$Comp
L power:GND #PWR?
U 1 1 5B6E605E
P 4400 2500
AR Path="/5B6E605E" Ref="#PWR?"  Part="1" 
AR Path="/5B68477F/5B6E605E" Ref="#PWR0104"  Part="1" 
F 0 "#PWR0104" H 4400 2250 50  0001 C CNN
F 1 "GND" H 4400 2350 50  0000 C CNN
F 2 "" H 4400 2500 50  0001 C CNN
F 3 "" H 4400 2500 50  0001 C CNN
	1    4400 2500
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5B6E6064
P 4450 3450
AR Path="/5B6E6064" Ref="#PWR?"  Part="1" 
AR Path="/5B68477F/5B6E6064" Ref="#PWR0105"  Part="1" 
F 0 "#PWR0105" H 4450 3300 50  0001 C CNN
F 1 "+3.3V" V 4465 3578 50  0000 L CNN
F 2 "" H 4450 3450 50  0001 C CNN
F 3 "" H 4450 3450 50  0001 C CNN
	1    4450 3450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4450 3450 4500 3450
Wire Wire Line
	4050 3350 4450 3350
Text Label 4200 2250 0    50   ~ 0
XTALOUT
Text Label 4200 2750 0    50   ~ 0
XTALIN
Text Label 5950 1850 0    50   ~ 0
D0
Text Label 5950 1950 0    50   ~ 0
D1
Text Label 5950 2050 0    50   ~ 0
D2
Text Label 5950 2150 0    50   ~ 0
D3
Text Label 5950 2250 0    50   ~ 0
D4
Text Label 5950 2350 0    50   ~ 0
D5
Text Label 5950 2450 0    50   ~ 0
D6
Text Label 5950 2550 0    50   ~ 0
D7
Text Label 5950 3550 0    50   ~ 0
RD
Text Label 5950 3650 0    50   ~ 0
WR
Text Label 5950 4150 0    50   ~ 0
FLAGA
Text Label 5950 4250 0    50   ~ 0
FLAGB
Text Label 5950 4350 0    50   ~ 0
FLAGC
Text Label 5950 4750 0    50   ~ 0
OE
Text Label 5950 4950 0    50   ~ 0
A0
Text Label 5950 5050 0    50   ~ 0
A1
Text Label 5950 5150 0    50   ~ 0
PKTEND
Text Label 5950 5250 0    50   ~ 0
FLAGD
Text Label 5950 3850 0    50   ~ 0
CLKIF
$Comp
L Device:R R?
U 1 1 5B6E6095
P 4450 3150
AR Path="/5B6E6095" Ref="R?"  Part="1" 
AR Path="/5B68477F/5B6E6095" Ref="R4"  Part="1" 
F 0 "R4" H 4380 3104 50  0000 R CNN
F 1 "100k" H 4380 3195 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 4380 3150 50  0001 C CNN
F 3 "" H 4450 3150 50  0001 C CNN
F 4 "Yageo" H 2300 -450 50  0001 C CNN "Mfg"
F 5 "RC0603FR-10100KL" H 2300 -450 50  0001 C CNN "MPN"
	1    4450 3150
	1    0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5B6E609C
P 4450 2950
AR Path="/5B6E609C" Ref="#PWR?"  Part="1" 
AR Path="/5B68477F/5B6E609C" Ref="#PWR0155"  Part="1" 
F 0 "#PWR0155" H 4450 2800 50  0001 C CNN
F 1 "+3.3V" H 4150 3000 50  0000 L CNN
F 2 "" H 4450 2950 50  0001 C CNN
F 3 "" H 4450 2950 50  0001 C CNN
	1    4450 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 2950 4450 3000
Wire Wire Line
	4450 3350 4450 3300
Connection ~ 4450 3350
Wire Wire Line
	4450 3350 4500 3350
Text Label 5950 3950 0    50   ~ 0
CLKREF
Wire Wire Line
	5900 2850 6350 2850
Wire Wire Line
	6350 2950 5900 2950
Wire Wire Line
	6350 3050 5900 3050
Wire Wire Line
	6350 3150 5900 3150
Text Label 6300 2850 2    50   ~ 0
LED_CY
Text Label 6300 2950 2    50   ~ 0
LED_FPGA
Text Label 6300 3050 2    50   ~ 0
LED_ACT
Text Label 6300 3150 2    50   ~ 0
LED_ERR
Text Label 6250 4650 2    50   ~ 0
FLAGD
Text Notes 5300 1650 0    50   ~ 0
Imax(USB) @ 3V3 = 80 mA\nImax @ 3V3 = 209 mA
Wire Wire Line
	4100 2250 4500 2250
Wire Wire Line
	4100 2750 4500 2750
Wire Wire Line
	3900 4050 4500 4050
Wire Wire Line
	3950 3950 4500 3950
Text Label 4050 3350 0    50   ~ 0
~CY_RESET
$Comp
L Device:C C?
U 1 1 5B7206E7
P 3850 2250
AR Path="/5B7206E7" Ref="C?"  Part="1" 
AR Path="/5B68477F/5B7206E7" Ref="C11"  Part="1" 
F 0 "C11" V 3700 2250 50  0000 C CNN
F 1 "18p" V 4000 2250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 3888 2100 50  0001 C CNN
F 3 "https://www.mouser.hk/datasheet/2/396/mlcc02_e-1307760.pdf" H 3850 2250 50  0001 C CNN
F 4 "Yageo" H 2300 -450 50  0001 C CNN "Mfg"
F 5 "CC0603JRNPO8BN180" H 2300 -450 50  0001 C CNN "MPN"
	1    3850 2250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5B7206EE
P 3650 2800
AR Path="/5B7206EE" Ref="#PWR?"  Part="1" 
AR Path="/5B68477F/5B7206EE" Ref="#PWR0156"  Part="1" 
F 0 "#PWR0156" H 3650 2550 50  0001 C CNN
F 1 "GND" H 3655 2627 50  0000 C CNN
F 2 "" H 3650 2800 50  0001 C CNN
F 3 "" H 3650 2800 50  0001 C CNN
	1    3650 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 2800 3650 2750
Wire Wire Line
	3650 2250 3700 2250
Wire Wire Line
	3700 2750 3650 2750
Connection ~ 3650 2750
$Comp
L Device:C C?
U 1 1 5B7206FA
P 3850 2750
AR Path="/5B7206FA" Ref="C?"  Part="1" 
AR Path="/5B68477F/5B7206FA" Ref="C12"  Part="1" 
F 0 "C12" V 3700 2750 50  0000 C CNN
F 1 "18p" V 4000 2750 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 3888 2600 50  0001 C CNN
F 3 "https://www.mouser.hk/datasheet/2/396/mlcc02_e-1307760.pdf" H 3850 2750 50  0001 C CNN
F 4 "Yageo" H 2300 -450 50  0001 C CNN "Mfg"
F 5 "CC0603JRNPO8BN180" H 2300 -450 50  0001 C CNN "MPN"
	1    3850 2750
	0    1    1    0   
$EndComp
$Comp
L Device:Crystal_GND24 Y?
U 1 1 5B720703
P 4100 2500
AR Path="/5B720703" Ref="Y?"  Part="1" 
AR Path="/5B68477F/5B720703" Ref="Y1"  Part="1" 
F 0 "Y1" V 4250 2350 50  0000 L CNN
F 1 "24M" V 4000 2200 50  0000 L TNN
F 2 "Crystals:Crystal_SMD_3225-4pin_3.2x2.5mm" H 4100 2500 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/741/LFXTAL058124Reel-940455.pdf" H 4100 2500 50  0001 C CNN
F 4 "IQD" H 2300 -450 50  0001 C CNN "Mfg"
F 5 "LFXTAL058124REEL" H 2300 -450 50  0001 C CNN "MPN"
	1    4100 2500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3650 2250 3650 2500
Wire Wire Line
	4000 2250 4100 2250
Wire Wire Line
	4000 2750 4100 2750
Wire Wire Line
	3900 2500 3650 2500
Connection ~ 3650 2500
Wire Wire Line
	3650 2500 3650 2750
Wire Wire Line
	4300 2500 4400 2500
Wire Wire Line
	4100 2250 4100 2350
Wire Wire Line
	4100 2650 4100 2750
Text Label 7400 2750 2    50   ~ 0
~FPGA_RESET
$Comp
L Device:R R?
U 1 1 5B74AED3
P 7100 2900
AR Path="/5B74AED3" Ref="R?"  Part="1" 
AR Path="/5B68477F/5B74AED3" Ref="R11"  Part="1" 
F 0 "R11" V 7000 2850 50  0000 C CNN
F 1 "100k" V 7100 2900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 7030 2900 50  0001 C CNN
F 3 "" H 7100 2900 50  0001 C CNN
F 4 "Yageo" H 2700 -650 50  0001 C CNN "Mfg"
F 5 "RC0603FR-10100KL" H 2700 -650 50  0001 C CNN "MPN"
	1    7100 2900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5B74AEDA
P 7300 2900
AR Path="/5B74AEDA" Ref="#PWR?"  Part="1" 
AR Path="/5B68477F/5B74AEDA" Ref="#PWR0113"  Part="1" 
F 0 "#PWR0113" H 7300 2650 50  0001 C CNN
F 1 "GND" H 7350 2750 50  0000 C CNN
F 2 "" H 7300 2900 50  0001 C CNN
F 3 "" H 7300 2900 50  0001 C CNN
	1    7300 2900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7300 2900 7250 2900
Wire Wire Line
	6900 2900 6900 2750
Text Label 6350 4850 2    50   ~ 0
FPGA_DONE
Wire Wire Line
	6950 2900 6900 2900
Text Label 7400 3350 2    50   ~ 0
~OEQ
$Comp
L Device:R R?
U 1 1 5B74AEE9
P 7100 3500
AR Path="/5B74AEE9" Ref="R?"  Part="1" 
AR Path="/5B68477F/5B74AEE9" Ref="R18"  Part="1" 
F 0 "R18" V 7000 3600 50  0000 R CNN
F 1 "100k" V 7100 3600 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 7030 3500 50  0001 C CNN
F 3 "" H 7100 3500 50  0001 C CNN
F 4 "Yageo" H 2700 -900 50  0001 C CNN "Mfg"
F 5 "RC0603FR-10100KL" H 2700 -900 50  0001 C CNN "MPN"
	1    7100 3500
	0    -1   1    0   
$EndComp
Wire Wire Line
	6950 3500 6900 3500
Wire Wire Line
	6900 3500 6900 3350
$Comp
L power:+3.3V #PWR?
U 1 1 5B74AEF2
P 7300 3500
AR Path="/5B74AEF2" Ref="#PWR?"  Part="1" 
AR Path="/5B68477F/5B74AEF2" Ref="#PWR0114"  Part="1" 
F 0 "#PWR0114" H 7300 3350 50  0001 C CNN
F 1 "+3.3V" H 7300 3650 50  0000 C CNN
F 2 "" H 7300 3500 50  0001 C CNN
F 3 "" H 7300 3500 50  0001 C CNN
	1    7300 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	7250 3500 7300 3500
Text Label 7400 4350 2    50   ~ 0
~ALERT
$Comp
L Device:R R?
U 1 1 5B74AEFF
P 7100 4500
AR Path="/5B74AEFF" Ref="R?"  Part="1" 
AR Path="/5B68477F/5B74AEFF" Ref="R19"  Part="1" 
F 0 "R19" V 7200 4550 50  0000 C CNN
F 1 "100k" V 7100 4500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 7030 4500 50  0001 C CNN
F 3 "" H 7100 4500 50  0001 C CNN
F 4 "Yageo" H 2700 -800 50  0001 C CNN "Mfg"
F 5 "RC0603FR-10100KL" H 2700 -800 50  0001 C CNN "MPN"
	1    7100 4500
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5B74AF06
P 7300 4500
AR Path="/5B74AF06" Ref="#PWR?"  Part="1" 
AR Path="/5B68477F/5B74AF06" Ref="#PWR0121"  Part="1" 
F 0 "#PWR0121" H 7300 4350 50  0001 C CNN
F 1 "+3.3V" H 7315 4673 50  0000 C CNN
F 2 "" H 7300 4500 50  0001 C CNN
F 3 "" H 7300 4500 50  0001 C CNN
	1    7300 4500
	0    1    1    0   
$EndComp
Wire Wire Line
	7250 4500 7300 4500
Text Notes 7750 4650 0    50   ~ 0
Alternate use for\nFLAGD pin: INT1
Connection ~ 6900 3350
Wire Wire Line
	6900 3350 7400 3350
$Comp
L Device:R R?
U 1 1 5B74AF1C
P 8150 3400
AR Path="/5B74AF1C" Ref="R?"  Part="1" 
AR Path="/5B68477F/5B74AF1C" Ref="R17"  Part="1" 
F 0 "R17" V 8050 3500 50  0000 R CNN
F 1 "100k" V 8150 3500 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 8080 3400 50  0001 C CNN
F 3 "" H 8150 3400 50  0001 C CNN
F 4 "Yageo" H 3750 -650 50  0001 C CNN "Mfg"
F 5 "RC0603FR-10100KL" H 3750 -650 50  0001 C CNN "MPN"
	1    8150 3400
	0    -1   1    0   
$EndComp
Wire Wire Line
	8300 3400 8350 3400
$Comp
L Device:R R?
U 1 1 5B74AF26
P 8150 2800
AR Path="/5B74AF26" Ref="R?"  Part="1" 
AR Path="/5B68477F/5B74AF26" Ref="R9"  Part="1" 
F 0 "R9" V 8050 2900 50  0000 R CNN
F 1 "100k" V 8150 2900 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 8080 2800 50  0001 C CNN
F 3 "" H 8150 2800 50  0001 C CNN
F 4 "Yageo" H 3750 -400 50  0001 C CNN "Mfg"
F 5 "RC0603FR-10100KL" H 3750 -400 50  0001 C CNN "MPN"
	1    8150 2800
	0    -1   1    0   
$EndComp
Wire Wire Line
	8300 2800 8350 2800
Wire Wire Line
	8000 3400 7950 3400
Text Label 8450 3250 2    50   ~ 0
ENVB
Wire Wire Line
	7950 3400 7950 3250
Wire Wire Line
	7950 2800 7950 2650
Wire Wire Line
	7950 2800 8000 2800
Connection ~ 6900 2750
Wire Wire Line
	6900 2750 7400 2750
Text Label 8450 2650 2    50   ~ 0
ENVA
Text Notes 6850 3100 0    50   ~ 0
FPGA reset asserted\non tristate
$Comp
L Connector:Test_Point TP?
U 1 1 5B74AF3F
P 6300 3950
AR Path="/5B74AF3F" Ref="TP?"  Part="1" 
AR Path="/5B68477F/5B74AF3F" Ref="TP6"  Part="1" 
F 0 "TP6" H 6100 4050 50  0000 L CNN
F 1 "CLKREF" V 6404 4024 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 6500 3950 50  0001 C CNN
F 3 "~" H 6500 3950 50  0001 C CNN
	1    6300 3950
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5B74AF4A
P 8350 2800
AR Path="/5B74AF4A" Ref="#PWR?"  Part="1" 
AR Path="/5B68477F/5B74AF4A" Ref="#PWR0123"  Part="1" 
F 0 "#PWR0123" H 8350 2550 50  0001 C CNN
F 1 "GND" H 8400 2650 50  0000 C CNN
F 2 "" H 8350 2800 50  0001 C CNN
F 3 "" H 8350 2800 50  0001 C CNN
	1    8350 2800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5B74AF50
P 8350 3400
AR Path="/5B74AF50" Ref="#PWR?"  Part="1" 
AR Path="/5B68477F/5B74AF50" Ref="#PWR0124"  Part="1" 
F 0 "#PWR0124" H 8350 3150 50  0001 C CNN
F 1 "GND" H 8400 3250 50  0000 C CNN
F 2 "" H 8350 3400 50  0001 C CNN
F 3 "" H 8350 3400 50  0001 C CNN
	1    8350 3400
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Test_Point TP?
U 1 1 5B74AF56
P 6300 3850
AR Path="/5B74AF56" Ref="TP?"  Part="1" 
AR Path="/5B68477F/5B74AF56" Ref="TP7"  Part="1" 
F 0 "TP7" H 6350 3950 50  0000 L CNN
F 1 "3V3" V 6404 3924 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 6500 3850 50  0001 C CNN
F 3 "~" H 6500 3850 50  0001 C CNN
	1    6300 3850
	1    0    0    -1  
$EndComp
Text HLabel 3950 3950 0    50   Input ~ 0
USB_P
Text HLabel 3900 4050 0    50   Input ~ 0
USB_N
Text HLabel 4200 4750 0    50   Input ~ 0
SDA
Text HLabel 4300 4850 0    50   Input ~ 0
SCL
Text HLabel 4050 3350 0    50   Input ~ 0
~CY_RESET
Text HLabel 9650 2750 2    50   Input ~ 0
FIFO_DATA_BUS
$Comp
L Device:C C?
U 1 1 5B7AAFD5
P 1300 1100
AR Path="/5B7AAFD5" Ref="C?"  Part="1" 
AR Path="/5B68477F/5B7AAFD5" Ref="C2"  Part="1" 
F 0 "C2" H 1415 1146 50  0000 L CNN
F 1 "u1" H 1415 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 1338 950 50  0001 C CNN
F 3 "https://www.mouser.hk/datasheet/2/396/mlcc02_e-1307760.pdf" H 1300 1100 50  0001 C CNN
F 4 "Taiyo Yuden" H -550 -300 50  0001 C CNN "Mfg"
F 5 "TMK107BJ154KA-T" H -550 -300 50  0001 C CNN "MPN"
	1    1300 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 950  1300 900 
Wire Wire Line
	1300 900  1600 900 
Wire Wire Line
	3100 900  3100 950 
Wire Wire Line
	2800 900  2800 950 
Connection ~ 2800 900 
Wire Wire Line
	2500 900  2500 950 
Connection ~ 2500 900 
Wire Wire Line
	2200 900  2200 950 
Connection ~ 2200 900 
Wire Wire Line
	2200 900  2500 900 
Wire Wire Line
	1900 900  1900 950 
Connection ~ 1900 900 
Wire Wire Line
	1900 900  2050 900 
Wire Wire Line
	1600 900  1600 950 
Connection ~ 1600 900 
Wire Wire Line
	1600 900  1900 900 
Wire Wire Line
	1300 1250 1300 1300
Wire Wire Line
	1300 1300 1600 1300
Wire Wire Line
	3100 1300 3100 1250
Wire Wire Line
	1600 1250 1600 1300
Connection ~ 1600 1300
Wire Wire Line
	1600 1300 1900 1300
Wire Wire Line
	1900 1250 1900 1300
Connection ~ 1900 1300
Wire Wire Line
	1900 1300 2050 1300
Wire Wire Line
	2200 1250 2200 1300
Connection ~ 2200 1300
Wire Wire Line
	2200 1300 2500 1300
Wire Wire Line
	2500 1250 2500 1300
Connection ~ 2500 1300
Wire Wire Line
	2800 1250 2800 1300
Connection ~ 2800 1300
$Comp
L Device:C C?
U 1 1 5B7AAFFE
P 900 1100
AR Path="/5B7AAFFE" Ref="C?"  Part="1" 
AR Path="/5B68477F/5B7AAFFE" Ref="C1"  Part="1" 
F 0 "C1" H 1015 1146 50  0000 L CNN
F 1 "4u7" H 1015 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 938 950 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/400/lcc_commercial_general_en-837201.pdf" H 900 1100 50  0001 C CNN
F 4 "Taiyo Yuden" H -550 -300 50  0001 C CNN "Mfg"
F 5 "LMK107BJ475KAHT" H -550 -300 50  0001 C CNN "MPN"
	1    900  1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 900  900  900 
Wire Wire Line
	900  900  900  950 
Connection ~ 1300 900 
Wire Wire Line
	1300 1300 900  1300
Wire Wire Line
	900  1300 900  1250
Connection ~ 1300 1300
$Comp
L Device:C C?
U 1 1 5B7AB00D
P 1600 1100
AR Path="/5B7AB00D" Ref="C?"  Part="1" 
AR Path="/5B68477F/5B7AB00D" Ref="C3"  Part="1" 
F 0 "C3" H 1715 1146 50  0000 L CNN
F 1 "u1" H 1715 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 1638 950 50  0001 C CNN
F 3 "https://www.mouser.hk/datasheet/2/396/mlcc02_e-1307760.pdf" H 1600 1100 50  0001 C CNN
F 4 "Taiyo Yuden" H -550 -300 50  0001 C CNN "Mfg"
F 5 "TMK107BJ154KA-T" H -550 -300 50  0001 C CNN "MPN"
	1    1600 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5B7AB016
P 1900 1100
AR Path="/5B7AB016" Ref="C?"  Part="1" 
AR Path="/5B68477F/5B7AB016" Ref="C4"  Part="1" 
F 0 "C4" H 2015 1146 50  0000 L CNN
F 1 "u1" H 2015 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 1938 950 50  0001 C CNN
F 3 "https://www.mouser.hk/datasheet/2/396/mlcc02_e-1307760.pdf" H 1900 1100 50  0001 C CNN
F 4 "Taiyo Yuden" H -550 -300 50  0001 C CNN "Mfg"
F 5 "TMK107BJ154KA-T" H -550 -300 50  0001 C CNN "MPN"
	1    1900 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5B7AB01F
P 2200 1100
AR Path="/5B7AB01F" Ref="C?"  Part="1" 
AR Path="/5B68477F/5B7AB01F" Ref="C5"  Part="1" 
F 0 "C5" H 2315 1146 50  0000 L CNN
F 1 "u1" H 2315 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 2238 950 50  0001 C CNN
F 3 "https://www.mouser.hk/datasheet/2/396/mlcc02_e-1307760.pdf" H 2200 1100 50  0001 C CNN
F 4 "Taiyo Yuden" H -550 -300 50  0001 C CNN "Mfg"
F 5 "TMK107BJ154KA-T" H -550 -300 50  0001 C CNN "MPN"
	1    2200 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5B7AB028
P 2500 1100
AR Path="/5B7AB028" Ref="C?"  Part="1" 
AR Path="/5B68477F/5B7AB028" Ref="C6"  Part="1" 
F 0 "C6" H 2615 1146 50  0000 L CNN
F 1 "u1" H 2615 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 2538 950 50  0001 C CNN
F 3 "https://www.mouser.hk/datasheet/2/396/mlcc02_e-1307760.pdf" H 2500 1100 50  0001 C CNN
F 4 "Taiyo Yuden" H -550 -300 50  0001 C CNN "Mfg"
F 5 "TMK107BJ154KA-T" H -550 -300 50  0001 C CNN "MPN"
	1    2500 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5B7AB031
P 2800 1100
AR Path="/5B7AB031" Ref="C?"  Part="1" 
AR Path="/5B68477F/5B7AB031" Ref="C7"  Part="1" 
F 0 "C7" H 2915 1146 50  0000 L CNN
F 1 "u1" H 2915 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 2838 950 50  0001 C CNN
F 3 "https://www.mouser.hk/datasheet/2/396/mlcc02_e-1307760.pdf" H 2800 1100 50  0001 C CNN
F 4 "Taiyo Yuden" H -550 -300 50  0001 C CNN "Mfg"
F 5 "TMK107BJ154KA-T" H -550 -300 50  0001 C CNN "MPN"
	1    2800 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5B7AB03A
P 3100 1100
AR Path="/5B7AB03A" Ref="C?"  Part="1" 
AR Path="/5B68477F/5B7AB03A" Ref="C9"  Part="1" 
F 0 "C9" H 3215 1146 50  0000 L CNN
F 1 "u1" H 3215 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 3138 950 50  0001 C CNN
F 3 "https://www.mouser.hk/datasheet/2/396/mlcc02_e-1307760.pdf" H 3100 1100 50  0001 C CNN
F 4 "Taiyo Yuden" H -550 -300 50  0001 C CNN "Mfg"
F 5 "TMK107BJ154KA-T" H -550 -300 50  0001 C CNN "MPN"
	1    3100 1100
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5B7AB041
P 2050 850
AR Path="/5B7AB041" Ref="#PWR?"  Part="1" 
AR Path="/5B68477F/5B7AB041" Ref="#PWR0157"  Part="1" 
F 0 "#PWR0157" H 2050 700 50  0001 C CNN
F 1 "+3.3V" H 2065 1023 50  0000 C CNN
F 2 "" H 2050 850 50  0001 C CNN
F 3 "" H 2050 850 50  0001 C CNN
	1    2050 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 850  2050 900 
Connection ~ 2050 900 
Wire Wire Line
	2050 900  2200 900 
$Comp
L power:GND #PWR?
U 1 1 5B7AB04A
P 2050 1350
AR Path="/5B7AB04A" Ref="#PWR?"  Part="1" 
AR Path="/5B68477F/5B7AB04A" Ref="#PWR0158"  Part="1" 
F 0 "#PWR0158" H 2050 1100 50  0001 C CNN
F 1 "GND" H 2055 1177 50  0000 C CNN
F 2 "" H 2050 1350 50  0001 C CNN
F 3 "" H 2050 1350 50  0001 C CNN
	1    2050 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 1350 2050 1300
Connection ~ 2050 1300
Wire Wire Line
	2050 1300 2200 1300
$Comp
L Device:C C?
U 1 1 5B7AB055
P 3400 1100
AR Path="/5B7AB055" Ref="C?"  Part="1" 
AR Path="/5B68477F/5B7AB055" Ref="C10"  Part="1" 
F 0 "C10" H 3515 1146 50  0000 L CNN
F 1 "u1" H 3515 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 3438 950 50  0001 C CNN
F 3 "https://www.mouser.hk/datasheet/2/396/mlcc02_e-1307760.pdf" H 3400 1100 50  0001 C CNN
F 4 "Taiyo Yuden" H -550 -300 50  0001 C CNN "Mfg"
F 5 "TMK107BJ154KA-T" H -550 -300 50  0001 C CNN "MPN"
	1    3400 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 950  3400 900 
Wire Wire Line
	3400 900  3100 900 
Connection ~ 3100 900 
Wire Wire Line
	3400 1250 3400 1300
Wire Wire Line
	3400 1300 3100 1300
Connection ~ 3100 1300
Wire Wire Line
	2800 900  3100 900 
Wire Wire Line
	2800 1300 3100 1300
Wire Wire Line
	2500 900  2800 900 
Wire Wire Line
	2500 1300 2800 1300
Wire Wire Line
	6900 4350 7400 4350
Text HLabel 6350 3150 2    50   Input ~ 0
LED_ERR
Text HLabel 6350 3050 2    50   Input ~ 0
LED_ACT
Text HLabel 6350 2950 2    50   Input ~ 0
LED_FPGA
Text HLabel 6350 2850 2    50   Input ~ 0
LED_CY
Wire Wire Line
	5900 4850 6350 4850
Text HLabel 6350 4850 2    50   Input ~ 0
FPGA_DONE
Connection ~ 7950 2650
Wire Wire Line
	7950 2650 8450 2650
Connection ~ 7950 3250
Wire Wire Line
	7950 3250 8450 3250
Wire Wire Line
	5900 2750 6900 2750
Wire Wire Line
	5900 3350 6900 3350
Text HLabel 8450 2650 2    50   Input ~ 0
ENVA
Text HLabel 8450 3250 2    50   Input ~ 0
ENVB
Text HLabel 7400 2750 2    50   Input ~ 0
~FPGA_RESET
Text HLabel 7400 3350 2    50   Input ~ 0
~OEQ
Wire Wire Line
	5900 2650 7950 2650
Wire Wire Line
	5900 3250 7950 3250
Wire Wire Line
	5900 4550 6900 4550
Text HLabel 7400 4350 2    50   Input ~ 0
~ALERT
Wire Wire Line
	5900 1850 8900 1850
Wire Wire Line
	5900 1950 8900 1950
Wire Wire Line
	5900 2050 8900 2050
Wire Wire Line
	5900 2150 8900 2150
Wire Wire Line
	5900 2250 8900 2250
Wire Wire Line
	5900 2350 8900 2350
Wire Wire Line
	5900 2450 8900 2450
Wire Wire Line
	5900 2550 8900 2550
Entry Wire Line
	8900 1850 9000 1950
Entry Wire Line
	8900 1950 9000 2050
Entry Wire Line
	8900 2050 9000 2150
Entry Wire Line
	8900 2150 9000 2250
Entry Wire Line
	8900 2250 9000 2350
Entry Wire Line
	8900 2350 9000 2450
Entry Wire Line
	8900 2450 9000 2550
Entry Wire Line
	8900 2550 9000 2650
Wire Wire Line
	6700 3650 6700 3750
Wire Wire Line
	5900 3650 6700 3650
Wire Wire Line
	6800 3550 6800 3650
Wire Wire Line
	5900 3550 6800 3550
Wire Wire Line
	5900 3850 6300 3850
Wire Wire Line
	5900 4150 6600 4150
Wire Wire Line
	6600 4150 6600 4050
Wire Wire Line
	6600 4050 8450 4050
Wire Wire Line
	6700 4250 6700 4150
Wire Wire Line
	6700 4150 8450 4150
Wire Wire Line
	5900 4250 6700 4250
Wire Wire Line
	6800 4350 6800 4250
Wire Wire Line
	6800 4250 8450 4250
Wire Wire Line
	5900 4350 6800 4350
Wire Wire Line
	5900 3950 6300 3950
Wire Wire Line
	5900 4650 8450 4650
Wire Wire Line
	6900 4550 6900 4500
Wire Wire Line
	6950 4500 6900 4500
Connection ~ 6900 4500
Wire Wire Line
	6900 4500 6900 4350
Wire Wire Line
	5900 4750 8450 4750
Wire Wire Line
	5900 4950 8900 4950
Wire Wire Line
	5900 5050 8900 5050
Wire Wire Line
	5900 5150 8450 5150
Wire Wire Line
	5900 5250 8450 5250
Wire Wire Line
	6800 3650 8450 3650
Wire Wire Line
	6700 3750 8450 3750
Entry Wire Line
	8900 4950 9000 5050
Entry Wire Line
	8900 5050 9000 5150
Wire Bus Line
	9000 2750 9650 2750
Connection ~ 6300 3850
Wire Wire Line
	6300 3850 8450 3850
Connection ~ 6300 3950
Wire Wire Line
	6300 3950 8450 3950
Text HLabel 9650 5250 2    50   Input ~ 0
FIFO_ADDR_BUS
Wire Bus Line
	9000 5250 9650 5250
Text Label 9400 2750 2    50   ~ 0
D[0..7]
Text HLabel 8450 4050 2    50   Input ~ 0
FLAGA
Text HLabel 8450 4150 2    50   Input ~ 0
FLAGB
Text HLabel 8450 4250 2    50   Input ~ 0
FLAGC
Text HLabel 8450 3650 2    50   Input ~ 0
RD
Text HLabel 8450 3750 2    50   Input ~ 0
WR
Text HLabel 8450 3850 2    50   Input ~ 0
CLKIF
Text HLabel 8450 3950 2    50   Input ~ 0
CLKREF
Text HLabel 8450 4650 2    50   Input ~ 0
FLAGD
Text HLabel 8450 4750 2    50   Input ~ 0
OE
Text HLabel 8450 5150 2    50   Input ~ 0
PKTEND
Text HLabel 8450 5250 2    50   Input ~ 0
FLAGD
Wire Bus Line
	9000 5050 9000 5250
Wire Bus Line
	9000 1950 9000 2750
$EndSCHEMATC
