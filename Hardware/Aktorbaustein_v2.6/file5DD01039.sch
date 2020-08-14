EESchema Schematic File Version 4
LIBS:Aktorbaustein_v1.0-cache
LIBS:Sensorbaustein-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
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
L Connector:USB_B_Micro USB?
U 1 1 5D98EBC8
P 950 4000
F 0 "USB?" H 1007 4467 50  0000 C CNN
F 1 "USB_B_Micro" H 1007 4376 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Wuerth_629105150521" H 1100 3950 50  0001 C CNN
F 3 "~" H 1100 3950 50  0001 C CNN
	1    950  4000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 5D9919EF
P 4250 2450
F 0 "J?" H 4168 2125 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 4168 2216 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-2-3.5-H_1x02_P3.50mm_Horizontal" H 4250 2450 50  0001 C CNN
F 3 "~" H 4250 2450 50  0001 C CNN
	1    4250 2450
	-1   0    0    1   
$EndComp
$Comp
L Regulator_Linear:AP1117-33 5V/3V?
U 1 1 5D992DD6
P 5300 2350
F 0 "5V/3V?" H 5300 2592 50  0000 C CNN
F 1 "AP1117-33" H 5300 2501 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 5300 2550 50  0001 C CNN
F 3 "http://www.diodes.com/datasheets/AP1117.pdf" H 5400 2100 50  0001 C CNN
	1    5300 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 2350 4850 2350
Wire Wire Line
	5600 2350 5750 2350
Wire Wire Line
	6600 2350 6600 2950
$Comp
L power:GND #PWR?
U 1 1 5D995918
P 5300 2750
F 0 "#PWR?" H 5300 2500 50  0001 C CNN
F 1 "GND" H 5305 2577 50  0000 C CNN
F 2 "" H 5300 2750 50  0001 C CNN
F 3 "" H 5300 2750 50  0001 C CNN
	1    5300 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2650 5300 2750
$Comp
L power:GND #PWR?
U 1 1 5D996250
P 6600 5750
F 0 "#PWR?" H 6600 5500 50  0001 C CNN
F 1 "GND" H 6605 5577 50  0000 C CNN
F 2 "" H 6600 5750 50  0001 C CNN
F 3 "" H 6600 5750 50  0001 C CNN
	1    6600 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D996A3C
P 4600 2450
F 0 "#PWR?" H 4600 2200 50  0001 C CNN
F 1 "GND" H 4605 2277 50  0000 C CNN
F 2 "" H 4600 2450 50  0001 C CNN
F 3 "" H 4600 2450 50  0001 C CNN
	1    4600 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 2450 4450 2450
$Comp
L Device:C CVO?
U 1 1 5D997330
P 5750 2500
F 0 "CVO?" H 5800 2600 50  0000 L CNN
F 1 "100nF" H 5800 2400 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5788 2350 50  0001 C CNN
F 3 "~" H 5750 2500 50  0001 C CNN
	1    5750 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:C CVI?
U 1 1 5D997C96
P 4850 2500
F 0 "CVI?" H 4900 2600 50  0000 L CNN
F 1 "100nF" H 4900 2400 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4888 2350 50  0001 C CNN
F 3 "~" H 4850 2500 50  0001 C CNN
	1    4850 2500
	1    0    0    -1  
$EndComp
Connection ~ 5750 2350
Connection ~ 4850 2350
$Comp
L power:GND #PWR?
U 1 1 5D998B4E
P 4850 2650
F 0 "#PWR?" H 4850 2400 50  0001 C CNN
F 1 "GND" H 4855 2477 50  0000 C CNN
F 2 "" H 4850 2650 50  0001 C CNN
F 3 "" H 4850 2650 50  0001 C CNN
	1    4850 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D998CFB
P 5750 2650
F 0 "#PWR?" H 5750 2400 50  0001 C CNN
F 1 "GND" H 5755 2477 50  0000 C CNN
F 2 "" H 5750 2650 50  0001 C CNN
F 3 "" H 5750 2650 50  0001 C CNN
	1    5750 2650
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5D998EDF
P 6600 2150
F 0 "#PWR?" H 6600 2000 50  0001 C CNN
F 1 "+3.3V" H 6615 2323 50  0000 C CNN
F 2 "" H 6600 2150 50  0001 C CNN
F 3 "" H 6600 2150 50  0001 C CNN
	1    6600 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 2150 6600 2350
