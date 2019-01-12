EESchema Schematic File Version 4
LIBS:DC27-badge-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 550  1500 1200 650 
U 5BA1B02E
F0 "LEDs" 50
F1 "DC27LEDs.sch" 50
$EndSheet
$Sheet
S 550  2350 1200 650 
U 5BD866AF
F0 "LED Interface" 50
F1 "DC27LED_INTERFACE.sch" 50
$EndSheet
$Sheet
S 550  600  1200 650 
U 5BA3F217
F0 "DC Power" 50
F1 "DC27-DC Power.sch" 50
$EndSheet
$Sheet
S 4350 600  1200 950 
U 5BA15261
F0 "DC27Audio" 50
F1 "DC27Audio.sch" 50
F2 "SND_SDIN" I L 4350 700 50 
F3 "SND_SCLK" I L 4350 850 50 
F4 "SND_LRCK" I L 4350 1000 50 
F5 "SND_MCLK" I L 4350 1150 50 
F6 "AMP_SHUTDOWN" I L 4350 1300 50 
$EndSheet
$Comp
L power:GND #PWR0113
U 1 1 5BB289BF
P 4950 6400
F 0 "#PWR0113" H 4950 6150 50  0001 C CNN
F 1 "GND" H 4955 6227 50  0000 C CNN
F 2 "" H 4950 6400 50  0001 C CNN
F 3 "" H 4950 6400 50  0001 C CNN
	1    4950 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 6150 4600 6150
Wire Wire Line
	4500 5850 4500 6150
Wire Wire Line
	4600 5850 4600 6150
Connection ~ 4600 6150
Wire Wire Line
	4600 6150 4700 6150
Wire Wire Line
	4700 5850 4700 6150
Connection ~ 4700 6150
Wire Wire Line
	4700 6150 4800 6150
Wire Wire Line
	4800 5850 4800 6150
Connection ~ 4800 6150
Wire Wire Line
	4800 6150 4900 6150
Wire Wire Line
	4950 6150 5000 6150
Wire Wire Line
	5500 6150 5500 5850
Connection ~ 4950 6150
Wire Wire Line
	4900 5850 4900 6150
Connection ~ 4900 6150
Wire Wire Line
	4900 6150 4950 6150
Wire Wire Line
	5000 5850 5000 6150
Connection ~ 5000 6150
Wire Wire Line
	5000 6150 5100 6150
Wire Wire Line
	5100 5850 5100 6150
Connection ~ 5100 6150
Wire Wire Line
	5100 6150 5200 6150
Wire Wire Line
	5200 5850 5200 6150
Connection ~ 5200 6150
Wire Wire Line
	5200 6150 5300 6150
Wire Wire Line
	5300 5850 5300 6150
Connection ~ 5300 6150
Wire Wire Line
	5300 6150 5400 6150
Wire Wire Line
	5400 5850 5400 6150
Connection ~ 5400 6150
Wire Wire Line
	5400 6150 5500 6150
$Comp
L power:GND #PWR0110
U 1 1 5BB29000
P 5950 5750
F 0 "#PWR0110" H 5950 5500 50  0001 C CNN
F 1 "GND" H 5955 5577 50  0000 C CNN
F 2 "" H 5950 5750 50  0001 C CNN
F 3 "" H 5950 5750 50  0001 C CNN
	1    5950 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 5450 5950 5450
Wire Wire Line
	5950 5450 5950 5550
Wire Wire Line
	5950 5550 5750 5550
Connection ~ 5950 5550
Wire Wire Line
	5950 5550 5950 5750
Wire Wire Line
	4950 6150 4950 6400
$Comp
L MF_Switches:TACT_4.2MM SW101
U 1 1 5BA99567
P 7800 1600
F 0 "SW101" H 7800 1333 45  0000 C CNN
F 1 "UP" H 7800 1417 45  0000 C CNN
F 2 "MF_Switches:MF_Switches-TACT4.2MM" H 7830 1750 20  0001 C CNN
F 3 "" H 7800 1600 50  0001 C CNN
	1    7800 1600
	-1   0    0    1   
$EndComp
$Comp
L MF_Switches:TACT_4.2MM SW102
U 1 1 5BA995D9
P 8250 1600
F 0 "SW102" H 8250 1333 45  0000 C CNN
F 1 "DN" H 8250 1417 45  0000 C CNN
F 2 "MF_Switches:MF_Switches-TACT4.2MM" H 8280 1750 20  0001 C CNN
F 3 "" H 8250 1600 50  0001 C CNN
	1    8250 1600
	-1   0    0    1   
$EndComp
$Comp
L MF_Switches:TACT_4.2MM SW104
U 1 1 5BA9965D
P 9150 1600
F 0 "SW104" H 9150 1333 45  0000 C CNN
F 1 "RIGHT" H 9150 1417 45  0000 C CNN
F 2 "MF_Switches:MF_Switches-TACT4.2MM" H 9180 1750 20  0001 C CNN
F 3 "" H 9150 1600 50  0001 C CNN
	1    9150 1600
	-1   0    0    1   
