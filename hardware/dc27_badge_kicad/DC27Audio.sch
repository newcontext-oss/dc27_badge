EESchema Schematic File Version 4
LIBS:DC27-badge-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 8
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	4350 4550 4350 4600
Wire Wire Line
	4500 4550 4350 4550
Wire Wire Line
	4500 3850 4500 4550
Wire Wire Line
	4250 3850 4500 3850
Wire Wire Line
	4550 3950 4550 4100
Wire Wire Line
	4250 3950 4550 3950
Wire Wire Line
	2750 4500 2750 4600
Connection ~ 4350 4550
Wire Wire Line
	4350 4500 4350 4550
$Comp
L power:GND #PWR?
U 1 1 5BA158A4
P 4350 4600
AR Path="/5BA158A4" Ref="#PWR?"  Part="1" 
AR Path="/5BA15261/5BA158A4" Ref="#PWR0509"  Part="1" 
F 0 "#PWR0509" H 4350 4350 50  0001 C CNN
F 1 "GND" H 4355 4427 50  0000 C CNN
F 2 "" H 4350 4600 50  0001 C CNN
F 3 "" H 4350 4600 50  0001 C CNN
	1    4350 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BA158AA
P 2750 4600
AR Path="/5BA158AA" Ref="#PWR?"  Part="1" 
AR Path="/5BA15261/5BA158AA" Ref="#PWR0508"  Part="1" 
F 0 "#PWR0508" H 2750 4350 50  0001 C CNN
F 1 "GND" H 2755 4427 50  0000 C CNN
F 2 "" H 2750 4600 50  0001 C CNN
F 3 "" H 2750 4600 50  0001 C CNN
	1    2750 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 4050 2850 4050
Wire Wire Line
	2750 4200 2750 4050
Wire Wire Line
	4350 4050 4350 4200
Wire Wire Line
	4250 4050 4350 4050
$Comp
L Device:R_US R?
U 1 1 5BA158B7
P 5450 4100
AR Path="/5BA158B7" Ref="R?"  Part="1" 
AR Path="/5BA15261/5BA158B7" Ref="R503"  Part="1" 
F 0 "R503" V 5245 4100 50  0000 C CNN
F 1 "20K" V 5336 4100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5490 4090 50  0001 C CNN
F 3 "~" H 5450 4100 50  0001 C CNN
	1    5450 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	4350 3750 4250 3750
Wire Wire Line
	3500 2350 3500 2500
Wire Wire Line
	3000 2350 3500 2350
Connection ~ 3000 2350
Wire Wire Line
	3000 2500 3000 2350
Wire Wire Line
	3000 2900 3200 2900
Wire Wire Line
	3000 2800 3000 2900
Wire Wire Line
	3500 2900 3500 2800
$Comp
L power:GND #PWR?
U 1 1 5BA158DD
P 3200 3000
AR Path="/5BA158DD" Ref="#PWR?"  Part="1" 
AR Path="/5BA15261/5BA158DD" Ref="#PWR0503"  Part="1" 
F 0 "#PWR0503" H 3200 2750 50  0001 C CNN
F 1 "GND" H 3205 2827 50  0000 C CNN
F 2 "" H 3200 3000 50  0001 C CNN
F 3 "" H 3200 3000 50  0001 C CNN
	1    3200 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5BA158F1
P 5450 3650
AR Path="/5BA158F1" Ref="R?"  Part="1" 
AR Path="/5BA15261/5BA158F1" Ref="R502"  Part="1" 
F 0 "R502" V 5245 3650 50  0000 C CNN
F 1 "20K" V 5336 3650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5490 3640 50  0001 C CNN
F 3 "~" H 5450 3650 50  0001 C CNN
	1    5450 3650
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5BA15930
P 3000 2650
AR Path="/5BA15930" Ref="C?"  Part="1" 
AR Path="/5BA15261/5BA15930" Ref="C501"  Part="1" 
F 0 "C501" H 2650 2700 50  0000 L CNN
F 1 "0.1uF" H 2600 2600 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3038 2500 50  0001 C CNN
F 3 "~" H 3000 2650 50  0001 C CNN
	1    3000 2650
	1    0    0    -1  
