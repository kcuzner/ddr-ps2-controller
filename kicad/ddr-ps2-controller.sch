EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "DDR PS2 Controller"
Date "2020-10-25"
Rev "B"
Comp "Kevin Cuzner"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_01x03 J1
U 1 1 5CF75D2F
P 1300 2050
F 0 "J1" H 1218 2367 50  0000 C CNN
F 1 "BTN0" H 1218 2276 50  0000 C CNN
F 2 "ddr-ps2-controller:JST_EH_3_RA" H 1300 2050 50  0001 C CNN
F 3 "~" H 1300 2050 50  0001 C CNN
F 4 "455-1626-ND" H 1300 2050 50  0001 C CNN "Part Number"
	1    1300 2050
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J2
U 1 1 5CF7683B
P 1300 2550
F 0 "J2" H 1218 2867 50  0000 C CNN
F 1 "BTN1" H 1218 2776 50  0000 C CNN
F 2 "ddr-ps2-controller:JST_EH_3_RA" H 1300 2550 50  0001 C CNN
F 3 "~" H 1300 2550 50  0001 C CNN
F 4 "455-1626-ND" H 1300 2550 50  0001 C CNN "Part Number"
	1    1300 2550
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J3
U 1 1 5CF76DC5
P 1300 3050
F 0 "J3" H 1218 3367 50  0000 C CNN
F 1 "BTN2" H 1218 3276 50  0000 C CNN
F 2 "ddr-ps2-controller:JST_EH_3_RA" H 1300 3050 50  0001 C CNN
F 3 "~" H 1300 3050 50  0001 C CNN
F 4 "455-1626-ND" H 1300 3050 50  0001 C CNN "Part Number"
	1    1300 3050
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J4
U 1 1 5CF770B2
P 1300 3550
F 0 "J4" H 1218 3867 50  0000 C CNN
F 1 "BTN3" H 1218 3776 50  0000 C CNN
F 2 "ddr-ps2-controller:JST_EH_3_RA" H 1300 3550 50  0001 C CNN
F 3 "~" H 1300 3550 50  0001 C CNN
F 4 "455-1626-ND" H 1300 3550 50  0001 C CNN "Part Number"
	1    1300 3550
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5CF778DC
P 1600 3750
F 0 "#PWR0101" H 1600 3500 50  0001 C CNN
F 1 "GND" H 1605 3577 50  0000 C CNN
F 2 "" H 1600 3750 50  0001 C CNN
F 3 "" H 1600 3750 50  0001 C CNN
	1    1600 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 3750 1600 3650
Wire Wire Line
	1600 2150 1500 2150
Wire Wire Line
	1500 2650 1600 2650
Connection ~ 1600 2650
Wire Wire Line
	1600 2650 1600 2150
Wire Wire Line
	1500 3150 1600 3150
Connection ~ 1600 3150
Wire Wire Line
	1600 3150 1600 2650
Wire Wire Line
	1500 3650 1600 3650
Connection ~ 1600 3650
Wire Wire Line
	1600 3650 1600 3150
$Comp
L Connector_Generic:Conn_01x03 J7
U 1 1 5CF7850F
P 9450 1550
F 0 "J7" H 9530 1592 50  0000 L CNN
F 1 "BTN4" H 9530 1501 50  0000 L CNN
F 2 "ddr-ps2-controller:JST_EH_3_RA" H 9450 1550 50  0001 C CNN
F 3 "~" H 9450 1550 50  0001 C CNN
F 4 "455-1626-ND" H 9450 1550 50  0001 C CNN "Part Number"
	1    9450 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5CF796B0
P 2100 1050
F 0 "R1" H 2170 1096 50  0000 L CNN
F 1 "10K" H 2170 1005 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2030 1050 50  0001 C CNN
F 3 "~" H 2100 1050 50  0001 C CNN
	1    2100 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5CF7AD28
P 2400 1050
F 0 "R2" H 2470 1096 50  0000 L CNN
F 1 "10K" H 2470 1005 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2330 1050 50  0001 C CNN
F 3 "~" H 2400 1050 50  0001 C CNN
	1    2400 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5CF7B089
P 2700 1050
F 0 "R3" H 2770 1096 50  0000 L CNN
F 1 "10K" H 2770 1005 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2630 1050 50  0001 C CNN
F 3 "~" H 2700 1050 50  0001 C CNN
	1    2700 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5CF7B4BF
P 3000 1050
F 0 "R4" H 3070 1096 50  0000 L CNN
F 1 "10K" H 3070 1005 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2930 1050 50  0001 C CNN
F 3 "~" H 3000 1050 50  0001 C CNN
	1    3000 1050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 5CF7B84E
P 1700 700
F 0 "#PWR0102" H 1700 550 50  0001 C CNN
F 1 "+5V" H 1715 873 50  0000 C CNN
F 2 "" H 1700 700 50  0001 C CNN
F 3 "" H 1700 700 50  0001 C CNN
	1    1700 700 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 800  2400 800 
Wire Wire Line
	3000 800  3000 900 
Wire Wire Line
	2100 800  2100 900 
Wire Wire Line
	2400 900  2400 800 
Connection ~ 2400 800 
Wire Wire Line
	2400 800  2700 800 
Wire Wire Line
	2700 900  2700 800 
Connection ~ 2700 800 
Wire Wire Line
	2700 800  3000 800 
Wire Wire Line
	1500 1950 1700 1950
Wire Wire Line
	1700 1950 1700 800 
Wire Wire Line
	2100 800  1700 800 
Connection ~ 2100 800 
Connection ~ 1700 800 
Wire Wire Line
	1700 800  1700 700 
