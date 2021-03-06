EESchema Schematic File Version 4
EELAYER 30 0
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
L mows-rescue:ATTINY85-20PU-mows-rescue U2
U 1 1 594FB4D7
P 3000 3300
F 0 "U2" H 1850 3700 50  0000 C CNN
F 1 "ATTINY85-20PU" H 4000 2900 50  0000 C CNN
F 2 "Housings_DIP:DIP-8_W7.62mm" H 4000 3300 50  0001 C CIN
F 3 "" H 3000 3300 50  0001 C CNN
	1    3000 3300
	1    0    0    -1  
$EndComp
$Comp
L mows-rescue:R-mows-rescue R4
U 1 1 594FB5E0
P 4450 1550
F 0 "R4" V 4530 1550 50  0000 C CNN
F 1 "47K" V 4450 1550 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4380 1550 50  0001 C CNN
F 3 "" H 4450 1550 50  0001 C CNN
	1    4450 1550
	1    0    0    -1  
$EndComp
$Comp
L mows-rescue:R-mows-rescue R3
U 1 1 594FB633
P 4450 1150
F 0 "R3" V 4530 1150 50  0000 C CNN
F 1 "22K" V 4450 1150 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4380 1150 50  0001 C CNN
F 3 "" H 4450 1150 50  0001 C CNN
	1    4450 1150
	1    0    0    -1  
$EndComp
$Comp
L mows-rescue:R-mows-rescue R7
U 1 1 594FB669
P 5500 1200
F 0 "R7" V 5580 1200 50  0000 C CNN
F 1 "10K" V 5500 1200 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5430 1200 50  0001 C CNN
F 3 "" H 5500 1200 50  0001 C CNN
	1    5500 1200
	1    0    0    -1  
$EndComp
$Comp
L mows-rescue:D_Schottky-mows-rescue D1
U 1 1 594FB69F
P 2450 1200
F 0 "D1" H 2450 1300 50  0000 C CNN
F 1 "D_Schottky" H 2450 1100 50  0000 C CNN
F 2 "Diodes_THT:D_DO-41_SOD81_P12.70mm_Horizontal" H 2450 1200 50  0001 C CNN
F 3 "" H 2450 1200 50  0001 C CNN
	1    2450 1200
	1    0    0    -1  
$EndComp
$Comp
L mows-rescue:GND-mows-rescue #PWR01
U 1 1 594FC2C3
P 4450 1800
F 0 "#PWR01" H 4450 1550 50  0001 C CNN
F 1 "GND" H 4450 1650 50  0000 C CNN
F 2 "" H 4450 1800 50  0001 C CNN
F 3 "" H 4450 1800 50  0001 C CNN
	1    4450 1800
	1    0    0    -1  
$EndComp
Text Label 4750 1350 0    60   ~ 0
VBATT
$Comp
L mows-rescue:+3V3-mows-rescue #PWR02
U 1 1 594FC5BB
P 950 1150
F 0 "#PWR02" H 950 1000 50  0001 C CNN
F 1 "+3V3" H 950 1290 50  0000 C CNN
F 2 "" H 950 1150 50  0001 C CNN
F 3 "" H 950 1150 50  0001 C CNN
	1    950  1150
	1    0    0    -1  
$EndComp
$Comp
L mows-rescue:GND-mows-rescue #PWR03
U 1 1 594FC61C
P 1550 1600
F 0 "#PWR03" H 1550 1350 50  0001 C CNN
F 1 "GND" H 1550 1450 50  0000 C CNN
F 2 "" H 1550 1600 50  0001 C CNN
F 3 "" H 1550 1600 50  0001 C CNN
	1    1550 1600
	1    0    0    -1  
$EndComp
Text Label 1300 3450 0    60   ~ 0
DHT22
Text Label 1300 3350 0    60   ~ 0
RFTX
Text Label 1300 3250 0    60   ~ 0
W_DIR
Text Label 1300 3050 0    60   ~ 0
RAIN
Text Label 1300 3150 0    60   ~ 0
W_SPD
Text Label 950  3550 0    60   ~ 0
RST
Text Label 1300 3550 0    60   ~ 0
VBATT
Text Label 950  3050 0    60   ~ 0
MOSI
Text Label 950  3150 0    60   ~ 0
MISO
Text Label 950  3250 0    60   ~ 0
SCK
$Comp
L mows-rescue:+3V3-mows-rescue #PWR04
U 1 1 594FD423
P 4600 3050
F 0 "#PWR04" H 4600 2900 50  0001 C CNN
F 1 "+3V3" H 4600 3190 50  0000 C CNN
F 2 "" H 4600 3050 50  0001 C CNN
F 3 "" H 4600 3050 50  0001 C CNN
	1    4600 3050
	1    0    0    -1  