$EndComp
$Comp
L CS4344-CZZ:CS4344-CZZ U?
U 1 1 5BA15949
P 3550 3800
AR Path="/5BA15949" Ref="U?"  Part="1" 
AR Path="/5BA15261/5BA15949" Ref="U501"  Part="1" 
F 0 "U501" H 3550 4200 50  0000 C CNN
F 1 "CS4344-CZZ" H 3550 4100 50  0000 C CNN
F 2 "Housings_SSOP:TSSOP-10_3x3mm_Pitch0.5mm" H 4800 3900 50  0001 L CNN
F 3 "http://uk.rs-online.com/web/p/products/4915754" H 4800 3800 50  0001 L CNN
F 4 "Audio D/A Converter ICs Stereo DAC 24-Bit 192kHz" H 4800 3700 50  0001 L CNN "Description"
F 5 "1.1" H 4800 3600 50  0001 L CNN "Height"
F 6 "4915754" H 4800 3500 50  0001 L CNN "RS Part Number"
F 7 "Cirrus Logic" H 4800 3400 50  0001 L CNN "Manufacturer_Name"
F 8 "CS4344-CZZ" H 4800 3300 50  0001 L CNN "Manufacturer_Part_Number"
	1    3550 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 3650 2850 3650
Wire Wire Line
	2850 3750 2500 3750
Wire Wire Line
	2500 3850 2850 3850
Wire Wire Line
	2850 3950 2500 3950
Text HLabel 2500 3650 0    50   Input ~ 0
SND_SDIN
Text HLabel 2500 3750 0    50   Input ~ 0
SND_SCLK
Text HLabel 2500 3850 0    50   Input ~ 0
SND_LRCK
Text HLabel 2500 3950 0    50   Input ~ 0
SND_MCLK
Text Notes 7350 7500 0    50   ~ 0
DC 27 Badge - Team Ides - John Adams / Bill Paul
Text Notes 1900 3350 0    50   ~ 10
I2S/I2C DAC
Text Notes 4100 1900 0    50   ~ 10
Audio Power Filtering\n
Text Notes 8850 4300 0    50   ~ 0
+\n
Text Notes 8850 3600 0    50   ~ 0
+\n
$Comp
L Device:R R501
U 1 1 5C15557F
P 7200 3250
F 0 "R501" V 6993 3250 50  0000 C CNN
F 1 "20K" V 7084 3250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7130 3250 50  0001 C CNN
F 3 "~" H 7200 3250 50  0001 C CNN
	1    7200 3250
	0    1    1    0   
$EndComp
$Comp
L Device:R R504
U 1 1 5C15572F
P 7150 4800
F 0 "R504" V 6943 4800 50  0000 C CNN
F 1 "20K" V 7034 4800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7080 4800 50  0001 C CNN
F 3 "~" H 7150 4800 50  0001 C CNN
	1    7150 4800
	0    1    1    0   
$EndComp
Text Notes 1900 5650 0    50   ~ 0
MUST PUT ALL OF THIS CIRCUITRY ON SEPARATE AREA OF BOARD WITH GROUND MOAT / 0 OHM\n RESISTOR, ETC.
$Comp
L Device:C C511
U 1 1 5C16082A
P 6350 4850
F 0 "C511" H 6050 4900 50  0000 L CNN
F 1 "1uF Ceramic" H 5750 4800 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6388 4700 50  0001 C CNN
F 3 "~" H 6350 4850 50  0001 C CNN
	1    6350 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0511
U 1 1 5C160923
P 6350 5150
F 0 "#PWR0511" H 6350 4900 50  0001 C CNN
F 1 "GND" H 6355 4977 50  0000 C CNN
F 2 "" H 6350 5150 50  0001 C CNN
F 3 "" H 6350 5150 50  0001 C CNN
	1    6350 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 5000 6350 5150