Wire Wire Line
	1700 2450 1700 1950
Connection ~ 1700 1950
Wire Wire Line
	1500 2950 1700 2950
Wire Wire Line
	1700 2950 1700 2450
Connection ~ 1700 2450
Wire Wire Line
	1500 2450 1700 2450
Wire Wire Line
	1500 3450 1700 3450
Wire Wire Line
	1700 3450 1700 2950
Connection ~ 1700 2950
Wire Wire Line
	1500 2050 2100 2050
Wire Wire Line
	2100 2050 2100 1200
Wire Wire Line
	1500 2550 2400 2550
Wire Wire Line
	2400 2550 2400 1200
Wire Wire Line
	1500 3050 2700 3050
Wire Wire Line
	2700 3050 2700 1200
Wire Wire Line
	1500 3550 3000 3550
Wire Wire Line
	3000 3550 3000 1200
$Comp
L power:+5V #PWR0103
U 1 1 5CF83AA1
P 9150 1350
F 0 "#PWR0103" H 9150 1200 50  0001 C CNN
F 1 "+5V" H 9165 1523 50  0000 C CNN
F 2 "" H 9150 1350 50  0001 C CNN
F 3 "" H 9150 1350 50  0001 C CNN
	1    9150 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5CF8404B
P 9150 1750
F 0 "#PWR0104" H 9150 1500 50  0001 C CNN
F 1 "GND" H 9155 1577 50  0000 C CNN
F 2 "" H 9150 1750 50  0001 C CNN
F 3 "" H 9150 1750 50  0001 C CNN
	1    9150 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 1750 9150 1650
Wire Wire Line
	9150 1650 9250 1650
Wire Wire Line
	9250 1450 9150 1450
Wire Wire Line
	9150 1450 9150 1350
$Comp
L Device:LED D1
U 1 1 5CF854E8
P 5450 1100
F 0 "D1" V 5489 983 50  0000 R CNN
F 1 "LED" V 5398 983 50  0000 R CNN
F 2 "ddr-ps2-controller:Wurth_WL-SMSW_LED" H 5450 1100 50  0001 C CNN
F 3 "~" H 5450 1100 50  0001 C CNN
F 4 "732-12021-1-ND" H 5450 1100 50  0001 C CNN "Part Number"
	1    5450 1100
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D2
U 1 1 5CF85C58
P 5800 1100
F 0 "D2" V 5839 983 50  0000 R CNN
F 1 "LED" V 5748 983 50  0000 R CNN
F 2 "ddr-ps2-controller:Wurth_WL-SMSW_LED" H 5800 1100 50  0001 C CNN
F 3 "~" H 5800 1100 50  0001 C CNN
F 4 "732-12021-1-ND" H 5800 1100 50  0001 C CNN "Part Number"
	1    5800 1100
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D3
U 1 1 5CF862DD
P 6150 1100
F 0 "D3" V 6189 983 50  0000 R CNN
F 1 "LED" V 6098 983 50  0000 R CNN
F 2 "ddr-ps2-controller:Wurth_WL-SMSW_LED" H 6150 1100 50  0001 C CNN
F 3 "~" H 6150 1100 50  0001 C CNN
F 4 "732-12021-1-ND" H 6150 1100 50  0001 C CNN "Part Number"
	1    6150 1100
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D4
U 1 1 5CF866A1
P 6500 1100
F 0 "D4" V 6539 983 50  0000 R CNN
F 1 "LED" V 6448 983 50  0000 R CNN
F 2 "ddr-ps2-controller:Wurth_WL-SMSW_LED" H 6500 1100 50  0001 C CNN
F 3 "~" H 6500 1100 50  0001 C CNN
F 4 "732-12021-1-ND" H 6500 1100 50  0001 C CNN "Part Number"
	1    6500 1100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6500 800  6500 950 
Connection ~ 3000 800 
Wire Wire Line
	6150 950  6150 800 
Connection ~ 6150 800 
Wire Wire Line
	6150 800  6350 800 
Wire Wire Line
	5800 950  5800 800 
Connection ~ 5800 800 
Wire Wire Line
	5800 800  6000 800 
Wire Wire Line
	5450 950  5450 800 
Connection ~ 5450 800 
Wire Wire Line
	5450 800  5650 800 
$Comp
L power:GND #PWR0105
U 1 1 5D047E3C
P 2500 6300
F 0 "#PWR0105" H 2500 6050 50  0001 C CNN
F 1 "GND" H 2505 6127 50  0000 C CNN
F 2 "" H 2500 6300 50  0001 C CNN
F 3 "" H 2500 6300 50  0001 C CNN
	1    2500 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 6200 2500 6300
Wire Wire Line
	3000 800  5450 800 
$Comp
L ddr-ps2-controller-rescue:ATtiny20-MMH-MCU_Microchip_ATtiny U1
U 1 1 5D070DC4
P 2500 5300
F 0 "U1" H 1956 5346 50  0000 R CNN
F 1 "ATtiny20-MMH" H 1956 5255 50  0000 R CNN
F 2 "Package_DFN_QFN:QFN-20-1EP_3x3mm_P0.45mm_EP1.6x1.6mm" H 2500 5300 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-8235-8-bit-avr-microcontroller-attiny20_datasheet.pdf" H 2500 5300 50  0001 C CNN
F 4 "ATTINY20-MMH-ND" H 2500 5300 50  0001 C CNN "Part Number"
	1    2500 5300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 5D079995