Connection ~ 6600 2350
$Comp
L Device:R R?
U 1 1 5D9D9048
P 5600 6350
F 0 "R?" V 5550 6150 50  0000 C CNN
F 1 "10k" V 5484 6350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5530 6350 50  0001 C CNN
F 3 "~" H 5600 6350 50  0001 C CNN
	1    5600 6350
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D9DC850
P 5600 6950
F 0 "R?" V 5550 6750 50  0000 C CNN
F 1 "10k" V 5484 6950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5530 6950 50  0001 C CNN
F 3 "~" H 5600 6950 50  0001 C CNN
	1    5600 6950
	0    1    1    0   
$EndComp
Wire Wire Line
	5200 6350 5450 6350
Wire Wire Line
	5200 6950 5450 6950
Wire Wire Line
	5750 6350 6100 6350
Wire Wire Line
	4900 6750 4900 6650
Wire Wire Line
	4900 6650 6100 6650
Wire Wire Line
	6100 6650 6100 6350
Wire Wire Line
	4900 6550 6000 6550
Wire Wire Line
	6000 6550 6000 6950
Wire Wire Line
	6000 6950 5750 6950
Wire Wire Line
	4900 6150 4900 6050
Wire Wire Line
	4900 6050 4650 6050
Wire Wire Line
	4900 7150 4900 7250
Wire Wire Line
	4900 7250 4650 7250
Text Label 4900 7250 2    50   ~ 0
GPIO_0
Text Label 4700 6050 0    50   ~ 0
CHIP_PU
Wire Wire Line
	6100 6350 6250 6350
Connection ~ 6100 6350
Wire Wire Line
	6000 6550 6250 6550
Connection ~ 6000 6550
Text Label 5800 6350 0    50   ~ 0
DTR
Text Label 5800 6550 0    50   ~ 0
RTS
Text GLabel 4650 6050 0    50   Input ~ 0
CHIP_PU
Text GLabel 4650 7250 0    50   Input ~ 0
GPIO_0
Text GLabel 6250 6350 2    50   Input ~ 0
DTR
Text GLabel 6250 6550 2    50   Input ~ 0
RTS
$Comp
L power:GND #PWR?
U 1 1 5DA55417
P 950 4400
F 0 "#PWR?" H 950 4150 50  0001 C CNN
F 1 "GND" H 950 4250 50  0000 C CNN
F 2 "" H 950 4400 50  0001 C CNN
F 3 "" H 950 4400 50  0001 C CNN
	1    950  4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DA55802
P 850 4400
F 0 "#PWR?" H 850 4150 50  0001 C CNN
F 1 "GND" H 800 4250 50  0000 C CNN
F 2 "" H 850 4400 50  0001 C CNN
F 3 "" H 850 4400 50  0001 C CNN
	1    850  4400
	1    0    0    -1  
$EndComp
Text GLabel 7200 3450 2    50   Input ~ 0
RXD
Text GLabel 7200 3250 2    50   Input ~ 0
TXD
Text GLabel 6000 3150 0    50   Input ~ 0
CHIP_PU
Text GLabel 7200 3150 2    50   Input ~ 0
GPIO_0
$Comp
L Switch:SW_Push MODE?
U 1 1 5DA6A957
P 10400 4250
F 0 "MODE?" V 10354 4398 50  0000 L CNN
F 1 "SW_Push" V 10445 4398 50  0000 L CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 10400 4450 50  0001 C CNN
F 3 "~" H 10400 4450 50  0001 C CNN
	1    10400 4250
	0    1    1    0   
$EndComp
$Comp
L Device:R RIO?
U 1 1 5DA6F57C
P 10400 3700
F 0 "RIO?" H 10470 3746 50  0000 L CNN
F 1 "10k" H 10470 3655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10330 3700 50  0001 C CNN
F 3 "~" H 10400 3700 50  0001 C CNN
	1    10400 3700
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5DA70E61
P 10400 3550
F 0 "#PWR?" H 10400 3400 50  0001 C CNN
F 1 "+3.3V" H 10415 3723 50  0000 C CNN
F 2 "" H 10400 3550 50  0001 C CNN
F 3 "" H 10400 3550 50  0001 C CNN
	1    10400 3550
	1    0    0    -1  