$EndComp
$Comp
L MF_Switches:TACT_4.2MM SW105
U 1 1 5BA99697
P 9600 1600
F 0 "SW105" H 9600 1333 45  0000 C CNN
F 1 "A" H 9600 1417 45  0000 C CNN
F 2 "MF_Switches:MF_Switches-TACT4.2MM" H 9630 1750 20  0001 C CNN
F 3 "" H 9600 1600 50  0001 C CNN
	1    9600 1600
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5BA99749
P 8850 1950
F 0 "#PWR0103" H 8850 1700 50  0001 C CNN
F 1 "GND" H 8855 1777 50  0000 C CNN
F 2 "" H 8850 1950 50  0001 C CNN
F 3 "" H 8850 1950 50  0001 C CNN
	1    8850 1950
	1    0    0    -1  
$EndComp
$Comp
L MF_Switches:TACT_4.2MM SW103
U 1 1 5BA9B5C7
P 8750 1600
F 0 "SW103" H 8750 1333 45  0000 C CNN
F 1 "LEFT" H 8750 1417 45  0000 C CNN
F 2 "MF_Switches:MF_Switches-TACT4.2MM" H 8780 1750 20  0001 C CNN
F 3 "" H 8750 1600 50  0001 C CNN
	1    8750 1600
	-1   0    0    1   
$EndComp
$Comp
L MF_Switches:TACT_4.2MM SW106
U 1 1 5BA9B5F5
P 10100 1600
F 0 "SW106" H 10100 1333 45  0000 C CNN
F 1 "B" H 10100 1417 45  0000 C CNN
F 2 "MF_Switches:MF_Switches-TACT4.2MM" H 10130 1750 20  0001 C CNN
F 3 "" H 10100 1600 50  0001 C CNN
	1    10100 1600
	-1   0    0    1   
$EndComp
Text Notes 5750 650  0    50   ~ 10
Dual Shitty Add On’s!
$Comp
L DC27-peripheral-cache:+3.3V #PWR0101
U 1 1 5BA9C6B3
P 7200 800
F 0 "#PWR0101" H 7200 650 50  0001 C CNN
F 1 "+3.3V" H 7215 973 50  0000 C CNN
F 2 "" H 7200 800 50  0001 C CNN
F 3 "" H 7200 800 50  0001 C CNN
	1    7200 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 800  7200 1050
$Comp
L power:GND #PWR0102
U 1 1 5BA9CA51
P 7200 1750
F 0 "#PWR0102" H 7200 1500 50  0001 C CNN
F 1 "GND" H 7205 1577 50  0000 C CNN
F 2 "" H 7200 1750 50  0001 C CNN
F 3 "" H 7200 1750 50  0001 C CNN
	1    7200 1750
	1    0    0    -1  
$EndComp
Text GLabel 6150 1050 0    50   Input ~ 0
I2C_SDA
Text GLabel 6150 1150 0    50   Input ~ 0
I2C_SCK
Wire Wire Line
	10200 1700 10200 1850
Wire Wire Line
	10200 1850 10000 1850
Wire Wire Line
	7700 1850 7700 1700
Wire Wire Line
	7900 1700 7900 1850
Connection ~ 7900 1850
Wire Wire Line
	7900 1850 7700 1850
Wire Wire Line
	8150 1700 8150 1850
Connection ~ 8150 1850
Wire Wire Line
	8150 1850 7900 1850
Wire Wire Line
	8350 1700 8350 1850
Connection ~ 8350 1850
Wire Wire Line
	8350 1850 8150 1850
Wire Wire Line
	8650 1700 8650 1850
Connection ~ 8650 1850
Wire Wire Line
	8650 1850 8350 1850
Wire Wire Line
	8850 1700 8850 1850
Connection ~ 8850 1850
Wire Wire Line
	8850 1850 8650 1850
Wire Wire Line
	8850 1850 8850 1950
Wire Wire Line
	9050 1700 9050 1850
Connection ~ 9050 1850
Wire Wire Line
	9050 1850 8850 1850
Wire Wire Line
	9250 1700 9250 1850
Connection ~ 9250 1850
Wire Wire Line
	9250 1850 9050 1850
Wire Wire Line
	9500 1700 9500 1850
Connection ~ 9500 1850
Wire Wire Line
	9500 1850 9250 1850
Wire Wire Line
	9700 1700 9700 1850
Connection ~ 9700 1850
Wire Wire Line
	9700 1850 9500 1850
Wire Wire Line
	10000 1700 10000 1850
Connection ~ 10000 1850
Wire Wire Line
	10000 1850 9700 1850
Wire Wire Line
	7900 1500 7900 1250
Wire Wire Line
	7900 1250 7800 1250
Wire Wire Line
	7700 1250 7700 1500
Wire Wire Line
	8350 1500 8350 1250
Wire Wire Line
	8350 1250 8250 1250
Wire Wire Line
	8150 1250 8150 1500
Wire Wire Line
	8850 1500 8850 1250
Wire Wire Line
	8850 1250 8750 1250
Wire Wire Line
	8650 1250 8650 1500
Wire Wire Line
	9250 1500 9250 1250
Wire Wire Line
	9250 1250 9150 1250