P 2500 4300
F 0 "#PWR0106" H 2500 4150 50  0001 C CNN
F 1 "+5V" H 2515 4473 50  0000 C CNN
F 2 "" H 2500 4300 50  0001 C CNN
F 3 "" H 2500 4300 50  0001 C CNN
	1    2500 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 4300 2500 4400
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J5
U 1 1 5D07BD0F
P 5700 7200
F 0 "J5" H 5750 7617 50  0000 C CNN
F 1 "ISCP" H 5750 7526 50  0000 C CNN
F 2 "ddr-ps2-controller:CnC_3020_10_0300" H 5700 7200 50  0001 C CNN
F 3 "~" H 5700 7200 50  0001 C CNN
	1    5700 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5D081D6A
P 1050 5350
F 0 "C2" H 1165 5396 50  0000 L CNN
F 1 "0.1u" H 1165 5305 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 1088 5200 50  0001 C CNN
F 3 "~" H 1050 5350 50  0001 C CNN
	1    1050 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5D082823
P 700 5350
F 0 "C1" H 815 5396 50  0000 L CNN
F 1 "10u" H 815 5305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 738 5200 50  0001 C CNN
F 3 "~" H 700 5350 50  0001 C CNN
	1    700  5350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5D08347A
P 700 5700
F 0 "#PWR0107" H 700 5450 50  0001 C CNN
F 1 "GND" H 705 5527 50  0000 C CNN
F 2 "" H 700 5700 50  0001 C CNN
F 3 "" H 700 5700 50  0001 C CNN
	1    700  5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  5700 700  5600
Wire Wire Line
	700  5600 1050 5600
Wire Wire Line
	1050 5600 1050 5500
Connection ~ 700  5600
Wire Wire Line
	700  5600 700  5500
$Comp
L power:+5V #PWR0108
U 1 1 5D085C5E
P 700 5000
F 0 "#PWR0108" H 700 4850 50  0001 C CNN
F 1 "+5V" H 715 5173 50  0000 C CNN
F 2 "" H 700 5000 50  0001 C CNN
F 3 "" H 700 5000 50  0001 C CNN
	1    700  5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  5000 700  5100
Wire Wire Line
	700  5100 1050 5100
Wire Wire Line
	1050 5100 1050 5200
Connection ~ 700  5100
Wire Wire Line
	700  5100 700  5200
$Comp
L Connector_Generic:Conn_01x03 J8
U 1 1 5D08E920
P 9450 2450
F 0 "J8" H 9530 2492 50  0000 L CNN
F 1 "BTN5/UPSTREAM" H 9530 2401 50  0000 L CNN
F 2 "ddr-ps2-controller:JST_EH_3_RA" H 9450 2450 50  0001 C CNN
F 3 "~" H 9450 2450 50  0001 C CNN
F 4 "455-1626-ND" H 9450 2450 50  0001 C CNN "Part Number"
	1    9450 2450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0109
U 1 1 5D08E926
P 9150 2250
F 0 "#PWR0109" H 9150 2100 50  0001 C CNN
F 1 "+5V" H 9165 2423 50  0000 C CNN
F 2 "" H 9150 2250 50  0001 C CNN
F 3 "" H 9150 2250 50  0001 C CNN
	1    9150 2250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5D08E92C
P 9150 2650
F 0 "#PWR0110" H 9150 2400 50  0001 C CNN
F 1 "GND" H 9155 2477 50  0000 C CNN
F 2 "" H 9150 2650 50  0001 C CNN
F 3 "" H 9150 2650 50  0001 C CNN
	1    9150 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 2650 9150 2550
Wire Wire Line
	9150 2550 9250 2550
Wire Wire Line
	9250 2350 9150 2350
Wire Wire Line
	9150 2350 9150 2250
$Comp
L ddr-ps2-controller:MIC2860-P U2
U 1 1 5D0AEDAC
P 4800 2150
F 0 "U2" H 4800 1850 50  0000 C CNN
F 1 "MIC2860-P" H 4800 2474 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 4500 2550 50  0001 C CNN
F 3 "" H 4500 2550 50  0001 C CNN
F 4 "576-3897-1-ND" H 4800 2150 50  0001 C CNN "Part Number"
	1    4800 2150
	1    0    0    -1  
$EndComp
$Comp
L ddr-ps2-controller:MIC2860-P U3
U 1 1 5D0BC395
P 4800 2850
F 0 "U3" H 4800 2550 50  0000 C CNN
F 1 "MIC2860-P" H 4800 3174 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 4500 3250 50  0001 C CNN
F 3 "" H 4500 3250 50  0001 C CNN
F 4 "576-3897-1-ND" H 4800 2850 50  0001 C CNN "Part Number"
	1    4800 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 2000 5450 2000
Wire Wire Line
	5450 2000 5450 1750
Wire Wire Line
	5200 2150 5800 2150
Wire Wire Line
	5800 2150 5800 1750
Wire Wire Line
	5200 2700 6150 2700
Wire Wire Line
	6150 2700 6150 1750
Wire Wire Line
	5200 2850 6500 2850
Wire Wire Line
	6500 2850 6500 1750
$Comp
L power:GND #PWR0111
U 1 1 5D0C6C9F
P 4300 3100
F 0 "#PWR0111" H 4300 2850 50  0001 C CNN
F 1 "GND" H 4305 2927 50  0000 C CNN
F 2 "" H 4300 3100 50  0001 C CNN
F 3 "" H 4300 3100 50  0001 C CNN
	1    4300 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 3100 4300 3000
Wire Wire Line
	4300 2300 4400 2300
Wire Wire Line
	4400 3000 4300 3000
Connection ~ 4300 3000
Wire Wire Line
	4300 3000 4300 2300