$EndComp
Text GLabel 10250 3850 0    50   Input ~ 0
GPIO_0
$Comp
L power:GND #PWR?
U 1 1 5DA73626
P 10400 4450
F 0 "#PWR?" H 10400 4200 50  0001 C CNN
F 1 "GND" H 10405 4277 50  0000 C CNN
F 2 "" H 10400 4450 50  0001 C CNN
F 3 "" H 10400 4450 50  0001 C CNN
	1    10400 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5DA997E4
P 8450 900
F 0 "D?" V 8397 978 50  0000 L CNN
F 1 "LED1" V 8488 978 50  0000 L CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8450 900 50  0001 C CNN
F 3 "~" H 8450 900 50  0001 C CNN
	1    8450 900 
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DA997EA
P 8450 750
F 0 "#PWR?" H 8450 500 50  0001 C CNN
F 1 "GND" H 8455 577 50  0000 C CNN
F 2 "" H 8450 750 50  0001 C CNN
F 3 "" H 8450 750 50  0001 C CNN
	1    8450 750 
	-1   0    0    1   
$EndComp
$Comp
L Device:R RD?
U 1 1 5DA997F0
P 8450 1200
F 0 "RD?" H 8520 1246 50  0000 L CNN
F 1 "200" H 8520 1155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8380 1200 50  0001 C CNN
F 3 "~" H 8450 1200 50  0001 C CNN
	1    8450 1200
	1    0    0    -1  
$EndComp
Text GLabel 8450 1400 2    50   Input ~ 0
LED_1
Wire Wire Line
	8450 1350 8450 1400
$Comp
L Connector:Conn_01x06_Male General_Outputs?
U 1 1 5D9A3B96
P 6300 1100
F 0 "General_Outputs?" H 6850 700 50  0000 R CNN
F 1 "general outputs" H 6850 1400 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 6300 1100 50  0001 C CNN
F 3 "~" H 6300 1100 50  0001 C CNN
	1    6300 1100
	-1   0    0    1   
$EndComp
Text GLabel 7200 4050 2    50   Input ~ 0
GPIO_15
Text GLabel 7200 3350 2    50   Input ~ 0
GPIO_2
$Comp
L power:+3.3V #PWR?
U 1 1 5D9AAD8D
P 5700 800
F 0 "#PWR?" H 5700 650 50  0001 C CNN
F 1 "+3.3V" V 5715 928 50  0000 L CNN
F 2 "" H 5700 800 50  0001 C CNN
F 3 "" H 5700 800 50  0001 C CNN
	1    5700 800 
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D9AB6AD
P 5700 1300
F 0 "#PWR?" H 5700 1050 50  0001 C CNN
F 1 "GND" V 5705 1172 50  0000 R CNN
F 2 "" H 5700 1300 50  0001 C CNN
F 3 "" H 5700 1300 50  0001 C CNN
	1    5700 1300
	0    1    1    0   
$EndComp
Text GLabel 5700 900  0    50   Input ~ 0
GPIO_2
Text GLabel 5700 1000 0    50   Input ~ 0
GPIO_15
Text GLabel 5700 1100 0    50   Input ~ 0
TXD
Text GLabel 5700 1200 0    50   Input ~ 0
RXD
$Comp
L Sensor_Temperature:LM75B Temperatur?
U 1 1 5D9B607F
P 2600 2050
F 0 "Temperatur?" H 2900 2500 50  0000 C CNN
F 1 "LM75B" H 2350 2500 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 2600 2050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm75b.pdf" H 2600 2050 50  0001 C CNN
	1    2600 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DA167B3
P 2600 2550
F 0 "#PWR?" H 2600 2300 50  0001 C CNN
F 1 "GND" H 2605 2377 50  0000 C CNN
F 2 "" H 2600 2550 50  0001 C CNN
F 3 "" H 2600 2550 50  0001 C CNN
	1    2600 2550
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5DA18CB6
P 2600 1050
F 0 "#PWR?" H 2600 900 50  0001 C CNN
F 1 "+3.3V" H 2615 1223 50  0000 C CNN
F 2 "" H 2600 1050 50  0001 C CNN
F 3 "" H 2600 1050 50  0001 C CNN
	1    2600 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:C CTEMP?
U 1 1 5DA19764
P 1250 1350
F 0 "CTEMP?" H 1200 1250 50  0000 R CNN
F 1 "100nF" H 1200 1450 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1288 1200 50  0001 C CNN
F 3 "~" H 1250 1350 50  0001 C CNN
	1    1250 1350
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DA1AE15
P 1250 1500
F 0 "#PWR?" H 1250 1250 50  0001 C CNN
F 1 "GND" H 1255 1327 50  0000 C CNN
F 2 "" H 1250 1500 50  0001 C CNN
F 3 "" H 1250 1500 50  0001 C CNN
	1    1250 1500
	1    0    0    -1  