Wire Wire Line
	9050 1250 9050 1500
Wire Wire Line
	9700 1500 9700 1250
Wire Wire Line
	9700 1250 9600 1250
Wire Wire Line
	9500 1250 9500 1500
Wire Wire Line
	10200 1500 10200 1250
Wire Wire Line
	10200 1250 10100 1250
Wire Wire Line
	10000 1250 10000 1500
Text GLabel 7800 1050 1    50   Output ~ 0
~UP
Wire Wire Line
	7800 1050 7800 1250
Connection ~ 7800 1250
Wire Wire Line
	7800 1250 7700 1250
Text GLabel 8250 1050 1    50   Output ~ 0
~DOWN
Text GLabel 8750 1050 1    50   Output ~ 0
~LEFT
Text GLabel 9150 1050 1    50   Output ~ 0
~RIGHT
Text GLabel 9600 1050 1    50   Output ~ 0
~A
Text GLabel 10100 1050 1    50   Output ~ 0
~B
Wire Wire Line
	8250 1050 8250 1250
Connection ~ 8250 1250
Wire Wire Line
	8250 1250 8150 1250
Wire Wire Line
	8750 1050 8750 1250
Connection ~ 8750 1250
Wire Wire Line
	8750 1250 8650 1250
Wire Wire Line
	9150 1050 9150 1250
Connection ~ 9150 1250
Wire Wire Line
	9150 1250 9050 1250
Wire Wire Line
	9600 1050 9600 1250
Connection ~ 9600 1250
Wire Wire Line
	9600 1250 9500 1250
Wire Wire Line
	10100 1050 10100 1250
Connection ~ 10100 1250
Wire Wire Line
	10100 1250 10000 1250
Text Notes 7450 600  0    50   ~ 10
Switches
Text GLabel 3450 4450 0    50   Input ~ 0
~UP
Text GLabel 3800 4550 0    50   Input ~ 0
~DOWN
Wire Wire Line
	3800 4550 4300 4550
Text GLabel 6100 5150 2    50   Input ~ 0
~LEFT
Wire Wire Line
	5750 5150 6100 5150
Text GLabel 6350 5050 2    50   Input ~ 0
~RIGHT
Wire Wire Line
	5750 5050 6350 5050
Text GLabel 6200 4850 2    50   Input ~ 0
I2C_SDA
Wire Wire Line
	5750 4950 6100 4950
Text GLabel 6100 4950 2    50   Input ~ 0
I2C_SCK
Wire Wire Line
	5750 4850 6200 4850
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J104
U 1 1 5BA9ABB2
P 10050 3700
F 0 "J104" H 10100 4817 50  0000 C CNN
F 1 "Conn_02x20_Odd_Even" H 10100 4726 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical_SMD" H 10050 3700 50  0001 C CNN
F 3 "~" H 10050 3700 50  0001 C CNN
	1    10050 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5BA9AD47
P 9100 2850
F 0 "#PWR0106" H 9100 2600 50  0001 C CNN
F 1 "GND" H 9105 2677 50  0000 C CNN
F 2 "" H 9100 2850 50  0001 C CNN
F 3 "" H 9100 2850 50  0001 C CNN
	1    9100 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 2800 9100 2850
Wire Wire Line
	9100 2800 9850 2800
$Comp
L DC27-peripheral-cache:+3.3V #PWR0105
U 1 1 5BA9D13E
P 10650 2650
F 0 "#PWR0105" H 10650 2500 50  0001 C CNN
F 1 "+3.3V" H 10665 2823 50  0000 C CNN
F 2 "" H 10650 2650 50  0001 C CNN
F 3 "" H 10650 2650 50  0001 C CNN
	1    10650 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	10650 2650 10650 2800
Wire Wire Line
	10650 2800 10350 2800
Text GLabel 10500 3900 2    50   Input ~ 0
DISP_SCLK
Wire Wire Line
	10350 3900 10500 3900
Text GLabel 9550 3900 0    50   Input ~ 0
DISP_CS
Wire Wire Line
	9550 3900 9850 3900
Text GLabel 9550 4000 0    50   Input ~ 0
DISP_DC
Wire Wire Line
	9550 4000 9850 4000
Text GLabel 9550 4100 0    50   Input ~ 0
DISP_MOSI
Wire Wire Line
	9550 4100 9850 4100
Text GLabel 10500 4100 2    50   Output ~ 0
DISP_MISO
Wire Wire Line
	10350 4100 10500 4100
NoConn ~ 10350 4000
Text GLabel 10500 4200 2    50   Input ~ 0
TOUCH_CS
Wire Wire Line
	10350 4200 10500 4200
Text GLabel 10500 4300 2    50   Output ~ 0
SD_MISO
Text GLabel 10500 4400 2    50   Input ~ 0
SD_MOSI
Wire Wire Line
	10350 4300 10500 4300
Wire Wire Line
	10500 4400 10350 4400
Text GLabel 9550 4400 0    50   Input ~ 0
SD_SCLK
Wire Wire Line
	9550 4400 9850 4400
