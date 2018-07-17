EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:mows-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L ATTINY85-20PU U2
U 1 1 594FB4D7
P 3100 2650
F 0 "U2" H 1950 3050 50  0000 C CNN
F 1 "ATTINY85-20PU" H 4100 2250 50  0000 C CNN
F 2 "Housings_DIP:DIP-8_W7.62mm" H 4100 2650 50  0001 C CIN
F 3 "" H 3100 2650 50  0001 C CNN
	1    3100 2650
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 594FB5E0
P 5050 1450
F 0 "R4" V 5130 1450 50  0000 C CNN
F 1 "47K" V 5050 1450 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4980 1450 50  0001 C CNN
F 3 "" H 5050 1450 50  0001 C CNN
	1    5050 1450
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 594FB633
P 5050 1050
F 0 "R3" V 5130 1050 50  0000 C CNN
F 1 "22K" V 5050 1050 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4980 1050 50  0001 C CNN
F 3 "" H 5050 1050 50  0001 C CNN
	1    5050 1050
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 594FB669
P 6100 1050
F 0 "R7" V 6180 1050 50  0000 C CNN
F 1 "10K" V 6100 1050 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6030 1050 50  0001 C CNN
F 3 "" H 6100 1050 50  0001 C CNN
	1    6100 1050
	1    0    0    -1  
$EndComp
$Comp
L D_Schottky D1
U 1 1 594FB69F
P 3150 1250
F 0 "D1" H 3150 1350 50  0000 C CNN
F 1 "D_Schottky" H 3150 1150 50  0000 C CNN
F 2 "Diodes_THT:D_DO-41_SOD81_P12.70mm_Horizontal" H 3150 1250 50  0001 C CNN
F 3 "" H 3150 1250 50  0001 C CNN
	1    3150 1250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 594FC2C3
P 5050 1700
F 0 "#PWR01" H 5050 1450 50  0001 C CNN
F 1 "GND" H 5050 1550 50  0000 C CNN
F 2 "" H 5050 1700 50  0001 C CNN
F 3 "" H 5050 1700 50  0001 C CNN
	1    5050 1700
	1    0    0    -1  
$EndComp
Text Label 5350 1250 0    60   ~ 0
VBATT
Text Label 3350 950  0    60   ~ 0
SUN
$Comp
L +3V3 #PWR02
U 1 1 594FC5BB
P 1750 1250
F 0 "#PWR02" H 1750 1100 50  0001 C CNN
F 1 "+3V3" H 1750 1390 50  0000 C CNN
F 2 "" H 1750 1250 50  0001 C CNN
F 3 "" H 1750 1250 50  0001 C CNN
	1    1750 1250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 594FC61C
P 2400 1650
F 0 "#PWR03" H 2400 1400 50  0001 C CNN
F 1 "GND" H 2400 1500 50  0000 C CNN
F 2 "" H 2400 1650 50  0001 C CNN
F 3 "" H 2400 1650 50  0001 C CNN
	1    2400 1650
	1    0    0    -1  
$EndComp
Text Label 1400 2800 0    60   ~ 0
DHT22
Text Label 1400 2700 0    60   ~ 0
RFTX
Text Label 1400 2600 0    60   ~ 0
W_DIR
Text Label 1400 2400 0    60   ~ 0
RAIN
Text Label 1400 2500 0    60   ~ 0
W_SPD
Text Label 1050 2900 0    60   ~ 0
RST
Text Label 1400 2900 0    60   ~ 0
VBATT
Text Label 1050 2400 0    60   ~ 0
MOSI
Text Label 1050 2500 0    60   ~ 0
MISO
Text Label 1050 2600 0    60   ~ 0
SCK
$Comp
L +3V3 #PWR04
U 1 1 594FD423
P 4700 2400
F 0 "#PWR04" H 4700 2250 50  0001 C CNN
F 1 "+3V3" H 4700 2540 50  0000 C CNN
F 2 "" H 4700 2400 50  0001 C CNN
F 3 "" H 4700 2400 50  0001 C CNN
	1    4700 2400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 594FD45E
P 4700 2900
F 0 "#PWR05" H 4700 2650 50  0001 C CNN
F 1 "GND" H 4700 2750 50  0000 C CNN
F 2 "" H 4700 2900 50  0001 C CNN
F 3 "" H 4700 2900 50  0001 C CNN
	1    4700 2900
	1    0    0    -1  
$EndComp
Text Label 1250 3750 0    60   ~ 0
MISO
Text Label 1250 3850 0    60   ~ 0
MOSI
$Comp
L +3V3 #PWR06
U 1 1 594FF0D2
P 1300 3450
F 0 "#PWR06" H 1300 3300 50  0001 C CNN
F 1 "+3V3" H 1300 3590 50  0000 C CNN
F 2 "" H 1300 3450 50  0001 C CNN
F 3 "" H 1300 3450 50  0001 C CNN
	1    1300 3450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 594FF0F4