Text Notes 9500 3750 0    50   ~ 0
AST-01708MRR\n200mW
$Comp
L Device:CP1 C504
U 1 1 5C16A360
P 4850 3650
F 0 "C504" V 5102 3650 50  0000 C CNN
F 1 "3.3uF" V 5011 3650 50  0000 C CNN
F 2 "Capacitor_SMD:CP_Elec_5x5.3" H 4850 3650 50  0001 C CNN
F 3 "~" H 4850 3650 50  0001 C CNN
	1    4850 3650
	0    1    1    0   
$EndComp
$Comp
L Device:CP1 C506
U 1 1 5C16A49F
P 4850 4100
F 0 "C506" V 5102 4100 50  0000 C CNN
F 1 "3.3uF" V 5011 4100 50  0000 C CNN
F 2 "Capacitor_SMD:CP_Elec_5x5.3" H 4850 4100 50  0001 C CNN
F 3 "~" H 4850 4100 50  0001 C CNN
	1    4850 4100
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5C16A743
P 2250 4350
AR Path="/5C16A743" Ref="C?"  Part="1" 
AR Path="/5BA15261/5C16A743" Ref="C507"  Part="1" 
F 0 "C507" H 2365 4396 50  0000 L CNN
F 1 "0.1uF" H 2365 4305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2288 4200 50  0001 C CNN
F 3 "~" H 2250 4350 50  0001 C CNN
	1    2250 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C508
U 1 1 5C16A7F6
P 2750 4350
F 0 "C508" H 2865 4396 50  0000 L CNN
F 1 "3.3uF" H 2865 4305 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_5x5.3" H 2750 4350 50  0001 C CNN
F 3 "~" H 2750 4350 50  0001 C CNN
	1    2750 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 4050 2250 4050
Wire Wire Line
	2250 4050 2250 4200
Connection ~ 2750 4050
$Comp
L power:GND #PWR?
U 1 1 5C16C1F4
P 2250 4600
AR Path="/5C16C1F4" Ref="#PWR?"  Part="1" 
AR Path="/5BA15261/5C16C1F4" Ref="#PWR0507"  Part="1" 
F 0 "#PWR0507" H 2250 4350 50  0001 C CNN
F 1 "GND" H 2255 4427 50  0000 C CNN
F 2 "" H 2250 4600 50  0001 C CNN
F 3 "" H 2250 4600 50  0001 C CNN
	1    2250 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 4500 2250 4600
Text Notes 1950 4950 0    50   ~ 0
This circuit is turn-on pop guard\n
Wire Wire Line
	3200 3000 3200 2900
Connection ~ 3200 2900
Wire Wire Line
	3200 2900 3500 2900
$Comp
L Device:CP1 C509
U 1 1 5C16FF84
P 4350 4350
F 0 "C509" H 4050 4400 50  0000 L CNN
F 1 "10uF" H 4050 4300 50  0000 L CNN
F 2 "MF_Passives:MF_Passives-CP4MM" H 4350 4350 50  0001 C CNN
F 3 "~" H 4350 4350 50  0001 C CNN
	1    4350 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 2650 6200 2500
Wire Wire Line
	6200 2950 6200 3050
Wire Wire Line
	4350 2350 3500 2350
Wire Wire Line
	4350 2350 4350 3750
Connection ~ 3500 2350
$Comp
L Device:CP1 C502
U 1 1 5C175C48
P 3500 2650
F 0 "C502" H 3615 2696 50  0000 L CNN
F 1 "1uF" H 3615 2605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3500 2650 50  0001 C CNN
F 3 "~" H 3500 2650 50  0001 C CNN
	1    3500 2650
	1    0    0    -1  
$EndComp
$Comp
L LM4880:LM4880 U502
U 1 1 5C2FA1F8
P 6800 4450
F 0 "U502" H 7200 5517 50  0000 C CNN
F 1 "LM4880" H 7200 5426 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6800 4450 50  0001 L BNN
F 3 "None" H 6800 4450 50  0001 L BNN
F 4 "Unavailable" H 6800 4450 50  0001 L BNN "Field4"
F 5 "None" H 6800 4450 50  0001 L BNN "Field5"
F 6 "LM4880" H 6800 4450 50  0001 L BNN "Field6"
F 7 "" H 6800 4450 50  0001 L BNN "Field7"
F 8 "Texas Instruments" H 6800 4450 50  0001 L BNN "Field8"
	1    6800 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 4150 6350 4700