$Comp
L power:GND #PWR0108
U 1 1 5BAB8AC8
P 10550 4800
F 0 "#PWR0108" H 10550 4550 50  0001 C CNN
F 1 "GND" H 10555 4627 50  0000 C CNN
F 2 "" H 10550 4800 50  0001 C CNN
F 3 "" H 10550 4800 50  0001 C CNN
	1    10550 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 4700 10550 4700
Wire Wire Line
	10550 4700 10550 4800
NoConn ~ 9850 4700
NoConn ~ 9850 4600
Text GLabel 9550 4500 0    50   Input ~ 0
SD_CS
Wire Wire Line
	9550 4500 9850 4500
NoConn ~ 9850 4300
NoConn ~ 9850 4200
NoConn ~ 9850 3800
NoConn ~ 9850 3700
NoConn ~ 9850 3600
NoConn ~ 9850 3500
NoConn ~ 9850 3400
NoConn ~ 9850 3300
NoConn ~ 9850 3200
NoConn ~ 9850 3100
NoConn ~ 9850 3000
NoConn ~ 9850 2900
NoConn ~ 10350 3800
NoConn ~ 10350 3700
NoConn ~ 10350 3600
NoConn ~ 10350 3500
NoConn ~ 10350 3400
NoConn ~ 10350 3300
NoConn ~ 10350 3200
NoConn ~ 10350 3100
NoConn ~ 10350 3000
NoConn ~ 10350 2900
Text Notes 8900 2300 0    50   ~ 10
DISPLAY\n
Wire Notes Line
	11100 2200 7400 2200
Wire Notes Line
	7400 5200 11100 5200
NoConn ~ 10350 4600
NoConn ~ 10350 4500
$Comp
L Connector:Conn_ARM_JTAG_SWD_10 J101
U 1 1 5BB15372
P 1150 4500
F 0 "J101" H 710 4546 50  0000 R CNN
F 1 "Conn_ARM_JTAG_SWD_10" H 2150 3900 50  0000 R CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x05_P1.27mm_Vertical_SMD" H 1200 3950 50  0001 L TNN
F 3 "http://infocenter.arm.com/help/topic/com.arm.doc.faqs/attached/13634/cortex_debug_connectors.pdf" V 800 3250 50  0001 C CNN
	1    1150 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5BB155AB
P 1150 5300
F 0 "#PWR0109" H 1150 5050 50  0001 C CNN
F 1 "GND" H 1155 5127 50  0000 C CNN
F 2 "" H 1150 5300 50  0001 C CNN
F 3 "" H 1150 5300 50  0001 C CNN
	1    1150 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 5100 1050 5200
Wire Wire Line
	1050 5200 1150 5200
Wire Wire Line
	1150 5100 1150 5200
Connection ~ 1150 5200
Wire Wire Line
	1150 5200 1150 5300
$Comp
L DC27-peripheral-cache:+3.3V #PWR0107
U 1 1 5BB1B8C1
P 1150 3600
F 0 "#PWR0107" H 1150 3450 50  0001 C CNN
F 1 "+3.3V" H 1165 3773 50  0000 C CNN
F 2 "" H 1150 3600 50  0001 C CNN
F 3 "" H 1150 3600 50  0001 C CNN
	1    1150 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 3600 1150 3650
Text GLabel 1850 4200 2    50   Output ~ 0
~RESET_TGTMCU
Wire Wire Line
	1650 4200 1850 4200
Text GLabel 1850 4400 2    50   Output ~ 0
DEBUG_SWDCLK
Wire Wire Line
	1650 4400 1850 4400
Text GLabel 1850 4500 2    50   BiDi ~ 0
DEBUG_SWDIO
Wire Wire Line
	1650 4500 1750 4500
NoConn ~ 1650 4700
NoConn ~ 1650 4600
$Comp
L Device:R R101
U 1 1 5BB2FF77
P 1750 3900
F 0 "R101" H 1820 3946 50  0000 L CNN
F 1 "10K" H 1820 3855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1680 3900 50  0001 C CNN
F 3 "~" H 1750 3900 50  0001 C CNN
	1    1750 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 3750 1750 3650
Wire Wire Line
	1750 3650 1150 3650
Connection ~ 1150 3650
Wire Wire Line
	1150 3650 1150 3900
Wire Wire Line
	1750 4050 1750 4500
Connection ~ 1750 4500
Wire Wire Line
	1750 4500 1850 4500
Text Notes 550  3350 0    50   ~ 10
PROGRAMMING HEADER
$Comp
L MF_Switches:TACT_4.2MM SW107
U 1 1 5BB3B53E
P 10550 1600
F 0 "SW107" H 10550 1250 45  0000 C CNN
F 1 "ENTER" H 10550 1150 45  0000 C CNN
F 2 "MF_Switches:MF_Switches-TACT4.2MM" H 10580 1750 20  0001 C CNN
F 3 "" H 10550 1600 50  0001 C CNN
	1    10550 1600
	1    0    0    -1  
$EndComp
Text GLabel 10550 1200 1    50   Output ~ 0
~ENTER
Wire Wire Line
	10450 1500 10450 1350
Wire Wire Line
	10450 1350 10550 1350
Wire Wire Line
	10650 1500 10650 1350