P 1300 3950
F 0 "#PWR07" H 1300 3700 50  0001 C CNN
F 1 "GND" H 1300 3800 50  0000 C CNN
F 2 "" H 1300 3950 50  0001 C CNN
F 3 "" H 1300 3950 50  0001 C CNN
	1    1300 3950
	1    0    0    -1  
$EndComp
Text Label 1250 3650 0    60   ~ 0
SCK
Text Label 1250 3550 0    60   ~ 0
RST
$Comp
L R R5
U 1 1 599B8E52
P 5550 2250
F 0 "R5" V 5630 2250 50  0000 C CNN
F 1 "10K" V 5550 2250 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5480 2250 50  0001 C CNN
F 3 "" H 5550 2250 50  0001 C CNN
	1    5550 2250
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 599B9487
P 5550 3350
F 0 "R6" V 5630 3350 50  0000 C CNN
F 1 "10K" V 5550 3350 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5480 3350 50  0001 C CNN
F 3 "" H 5550 3350 50  0001 C CNN
	1    5550 3350
	1    0    0    -1  
$EndComp
Text Label 5800 1250 0    60   ~ 0
RAIN
$Comp
L +3V3 #PWR08
U 1 1 599B9EA3
P 6100 850
F 0 "#PWR08" H 6100 700 50  0001 C CNN
F 1 "+3V3" H 6100 990 50  0000 C CNN
F 2 "" H 6100 850 50  0001 C CNN
F 3 "" H 6100 850 50  0001 C CNN
	1    6100 850 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 599BA12B
P 6100 1450
F 0 "#PWR09" H 6100 1200 50  0001 C CNN
F 1 "GND" H 6100 1300 50  0000 C CNN
F 2 "" H 6100 1450 50  0001 C CNN
F 3 "" H 6100 1450 50  0001 C CNN
	1    6100 1450
	1    0    0    -1  
$EndComp
Text Label 5200 2450 0    60   ~ 0
W_SPD
$Comp
L GND #PWR010
U 1 1 599BB276
P 5550 2650
F 0 "#PWR010" H 5550 2400 50  0001 C CNN
F 1 "GND" H 5550 2500 50  0000 C CNN
F 2 "" H 5550 2650 50  0001 C CNN
F 3 "" H 5550 2650 50  0001 C CNN
	1    5550 2650
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR011
U 1 1 599BB3E3
P 5550 2050
F 0 "#PWR011" H 5550 1900 50  0001 C CNN
F 1 "+3V3" H 5550 2190 50  0000 C CNN
F 2 "" H 5550 2050 50  0001 C CNN
F 3 "" H 5550 2050 50  0001 C CNN
	1    5550 2050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 599BC73E
P 5550 3750
F 0 "#PWR012" H 5550 3500 50  0001 C CNN
F 1 "GND" H 5550 3600 50  0000 C CNN
F 2 "" H 5550 3750 50  0001 C CNN
F 3 "" H 5550 3750 50  0001 C CNN
	1    5550 3750
	1    0    0    -1  
$EndComp
Text Label 5200 3550 0    60   ~ 0
W_DIR
$Comp
L +3V3 #PWR013
U 1 1 599BCCE9
P 5550 3150
F 0 "#PWR013" H 5550 3000 50  0001 C CNN
F 1 "+3V3" H 5550 3290 50  0000 C CNN
F 2 "" H 5550 3150 50  0001 C CNN
F 3 "" H 5550 3150 50  0001 C CNN
	1    5550 3150
	1    0    0    -1  
$EndComp
Text Label 3700 3850 0    60   ~ 0
DHT22
$Comp
L +3.3V #PWR014
U 1 1 5A468922
P 3950 3550
F 0 "#PWR014" H 3950 3400 50  0001 C CNN
F 1 "+3.3V" H 3950 3690 50  0000 C CNN
F 2 "" H 3950 3550 50  0001 C CNN
F 3 "" H 3950 3550 50  0001 C CNN
	1    3950 3550
	1    0    0    -1  
$EndComp
Text Label 3950 900  0    60   ~ 0
SUN
$Comp
L GND #PWR015
U 1 1 5A46EB40
P 4050 1650
F 0 "#PWR015" H 4050 1400 50  0001 C CNN
F 1 "GND" H 4050 1500 50  0000 C CNN
F 2 "" H 4050 1650 50  0001 C CNN
F 3 "" H 4050 1650 50  0001 C CNN
	1    4050 1650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 5A46EB72