$Comp
L Device:C C3
U 1 1 5D0C9FE7
P 4650 3700
F 0 "C3" H 4765 3746 50  0000 L CNN
F 1 "1u" H 4765 3655 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 4688 3550 50  0001 C CNN
F 3 "~" H 4650 3700 50  0001 C CNN
	1    4650 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5D0CBA2C
P 5000 3700
F 0 "C4" H 5115 3746 50  0000 L CNN
F 1 "1u" H 5115 3655 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 5038 3550 50  0001 C CNN
F 3 "~" H 5000 3700 50  0001 C CNN
	1    5000 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5D0CC96F
P 4650 4050
F 0 "#PWR0112" H 4650 3800 50  0001 C CNN
F 1 "GND" H 4655 3877 50  0000 C CNN
F 2 "" H 4650 4050 50  0001 C CNN
F 3 "" H 4650 4050 50  0001 C CNN
	1    4650 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 4050 4650 3950
Wire Wire Line
	4650 3950 5000 3950
Wire Wire Line
	5000 3950 5000 3850
Connection ~ 4650 3950
Wire Wire Line
	4650 3950 4650 3850
$Comp
L power:+5V #PWR0113
U 1 1 5D0D0609
P 4650 3350
F 0 "#PWR0113" H 4650 3200 50  0001 C CNN
F 1 "+5V" H 4665 3523 50  0000 C CNN
F 2 "" H 4650 3350 50  0001 C CNN
F 3 "" H 4650 3350 50  0001 C CNN
	1    4650 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3350 4650 3450
Wire Wire Line
	4650 3450 5000 3450
Wire Wire Line
	5000 3450 5000 3550
Connection ~ 4650 3450
Wire Wire Line
	4650 3450 4650 3550
$Comp
L Device:R R9
U 1 1 5D0DD739
P 5400 3650
F 0 "R9" H 5470 3696 50  0000 L CNN
F 1 "R" H 5470 3605 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5330 3650 50  0001 C CNN
F 3 "~" H 5400 3650 50  0001 C CNN
	1    5400 3650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0114
U 1 1 5D0DF836
P 4200 1900
F 0 "#PWR0114" H 4200 1750 50  0001 C CNN
F 1 "+5V" H 4215 2073 50  0000 C CNN
F 2 "" H 4200 1900 50  0001 C CNN
F 3 "" H 4200 1900 50  0001 C CNN
	1    4200 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 1900 4200 2000
Wire Wire Line
	4200 2700 4400 2700
Wire Wire Line
	4400 2000 4200 2000
Connection ~ 4200 2000
Wire Wire Line
	4200 2000 4200 2700
$Comp
L power:GND #PWR0115
U 1 1 5D0F43C9
P 5400 4050
F 0 "#PWR0115" H 5400 3800 50  0001 C CNN
F 1 "GND" H 5405 3877 50  0000 C CNN
F 2 "" H 5400 4050 50  0001 C CNN
F 3 "" H 5400 4050 50  0001 C CNN
	1    5400 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 4050 5400 3800
Wire Wire Line
	5200 3000 5400 3000
Wire Wire Line
	5400 3000 5400 3500
Text Notes 3900 1250 0    50   ~ 0
LED colors:\n\n- Red: 732-12023-1-ND\n- Blue: 732-12021-1-ND
$Comp
L power:GND #PWR04
U 1 1 5CFCDF14
P 6100 7550
F 0 "#PWR04" H 6100 7300 50  0001 C CNN
F 1 "GND" H 6105 7377 50  0000 C CNN
F 2 "" H 6100 7550 50  0001 C CNN
F 3 "" H 6100 7550 50  0001 C CNN
	1    6100 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 7550 6100 7400
Wire Wire Line
	6100 7300 6000 7300
Wire Wire Line
	6000 7400 6100 7400
Connection ~ 6100 7400
Wire Wire Line
	6100 7400 6100 7300
NoConn ~ 6000 7100
NoConn ~ 6000 7200
Wire Wire Line
	3100 5900 3500 5900
Wire Wire Line
	3500 7200 5500 7200
$Comp
L Connector_Generic:Conn_01x09 J6
U 1 1 5CFED000
P 8950 5100
F 0 "J6" H 9030 5142 50  0000 L CNN
F 1 "PS2" H 9030 5051 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x09_P2.54mm_Vertical" H 8950 5100 50  0001 C CNN
F 3 "~" H 8950 5100 50  0001 C CNN
	1    8950 5100
	1    0    0    -1  
$EndComp
NoConn ~ 8750 4900
Text Notes 9250 5500 0    50   ~ 0
PS2 Connector Pinout:\n1: DAT\n2: CMD\n3: N/C (Vibrations)\n4: GND\n5: VCC\n6: ATT\n7: CLK\n8: N/C\n9: ACK
$Comp
L power:GND #PWR09
U 1 1 5D0078CD
P 8650 5600
F 0 "#PWR09" H 8650 5350 50  0001 C CNN
F 1 "GND" H 8655 5427 50  0000 C CNN
F 2 "" H 8650 5600 50  0001 C CNN
F 3 "" H 8650 5600 50  0001 C CNN
	1    8650 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 5600 8650 5000
Wire Wire Line
	8650 5000 8750 5000
$Comp
L power:+5V #PWR08
U 1 1 5D00BD6A
P 8500 4100
F 0 "#PWR08" H 8500 3950 50  0001 C CNN
F 1 "+5V" H 8515 4273 50  0000 C CNN
F 2 "" H 8500 4100 50  0001 C CNN
F 3 "" H 8500 4100 50  0001 C CNN
	1    8500 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 5100 8500 5100