$EndComp
$Comp
L mows-rescue:GND-mows-rescue #PWR05
U 1 1 594FD45E
P 4600 3550
F 0 "#PWR05" H 4600 3300 50  0001 C CNN
F 1 "GND" H 4600 3400 50  0000 C CNN
F 2 "" H 4600 3550 50  0001 C CNN
F 3 "" H 4600 3550 50  0001 C CNN
	1    4600 3550
	1    0    0    -1  
$EndComp
Text Label 950  2200 0    60   ~ 0
MISO
Text Label 950  2300 0    60   ~ 0
MOSI
$Comp
L mows-rescue:GND-mows-rescue #PWR07
U 1 1 594FF0F4
P 1000 2400
F 0 "#PWR07" H 1000 2150 50  0001 C CNN
F 1 "GND" H 1000 2250 50  0000 C CNN
F 2 "" H 1000 2400 50  0001 C CNN
F 3 "" H 1000 2400 50  0001 C CNN
	1    1000 2400
	1    0    0    -1  
$EndComp
Text Label 950  2100 0    60   ~ 0
SCK
Text Label 950  2000 0    60   ~ 0
RST
$Comp
L mows-rescue:R-mows-rescue R5
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
L mows-rescue:R-mows-rescue R6
U 1 1 599B9487
P 5550 3350
F 0 "R6" V 5630 3350 50  0000 C CNN
F 1 "10K" V 5550 3350 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5480 3350 50  0001 C CNN
F 3 "" H 5550 3350 50  0001 C CNN
	1    5550 3350
	1    0    0    -1  
$EndComp
Text Label 5200 1400 0    60   ~ 0
RAIN
$Comp
L mows-rescue:+3V3-mows-rescue #PWR08
U 1 1 599B9EA3
P 5500 1000
F 0 "#PWR08" H 5500 850 50  0001 C CNN
F 1 "+3V3" H 5500 1140 50  0000 C CNN
F 2 "" H 5500 1000 50  0001 C CNN
F 3 "" H 5500 1000 50  0001 C CNN
	1    5500 1000
	1    0    0    -1  
$EndComp
$Comp
L mows-rescue:GND-mows-rescue #PWR09
U 1 1 599BA12B
P 5500 1600
F 0 "#PWR09" H 5500 1350 50  0001 C CNN
F 1 "GND" H 5500 1450 50  0000 C CNN
F 2 "" H 5500 1600 50  0001 C CNN
F 3 "" H 5500 1600 50  0001 C CNN
	1    5500 1600
	1    0    0    -1  
$EndComp
Text Label 5200 2450 0    60   ~ 0
W_SPD
$Comp
L mows-rescue:GND-mows-rescue #PWR010
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
L mows-rescue:GND-mows-rescue #PWR012
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
L mows-rescue:+3V3-mows-rescue #PWR013
U 1 1 599BCCE9
P 5550 2050
F 0 "#PWR013" H 5550 1900 50  0001 C CNN
F 1 "+3V3" H 5550 2190 50  0000 C CNN
F 2 "" H 5550 2050 50  0001 C CNN
F 3 "" H 5550 2050 50  0001 C CNN
	1    5550 2050
	1    0    0    -1  
$EndComp
Text Label 3050 2500 0    60   ~ 0
DHT22
$Comp
L mows-rescue:+3.3V-mows-rescue #PWR014
U 1 1 5A468922
P 3300 2200
F 0 "#PWR014" H 3300 2050 50  0001 C CNN
F 1 "+3.3V" H 3300 2340 50  0000 C CNN
F 2 "" H 3300 2200 50  0001 C CNN
F 3 "" H 3300 2200 50  0001 C CNN
	1    3300 2200
	1    0    0    -1  
$EndComp
$Comp
L mows-rescue:GND-mows-rescue #PWR015
U 1 1 5A46EB40
P 2850 1600
F 0 "#PWR015" H 2850 1350 50  0001 C CNN
F 1 "GND" H 2850 1450 50  0000 C CNN
F 2 "" H 2850 1600 50  0001 C CNN
F 3 "" H 2850 1600 50  0001 C CNN
	1    2850 1600
	1    0    0    -1  
$EndComp
$Comp
L mows-rescue:GND-mows-rescue #PWR016
U 1 1 5A46EB72
P 2850 1000
F 0 "#PWR016" H 2850 750 50  0001 C CNN
F 1 "GND" H 2850 850 50  0000 C CNN
F 2 "" H 2850 1000 50  0001 C CNN
F 3 "" H 2850 1000 50  0001 C CNN
	1    2850 1000
	1    0    0    -1  
$EndComp
$Comp
L mows-rescue:GND-mows-rescue #PWR017
U 1 1 5A472770
P 3700 2450
F 0 "#PWR017" H 3700 2200 50  0001 C CNN
F 1 "GND" H 3700 2300 50  0000 C CNN
F 2 "" H 3700 2450 50  0001 C CNN
F 3 "" H 3700 2450 50  0001 C CNN
	1    3700 2450
	1    0    0    -1  