Text Notes 8900 5100 0    50   Italic 0
populate with\nsmd flat-mount connector
Text GLabel 4100 5150 0    50   Input ~ 0
~RESET_TGTMCU
Text Notes 5700 6200 0    50   ~ 0
PSELRESET[0] and PSELRESET[1] must be\n0x7fffffd2 for ~RESET
Text GLabel 3800 2750 0    50   Input ~ 0
DEBUG_SWDCLK
Text GLabel 3800 2950 0    50   BiDi ~ 0
DEBUG_SWDIO
$Comp
L power:+3.3V #PWR0104
U 1 1 5BB1F679
P 5900 2200
F 0 "#PWR0104" H 5900 2050 50  0001 C CNN
F 1 "+3.3V" H 5915 2373 50  0000 C CNN
F 2 "" H 5900 2200 50  0001 C CNN
F 3 "" H 5900 2200 50  0001 C CNN
	1    5900 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10650 1850 10650 1700
Wire Wire Line
	10450 1700 10450 1850
Wire Wire Line
	10450 1850 10650 1850
Wire Wire Line
	10550 1200 10550 1350
Connection ~ 10550 1350
Wire Wire Line
	10550 1350 10650 1350
$Comp
L Device:Crystal Y101
U 1 1 5BBB53E8
P 9200 5600
F 0 "Y101" H 9200 5868 50  0000 C CNN
F 1 "32.768Khz XTAL" H 9200 5777 50  0000 C CNN
F 2 "Crystal:Crystal_SMD_MicroCrystal_CC4V-T1A-2Pin_5.0x1.9mm" H 9200 5600 50  0001 C CNN
F 3 "~" H 9200 5600 50  0001 C CNN
	1    9200 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C102
U 1 1 5BBBA96C
P 9550 5950
F 0 "C102" H 9665 5996 50  0000 L CNN
F 1 "12pF" H 9665 5905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9588 5800 50  0001 C CNN
F 3 "~" H 9550 5950 50  0001 C CNN
	1    9550 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C101
U 1 1 5BBBA9C0
P 8800 5950
F 0 "C101" H 8915 5996 50  0000 L CNN
F 1 "12pF" H 8915 5905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8838 5800 50  0001 C CNN
F 3 "~" H 8800 5950 50  0001 C CNN
	1    8800 5950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5BBBAB67
P 8800 6250
F 0 "#PWR0111" H 8800 6000 50  0001 C CNN
F 1 "GND" H 8805 6077 50  0000 C CNN
F 2 "" H 8800 6250 50  0001 C CNN
F 3 "" H 8800 6250 50  0001 C CNN
	1    8800 6250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5BBBAB9B
P 9550 6250
F 0 "#PWR0112" H 9550 6000 50  0001 C CNN
F 1 "GND" H 9555 6077 50  0000 C CNN
F 2 "" H 9550 6250 50  0001 C CNN
F 3 "" H 9550 6250 50  0001 C CNN
	1    9550 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 6100 8800 6250
Wire Wire Line
	9550 6100 9550 6250
Wire Wire Line
	9050 5600 8800 5600
Wire Wire Line
	8800 5600 8800 5800
Wire Wire Line
	9350 5600 9550 5600
Wire Wire Line
	9550 5600 9550 5800
Text GLabel 8550 5600 0    50   Output ~ 0
XTAL0
Wire Wire Line
	8550 5600 8800 5600
Connection ~ 8800 5600
Text GLabel 9850 5600 2    50   Output ~ 0
XTAL1
Wire Wire Line
	9550 5600 9850 5600
Connection ~ 9550 5600
Text GLabel 4100 3350 0    50   Input ~ 0
XTAL0
Text GLabel 4100 3450 0    50   Input ~ 0
XTAL1
Wire Wire Line
	4100 3450 4300 3450
Wire Wire Line
	4300 3350 4100 3350
Text Notes 7450 5350 0    50   ~ 10
CLOCK\n
Text GLabel 4100 3750 0    50   Output ~ 0
DISP_DC
Wire Wire Line
	4100 3650 4300 3650
Text GLabel 4100 3650 0    50   Output ~ 0
TOUCH_CS
Wire Wire Line
	4100 3750 4300 3750
Text GLabel 4100 3850 0    50   Output ~ 0
UART_RTS
Wire Wire Line
	4100 3850 4300 3850
Text GLabel 4100 3950 0    50   Output ~ 0
UART_TX
Wire Wire Line
	4100 3950 4300 3950
Text GLabel 4100 4050 0    50   Output ~ 0
UART_CTS
Text GLabel 4100 4150 0    50   Output ~ 0
UART_RX
Wire Wire Line
	4100 4050 4300 4050
Wire Wire Line
	4100 4150 4300 4150
Text GLabel 4100 4250 0    50   BiDi ~ 0
NFC_ANT0
Text GLabel 4100 4350 0    50   BiDi ~ 0
NFC_ANT1
Wire Wire Line
	4100 4350 4300 4350
Wire Wire Line
	4300 4250 4100 4250
Text GLabel 3450 4650 0    50   Output ~ 0
SD_CS
Wire Wire Line
	3450 4650 4300 4650