Wire Wire Line
	8500 5100 8500 4150
NoConn ~ 8750 5400
Wire Wire Line
	6250 5300 6250 5200
Wire Wire Line
	6250 5200 8750 5200
Text Label 5250 5300 0    50   ~ 0
SS#
$Comp
L Device:R R7
U 1 1 5D033998
P 4600 5800
F 0 "R7" V 4393 5800 50  0000 C CNN
F 1 "0" V 4484 5800 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4530 5800 50  0001 C CNN
F 3 "~" H 4600 5800 50  0001 C CNN
	1    4600 5800
	0    1    1    0   
$EndComp
Wire Wire Line
	4350 5700 4350 4800
Wire Wire Line
	4350 4800 8750 4800
Text Label 3800 5700 0    50   ~ 0
MOSI
Wire Wire Line
	4450 5800 4050 5800
Text Label 3800 5800 0    50   ~ 0
MISO
Text Label 4850 5800 0    50   ~ 0
MISO_GATE
Wire Wire Line
	5300 5800 4750 5800
$Comp
L power:GND #PWR02
U 1 1 5D06A0FA
P 5600 6100
F 0 "#PWR02" H 5600 5850 50  0001 C CNN
F 1 "GND" H 5605 5927 50  0000 C CNN
F 2 "" H 5600 6100 50  0001 C CNN
F 3 "" H 5600 6100 50  0001 C CNN
	1    5600 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 6100 5600 6000
Text Label 5850 4700 0    50   ~ 0
MISO_OD
Wire Wire Line
	8750 4700 8000 4700
Wire Wire Line
	5600 4700 5600 5600
Wire Wire Line
	6350 5400 6350 5300
Wire Wire Line
	6350 5300 8750 5300
Text Label 5250 5400 0    50   ~ 0
SCK
$Comp
L Device:R R8
U 1 1 5D07E140
P 4600 6500
F 0 "R8" V 4393 6500 50  0000 C CNN
F 1 "R" V 4484 6500 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4530 6500 50  0001 C CNN
F 3 "~" H 4600 6500 50  0001 C CNN
	1    4600 6500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5D088BEC
P 6300 6800
F 0 "#PWR05" H 6300 6550 50  0001 C CNN
F 1 "GND" H 6305 6627 50  0000 C CNN
F 2 "" H 6300 6800 50  0001 C CNN
F 3 "" H 6300 6800 50  0001 C CNN
	1    6300 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 6800 6300 6700
$Comp
L Device:R R12
U 1 1 5D08DED6
P 8000 4450
F 0 "R12" H 8070 4496 50  0000 L CNN
F 1 "SPR" H 8070 4405 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7930 4450 50  0001 C CNN
F 3 "~" H 8000 4450 50  0001 C CNN
	1    8000 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 4150 8000 4150
Wire Wire Line
	8000 4150 8000 4300
Connection ~ 8500 4150
Wire Wire Line
	8500 4150 8500 4100
Wire Wire Line
	8000 4600 8000 4700
Connection ~ 8000 4700
Wire Wire Line
	8000 4700 5600 4700
Wire Wire Line
	8750 5500 7650 5500
Wire Wire Line
	6300 5500 6300 6300
$Comp
L Device:R R11
U 1 1 5D0ACC61
P 7650 4450
F 0 "R11" H 7720 4496 50  0000 L CNN
F 1 "SPR" H 7720 4405 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7580 4450 50  0001 C CNN
F 3 "~" H 7650 4450 50  0001 C CNN
	1    7650 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 4600 7650 5500
Connection ~ 7650 5500
Wire Wire Line
	7650 5500 6300 5500
Wire Wire Line
	7650 4300 7650 4150
Wire Wire Line
	7650 4150 8000 4150
Connection ~ 8000 4150
Wire Wire Line
	4750 6500 6000 6500
Wire Wire Line
	4450 6500 4250 6500
Wire Wire Line
	4250 6500 4250 5600
Wire Wire Line
	4250 5600 3600 5600
Text Label 3800 5600 0    50   ~ 0
ACK
Text Label 4950 6500 0    50   ~ 0
ACK_GATE
Text Label 7050 5500 0    50   ~ 0
ACK_OD
Text Label 4450 7200 0    50   ~ 0
RESET#
Wire Wire Line
	3100 4700 3100 2050
Wire Wire Line
	3100 2050 2100 2050
Connection ~ 2100 2050
Wire Wire Line
	2400 2550 3200 2550
Wire Wire Line
	3200 2550 3200 4800
Wire Wire Line
	3200 4800 3100 4800
Connection ~ 2400 2550
Text Label 2200 2050 0    50   ~ 0
BTN0
Text Label 2200 2550 0    50   ~ 0
BTN1
Text Label 2200 3050 0    50   ~ 0
BTN2
Text Label 2200 3550 0    50   ~ 0
BTN3
Wire Wire Line
	3100 4900 3300 4900
Wire Wire Line
	3300 4900 3300 3050
Wire Wire Line
	3300 3050 2700 3050
Connection ~ 2700 3050
Wire Wire Line
	3100 5000 3400 5000
Wire Wire Line
	3400 5000 3400 3550
Wire Wire Line
	3400 3550 3000 3550
Connection ~ 3000 3550
$Comp
L Device:R R14
U 1 1 5D0E87A9
P 8500 1100
F 0 "R14" H 8570 1146 50  0000 L CNN
F 1 "10K" H 8570 1055 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 8430 1100 50  0001 C CNN
F 3 "~" H 8500 1100 50  0001 C CNN
	1    8500 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 5D0E9988