$EndComp
Text GLabel 7200 4550 2    50   Input ~ 0
SDA
Text GLabel 7200 4650 2    50   Input ~ 0
SCL
Text GLabel 1500 1950 0    50   Input ~ 0
SDA
Text GLabel 1500 2050 0    50   Input ~ 0
SCL
Wire Wire Line
	2600 1050 2600 1200
Connection ~ 2600 1200
Wire Wire Line
	2600 1200 2600 1550
$Comp
L Device:R RSCL?
U 1 1 5DA3DD61
P 1850 1450
F 0 "RSCL?" H 1850 1600 50  0000 L CNN
F 1 "10k" H 1850 1300 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1780 1450 50  0001 C CNN
F 3 "~" H 1850 1450 50  0001 C CNN
	1    1850 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:R RSDA?
U 1 1 5DA3F797
P 2050 1450
F 0 "RSDA?" H 2050 1600 50  0000 L CNN
F 1 "10k" H 2050 1300 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1980 1450 50  0001 C CNN
F 3 "~" H 2050 1450 50  0001 C CNN
	1    2050 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:R ROS?
U 1 1 5DA40F66
P 1650 1450
F 0 "ROS?" H 1650 1600 50  0000 L CNN
F 1 "10k" H 1650 1300 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1580 1450 50  0001 C CNN
F 3 "~" H 1650 1450 50  0001 C CNN
	1    1650 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 1300 2050 1200
Wire Wire Line
	1250 1200 1650 1200
Connection ~ 2050 1200
Wire Wire Line
	2050 1200 2600 1200
Wire Wire Line
	1850 1300 1850 1200
Connection ~ 1850 1200
Wire Wire Line
	1850 1200 2050 1200
Wire Wire Line
	1650 1300 1650 1200
Connection ~ 1650 1200
Wire Wire Line
	1650 1200 1850 1200
Wire Wire Line
	1500 1950 2050 1950
Wire Wire Line
	2050 1600 2050 1950
Connection ~ 2050 1950
Wire Wire Line
	2050 1950 2200 1950
Wire Wire Line
	1850 1600 1850 2050
Wire Wire Line
	1500 2050 1850 2050
Connection ~ 1850 2050
Wire Wire Line
	1850 2050 2200 2050
Wire Wire Line
	2200 2150 1650 2150
Wire Wire Line
	1650 2150 1650 1600
Wire Wire Line
	3000 1950 3100 1950
Wire Wire Line
	3100 1950 3100 2050
Wire Wire Line
	3000 2050 3100 2050
Connection ~ 3100 2050
Wire Wire Line
	3100 2050 3100 2150
Wire Wire Line
	3000 2150 3100 2150
Connection ~ 3100 2150
Wire Wire Line
	3100 2150 3100 2300
$Comp
L power:GND #PWR?
U 1 1 5DA66124
P 3100 2300
F 0 "#PWR?" H 3100 2050 50  0001 C CNN
F 1 "GND" H 3105 2127 50  0000 C CNN
F 2 "" H 3100 2300 50  0001 C CNN
F 3 "" H 3100 2300 50  0001 C CNN
	1    3100 2300
	1    0    0    -1  
$EndComp
Text GLabel 7200 4150 2    50   Input ~ 0
but_1
Text GLabel 7200 4250 2    50   Input ~ 0
but_2
Text GLabel 7200 4350 2    50   Input ~ 0
but_3
Text GLabel 7200 4450 2    50   Input ~ 0
but_4
Text GLabel 7200 4750 2    50   Input ~ 0
LED_3
Text GLabel 7200 4950 2    50   Input ~ 0
LED_4
Text GLabel 7200 3550 2    50   Input ~ 0
LED_1
Text GLabel 7200 3650 2    50   Input ~ 0
LED_2
$Comp
L Switch:SW_Push CLEAR?
U 1 1 5DA6F7D0
P 8850 4250
F 0 "CLEAR?" V 8804 4398 50  0000 L CNN
F 1 "SW_Push" V 8895 4398 50  0000 L CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 8850 4450 50  0001 C CNN
F 3 "~" H 8850 4450 50  0001 C CNN
	1    8850 4250
	0    1    1    0   