$EndComp
$Comp
L mows-rescue:Conn_01x02-mows-rescue con_bat1
U 1 1 5A4735FC
P 3150 1450
F 0 "con_bat1" H 3150 1550 50  0000 C CNN
F 1 "BATT" H 3150 1250 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Horizontal" H 3150 1450 50  0001 C CNN
F 3 "" H 3150 1450 50  0001 C CNN
	1    3150 1450
	1    0    0    -1  
$EndComp
$Comp
L mows-rescue:Conn_01x03-mows-rescue J2
U 1 1 5A4740C8
P 2550 2350
F 0 "J2" H 2550 2550 50  0000 C CNN
F 1 "STX882" V 2650 2350 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 2550 2350 50  0001 C CNN
F 3 "" H 2550 2350 50  0001 C CNN
	1    2550 2350
	1    0    0    -1  
$EndComp
$Comp
L mows-rescue:GND-mows-rescue #PWR018
U 1 1 5A475913
P 2350 2600
F 0 "#PWR018" H 2350 2350 50  0001 C CNN
F 1 "GND" H 2350 2450 50  0000 C CNN
F 2 "" H 2350 2600 50  0001 C CNN
F 3 "" H 2350 2600 50  0001 C CNN
	1    2350 2600
	1    0    0    -1  
$EndComp
Text Label 2150 2250 0    60   ~ 0
RFTX
$Comp
L mows-rescue:+BATT-mows-rescue #PWR021
U 1 1 5A4793EE
P 4450 950
F 0 "#PWR021" H 4450 800 50  0001 C CNN
F 1 "+BATT" H 4450 1090 50  0000 C CNN
F 2 "" H 4450 950 50  0001 C CNN
F 3 "" H 4450 950 50  0001 C CNN
	1    4450 950 
	1    0    0    -1  
$EndComp
$Comp
L mows-rescue:R-mows-rescue R1
U 1 1 5A469C7F
P 2000 2400
F 0 "R1" V 2080 2400 50  0000 C CNN
F 1 "10K" V 2000 2400 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1930 2400 50  0001 C CNN
F 3 "" H 2000 2400 50  0001 C CNN
	1    2000 2400
	1    0    0    -1  
$EndComp
$Comp
L mows-rescue:R-mows-rescue R2
U 1 1 5A46B1D0
P 3400 2350
F 0 "R2" V 3480 2350 50  0000 C CNN
F 1 "10K" V 3400 2350 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3330 2350 50  0001 C CNN
F 3 "" H 3400 2350 50  0001 C CNN
	1    3400 2350
	1    0    0    -1  
$EndComp
$Comp
L mows-rescue:Conn_01x03-mows-rescue J3
U 1 1 5A47AFD5
P 3900 2300
F 0 "J3" H 3900 2500 50  0000 C CNN
F 1 "DHT22" V 4000 2300 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Horizontal" H 3900 2300 50  0001 C CNN
F 3 "" H 3900 2300 50  0001 C CNN
	1    3900 2300
	1    0    0    -1  
$EndComp
$Comp
L mows-rescue:Conn_01x02-mows-rescue J5
U 1 1 5A47B11F
P 5750 3600
F 0 "J5" H 5750 3700 50  0000 C CNN
F 1 "WDIR" V 5850 3550 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Horizontal" H 5750 3600 50  0001 C CNN
F 3 "" H 5750 3600 50  0001 C CNN
	1    5750 3600
	1    0    0    -1  
$EndComp
$Comp
L mows-rescue:Conn_01x02-mows-rescue J4
U 1 1 5A47B19E
P 5750 2500
F 0 "J4" H 5750 2600 50  0000 C CNN
F 1 "WSPD" V 5850 2450 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Horizontal" H 5750 2500 50  0001 C CNN
F 3 "" H 5750 2500 50  0001 C CNN
	1    5750 2500
	1    0    0    -1  
$EndComp
$Comp
L mows-rescue:Conn_01x02-mows-rescue J6
U 1 1 5A47B467
P 5700 1450
F 0 "J6" H 5700 1550 50  0000 C CNN
F 1 "RAIN" V 5800 1400 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Horizontal" H 5700 1450 50  0001 C CNN
F 3 "" H 5700 1450 50  0001 C CNN
	1    5700 1450
	1    0    0    -1  
$EndComp
$Comp
L mows-rescue:+BATT-mows-rescue #PWR022
U 1 1 5A82E3BB
P 2200 2450
F 0 "#PWR022" H 2200 2300 50  0001 C CNN
F 1 "+BATT" H 2200 2590 50  0000 C CNN
F 2 "" H 2200 2450 50  0001 C CNN
F 3 "" H 2200 2450 50  0001 C CNN
	1    2200 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 1300 4450 1350