P 8200 1100
F 0 "R13" H 8270 1146 50  0000 L CNN
F 1 "10K" H 8270 1055 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 8130 1100 50  0001 C CNN
F 3 "~" H 8200 1100 50  0001 C CNN
	1    8200 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 1550 8500 1550
Wire Wire Line
	8500 1550 8500 1250
Wire Wire Line
	9250 2450 8200 2450
Wire Wire Line
	8200 2450 8200 1250
Wire Wire Line
	8200 950  8200 800 
Wire Wire Line
	8200 800  6700 800 
Connection ~ 6500 800 
Wire Wire Line
	8200 800  8500 800 
Wire Wire Line
	8500 800  8500 950 
Connection ~ 8200 800 
$Comp
L Device:R R10
U 1 1 5D10E524
P 5750 3650
F 0 "R10" H 5820 3696 50  0000 L CNN
F 1 "R" H 5820 3605 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5680 3650 50  0001 C CNN
F 3 "~" H 5750 3650 50  0001 C CNN
	1    5750 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5D10E52A
P 5750 4050
F 0 "#PWR03" H 5750 3800 50  0001 C CNN
F 1 "GND" H 5755 3877 50  0000 C CNN
F 2 "" H 5750 4050 50  0001 C CNN
F 3 "" H 5750 4050 50  0001 C CNN
	1    5750 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 4050 5750 3800
Wire Wire Line
	5750 3500 5750 2300
Wire Wire Line
	5750 2300 5200 2300
Text Label 8000 1550 0    50   ~ 0
BTN4
Text Label 8000 2450 0    50   ~ 0
BTN5_UPSTREAM
Wire Wire Line
	8500 1550 8000 1550
Connection ~ 8500 1550
Wire Wire Line
	8200 2450 8000 2450
Connection ~ 8200 2450
Text Label 4350 4550 0    50   ~ 0
BTN4
Text Label 4350 4650 0    50   ~ 0
BTN5_UPSTREAM
Wire Wire Line
	3100 5100 3500 5100
Wire Wire Line
	3500 5100 3500 4550
Wire Wire Line
	3500 4550 4350 4550
Wire Wire Line
	4350 4650 3600 4650
Wire Wire Line
	3600 5200 3100 5200
$Comp
L Device:R R6
U 1 1 5D14EE6A
P 4050 5000
F 0 "R6" H 4120 5046 50  0000 L CNN
F 1 "0" H 4120 4955 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3980 5000 50  0001 C CNN
F 3 "~" H 4050 5000 50  0001 C CNN
	1    4050 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5D14F585
P 3800 5000
F 0 "R5" H 3870 5046 50  0000 L CNN
F 1 "0" H 3870 4955 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3730 5000 50  0001 C CNN
F 3 "~" H 3800 5000 50  0001 C CNN
	1    3800 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 5150 3800 5400
Connection ~ 3800 5400
Wire Wire Line
	3800 5400 6350 5400
Wire Wire Line
	3800 4850 3800 2150
Wire Wire Line
	3800 2150 4400 2150
Wire Wire Line
	3100 5300 6250 5300
Wire Wire Line
	4050 5800 4050 5150
Connection ~ 4050 5800
Wire Wire Line
	3600 4650 3600 5200
Wire Wire Line
	4050 4850 4050 2850
Wire Wire Line
	4050 2850 4400 2850
Text Label 5300 2300 0    50   ~ 0
RSET0
Text Label 5300 3000 0    50   ~ 0
RSET1
Text Label 5300 2000 0    50   ~ 0
LED_OUT0
Text Label 5300 2150 0    50   ~ 0
LED_OUT1
Text Label 5350 2700 0    50   ~ 0
LED_OUT2
Text Label 5350 2850 0    50   ~ 0
LED_OUT3
Text Label 3900 2150 0    50   ~ 0
LED_CTL0
Text Label 4100 2850 0    50   ~ 0
LED_CTL1
$Comp
L Device:Q_DUAL_NMOS_S1G1D2S2G2D1 Q1
U 1 1 5D1C727B
P 5500 5800
F 0 "Q1" H 5706 5846 50  0000 L CNN
F 1 "DMN63D8LDW" H 5706 5755 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 5700 5800 50  0001 C CNN
F 3 "~" H 5700 5800 50  0001 C CNN
F 4 "DMN63D8LDW-7CT-ND" H 5500 5800 50  0001 C CNN "Part Number"
	1    5500 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_DUAL_NMOS_S1G1D2S2G2D1 Q1
U 2 1 5D1C82EB
P 6200 6500
F 0 "Q1" H 6406 6546 50  0000 L CNN
F 1 "DMN63D8LDW" H 6406 6455 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 6400 6500 50  0001 C CNN
F 3 "~" H 6400 6500 50  0001 C CNN
F 4 "DMN63D8LDW-7CT-ND" H 6200 6500 50  0001 C CNN "Part Number"
	2    6200 6500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5D1DA3C2
P 7500 3350
F 0 "C5" H 7615 3396 50  0000 L CNN
F 1 "47u" H 7615 3305 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 7538 3200 50  0001 C CNN
F 3 "~" H 7500 3350 50  0001 C CNN
F 4 "587-1780-1-ND" H 7500 3350 50  0001 C CNN "Part Number"
	1    7500 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5D1DB64F
P 7850 3350
F 0 "C6" H 7965 3396 50  0000 L CNN
F 1 "47u" H 7965 3305 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 7888 3200 50  0001 C CNN
F 3 "~" H 7850 3350 50  0001 C CNN
F 4 "587-1780-1-ND" H 7850 3350 50  0001 C CNN "Part Number"
	1    7850 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5D1DC8BF