$EndComp
Text GLabel 8700 3850 0    50   Input ~ 0
SysReset
$Comp
L power:GND #PWR?
U 1 1 5DA6F7ED
P 8850 4450
F 0 "#PWR?" H 8850 4200 50  0001 C CNN
F 1 "GND" H 8855 4277 50  0000 C CNN
F 2 "" H 8850 4450 50  0001 C CNN
F 3 "" H 8850 4450 50  0001 C CNN
	1    8850 4450
	1    0    0    -1  
$EndComp
Text GLabel 7200 4850 2    50   Input ~ 0
SysReset
$Comp
L Connector:Conn_01x04_Male touch?
U 1 1 5DA73AE3
P 7700 950
F 0 "touch?" H 8050 1200 50  0000 R CNN
F 1 "touch" H 8000 600 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 7700 950 50  0001 C CNN
F 3 "~" H 7700 950 50  0001 C CNN
	1    7700 950 
	-1   0    0    -1  
$EndComp
Text GLabel 7100 850  0    50   Input ~ 0
touch_1
Text GLabel 7100 950  0    50   Input ~ 0
touch_2
Text GLabel 7100 1050 0    50   Input ~ 0
touch_3
Text GLabel 7100 1150 0    50   Input ~ 0
touch_4
$Comp
L Interface_USB:CP2104 USB-TO-UART?
U 1 1 5DA8E3E9
P 3300 3950
F 0 "USB-TO-UART?" H 2950 3000 50  0000 C CNN
F 1 "CP2104" H 3600 3000 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-24-1EP_4x4mm_P0.5mm_EP2.6x2.6mm" H 3450 3000 50  0001 L CNN
F 3 "https://www.silabs.com/documents/public/data-sheets/cp2104.pdf" H 2750 5200 50  0001 C CNN
	1    3300 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 3050 3100 3000
Wire Wire Line
	3100 3000 2550 3000
Wire Wire Line
	2550 3000 2550 3350
Wire Wire Line
	2550 3350 2600 3350
Wire Wire Line
	3300 3050 3300 3000
Wire Wire Line
	3300 3000 3100 3000
Connection ~ 3100 3000
Text GLabel 2600 3850 0    50   Input ~ 0
D-
Text GLabel 2600 3950 0    50   Input ~ 0
D+
Text GLabel 1400 4000 2    50   Input ~ 0
D+
Text GLabel 1400 4100 2    50   Input ~ 0
D-
NoConn ~ 1250 4200
Text GLabel 2600 3550 0    50   Input ~ 0
VBUS
Text GLabel 1450 3800 2    50   Input ~ 0
VBUS
NoConn ~ 2600 4150
NoConn ~ 2600 4250
NoConn ~ 2600 4350
NoConn ~ 2600 4450
NoConn ~ 2600 4650
NoConn ~ 4000 4650
NoConn ~ 4000 4550
Text GLabel 4000 3850 2    50   Input ~ 0
TXD
Text GLabel 4000 3950 2    50   Input ~ 0
RXD
Text GLabel 4000 4150 2    50   Input ~ 0
RTS
NoConn ~ 4000 4250
Text GLabel 4000 3550 2    50   Input ~ 0
DTR
NoConn ~ 4000 3450
NoConn ~ 4000 3350
$Comp
L power:GND #PWR?
U 1 1 5DAFF9C1
P 3300 4950
F 0 "#PWR?" H 3300 4700 50  0001 C CNN
F 1 "GND" H 3305 4777 50  0000 C CNN
F 2 "" H 3300 4950 50  0001 C CNN
F 3 "" H 3300 4950 50  0001 C CNN
	1    3300 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DB03360
P 4250 4450
F 0 "R?" V 4200 4250 50  0000 C CNN
F 1 "10k" V 4134 4450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4180 4450 50  0001 C CNN
F 3 "~" H 4250 4450 50  0001 C CNN
	1    4250 4450
	0    1    1    0   
$EndComp
Wire Wire Line
	4000 4450 4100 4450
Wire Wire Line
	4400 4450 4500 4450
$Comp
L power:+3.3V #PWR?
U 1 1 5DB08A06
P 4500 4450
F 0 "#PWR?" H 4500 4300 50  0001 C CNN
F 1 "+3.3V" H 4515 4623 50  0000 C CNN
F 2 "" H 4500 4450 50  0001 C CNN
F 3 "" H 4500 4450 50  0001 C CNN
	1    4500 4450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DABB86B