Wire Wire Line
	4100 5150 4300 5150
Text GLabel 6350 4750 2    50   Output ~ 0
SCREEN_SPI_SCLK
Wire Wire Line
	5750 4750 6350 4750
Text GLabel 6000 4650 2    50   Input ~ 0
SCREEN_SPI_MISO
Wire Wire Line
	5750 4650 6000 4650
Text GLabel 6350 4550 2    50   Output ~ 0
SCREEN_SPI_MOSI
Wire Wire Line
	6350 4550 5750 4550
Text GLabel 6000 4450 2    50   Output ~ 0
DISP_CS
Wire Wire Line
	5750 4450 6000 4450
NoConn ~ 5750 2750
NoConn ~ 5750 4250
NoConn ~ 5750 4150
NoConn ~ 5750 4050
NoConn ~ 5750 3950
NoConn ~ 5750 3250
Text GLabel 6150 2850 2    50   Output ~ 0
I2S_SDOUT
Text GLabel 6150 2950 2    50   Output ~ 0
I2S_SCLK
Text GLabel 6150 3050 2    50   Output ~ 0
I2S_LRCK
Text GLabel 6150 3150 2    50   Output ~ 0
I2S_MCK
$Comp
L Connector:TestPoint TP108
U 1 1 5BD7474F
P 9550 5450
F 0 "TP108" H 9608 5570 50  0000 L CNN
F 1 "XTAL1" H 9608 5479 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 9750 5450 50  0001 C CNN
F 3 "~" H 9750 5450 50  0001 C CNN
	1    9550 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 5450 9550 5600
$Comp
L Connector:TestPoint TP107
U 1 1 5BD7D538
P 8800 5450
F 0 "TP107" H 8600 5550 50  0000 L CNN
F 1 "XTAL0" H 8500 5450 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 9000 5450 50  0001 C CNN
F 3 "~" H 9000 5450 50  0001 C CNN
	1    8800 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 5450 8800 5600
Wire Notes Line
	7400 500  7400 6550
Text GLabel 8050 3200 0    50   Output ~ 0
SDT_SPI_MISO
Text GLabel 8050 3650 0    50   Input ~ 0
SDT_SPI_SCK
Text GLabel 8050 2750 0    50   Input ~ 0
SDT_SPI_MOSI
Wire Notes Line
	8850 2200 8850 5200
Text Notes 7450 2300 0    50   ~ 10
SPI\n
Text GLabel 8250 4450 2    50   Input ~ 0
DISP_MISO
Text GLabel 8350 2750 2    50   Input ~ 0
SD_MOSI
Wire Wire Line
	8050 2750 8200 2750
Connection ~ 8200 2750
Text GLabel 8200 5100 2    50   Input ~ 0
DISP_MOSI
Wire Wire Line
	8050 3200 8200 3200
Text GLabel 8350 3200 2    50   Input ~ 0
SD_MISO
Connection ~ 8200 3200
Wire Wire Line
	8200 3200 8350 3200
$Comp
L Connector:TestPoint TP101
U 1 1 5BE594F0
P 8200 2550
F 0 "TP101" H 8258 2670 50  0000 L CNN
F 1 "SDT_SPI_MOSI" H 8258 2579 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 8400 2550 50  0001 C CNN
F 3 "~" H 8400 2550 50  0001 C CNN
	1    8200 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 2750 8200 2550
Wire Wire Line
	8200 2750 8350 2750
$Comp
L Connector:TestPoint TP102
U 1 1 5BE6D4D8
P 8200 3000
F 0 "TP102" H 8258 3120 50  0000 L CNN
F 1 "SDT_SPI_MISO" H 8258 3029 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 8400 3000 50  0001 C CNN
F 3 "~" H 8400 3000 50  0001 C CNN
	1    8200 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 3000 8200 3200
Text GLabel 8350 3650 2    50   Output ~ 0
SD_SCLK
Text GLabel 8350 4050 2    50   Output ~ 0
DISP_SCLK
Wire Wire Line
	8050 3650 8200 3650
Connection ~ 8200 3650
Wire Wire Line
	8200 3650 8350 3650
$Comp
L Connector:TestPoint TP103
U 1 1 5BE8BAC1
P 8200 3500
F 0 "TP103" H 8258 3620 50  0000 L CNN
F 1 "SDT_SPI_SCK" H 8258 3529 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 8400 3500 50  0001 C CNN
F 3 "~" H 8400 3500 50  0001 C CNN
	1    8200 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 3500 8200 3650
Wire Wire Line
	5750 3150 6150 3150
Wire Wire Line
	5750 3050 6150 3050
Wire Wire Line
	5750 2950 6150 2950
Wire Wire Line
	5750 2850 6150 2850
Text GLabel 4150 700  0    50   Input ~ 0
I2S_SDOUT
Text GLabel 4100 850  0    50   Input ~ 0
I2S_SCLK
Text GLabel 4100 1000 0    50   Input ~ 0
I2S_LRCK
Text GLabel 4100 1150 0    50   Input ~ 0
I2S_MCK
Wire Wire Line
	4100 1150 4350 1150