P 8700 3700
F 0 "#PWR07" H 8700 3450 50  0001 C CNN
F 1 "GND" H 8705 3527 50  0000 C CNN
F 2 "" H 8700 3700 50  0001 C CNN
F 3 "" H 8700 3700 50  0001 C CNN
	1    8700 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 3600 7500 3600
Wire Wire Line
	7500 3600 7500 3500
Wire Wire Line
	7850 3600 7850 3500
$Comp
L power:+5V #PWR06
U 1 1 5D1F8DFB
P 8700 3000
F 0 "#PWR06" H 8700 2850 50  0001 C CNN
F 1 "+5V" H 8715 3173 50  0000 C CNN
F 2 "" H 8700 3000 50  0001 C CNN
F 3 "" H 8700 3000 50  0001 C CNN
	1    8700 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 3100 7500 3100
Wire Wire Line
	7500 3100 7500 3200
Wire Wire Line
	7850 3100 7850 3200
Text Notes 9400 2850 0    50   ~ 0
Recepticle housing (JST-EH): 455-1001-ND‎\nCrimp socket: 455-1042-1-ND‎
$Comp
L Connector_Generic:Conn_01x01 MH1
U 1 1 5D0219AA
P 7700 6000
F 0 "MH1" H 7780 6042 50  0000 L CNN
F 1 "Conn_01x01" H 7780 5951 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4_Pad_Via" H 7700 6000 50  0001 C CNN
F 3 "~" H 7700 6000 50  0001 C CNN
	1    7700 6000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 MH2
U 1 1 5D02297B
P 7700 6200
F 0 "MH2" H 7780 6242 50  0000 L CNN
F 1 "Conn_01x01" H 7780 6151 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4_Pad_Via" H 7700 6200 50  0001 C CNN
F 3 "~" H 7700 6200 50  0001 C CNN
	1    7700 6200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5D02317D
P 7400 6300
F 0 "#PWR010" H 7400 6050 50  0001 C CNN
F 1 "GND" H 7405 6127 50  0000 C CNN
F 2 "" H 7400 6300 50  0001 C CNN
F 3 "" H 7400 6300 50  0001 C CNN
	1    7400 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 6300 7400 6200
Wire Wire Line
	7400 6000 7500 6000
Wire Wire Line
	7500 6200 7400 6200
Connection ~ 7400 6200
Wire Wire Line
	7400 6200 7400 6000
$Comp
L Device:C C7
U 1 1 5D044B95
P 8300 3350
F 0 "C7" H 8415 3396 50  0000 L CNN
F 1 "C" H 8415 3305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8338 3200 50  0001 C CNN
F 3 "~" H 8300 3350 50  0001 C CNN
	1    8300 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5D045112
P 8700 3350
F 0 "C8" H 8815 3396 50  0000 L CNN
F 1 "C" H 8815 3305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8738 3200 50  0001 C CNN
F 3 "~" H 8700 3350 50  0001 C CNN
	1    8700 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 3500 8700 3600
Wire Wire Line
	8700 3000 8700 3100
Wire Wire Line
	7850 3100 8300 3100
Connection ~ 7850 3100
Connection ~ 8700 3100
Wire Wire Line
	8700 3100 8700 3200
Wire Wire Line
	7850 3600 8300 3600
Connection ~ 7850 3600
Connection ~ 8700 3600
Wire Wire Line
	8700 3600 8700 3700
Wire Wire Line
	8300 3500 8300 3600
Connection ~ 8300 3600
Wire Wire Line
	8300 3600 8700 3600
Wire Wire Line
	8300 3200 8300 3100
Connection ~ 8300 3100
Wire Wire Line
	8300 3100 8700 3100
$Comp
L Device:R R15
U 1 1 5D0BB660
P 6450 7250
F 0 "R15" V 6243 7250 50  0000 C CNN
F 1 "0" V 6334 7250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6380 7250 50  0001 C CNN
F 3 "~" H 6450 7250 50  0001 C CNN
	1    6450 7250
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0116
U 1 1 5D0BC13A
P 6700 7150
F 0 "#PWR0116" H 6700 7000 50  0001 C CNN
F 1 "+5V" H 6715 7323 50  0000 C CNN
F 2 "" H 6700 7150 50  0001 C CNN
F 3 "" H 6700 7150 50  0001 C CNN
	1    6700 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 7150 6700 7250
Wire Wire Line
	6700 7250 6600 7250
Wire Wire Line
	6000 7000 6150 7000
Wire Wire Line
	6150 7000 6150 7250
Wire Wire Line
	6150 7250 6300 7250