P 1900 3700
F 0 "#PWR?" H 1900 3450 50  0001 C CNN
F 1 "GND" H 1905 3527 50  0000 C CNN
F 2 "" H 1900 3700 50  0001 C CNN
F 3 "" H 1900 3700 50  0001 C CNN
	1    1900 3700
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5DABA58E
P 1900 3300
F 0 "#PWR?" H 1900 3150 50  0001 C CNN
F 1 "+3.3V" H 1915 3473 50  0000 C CNN
F 2 "" H 1900 3300 50  0001 C CNN
F 3 "" H 1900 3300 50  0001 C CNN
	1    1900 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 3400 1900 3350
Wire Wire Line
	2550 3350 1900 3350
Connection ~ 2550 3350
Connection ~ 1900 3350
Wire Wire Line
	1900 3350 1900 3300
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5DB259BF
P 5000 6950
F 0 "Q?" H 5191 6904 50  0000 L CNN
F 1 "MMBT3904" H 5191 6995 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5200 6875 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 5000 6950 50  0001 L CNN
	1    5000 6950
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5DB2C87F
P 5000 6350
F 0 "Q?" H 5191 6396 50  0000 L CNN
F 1 "MMBT3904" H 5191 6305 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5200 6275 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 5000 6350 50  0001 L CNN
	1    5000 6350
	-1   0    0    -1  
$EndComp
NoConn ~ 6000 4350
NoConn ~ 6000 4450
NoConn ~ 6000 4550
NoConn ~ 6000 4650
NoConn ~ 6000 4750
NoConn ~ 6000 4850
$Comp
L power:GND #PWR?
U 1 1 5DA847FB
P 9650 4450
F 0 "#PWR?" H 9650 4200 50  0001 C CNN
F 1 "GND" H 9655 4277 50  0000 C CNN
F 2 "" H 9650 4450 50  0001 C CNN
F 3 "" H 9650 4450 50  0001 C CNN
	1    9650 4450
	1    0    0    -1  
$EndComp
Text GLabel 9500 3850 0    50   Input ~ 0
CHIP_PU
$Comp
L power:+3.3V #PWR?
U 1 1 5DA847F0
P 9650 3550
F 0 "#PWR?" H 9650 3400 50  0001 C CNN
F 1 "+3.3V" H 9665 3723 50  0000 C CNN
F 2 "" H 9650 3550 50  0001 C CNN
F 3 "" H 9650 3550 50  0001 C CNN
	1    9650 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:R REN?
U 1 1 5DA847E4
P 9650 3700
F 0 "REN?" H 9720 3746 50  0000 L CNN
F 1 "10k" H 9720 3655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9580 3700 50  0001 C CNN
F 3 "~" H 9650 3700 50  0001 C CNN
	1    9650 3700
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push ENABLE?
U 1 1 5DA847DE
P 9650 4250
F 0 "ENABLE?" V 9604 4398 50  0000 L CNN
F 1 "SW_Push" V 9695 4398 50  0000 L CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 9650 4450 50  0001 C CNN
F 3 "~" H 9650 4450 50  0001 C CNN
	1    9650 4250
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DB67FE0
P 9950 900
F 0 "D?" V 9897 978 50  0000 L CNN
F 1 "LED2" V 9988 978 50  0000 L CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9950 900 50  0001 C CNN
F 3 "~" H 9950 900 50  0001 C CNN
	1    9950 900 
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DB67FE6
P 9950 750
F 0 "#PWR?" H 9950 500 50  0001 C CNN
F 1 "GND" H 9955 577 50  0000 C CNN
F 2 "" H 9950 750 50  0001 C CNN
F 3 "" H 9950 750 50  0001 C CNN
	1    9950 750 
	-1   0    0    1   
$EndComp
$Comp
L Device:R RD?
U 1 1 5DB67FEC
P 9950 1200
F 0 "RD?" H 10020 1246 50  0000 L CNN
F 1 "200" H 10020 1155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9880 1200 50  0001 C CNN
F 3 "~" H 9950 1200 50  0001 C CNN
	1    9950 1200
	1    0    0    -1  