Wire Wire Line
	4100 1000 4350 1000
Wire Wire Line
	4350 850  4100 850 
Wire Wire Line
	4150 700  4350 700 
Text Notes 6950 4450 0    50   ~ 0
SPI BUS 3\n
NoConn ~ 4300 3050
NoConn ~ 4300 3150
Text GLabel 6150 3350 2    50   Output ~ 0
SDT_SPI_SCK
$Comp
L DC27-peripheral-cache:BMD-340-A-R U101
U 1 1 5BB20AB5
P 5000 3850
F 0 "U101" H 5000 4000 50  0000 C CNN
F 1 "BMD-340-A-R" H 5000 3850 50  0000 C CNN
F 2 "BMD-340-A-R:RIGADO_BMD-340-A-R" H 4600 1800 50  0001 L BNN
F 3 "Rigado" H 4750 5800 50  0001 L BNN
F 4 "Bluetooth Low Energy 5.0 Module" H 4750 5650 50  0001 L BNN "Field4"
F 5 "BMD-340-A-R" H 4750 5900 50  0001 L BNN "Field6"
	1    5000 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 3350 6150 3350
Text GLabel 6150 3450 2    50   Input ~ 0
SDT_SPI_MISO
Wire Wire Line
	5750 3450 6150 3450
Text GLabel 6150 3550 2    50   Output ~ 0
SDT_SPI_MOSI
Wire Wire Line
	5750 3550 6150 3550
Text GLabel 6000 3650 2    50   Input ~ 0
~A
Text GLabel 6250 3750 2    50   Input ~ 0
~B
Wire Wire Line
	6250 3750 5750 3750
Wire Wire Line
	5750 2450 5900 2450
Wire Wire Line
	5750 2550 5900 2550
Wire Wire Line
	5900 2550 5900 2450
Connection ~ 5900 2450
Text GLabel 8150 4450 0    50   Input ~ 0
SCREEN_SPI_MISO
Text GLabel 8150 4950 0    50   Input ~ 0
SCREEN_SPI_MOSI
Text GLabel 8200 4050 0    50   Input ~ 0
SCREEN_SPI_SCLK
Wire Wire Line
	8200 4050 8250 4050
Wire Wire Line
	8150 4450 8200 4450
$Comp
L Connector:TestPoint TP104
U 1 1 5BFC6440
P 8250 3950
F 0 "TP104" H 8308 4070 50  0000 L CNN
F 1 "SDT_SPI_SCK" H 8308 3979 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 8450 3950 50  0001 C CNN
F 3 "~" H 8450 3950 50  0001 C CNN
	1    8250 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 3950 8250 4050
Connection ~ 8250 4050
Wire Wire Line
	8250 4050 8350 4050
$Comp
L Connector:TestPoint TP105
U 1 1 5BFE1520
P 8200 4350
F 0 "TP105" H 8258 4470 50  0000 L CNN
F 1 "DISP_MOSI" H 8258 4379 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 8400 4350 50  0001 C CNN
F 3 "~" H 8400 4350 50  0001 C CNN
	1    8200 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 4350 8200 4450
Connection ~ 8200 4450
Wire Wire Line
	8200 4450 8250 4450
Wire Wire Line
	8150 5100 8200 5100
$Comp
L Connector:TestPoint TP106
U 1 1 5BFFC464
P 8200 4750
F 0 "TP106" H 8258 4870 50  0000 L CNN
F 1 "DISP_MOSI" H 8258 4779 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 8400 4750 50  0001 C CNN
F 3 "~" H 8400 4750 50  0001 C CNN
	1    8200 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 5100 8150 5000
Wire Wire Line
	8150 5000 8300 5000
Wire Wire Line
	8300 5000 8300 4950
Wire Wire Line
	8300 4950 8200 4950
Wire Wire Line
	8200 4750 8200 4950
Connection ~ 8200 4950
Wire Wire Line
	8200 4950 8150 4950
$Comp
L MF_Switches:TACT_4.2MM SW108
U 1 1 5C05F22F
P 11000 1600
F 0 "SW108" H 11000 1250 45  0000 C CNN
F 1 "RESET" H 11000 1150 45  0000 C CNN
F 2 "MF_Switches:MF_Switches-TACT4.2MM" H 11030 1750 20  0001 C CNN
F 3 "" H 11000 1600 50  0001 C CNN
	1    11000 1600
	1    0    0    -1  
$EndComp
Text GLabel 11000 1200 1    50   Output ~ 0
~RESET_TGTMCU
Wire Wire Line
	10900 1500 10900 1350
Wire Wire Line
	10900 1350 11000 1350
Wire Wire Line
	11100 1500 11100 1350
Wire Wire Line
	11100 1850 11100 1700
Wire Wire Line
	10900 1700 10900 1850
Wire Wire Line
	10900 1850 11100 1850
Wire Wire Line
	11000 1200 11000 1350
Connection ~ 11000 1350
Wire Wire Line
	11000 1350 11100 1350
Wire Wire Line
	10200 1850 10450 1850
Connection ~ 10200 1850
Connection ~ 10450 1850
Wire Wire Line
	10650 1850 10900 1850