P 4050 1050
F 0 "#PWR016" H 4050 800 50  0001 C CNN
F 1 "GND" H 4050 900 50  0000 C CNN
F 2 "" H 4050 1050 50  0001 C CNN
F 3 "" H 4050 1050 50  0001 C CNN
	1    4050 1050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 5A472770
P 4350 3800
F 0 "#PWR017" H 4350 3550 50  0001 C CNN
F 1 "GND" H 4350 3650 50  0000 C CNN
F 2 "" H 4350 3800 50  0001 C CNN
F 3 "" H 4350 3800 50  0001 C CNN
	1    4350 3800
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 con_sun1
U 1 1 5A47356F
P 4350 900
F 0 "con_sun1" H 4350 1000 50  0000 C CNN
F 1 "SUN" H 4350 700 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 4350 900 50  0001 C CNN
F 3 "" H 4350 900 50  0001 C CNN
	1    4350 900 
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 con_bat1
U 1 1 5A4735FC
P 4350 1500
F 0 "con_bat1" H 4350 1600 50  0000 C CNN
F 1 "BATT" H 4350 1300 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 4350 1500 50  0001 C CNN
F 3 "" H 4350 1500 50  0001 C CNN
	1    4350 1500
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x03 J2
U 1 1 5A4740C8
P 3200 3700
F 0 "J2" H 3200 3900 50  0000 C CNN
F 1 "STX882" V 3300 3700 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 3200 3700 50  0001 C CNN
F 3 "" H 3200 3700 50  0001 C CNN
	1    3200 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 5A475913
P 3000 3950
F 0 "#PWR018" H 3000 3700 50  0001 C CNN
F 1 "GND" H 3000 3800 50  0000 C CNN
F 2 "" H 3000 3950 50  0001 C CNN
F 3 "" H 3000 3950 50  0001 C CNN
	1    3000 3950
	1    0    0    -1  
$EndComp
Text Label 2800 3600 0    60   ~ 0
RFTX
$Comp
L +BATT #PWR019
U 1 1 5A477DB3
P 3000 1050
F 0 "#PWR019" H 3000 900 50  0001 C CNN
F 1 "+BATT" H 3000 1190 50  0000 C CNN
F 2 "" H 3000 1050 50  0001 C CNN
F 3 "" H 3000 1050 50  0001 C CNN
	1    3000 1050
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR020
U 1 1 5A478987
P 3950 1500
F 0 "#PWR020" H 3950 1350 50  0001 C CNN
F 1 "+BATT" H 3950 1640 50  0000 C CNN
F 2 "" H 3950 1500 50  0001 C CNN
F 3 "" H 3950 1500 50  0001 C CNN
	1    3950 1500
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR021
U 1 1 5A4793EE
P 5050 850
F 0 "#PWR021" H 5050 700 50  0001 C CNN
F 1 "+BATT" H 5050 990 50  0000 C CNN
F 2 "" H 5050 850 50  0001 C CNN
F 3 "" H 5050 850 50  0001 C CNN
	1    5050 850 
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x06 J1
U 1 1 5A467D4C
P 1700 3650
F 0 "J1" H 1700 3950 50  0000 C CNN
F 1 "ICSP" H 1700 3250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06_Pitch2.54mm" H 1700 3650 50  0001 C CNN
F 3 "" H 1700 3650 50  0001 C CNN
	1    1700 3650
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5A469C7F
P 2650 3750
F 0 "R1" V 2730 3750 50  0000 C CNN
F 1 "10K" V 2650 3750 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2580 3750 50  0001 C CNN
F 3 "" H 2650 3750 50  0001 C CNN
	1    2650 3750
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5A46B1D0
P 4050 3700
F 0 "R2" V 4130 3700 50  0000 C CNN
F 1 "10K" V 4050 3700 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3980 3700 50  0001 C CNN
F 3 "" H 4050 3700 50  0001 C CNN
	1    4050 3700
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x03 J3
U 1 1 5A47AFD5
P 4550 3650
F 0 "J3" H 4550 3850 50  0000 C CNN
F 1 "DHT22" V 4650 3650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 4550 3650 50  0001 C CNN
F 3 "" H 4550 3650 50  0001 C CNN
	1    4550 3650
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 J5
U 1 1 5A47B11F
P 5750 3600
F 0 "J5" H 5750 3700 50  0000 C CNN
F 1 "WDIR" V 5850 3550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 5750 3600 50  0001 C CNN
F 3 "" H 5750 3600 50  0001 C CNN
	1    5750 3600
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 J4
U 1 1 5A47B19E
P 5750 2500
F 0 "J4" H 5750 2600 50  0000 C CNN
F 1 "WSPD" V 5850 2450 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 5750 2500 50  0001 C CNN
F 3 "" H 5750 2500 50  0001 C CNN
	1    5750 2500
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 J6
U 1 1 5A47B467
P 6300 1300
F 0 "J6" H 6300 1400 50  0000 C CNN
F 1 "RAIN" V 6400 1250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 6300 1300 50  0001 C CNN
F 3 "" H 6300 1300 50  0001 C CNN
	1    6300 1300
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR022
U 1 1 5A82E3BB
P 2850 3800
F 0 "#PWR022" H 2850 3650 50  0001 C CNN
F 1 "+BATT" H 2850 3940 50  0000 C CNN
F 2 "" H 2850 3800 50  0001 C CNN
F 3 "" H 2850 3800 50  0001 C CNN
	1    2850 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 1200 5050 1250