$EndComp
Text GLabel 9950 1400 2    50   Input ~ 0
LED_2
$Comp
L Device:LED D?
U 1 1 5DB6BC2A
P 8450 2300
F 0 "D?" V 8397 2378 50  0000 L CNN
F 1 "LED3" V 8488 2378 50  0000 L CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8450 2300 50  0001 C CNN
F 3 "~" H 8450 2300 50  0001 C CNN
	1    8450 2300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DB6BC30
P 8450 2150
F 0 "#PWR?" H 8450 1900 50  0001 C CNN
F 1 "GND" H 8455 1977 50  0000 C CNN
F 2 "" H 8450 2150 50  0001 C CNN
F 3 "" H 8450 2150 50  0001 C CNN
	1    8450 2150
	-1   0    0    1   
$EndComp
$Comp
L Device:R RD?
U 1 1 5DB6BC36
P 8450 2600
F 0 "RD?" H 8520 2646 50  0000 L CNN
F 1 "200" H 8520 2555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8380 2600 50  0001 C CNN
F 3 "~" H 8450 2600 50  0001 C CNN
	1    8450 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5DB75E3C
P 9950 2300
F 0 "D?" V 9897 2378 50  0000 L CNN
F 1 "LED4" V 9988 2378 50  0000 L CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9950 2300 50  0001 C CNN
F 3 "~" H 9950 2300 50  0001 C CNN
	1    9950 2300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DB75E42
P 9950 2150
F 0 "#PWR?" H 9950 1900 50  0001 C CNN
F 1 "GND" H 9955 1977 50  0000 C CNN
F 2 "" H 9950 2150 50  0001 C CNN
F 3 "" H 9950 2150 50  0001 C CNN
	1    9950 2150
	-1   0    0    1   
$EndComp
$Comp
L Device:R RD?
U 1 1 5DB75E48
P 9950 2600
F 0 "RD?" H 10020 2646 50  0000 L CNN
F 1 "200" H 10020 2555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9880 2600 50  0001 C CNN
F 3 "~" H 9950 2600 50  0001 C CNN
	1    9950 2600
	1    0    0    -1  
$EndComp
Text GLabel 9950 2800 2    50   Input ~ 0
LED_4
Wire Wire Line
	9950 2750 9950 2800
Text GLabel 8450 2800 2    50   Input ~ 0
LED_3
Text GLabel 7200 5250 2    50   Input ~ 0
touch_4
Text GLabel 7200 5050 2    50   Input ~ 0
touch_2
Text GLabel 7200 5150 2    50   Input ~ 0
touch_3
NoConn ~ 7200 3750
Text GLabel 7200 3950 2    50   Input ~ 0
touch_1
NoConn ~ 7200 3850
NoConn ~ 7200 5350
NoConn ~ 7200 5450
NoConn ~ 3500 3050
NoConn ~ 3400 4950
$Comp
L Device:LED D?
U 1 1 5DAB03D6
P 8850 5250
F 0 "D?" V 8797 5328 50  0000 L CNN
F 1 "LED5" V 8888 5328 50  0000 L CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8850 5250 50  0001 C CNN
F 3 "~" H 8850 5250 50  0001 C CNN
	1    8850 5250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DAB03DC
P 8850 5100
F 0 "#PWR?" H 8850 4850 50  0001 C CNN
F 1 "GND" H 8855 4927 50  0000 C CNN
F 2 "" H 8850 5100 50  0001 C CNN
F 3 "" H 8850 5100 50  0001 C CNN
	1    8850 5100
	-1   0    0    1   
$EndComp
$Comp
L Device:R RD?
U 1 1 5DAB03E2
P 8850 5550
F 0 "RD?" H 8920 5596 50  0000 L CNN
F 1 "270" H 8920 5505 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8780 5550 50  0001 C CNN
F 3 "~" H 8850 5550 50  0001 C CNN
	1    8850 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 5700 8850 5750
Text GLabel 8850 5750 2    50   Input ~ 0
GPIO_2
NoConn ~ 6000 3350
NoConn ~ 6000 3450
Wire Wire Line
	4850 2350 5000 2350
Wire Wire Line
	8450 2750 8450 2800
$Comp
L RF_Module:ESP32-WROOM-32 U?
U 1 1 5D9C13C6
P 6600 4350
F 0 "U?" H 6250 5700 50  0000 C CNN
F 1 "ESP32-WROOM-32" H 7000 5700 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 6600 2850 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf" H 6300 4400 50  0001 C CNN
	1    6600 4350
	1    0    0    -1  