Connection ~ 10650 1850
Connection ~ 10900 1850
Text GLabel 6450 3850 2    50   Input ~ 0
~ENTER
Wire Wire Line
	5750 3850 6450 3850
Wire Wire Line
	5750 3650 6000 3650
NoConn ~ 4300 5050
NoConn ~ 4300 5250
NoConn ~ 4300 5350
NoConn ~ 4300 5450
NoConn ~ 5750 5250
NoConn ~ 5750 5350
Wire Wire Line
	3450 4450 4300 4450
$Comp
L Connector:Conn_01x02_Female J105
U 1 1 5C18A401
P 2600 3400
F 0 "J105" H 2627 3376 50  0000 L CNN
F 1 "Conn_01x02_Female" H 2627 3285 50  0000 L CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_1x02_P1.00mm_Horizontal" H 2600 3400 50  0001 C CNN
F 3 "~" H 2600 3400 50  0001 C CNN
	1    2600 3400
	1    0    0    -1  
$EndComp
Text Notes 1850 3300 0    50   ~ 10
NFC antenna connector - DNP
Text GLabel 2300 3400 0    50   BiDi ~ 0
NFC_ANT0
Text GLabel 2300 3500 0    50   BiDi ~ 0
NFC_ANT1
Wire Wire Line
	2300 3500 2400 3500
Wire Wire Line
	2400 3400 2300 3400
Wire Wire Line
	5900 2200 5900 2350
Wire Wire Line
	5750 2350 5900 2350
Connection ~ 5900 2350
Wire Wire Line
	5900 2350 5900 2450
Wire Wire Line
	4300 2950 3800 2950
Wire Wire Line
	3800 2750 4300 2750
$Sheet
S 1800 1500 1000 650 
U 5C2B533C
F0 "UART" 50
F1 "file5C2B533B.sch" 50
$EndSheet
Text Notes 2800 5000 0    50   ~ 0
p0.14 = led 2\np0.15 = led 3\np0.16 = led 4 on dev board\n
NoConn ~ 4300 4750
NoConn ~ 4300 4850
NoConn ~ 4300 4950
Text GLabel 4100 3550 0    50   Output ~ 0
AMP_SHUTDOWN
Wire Wire Line
	4100 3550 4300 3550
Text GLabel 4100 1300 0    50   Input ~ 0
AMP_SHUTDOWN
Wire Wire Line
	4100 1300 4350 1300
Text GLabel 6150 750  0    50   BiDi ~ 0
SDA_LED
Text GLabel 6150 1500 0    50   BiDi ~ 0
SCK_LED
Wire Wire Line
	6150 1500 6250 1500
Wire Wire Line
	6250 1500 6250 1150
Wire Wire Line
	6250 1150 6150 1150
Wire Wire Line
	6150 750  6250 750 
Wire Wire Line
	6250 750  6250 1050
Text Notes 7350 7500 0    50   ~ 0
DC27 BADGE -  CPU, DISPLAY, USER INTERFACE - REV 1
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J102
U 1 1 5C536AAC
P 6700 1050
F 0 "J102" H 6750 1267 50  0000 C CNN
F 1 "ShittyAddOnL" H 6750 1176 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x02_P2.54mm_Vertical_SMD" H 6700 1050 50  0001 C CNN
F 3 "~" H 6700 1050 50  0001 C CNN
	1    6700 1050
	1    0    0    -1  
$EndComp
Wire Notes Line
	7400 1950 5700 1950
Wire Notes Line
	5700 1800 5700 550 
$Sheet
S 1800 600  1000 650 
U 5C660261
F0 "Mechanicals" 50
F1 "mechanicals.sch" 50
$EndSheet
Wire Wire Line
	6150 1050 6250 1050
Connection ~ 6250 1050
Connection ~ 6250 1150
Wire Wire Line
	7000 1150 7200 1150
Wire Wire Line
	7000 1050 7050 1050
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J103
U 1 1 5C6EACC2
P 6700 1600
F 0 "J103" H 6750 1817 50  0000 C CNN
F 1 "ShittyAddOnR" H 6750 1726 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x02_P2.54mm_Vertical_SMD" H 6700 1600 50  0001 C CNN
F 3 "~" H 6700 1600 50  0001 C CNN
	1    6700 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 1050 6450 1050
Wire Wire Line
	6250 1150 6350 1150
Wire Wire Line
	6500 1700 6350 1700
Wire Wire Line
	6350 1700 6350 1150
Connection ~ 6350 1150
Wire Wire Line
	6350 1150 6500 1150
Wire Wire Line
	6500 1600 6450 1600
Wire Wire Line
	6450 1600 6450 1050
Connection ~ 6450 1050
Wire Wire Line
	6450 1050 6500 1050
Wire Wire Line
	7000 1600 7050 1600
Wire Wire Line
	7050 1600 7050 1050
Connection ~ 7050 1050
Wire Wire Line
	7050 1050 7200 1050
Wire Wire Line
	7000 1700 7200 1700
Wire Wire Line
	7200 1700 7200 1750
Wire Wire Line
	7200 1150 7200 1700
Connection ~ 7200 1700
$EndSCHEMATC