Wire Wire Line
	4450 1350 4450 1400
Wire Wire Line
	4450 1700 4450 1800
Wire Wire Line
	4450 1350 4750 1350
Connection ~ 4450 1350
Wire Wire Line
	950  3050 1650 3050
Wire Wire Line
	1650 3450 1300 3450
Wire Wire Line
	1650 3350 1300 3350
Wire Wire Line
	950  3150 1650 3150
Wire Wire Line
	950  3250 1650 3250
Wire Wire Line
	950  3550 1650 3550
Wire Wire Line
	4350 3050 4600 3050
Wire Wire Line
	5500 1350 5500 1400
Wire Wire Line
	5500 1400 5500 1450
Wire Wire Line
	5200 1400 5500 1400
Connection ~ 5500 1400
Wire Wire Line
	5500 1550 5500 1600
Wire Wire Line
	5500 1000 5500 1050
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
	3700 2400 3700 2450
Wire Wire Line
	2350 2450 2350 2550
Wire Wire Line
	2350 2550 2350 2600
Wire Wire Line
	2000 2250 2350 2250
Wire Wire Line
	1550 1500 1550 1600
Wire Wire Line
	2950 1550 2850 1550
Wire Wire Line
	2850 1550 2850 1600
Wire Wire Line
	2850 1000 2850 950 
Wire Wire Line
	2850 950  2950 950 
Wire Wire Line
	4450 950  4450 1000
Wire Wire Line
	4350 3550 4600 3550
Wire Wire Line
	950  2000 1200 2000
Wire Wire Line
	950  2100 1200 2100
Wire Wire Line
	950  2200 1200 2200
Wire Wire Line
	950  2300 1200 2300
Wire Wire Line
	1200 2400 1000 2400
Wire Wire Line
	2350 2550 2000 2550
Connection ~ 2350 2550
Wire Wire Line
	2350 2350 2300 2350
Wire Wire Line
	2300 2350 2300 2450
Wire Wire Line
	2300 2450 2200 2450
Connection ~ 3400 2500
Connection ~ 3400 2200
Wire Wire Line
	3300 2200 3400 2200
Wire Wire Line
	3400 2200 3700 2200
Wire Wire Line
	3700 2300 3600 2300
Wire Wire Line
	3600 2300 3600 2500
Wire Wire Line
	3600 2500 3400 2500
Wire Wire Line
	3400 2500 3050 2500
$Comp
L mows-rescue:MCP1700-3302E_TO92-mows-rescue U1
U 1 1 5A466099
P 1550 1200
F 0 "U1" H 1400 1075 50  0000 C CNN
F 1 "MCP1700-3302E_TO92" H 1100 1000 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Narrow_Oval" H 1550 1000 50  0001 C CIN
F 3 "" H 1550 1200 50  0001 C CNN
	1    1550 1200
	-1   0    0    1   
$EndComp
Wire Wire Line
	2650 1200 2600 1200
Wire Wire Line
	2300 1200 2200 1200
Wire Wire Line
	2200 1450 2200 1200
Connection ~ 2200 1200
Wire Wire Line
	2650 850  2650 1200
Wire Wire Line
	2200 1450 2950 1450
Wire Wire Line
	2950 850  2650 850 
Wire Wire Line
	950  1150 950  1200
Wire Wire Line
	950  1200 1250 1200
$Comp
L mows-rescue:Conn_01x05-Connector_Generic J1
U 1 1 5DB2544D
P 1400 2200
F 0 "J1" H 1480 2242 50  0000 L CNN
F 1 "Conn_01x05" H 1480 2151 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x05_P2.54mm_Vertical" H 1400 2200 50  0001 C CNN
F 3 "~" H 1400 2200 50  0001 C CNN
	1    1400 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 1200 2200 1200
$Comp
L mows-rescue:+3V3-mows-rescue #PWR0101
U 1 1 5DB62A68
P 5550 3150
F 0 "#PWR0101" H 5550 3000 50  0001 C CNN
F 1 "+3V3" H 5550 3290 50  0000 C CNN
F 2 "" H 5550 3150 50  0001 C CNN
F 3 "" H 5550 3150 50  0001 C CNN
	1    5550 3150
	1    0    0    -1  
$EndComp
$Comp
L mows-rescue:Conn_01x02-mows-rescue con_sun1
U 1 1 5A47356F
P 3150 850
F 0 "con_sun1" H 3150 950 50  0000 C CNN
F 1 "SUN" H 3150 650 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Horizontal" H 3150 850 50  0001 C CNN
F 3 "" H 3150 850 50  0001 C CNN
	1    3150 850 
	1    0    0    -1  
$EndComp
Text Label 2750 1450 0    50   ~ 0
+BATT
$EndSCHEMATC