Wire Wire Line
	6350 4150 6600 4150
Wire Wire Line
	6000 4100 6000 4350
Wire Wire Line
	6000 4350 6500 4350
Wire Wire Line
	5600 4100 6000 4100
Wire Wire Line
	5600 3650 6550 3650
Wire Wire Line
	6500 3850 6600 3850
$Comp
L DC27-badge-cache:+3.3V #PWR0502
U 1 1 5C308F56
P 6500 2300
F 0 "#PWR0502" H 6500 2150 50  0001 C CNN
F 1 "+3.3V" H 6515 2473 50  0000 C CNN
F 2 "" H 6500 2300 50  0001 C CNN
F 3 "" H 6500 2300 50  0001 C CNN
	1    6500 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0506
U 1 1 5C30D794
P 6150 4100
F 0 "#PWR0506" H 6150 3850 50  0001 C CNN
F 1 "GND" H 6155 3927 50  0000 C CNN
F 2 "" H 6150 4100 50  0001 C CNN
F 3 "" H 6150 4100 50  0001 C CNN
	1    6150 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 4100 6150 3950
Wire Wire Line
	6150 3950 6600 3950
$Comp
L Device:C C?
U 1 1 5C171E20
P 6200 2800
AR Path="/5C171E20" Ref="C?"  Part="1" 
AR Path="/5BA15261/5C171E20" Ref="C503"  Part="1" 
F 0 "C503" H 5850 2850 50  0000 L CNN
F 1 "0.1uF" H 5800 2750 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6238 2650 50  0001 C CNN
F 3 "~" H 6200 2800 50  0001 C CNN
	1    6200 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0504
U 1 1 5C3168D4
P 6200 3050
F 0 "#PWR0504" H 6200 2800 50  0001 C CNN
F 1 "GND" H 6205 2877 50  0000 C CNN
F 2 "" H 6200 3050 50  0001 C CNN
F 3 "" H 6200 3050 50  0001 C CNN
	1    6200 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 2300 6500 2500
Wire Wire Line
	6200 2500 6500 2500
Connection ~ 6500 2500
Wire Wire Line
	6500 2500 6500 3850
Wire Wire Line
	6550 3650 6550 3250
Wire Wire Line
	6550 3250 7050 3250
Connection ~ 6550 3650
Wire Wire Line
	6550 3650 6600 3650
Wire Wire Line
	6500 4350 6500 4800
Wire Wire Line
	6500 4800 7000 4800
Connection ~ 6500 4350
Wire Wire Line
	6500 4350 6600 4350
$Comp
L power:GND #PWR0510
U 1 1 5C32A6A0
P 8700 4800
F 0 "#PWR0510" H 8700 4550 50  0001 C CNN
F 1 "GND" H 8705 4627 50  0000 C CNN
F 2 "" H 8700 4800 50  0001 C CNN
F 3 "" H 8700 4800 50  0001 C CNN
	1    8700 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 4450 8700 4450
Wire Wire Line
	8700 4450 8700 4800
$Comp
L power:GND #PWR0505
U 1 1 5C32BD44
P 8700 3900
F 0 "#PWR0505" H 8700 3650 50  0001 C CNN
F 1 "GND" H 8705 3727 50  0000 C CNN
F 2 "" H 8700 3900 50  0001 C CNN
F 3 "" H 8700 3900 50  0001 C CNN
	1    8700 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 3750 8700 3750
Wire Wire Line
	8700 3750 8700 3900