Wire Wire Line
	5050 1250 5050 1300
Wire Wire Line
	5050 1600 5050 1700
Wire Wire Line
	5050 1250 5350 1250
Connection ~ 5050 1250
Wire Wire Line
	1050 2400 1750 2400
Wire Wire Line
	1750 2800 1400 2800
Wire Wire Line
	1750 2700 1400 2700
Wire Wire Line
	1050 2500 1750 2500
Wire Wire Line
	1050 2600 1750 2600
Wire Wire Line
	1050 2900 1750 2900
Wire Wire Line
	4450 2400 4700 2400
Wire Wire Line
	6100 1200 6100 1250
Wire Wire Line
	6100 1250 6100 1300
Wire Wire Line
	5800 1250 6100 1250
Connection ~ 6100 1250
Wire Wire Line
	6100 1400 6100 1450
Wire Wire Line
	6100 850  6100 900 
Wire Wire Line
	5550 2400 5550 2450
Wire Wire Line
	5550 2450 5550 2500
Wire Wire Line
	5200 2450 5550 2450
Connection ~ 5550 2450
Wire Wire Line
	5550 2600 5550 2650
Wire Wire Line
	5550 2050 5550 2100
Wire Wire Line
	5550 3500 5550 3550
Wire Wire Line
	5550 3550 5550 3600
Wire Wire Line
	5550 3700 5550 3750
Wire Wire Line
	5200 3550 5550 3550
Connection ~ 5550 3550
Wire Wire Line
	5550 3200 5550 3150
Wire Wire Line
	4150 900  3950 900 
Wire Wire Line
	4150 1500 3950 1500
Wire Wire Line
	4350 3750 4350 3800
Wire Wire Line
	3000 3800 3000 3900
Wire Wire Line
	3000 3900 3000 3950
Wire Wire Line
	2650 3600 3000 3600
Wire Wire Line
	2400 1550 2400 1650
Wire Wire Line
	4150 1600 4050 1600
Wire Wire Line
	4050 1600 4050 1650
Wire Wire Line
	4050 1050 4050 1000
Wire Wire Line
	4050 1000 4150 1000
Wire Wire Line
	5050 850  5050 900 
Wire Wire Line
	4450 2900 4700 2900
Wire Wire Line
	1300 3450 1500 3450
Wire Wire Line
	1250 3550 1500 3550
Wire Wire Line
	1250 3650 1500 3650
Wire Wire Line
	1250 3750 1500 3750
Wire Wire Line
	1250 3850 1500 3850
Wire Wire Line
	1500 3950 1300 3950
Wire Wire Line
	3000 3900 2650 3900
Connection ~ 3000 3900
Wire Wire Line
	3000 3700 2950 3700
Wire Wire Line
	2950 3700 2950 3800
Wire Wire Line
	2950 3800 2850 3800
Connection ~ 4050 3850
Connection ~ 4050 3550
Wire Wire Line
	3950 3550 4050 3550
Wire Wire Line
	4050 3550 4350 3550
Wire Wire Line
	4350 3650 4250 3650
Wire Wire Line
	4250 3650 4250 3850
Wire Wire Line
	4250 3850 4050 3850
Wire Wire Line
	4050 3850 3700 3850
Wire Wire Line
	1750 1250 2100 1250
$Comp
L MCP1700-3302E_TO92 U1
U 1 1 5A466099
P 2400 1250
F 0 "U1" H 2250 1125 50  0000 C CNN
F 1 "MCP1700-3302E_TO92" H 1950 1050 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Narrow_Oval" H 2400 1050 50  0001 C CIN
F 3 "" H 2400 1250 50  0001 C CNN
	1    2400 1250
	-1   0    0    1   
$EndComp
Wire Wire Line
	3350 950  3350 1250
Wire Wire Line
	3350 1250 3300 1250
Wire Wire Line
	3000 1050 3000 1250
Wire Wire Line
	3000 1250 2700 1250
$EndSCHEMATC