$Comp
L Device:LED D5
U 1 1 5D12D171
P 5650 1450
F 0 "D5" V 5689 1333 50  0000 R CNN
F 1 "LED" V 5598 1333 50  0000 R CNN
F 2 "ddr-ps2-controller:Wurth_WL-SMSW_LED" H 5650 1450 50  0001 C CNN
F 3 "~" H 5650 1450 50  0001 C CNN
F 4 "732-12021-1-ND" H 5650 1450 50  0001 C CNN "Part Number"
	1    5650 1450
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D6
U 1 1 5D12D178
P 6000 1450
F 0 "D6" V 6039 1333 50  0000 R CNN
F 1 "LED" V 5948 1333 50  0000 R CNN
F 2 "ddr-ps2-controller:Wurth_WL-SMSW_LED" H 6000 1450 50  0001 C CNN
F 3 "~" H 6000 1450 50  0001 C CNN
F 4 "732-12021-1-ND" H 6000 1450 50  0001 C CNN "Part Number"
	1    6000 1450
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D7
U 1 1 5D12D17F
P 6350 1450
F 0 "D7" V 6389 1333 50  0000 R CNN
F 1 "LED" V 6298 1333 50  0000 R CNN
F 2 "ddr-ps2-controller:Wurth_WL-SMSW_LED" H 6350 1450 50  0001 C CNN
F 3 "~" H 6350 1450 50  0001 C CNN
F 4 "732-12021-1-ND" H 6350 1450 50  0001 C CNN "Part Number"
	1    6350 1450
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D8
U 1 1 5D12D186
P 6700 1450
F 0 "D8" V 6739 1333 50  0000 R CNN
F 1 "LED" V 6648 1333 50  0000 R CNN
F 2 "ddr-ps2-controller:Wurth_WL-SMSW_LED" H 6700 1450 50  0001 C CNN
F 3 "~" H 6700 1450 50  0001 C CNN
F 4 "732-12021-1-ND" H 6700 1450 50  0001 C CNN "Part Number"
	1    6700 1450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5650 1300 5650 800 
Connection ~ 5650 800 
Wire Wire Line
	5650 800  5800 800 
Wire Wire Line
	6000 1300 6000 800 
Connection ~ 6000 800 
Wire Wire Line
	6000 800  6150 800 
Wire Wire Line
	6350 1300 6350 800 
Connection ~ 6350 800 
Wire Wire Line
	6350 800  6500 800 
Wire Wire Line
	6700 1300 6700 800 
Connection ~ 6700 800 
Wire Wire Line
	6700 800  6500 800 
Wire Wire Line
	6700 1600 6700 1750
Wire Wire Line
	6700 1750 6500 1750
Connection ~ 6500 1750
Wire Wire Line
	6500 1750 6500 1250
Wire Wire Line
	6350 1600 6350 1750
Wire Wire Line
	6350 1750 6150 1750
Connection ~ 6150 1750
Wire Wire Line
	6150 1750 6150 1250
Wire Wire Line
	6000 1600 6000 1750
Wire Wire Line
	6000 1750 5800 1750
Connection ~ 5800 1750
Wire Wire Line
	5800 1750 5800 1250
Wire Wire Line
	5650 1600 5650 1750
Wire Wire Line
	5650 1750 5450 1750
Connection ~ 5450 1750
Wire Wire Line
	5450 1750 5450 1250
Text Notes 6850 1100 0    50   ~ 0
Only populate one of each\npair (top vs bottom)
$Comp
L Device:R R18
U 1 1 5F9910DD
P 5250 7100
F 0 "R18" V 5043 7100 50  0000 C CNN
F 1 "0" V 5134 7100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5180 7100 50  0001 C CNN
F 3 "~" H 5250 7100 50  0001 C CNN
	1    5250 7100
	0    1    1    0   
$EndComp
Wire Wire Line
	5400 7100 5500 7100
$Comp
L power:GND #PWR0117
U 1 1 5F9A3A1E
P 5000 7500
F 0 "#PWR0117" H 5000 7250 50  0001 C CNN
F 1 "GND" H 5005 7327 50  0000 C CNN
F 2 "" H 5000 7500 50  0001 C CNN
F 3 "" H 5000 7500 50  0001 C CNN
	1    5000 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 7500 5000 7100
Wire Wire Line
	5000 7100 5100 7100
$Comp
L Device:R R16
U 1 1 5F9B141C
P 3700 6950
F 0 "R16" V 3493 6950 50  0000 C CNN
F 1 "1K" V 3584 6950 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3630 6950 50  0001 C CNN
F 3 "~" H 3700 6950 50  0001 C CNN
	1    3700 6950
	-1   0    0    1   
$EndComp
Wire Wire Line
	3500 5900 3500 7200
Wire Wire Line
	3100 5700 3700 5700
Wire Wire Line
	3100 5400 3800 5400
Wire Wire Line
	5500 7300 3600 7300
Wire Wire Line
	3600 7300 3600 5600
Connection ~ 3600 5600
Wire Wire Line
	3600 5600 3100 5600
Text Notes 1500 7350 0    50   ~ 0
TPI Notes:\nTPICLK <=> ISP CLK (7)\nTPIDATA <=> ISP MOSI (1)\nAs a CYA, both the ISP MISO (9) and\nMOSI are connected through a\nresistor. Ideally, the resistor to ISP\nMISO should be depopulated.
Wire Wire Line
	3100 5800 4050 5800
Wire Wire Line
	3700 7100 3700 7400
Wire Wire Line
	3700 7400 5500 7400
Wire Wire Line
	5500 7000 4400 7000
Wire Wire Line
	4000 7000 4000 6700
Wire Wire Line
	4000 6700 3700 6700
Wire Wire Line
	3700 6700 3700 5700
Connection ~ 3700 5700
Wire Wire Line
	3700 5700 4350 5700
Wire Wire Line
	3700 6700 3700 6800
Connection ~ 3700 6700
Text Label 3950 7400 0    50   ~ 0
ISP_MISO
Wire Wire Line
	4100 7000 4000 7000
$Comp
L Device:R R17
U 1 1 5FA25BB5
P 4250 7000
F 0 "R17" V 4043 7000 50  0000 C CNN
F 1 "0" V 4134 7000 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4180 7000 50  0001 C CNN
F 3 "~" H 4250 7000 50  0001 C CNN
	1    4250 7000
	0    1    1    0   
$EndComp
Text Label 4500 7000 0    50   ~ 0
ISP_MOSI
$EndSCHEMATC