$Comp
L Device:CP1_Small C505
U 1 1 5C32D771
P 8100 3650
F 0 "C505" V 8328 3650 50  0000 C CNN
F 1 "100uF" V 8237 3650 50  0000 C CNN
F 2 "MF_Passives:MF_Passives-CP6.3MM" H 8100 3650 50  0001 C CNN
F 3 "~" H 8100 3650 50  0001 C CNN
	1    8100 3650
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP1_Small C510
U 1 1 5C32D948
P 8100 4350
F 0 "C510" V 8328 4350 50  0000 C CNN
F 1 "100uF" V 8237 4350 50  0000 C CNN
F 2 "MF_Passives:MF_Passives-CP6.3MM" H 8100 4350 50  0001 C CNN
F 3 "~" H 8100 4350 50  0001 C CNN
	1    8100 4350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7800 4350 7850 4350
Wire Wire Line
	7800 3650 7850 3650
Wire Wire Line
	7850 3250 7850 3650
Wire Wire Line
	7350 3250 7850 3250
Connection ~ 7850 3650
Wire Wire Line
	7850 3650 8000 3650
Wire Wire Line
	7300 4800 7850 4800
Wire Wire Line
	7850 4800 7850 4350
Connection ~ 7850 4350
Wire Wire Line
	7850 4350 8000 4350
Wire Wire Line
	8200 4350 8750 4350
Wire Wire Line
	8750 3650 8200 3650
Text HLabel 7900 3850 2    50   Input ~ 0
AMP_SHUTDOWN
Wire Wire Line
	7900 3850 7800 3850
$Comp
L DC27-badge-cache:+3.3V #PWR0501
U 1 1 5C384936
P 2700 2150
F 0 "#PWR0501" H 2700 2000 50  0001 C CNN
F 1 "+3.3V" H 2715 2323 50  0000 C CNN
F 2 "" H 2700 2150 50  0001 C CNN
F 3 "" H 2700 2150 50  0001 C CNN
	1    2700 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 2150 2700 2350
Wire Wire Line
	2700 2350 3000 2350
Wire Wire Line
	5000 4100 5300 4100
Wire Wire Line
	4250 3650 4600 3650
Wire Wire Line
	5000 3650 5300 3650
$Comp
L Device:Speaker LS501
U 1 1 5CAC1626
P 8950 3650
F 0 "LS501" H 9120 3646 50  0000 L CNN
F 1 "Speaker" H 9120 3555 50  0000 L CNN
F 2 "lib_fp:AST-01708-MRR" H 8950 3450 50  0001 C CNN
F 3 "~" H 8940 3600 50  0001 C CNN
	1    8950 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:Speaker LS502
U 1 1 5CAC167D
P 8950 4350
F 0 "LS502" H 9120 4346 50  0000 L CNN
F 1 "Speaker" H 9120 4255 50  0000 L CNN
F 2 "lib_fp:AST-01708-MRR" H 8950 4150 50  0001 C CNN
F 3 "~" H 8940 4300 50  0001 C CNN
	1    8950 4350
	1    0    0    -1  
$EndComp
Text Notes 9500 4450 0    50   ~ 0
AST-01708MRR\n200mW
Text Notes 4850 3350 0    50   ~ 0
Can drop R502,503 to 15k, \nbut some distortion present.
$Comp
L Connector:TestPoint TP501
U 1 1 5CE34BE7
P 4600 3050
F 0 "TP501" H 4658 3168 50  0000 L CNN
F 1 "DAC_OUT_R" H 4658 3077 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 4800 3050 50  0001 C CNN
F 3 "~" H 4800 3050 50  0001 C CNN
	1    4600 3050
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP502
U 1 1 5CE35CF0
P 4600 4750
F 0 "TP502" H 4542 4776 50  0000 R CNN
F 1 "DAC_OUT_L" H 4542 4867 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 4800 4750 50  0001 C CNN
F 3 "~" H 4800 4750 50  0001 C CNN
	1    4600 4750
	-1   0    0    1   
$EndComp
Wire Wire Line
	4600 4750 4600 4100
Wire Wire Line
	4550 4100 4600 4100
Connection ~ 4600 4100
Wire Wire Line
	4600 4100 4700 4100
Wire Wire Line
	4600 3050 4600 3650
Connection ~ 4600 3650
Wire Wire Line
	4600 3650 4700 3650
$EndSCHEMATC