$EndComp
Text Label 4450 2350 0    50   ~ 0
5V
Text Label 4450 2450 0    50   ~ 0
GND
Text Label 5950 2350 0    50   ~ 0
3.3V
Wire Wire Line
	1400 4000 1250 4000
Wire Wire Line
	1250 4100 1400 4100
Wire Wire Line
	1450 3800 1250 3800
Text Label 1250 3800 0    50   ~ 0
VBUS
Text Label 1250 4000 0    50   ~ 0
D+
Text Label 1250 4100 0    50   ~ 0
D-
Text Label 950  4400 0    50   ~ 0
GND
Text Label 8450 1050 0    50   ~ 0
LED1
Text Label 9950 1050 0    50   ~ 0
LED2
Text Label 9950 2450 0    50   ~ 0
LED4
Text Label 8850 5400 0    50   ~ 0
LED5
Text Label 8850 4000 2    50   ~ 0
SysReset
Wire Wire Line
	8700 3850 8850 3850
Wire Wire Line
	8850 3850 8850 4050
Wire Wire Line
	9650 3850 9650 4050
Wire Wire Line
	10400 3850 10400 4050
Wire Wire Line
	10250 3850 10400 3850
Connection ~ 10400 3850
Wire Wire Line
	9500 3850 9650 3850
Connection ~ 9650 3850
Text Label 9650 4000 2    50   ~ 0
CHIP_PU
Text Label 10400 4000 2    50   ~ 0
GPIO_0
Wire Wire Line
	9950 1350 9950 1400
Wire Wire Line
	5750 2350 6600 2350
Text Label 2100 1950 0    50   ~ 0
SDA
Text Label 2100 2050 0    50   ~ 0
SCL
Wire Wire Line
	6100 800  5700 800 
Wire Wire Line
	5700 900  6100 900 
Wire Wire Line
	6100 1000 5700 1000
Wire Wire Line
	5700 1100 6100 1100
Wire Wire Line
	6100 1200 5700 1200
Wire Wire Line
	5700 1300 6100 1300
Wire Wire Line
	7500 850  7100 850 
Wire Wire Line
	7100 950  7500 950 
Wire Wire Line
	7500 1050 7100 1050
Wire Wire Line
	7500 1150 7100 1150
Text Label 5800 800  0    50   ~ 0
+3.3
Text Label 5800 900  0    50   ~ 0
GPIO2
Text Label 5800 1000 0    50   ~ 0
GPIO15
Text Label 5850 1100 0    50   ~ 0
TXD
Text Label 5850 1200 0    50   ~ 0
RXD
Text Label 5850 1300 0    50   ~ 0
GND
Text Label 7200 850  0    50   ~ 0
touch1
Text Label 7200 950  0    50   ~ 0
touch2
Text Label 7200 1050 0    50   ~ 0
touch3
Text Label 7200 1150 0    50   ~ 0
touch4
$Comp
L Connector:Conn_01x04_Male button?
U 1 1 5DABBC58
P 7700 1650
F 0 "button?" H 8000 1850 50  0000 R CNN
F 1 "button" H 8000 1300 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 7700 1650 50  0001 C CNN
F 3 "~" H 7700 1650 50  0001 C CNN
	1    7700 1650
	-1   0    0    -1  
$EndComp
Text GLabel 7100 1550 0    50   Input ~ 0
but_1
Text GLabel 7100 1650 0    50   Input ~ 0
but_2
Text GLabel 7100 1750 0    50   Input ~ 0
but_3
Text GLabel 7100 1850 0    50   Input ~ 0
but_4
Wire Wire Line
	7500 1550 7100 1550
Wire Wire Line
	7100 1650 7500 1650
Wire Wire Line
	7500 1750 7100 1750
Wire Wire Line
	7500 1850 7100 1850
Text Label 7200 1550 0    50   ~ 0
but1
Text Label 7200 1650 0    50   ~ 0
but2
Text Label 7200 1750 0    50   ~ 0
but3
Text Label 7200 1850 0    50   ~ 0
but4
$Comp
L Device:C CUTU?
U 1 1 5DABAE53
P 1900 3550
F 0 "CUTU?" H 1950 3650 50  0000 L CNN
F 1 "10uF" H 1950 3450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1938 3400 50  0001 C CNN
F 3 "~" H 1900 3550 50  0001 C CNN
	1    1900 3550
	1    0    0    -1  
$EndComp
NoConn ~ 4000 3650
$EndSCHEMATC
