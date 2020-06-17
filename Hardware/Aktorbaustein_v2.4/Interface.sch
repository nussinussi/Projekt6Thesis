EESchema Schematic File Version 4
LIBS:Aktorbaustein-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
NoConn ~ 4100 4500
NoConn ~ 4100 4400
NoConn ~ 4100 4300
NoConn ~ 4100 4200
NoConn ~ 4100 4100
NoConn ~ 4100 4000
NoConn ~ 4100 3100
NoConn ~ 4100 3000
Text GLabel 4100 2800 0    50   Input ~ 0
CHIP_PU
Text GLabel 5300 4500 2    50   Input ~ 0
SysReset
Text GLabel 5300 3100 2    50   Input ~ 0
RXD
Text GLabel 5300 2900 2    50   Input ~ 0
TXD
Text GLabel 5300 2800 2    50   Input ~ 0
GPIO_0
$Comp
L power:+3.3V #PWR?
U 1 1 5E64AC31
P 4700 2150
AR Path="/5E64AC31" Ref="#PWR?"  Part="1" 
AR Path="/5E63133E/5E64AC31" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4700 2000 50  0001 C CNN
F 1 "+3.3V" H 4715 2323 50  0000 C CNN
F 2 "" H 4700 2150 50  0001 C CNN
F 3 "" H 4700 2150 50  0001 C CNN
	1    4700 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E64AC37
P 4700 5400
AR Path="/5E64AC37" Ref="#PWR?"  Part="1" 
AR Path="/5E63133E/5E64AC37" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4700 5150 50  0001 C CNN
F 1 "GND" H 4700 5250 50  0000 C CNN
F 2 "" H 4700 5400 50  0001 C CNN
F 3 "" H 4700 5400 50  0001 C CNN
	1    4700 5400
	1    0    0    -1  
$EndComp
$Comp
L RF_Module:ESP32-WROOM-32 U?
U 1 1 5E64AC3D
P 4700 4000
AR Path="/5E64AC3D" Ref="U?"  Part="1" 
AR Path="/5E63133E/5E64AC3D" Ref="U?"  Part="1" 
F 0 "U?" H 4250 5350 50  0000 C CNN
F 1 "ESP32-WROOM-32" H 5100 5350 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 4700 2500 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf" H 4400 4050 50  0001 C CNN
	1    4700 4000
	1    0    0    -1  
$EndComp
Text GLabel 5300 3800 2    50   Input ~ 0
pwm1
Text GLabel 5300 3900 2    50   Input ~ 0
pwm2
Text GLabel 5300 5000 2    50   Input ~ 0
AD1
Text GLabel 5300 5100 2    50   Input ~ 0
AD2
Text GLabel 5300 3000 2    50   Input ~ 0
GPIO_2
Text GLabel 5300 3200 2    50   Input ~ 0
LED_1
Text GLabel 5300 3300 2    50   Input ~ 0
LED_2
Text GLabel 5300 4400 2    50   Input ~ 0
LED_3
Text GLabel 5300 4700 2    50   Input ~ 0
LED_4
Text GLabel 5300 3500 2    50   Input ~ 0
Status
NoConn ~ 5300 3400
NoConn ~ 5300 3600
NoConn ~ 5300 4900
Text GLabel 5300 3700 2    50   Input ~ 0
GPIO_15
Text GLabel 5300 4000 2    50   Input ~ 0
K1
Text GLabel 5300 4100 2    50   Input ~ 0
K2
Text GLabel 5300 4200 2    50   Input ~ 0
K3
Text GLabel 5300 4300 2    50   Input ~ 0
K4
NoConn ~ 5300 4800
NoConn ~ 5300 4600
$Comp
L Device:C C?
U 1 1 5E64AC57
P 4450 2350
AR Path="/5E64AC57" Ref="C?"  Part="1" 
AR Path="/5E63133E/5E64AC57" Ref="C?"  Part="1" 
F 0 "C?" H 4450 2450 50  0000 L CNN
F 1 "100nF" H 4450 2250 50  0000 L CNN
F 2 "" H 4488 2200 50  0001 C CNN
F 3 "~" H 4450 2350 50  0001 C CNN
	1    4450 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 2150 4700 2200
Wire Wire Line
	4450 2200 4700 2200
Connection ~ 4700 2200
$Comp
L power:GND #PWR?
U 1 1 5E64AC60
P 4450 2500
AR Path="/5E64AC60" Ref="#PWR?"  Part="1" 
AR Path="/5E63133E/5E64AC60" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4450 2250 50  0001 C CNN
F 1 "GND" H 4450 2350 50  0000 C CNN
F 2 "" H 4450 2500 50  0001 C CNN
F 3 "" H 4450 2500 50  0001 C CNN
	1    4450 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 2200 4700 2600
NoConn ~ 8450 1750
$Comp
L Device:C CUTU?
U 1 1 5E65802F
P 6350 1650
AR Path="/5DD0103A/5E65802F" Ref="CUTU?"  Part="1" 
AR Path="/5E65802F" Ref="CUTU?"  Part="1" 
AR Path="/5E63133E/5E65802F" Ref="CUTU?"  Part="1" 
F 0 "CUTU?" H 6400 1750 50  0000 L CNN
F 1 "10uF" H 6400 1550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6388 1500 50  0001 C CNN
F 3 "~" H 6350 1650 50  0001 C CNN
	1    6350 1650
	1    0    0    -1  
$EndComp
Text Label 6050 2950 0    50   ~ 0
GND
Text Label 6350 2650 0    50   ~ 0
D-
Text Label 6350 2550 0    50   ~ 0
D+
Text Label 6350 2350 0    50   ~ 0
VBUS
Wire Wire Line
	6550 2350 6350 2350
Wire Wire Line
	6350 2650 6500 2650
Wire Wire Line
	6500 2550 6350 2550
NoConn ~ 7850 3050
NoConn ~ 7950 1150
$Comp
L power:+3.3V #PWR?
U 1 1 5E65803E
P 6350 1400
AR Path="/5DD0103A/5E65803E" Ref="#PWR?"  Part="1" 
AR Path="/5E65803E" Ref="#PWR?"  Part="1" 
AR Path="/5E63133E/5E65803E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6350 1250 50  0001 C CNN
F 1 "+3.3V" H 6365 1573 50  0000 C CNN
F 2 "" H 6350 1400 50  0001 C CNN
F 3 "" H 6350 1400 50  0001 C CNN
	1    6350 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E658044
P 6350 1800
AR Path="/5DD0103A/5E658044" Ref="#PWR?"  Part="1" 
AR Path="/5E658044" Ref="#PWR?"  Part="1" 
AR Path="/5E63133E/5E658044" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6350 1550 50  0001 C CNN
F 1 "GND" H 6355 1627 50  0000 C CNN
F 2 "" H 6350 1800 50  0001 C CNN
F 3 "" H 6350 1800 50  0001 C CNN
	1    6350 1800
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5E65804A
P 8950 2550
AR Path="/5DD0103A/5E65804A" Ref="#PWR?"  Part="1" 
AR Path="/5E65804A" Ref="#PWR?"  Part="1" 
AR Path="/5E63133E/5E65804A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8950 2400 50  0001 C CNN
F 1 "+3.3V" H 8965 2723 50  0000 C CNN
F 2 "" H 8950 2550 50  0001 C CNN
F 3 "" H 8950 2550 50  0001 C CNN
	1    8950 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 2550 8950 2550
Wire Wire Line
	8450 2550 8550 2550
$Comp
L Device:R R?
U 1 1 5E658052
P 8700 2550
AR Path="/5DD0103A/5E658052" Ref="R?"  Part="1" 
AR Path="/5E658052" Ref="R?"  Part="1" 
AR Path="/5E63133E/5E658052" Ref="R?"  Part="1" 
F 0 "R?" V 8650 2350 50  0000 C CNN
F 1 "10k" V 8584 2550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8630 2550 50  0001 C CNN
F 3 "~" H 8700 2550 50  0001 C CNN
	1    8700 2550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E658058
P 7750 3050
AR Path="/5DD0103A/5E658058" Ref="#PWR?"  Part="1" 
AR Path="/5E658058" Ref="#PWR?"  Part="1" 
AR Path="/5E63133E/5E658058" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7750 2800 50  0001 C CNN
F 1 "GND" H 7755 2877 50  0000 C CNN
F 2 "" H 7750 3050 50  0001 C CNN
F 3 "" H 7750 3050 50  0001 C CNN
	1    7750 3050
	1    0    0    -1  
$EndComp
NoConn ~ 8450 1450
NoConn ~ 8450 1550
Text GLabel 8450 1650 2    50   Input ~ 0
DTR
NoConn ~ 8450 2350
Text GLabel 8450 2250 2    50   Input ~ 0
RTS
Text GLabel 8450 2050 2    50   Input ~ 0
RXD
Text GLabel 8450 1950 2    50   Input ~ 0
TXD
NoConn ~ 8450 2650
NoConn ~ 8450 2750
NoConn ~ 7050 2750
NoConn ~ 7050 2550
NoConn ~ 7050 2450
NoConn ~ 7050 2350
NoConn ~ 7050 2250
Text GLabel 6550 2350 2    50   Input ~ 0
VBUS
Text GLabel 7050 1650 0    50   Input ~ 0
VBUS
NoConn ~ 6350 2750
Text GLabel 6500 2650 2    50   Input ~ 0
D-
Text GLabel 6500 2550 2    50   Input ~ 0
D+
Text GLabel 7050 2050 0    50   Input ~ 0
D+
Text GLabel 7050 1950 0    50   Input ~ 0
D-
Connection ~ 7550 1100
Wire Wire Line
	7750 1100 7550 1100
Wire Wire Line
	7750 1150 7750 1100
Wire Wire Line
	7000 1450 7050 1450
Wire Wire Line
	7000 1100 7000 1450
Wire Wire Line
	7550 1100 7000 1100
Wire Wire Line
	7550 1150 7550 1100
$Comp
L Interface_USB:CP2104 USB-TO-UART?
U 1 1 5E65807A
P 7750 2050
AR Path="/5DD0103A/5E65807A" Ref="USB-TO-UART?"  Part="1" 
AR Path="/5E65807A" Ref="USB-TO-UART?"  Part="1" 
AR Path="/5E63133E/5E65807A" Ref="USB-TO-UART?"  Part="1" 
F 0 "USB-TO-UART?" H 7400 1100 50  0000 C CNN
F 1 "CP2104" H 8050 1100 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-24-1EP_4x4mm_P0.5mm_EP2.6x2.6mm" H 7900 1100 50  0001 L CNN
F 3 "https://www.silabs.com/documents/public/data-sheets/cp2104.pdf" H 7200 3300 50  0001 C CNN
	1    7750 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E658080
P 5950 2950
AR Path="/5DD0103A/5E658080" Ref="#PWR?"  Part="1" 
AR Path="/5E658080" Ref="#PWR?"  Part="1" 
AR Path="/5E63133E/5E658080" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5950 2700 50  0001 C CNN
F 1 "GND" H 5900 2800 50  0000 C CNN
F 2 "" H 5950 2950 50  0001 C CNN
F 3 "" H 5950 2950 50  0001 C CNN
	1    5950 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E658086
P 6050 2950
AR Path="/5DD0103A/5E658086" Ref="#PWR?"  Part="1" 
AR Path="/5E658086" Ref="#PWR?"  Part="1" 
AR Path="/5E63133E/5E658086" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6050 2700 50  0001 C CNN
F 1 "GND" H 6050 2800 50  0000 C CNN
F 2 "" H 6050 2950 50  0001 C CNN
F 3 "" H 6050 2950 50  0001 C CNN
	1    6050 2950
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B_Micro USB?
U 1 1 5E65808C
P 6050 2550
AR Path="/5DD0103A/5E65808C" Ref="USB?"  Part="1" 
AR Path="/5E65808C" Ref="USB?"  Part="1" 
AR Path="/5E63133E/5E65808C" Ref="USB?"  Part="1" 
F 0 "USB?" H 6107 3017 50  0000 C CNN
F 1 "USB_B_Micro" H 6107 2926 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Wuerth_629105150521" H 6200 2500 50  0001 C CNN
F 3 "~" H 6200 2500 50  0001 C CNN
	1    6050 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 1450 6350 1450
Wire Wire Line
	6350 1450 6350 1500
Connection ~ 7000 1450
Wire Wire Line
	6350 1450 6350 1400
Connection ~ 6350 1450
$Comp
L Device:R R?
U 1 1 5E658097
P 7350 4300
AR Path="/5E658097" Ref="R?"  Part="1" 
AR Path="/5E63133E/5E658097" Ref="R?"  Part="1" 
F 0 "R?" V 7300 4100 50  0000 C CNN
F 1 "10k" V 7234 4300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7280 4300 50  0001 C CNN
F 3 "~" H 7350 4300 50  0001 C CNN
	1    7350 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	6950 4300 7200 4300
Wire Wire Line
	6650 4100 6650 4000
Wire Wire Line
	7750 3900 7750 4300
Wire Wire Line
	7750 4300 7500 4300
Wire Wire Line
	6650 4500 6650 4600
Wire Wire Line
	6650 4600 6400 4600
Text Label 6650 4600 2    50   ~ 0
GPIO_0
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5E6580A4
P 6750 4300
AR Path="/5E6580A4" Ref="Q?"  Part="1" 
AR Path="/5E63133E/5E6580A4" Ref="Q?"  Part="1" 
F 0 "Q?" H 6941 4254 50  0000 L CNN
F 1 "MMBT3904" H 6941 4345 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6950 4225 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 6750 4300 50  0001 L CNN
	1    6750 4300
	-1   0    0    1   
$EndComp
Wire Wire Line
	6650 3900 7750 3900
Wire Wire Line
	7750 3900 8000 3900
Connection ~ 7750 3900
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5E6580AD
P 6750 3700
AR Path="/5E6580AD" Ref="Q?"  Part="1" 
AR Path="/5E63133E/5E6580AD" Ref="Q?"  Part="1" 
F 0 "Q?" H 6941 3746 50  0000 L CNN
F 1 "MMBT3904" H 6941 3655 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6950 3625 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 6750 3700 50  0001 L CNN
	1    6750 3700
	-1   0    0    -1  
$EndComp
Text GLabel 8000 3900 2    50   Input ~ 0
RTS
Text GLabel 8000 3700 2    50   Input ~ 0
DTR
Text GLabel 6400 4600 0    50   Input ~ 0
GPIO_0
Text GLabel 6400 3400 0    50   Input ~ 0
CHIP_PU
Text Label 7550 3900 0    50   ~ 0
RTS
Text Label 7550 3700 0    50   ~ 0
DTR
Connection ~ 7850 3700
Wire Wire Line
	7850 3700 8000 3700
Text Label 6450 3400 0    50   ~ 0
CHIP_PU
Wire Wire Line
	6650 3400 6400 3400
Wire Wire Line
	6650 3500 6650 3400
Wire Wire Line
	7850 4000 7850 3700
Wire Wire Line
	6650 4000 7850 4000
Wire Wire Line
	7500 3700 7850 3700
Wire Wire Line
	6950 3700 7200 3700
$Comp
L Device:R R?
U 1 1 5E6580C2
P 7350 3700
AR Path="/5E6580C2" Ref="R?"  Part="1" 
AR Path="/5E63133E/5E6580C2" Ref="R?"  Part="1" 
F 0 "R?" V 7300 3500 50  0000 C CNN
F 1 "10k" V 7234 3700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7280 3700 50  0001 C CNN
F 3 "~" H 7350 3700 50  0001 C CNN
	1    7350 3700
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5E676E71
P 1550 1950
AR Path="/5DD0103A/5E676E71" Ref="D?"  Part="1" 
AR Path="/5E676E71" Ref="D?"  Part="1" 
AR Path="/5E63133E/5E676E71" Ref="D?"  Part="1" 
F 0 "D?" V 1497 2028 50  0000 L CNN
F 1 "LED1" V 1588 2028 50  0000 L CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1550 1950 50  0001 C CNN
F 3 "~" H 1550 1950 50  0001 C CNN
	1    1550 1950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E676E77
P 1550 1800
AR Path="/5DD0103A/5E676E77" Ref="#PWR?"  Part="1" 
AR Path="/5E676E77" Ref="#PWR?"  Part="1" 
AR Path="/5E63133E/5E676E77" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1550 1550 50  0001 C CNN
F 1 "GND" H 1555 1627 50  0000 C CNN
F 2 "" H 1550 1800 50  0001 C CNN
F 3 "" H 1550 1800 50  0001 C CNN
	1    1550 1800
	-1   0    0    1   
$EndComp
$Comp
L Device:R RD?
U 1 1 5E676E7D
P 1550 2250
AR Path="/5DD0103A/5E676E7D" Ref="RD?"  Part="1" 
AR Path="/5E676E7D" Ref="RD?"  Part="1" 
AR Path="/5E63133E/5E676E7D" Ref="RD?"  Part="1" 
F 0 "RD?" H 1620 2296 50  0000 L CNN
F 1 "200" H 1620 2205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1480 2250 50  0001 C CNN
F 3 "~" H 1550 2250 50  0001 C CNN
	1    1550 2250
	1    0    0    -1  
$EndComp
Text GLabel 1550 2450 2    50   Input ~ 0
LED_1
Wire Wire Line
	1550 2400 1550 2450
$Comp
L Device:LED D?
U 1 1 5E676E85
P 2000 1950
AR Path="/5DD0103A/5E676E85" Ref="D?"  Part="1" 
AR Path="/5E676E85" Ref="D?"  Part="1" 
AR Path="/5E63133E/5E676E85" Ref="D?"  Part="1" 
F 0 "D?" V 1947 2028 50  0000 L CNN
F 1 "LED2" V 2038 2028 50  0000 L CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2000 1950 50  0001 C CNN
F 3 "~" H 2000 1950 50  0001 C CNN
	1    2000 1950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E676E8B
P 2000 1800
AR Path="/5DD0103A/5E676E8B" Ref="#PWR?"  Part="1" 
AR Path="/5E676E8B" Ref="#PWR?"  Part="1" 
AR Path="/5E63133E/5E676E8B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2000 1550 50  0001 C CNN
F 1 "GND" H 2005 1627 50  0000 C CNN
F 2 "" H 2000 1800 50  0001 C CNN
F 3 "" H 2000 1800 50  0001 C CNN
	1    2000 1800
	-1   0    0    1   
$EndComp
$Comp
L Device:R RD?
U 1 1 5E676E91
P 2000 2250
AR Path="/5DD0103A/5E676E91" Ref="RD?"  Part="1" 
AR Path="/5E676E91" Ref="RD?"  Part="1" 
AR Path="/5E63133E/5E676E91" Ref="RD?"  Part="1" 
F 0 "RD?" H 2070 2296 50  0000 L CNN
F 1 "200" H 2070 2205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1930 2250 50  0001 C CNN
F 3 "~" H 2000 2250 50  0001 C CNN
	1    2000 2250
	1    0    0    -1  
$EndComp
Text GLabel 2000 2450 2    50   Input ~ 0
LED_2
$Comp
L Device:LED D?
U 1 1 5E676E98
P 2450 1950
AR Path="/5DD0103A/5E676E98" Ref="D?"  Part="1" 
AR Path="/5E676E98" Ref="D?"  Part="1" 
AR Path="/5E63133E/5E676E98" Ref="D?"  Part="1" 
F 0 "D?" V 2397 2028 50  0000 L CNN
F 1 "LED3" V 2488 2028 50  0000 L CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2450 1950 50  0001 C CNN
F 3 "~" H 2450 1950 50  0001 C CNN
	1    2450 1950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E676E9E
P 2450 1800
AR Path="/5DD0103A/5E676E9E" Ref="#PWR?"  Part="1" 
AR Path="/5E676E9E" Ref="#PWR?"  Part="1" 
AR Path="/5E63133E/5E676E9E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2450 1550 50  0001 C CNN
F 1 "GND" H 2455 1627 50  0000 C CNN
F 2 "" H 2450 1800 50  0001 C CNN
F 3 "" H 2450 1800 50  0001 C CNN
	1    2450 1800
	-1   0    0    1   
$EndComp
$Comp
L Device:R RD?
U 1 1 5E676EA4
P 2450 2250
AR Path="/5DD0103A/5E676EA4" Ref="RD?"  Part="1" 
AR Path="/5E676EA4" Ref="RD?"  Part="1" 
AR Path="/5E63133E/5E676EA4" Ref="RD?"  Part="1" 
F 0 "RD?" H 2520 2296 50  0000 L CNN
F 1 "200" H 2520 2205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2380 2250 50  0001 C CNN
F 3 "~" H 2450 2250 50  0001 C CNN
	1    2450 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5E676EAA
P 2900 1950
AR Path="/5DD0103A/5E676EAA" Ref="D?"  Part="1" 
AR Path="/5E676EAA" Ref="D?"  Part="1" 
AR Path="/5E63133E/5E676EAA" Ref="D?"  Part="1" 
F 0 "D?" V 2847 2028 50  0000 L CNN
F 1 "LED4" V 2938 2028 50  0000 L CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2900 1950 50  0001 C CNN
F 3 "~" H 2900 1950 50  0001 C CNN
	1    2900 1950
	0    1    1    0   
$EndComp
$Comp
L Device:R RD?
U 1 1 5E676EB0
P 2900 2250
AR Path="/5DD0103A/5E676EB0" Ref="RD?"  Part="1" 
AR Path="/5E676EB0" Ref="RD?"  Part="1" 
AR Path="/5E63133E/5E676EB0" Ref="RD?"  Part="1" 
F 0 "RD?" H 2970 2296 50  0000 L CNN
F 1 "200" H 2970 2205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2830 2250 50  0001 C CNN
F 3 "~" H 2900 2250 50  0001 C CNN
	1    2900 2250
	1    0    0    -1  
$EndComp
Text GLabel 2900 2450 2    50   Input ~ 0
LED_4
Wire Wire Line
	2900 2400 2900 2450
Text GLabel 2450 2450 2    50   Input ~ 0
LED_3
Wire Wire Line
	2450 2400 2450 2450
Text Label 1550 2100 0    50   ~ 0
LED1
Text Label 2000 2100 0    50   ~ 0
LED2
Text Label 2900 2100 0    50   ~ 0
LED4
Wire Wire Line
	2000 2400 2000 2450
$Comp
L Switch:SW_Push MODE?
U 1 1 5E676EBE
P 2900 3550
AR Path="/5DD0103A/5E676EBE" Ref="MODE?"  Part="1" 
AR Path="/5E676EBE" Ref="MODE?"  Part="1" 
AR Path="/5E63133E/5E676EBE" Ref="MODE?"  Part="1" 
F 0 "MODE?" V 2750 3600 50  0000 L CNN
F 1 "SW_Push" V 3000 3600 50  0000 L CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 2900 3750 50  0001 C CNN
F 3 "~" H 2900 3750 50  0001 C CNN
	1    2900 3550
	0    1    1    0   
$EndComp
$Comp
L Device:R RIO?
U 1 1 5E676EC4
P 2900 3000
AR Path="/5DD0103A/5E676EC4" Ref="RIO?"  Part="1" 
AR Path="/5E676EC4" Ref="RIO?"  Part="1" 
AR Path="/5E63133E/5E676EC4" Ref="RIO?"  Part="1" 
F 0 "RIO?" H 2970 3046 50  0000 L CNN
F 1 "10k" H 2970 2955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2830 3000 50  0001 C CNN
F 3 "~" H 2900 3000 50  0001 C CNN
	1    2900 3000
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5E676ECA
P 2900 2850
AR Path="/5DD0103A/5E676ECA" Ref="#PWR?"  Part="1" 
AR Path="/5E676ECA" Ref="#PWR?"  Part="1" 
AR Path="/5E63133E/5E676ECA" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2900 2700 50  0001 C CNN
F 1 "+3.3V" H 2915 3023 50  0000 C CNN
F 2 "" H 2900 2850 50  0001 C CNN
F 3 "" H 2900 2850 50  0001 C CNN
	1    2900 2850
	1    0    0    -1  
$EndComp
Text GLabel 2750 3150 1    50   Input ~ 0
GPIO_0
$Comp
L power:GND #PWR?
U 1 1 5E676ED1
P 2900 3750
AR Path="/5DD0103A/5E676ED1" Ref="#PWR?"  Part="1" 
AR Path="/5E676ED1" Ref="#PWR?"  Part="1" 
AR Path="/5E63133E/5E676ED1" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2900 3500 50  0001 C CNN
F 1 "GND" H 2905 3577 50  0000 C CNN
F 2 "" H 2900 3750 50  0001 C CNN
F 3 "" H 2900 3750 50  0001 C CNN
	1    2900 3750
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push CLEAR?
U 1 1 5E676ED7
P 1850 3550
AR Path="/5DD0103A/5E676ED7" Ref="CLEAR?"  Part="1" 
AR Path="/5E676ED7" Ref="CLEAR?"  Part="1" 
AR Path="/5E63133E/5E676ED7" Ref="CLEAR?"  Part="1" 
F 0 "CLEAR?" V 1700 3600 50  0000 L CNN
F 1 "SW_Push" V 2000 3600 50  0000 L CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 1850 3750 50  0001 C CNN
F 3 "~" H 1850 3750 50  0001 C CNN
	1    1850 3550
	0    1    1    0   
$EndComp
Text GLabel 1850 3150 1    50   Input ~ 0
SysReset
$Comp
L power:GND #PWR?
U 1 1 5E676EDE
P 1850 3750
AR Path="/5DD0103A/5E676EDE" Ref="#PWR?"  Part="1" 
AR Path="/5E676EDE" Ref="#PWR?"  Part="1" 
AR Path="/5E63133E/5E676EDE" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1850 3500 50  0001 C CNN
F 1 "GND" H 1855 3577 50  0000 C CNN
F 2 "" H 1850 3750 50  0001 C CNN
F 3 "" H 1850 3750 50  0001 C CNN
	1    1850 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E676EE4
P 2350 3750
AR Path="/5DD0103A/5E676EE4" Ref="#PWR?"  Part="1" 
AR Path="/5E676EE4" Ref="#PWR?"  Part="1" 
AR Path="/5E63133E/5E676EE4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2350 3500 50  0001 C CNN
F 1 "GND" H 2355 3577 50  0000 C CNN
F 2 "" H 2350 3750 50  0001 C CNN
F 3 "" H 2350 3750 50  0001 C CNN
	1    2350 3750
	1    0    0    -1  
$EndComp
Text GLabel 2200 3150 1    50   Input ~ 0
CHIP_PU
$Comp
L power:+3.3V #PWR?
U 1 1 5E676EEB
P 2350 2850
AR Path="/5DD0103A/5E676EEB" Ref="#PWR?"  Part="1" 
AR Path="/5E676EEB" Ref="#PWR?"  Part="1" 
AR Path="/5E63133E/5E676EEB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2350 2700 50  0001 C CNN
F 1 "+3.3V" H 2365 3023 50  0000 C CNN
F 2 "" H 2350 2850 50  0001 C CNN
F 3 "" H 2350 2850 50  0001 C CNN
	1    2350 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R REN?
U 1 1 5E676EF1
P 2350 3000
AR Path="/5DD0103A/5E676EF1" Ref="REN?"  Part="1" 
AR Path="/5E676EF1" Ref="REN?"  Part="1" 
AR Path="/5E63133E/5E676EF1" Ref="REN?"  Part="1" 
F 0 "REN?" H 2420 3046 50  0000 L CNN
F 1 "10k" H 2420 2955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2280 3000 50  0001 C CNN
F 3 "~" H 2350 3000 50  0001 C CNN
	1    2350 3000
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push ENABLE?
U 1 1 5E676EF7
P 2350 3550
AR Path="/5DD0103A/5E676EF7" Ref="ENABLE?"  Part="1" 
AR Path="/5E676EF7" Ref="ENABLE?"  Part="1" 
AR Path="/5E63133E/5E676EF7" Ref="ENABLE?"  Part="1" 
F 0 "ENABLE?" V 2200 3600 50  0000 L CNN
F 1 "SW_Push" V 2500 3550 50  0000 L CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 2350 3750 50  0001 C CNN
F 3 "~" H 2350 3750 50  0001 C CNN
	1    2350 3550
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5E676EFD
P 2450 4450
AR Path="/5DD0103A/5E676EFD" Ref="D?"  Part="1" 
AR Path="/5E676EFD" Ref="D?"  Part="1" 
AR Path="/5E63133E/5E676EFD" Ref="D?"  Part="1" 
F 0 "D?" V 2397 4528 50  0000 L CNN
F 1 "LED5" V 2488 4528 50  0000 L CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2450 4450 50  0001 C CNN
F 3 "~" H 2450 4450 50  0001 C CNN
	1    2450 4450
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E676F03
P 2450 4300
AR Path="/5DD0103A/5E676F03" Ref="#PWR?"  Part="1" 
AR Path="/5E676F03" Ref="#PWR?"  Part="1" 
AR Path="/5E63133E/5E676F03" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2450 4050 50  0001 C CNN
F 1 "GND" H 2455 4127 50  0000 C CNN
F 2 "" H 2450 4300 50  0001 C CNN
F 3 "" H 2450 4300 50  0001 C CNN
	1    2450 4300
	-1   0    0    1   
$EndComp
$Comp
L Device:R RD?
U 1 1 5E676F09
P 2450 4750
AR Path="/5DD0103A/5E676F09" Ref="RD?"  Part="1" 
AR Path="/5E676F09" Ref="RD?"  Part="1" 
AR Path="/5E63133E/5E676F09" Ref="RD?"  Part="1" 
F 0 "RD?" H 2520 4796 50  0000 L CNN
F 1 "270" H 2520 4705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2380 4750 50  0001 C CNN
F 3 "~" H 2450 4750 50  0001 C CNN
	1    2450 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 4900 2450 4950
Text GLabel 2450 4950 2    50   Input ~ 0
GPIO_2
Text Label 2450 4600 0    50   ~ 0
LED5
Text Label 1850 3300 2    50   ~ 0
SysReset
Wire Wire Line
	1850 3150 1850 3350
Wire Wire Line
	2350 3150 2350 3350
Wire Wire Line
	2900 3150 2900 3350
Wire Wire Line
	2750 3150 2900 3150
Connection ~ 2900 3150
Wire Wire Line
	2200 3150 2350 3150
Connection ~ 2350 3150
Text Label 2350 3300 2    50   ~ 0
CHIP_PU
Text Label 2900 3300 2    50   ~ 0
GPIO_0
$Comp
L Device:LED D?
U 1 1 5E676F1C
P 2900 4450
AR Path="/5DD0103A/5E676F1C" Ref="D?"  Part="1" 
AR Path="/5E676F1C" Ref="D?"  Part="1" 
AR Path="/5E63133E/5E676F1C" Ref="D?"  Part="1" 
F 0 "D?" V 2847 4528 50  0000 L CNN
F 1 "LED6" V 2938 4528 50  0000 L CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2900 4450 50  0001 C CNN
F 3 "~" H 2900 4450 50  0001 C CNN
	1    2900 4450
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E676F22
P 2900 4300
AR Path="/5DD0103A/5E676F22" Ref="#PWR?"  Part="1" 
AR Path="/5E676F22" Ref="#PWR?"  Part="1" 
AR Path="/5E63133E/5E676F22" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2900 4050 50  0001 C CNN
F 1 "GND" H 2905 4127 50  0000 C CNN
F 2 "" H 2900 4300 50  0001 C CNN
F 3 "" H 2900 4300 50  0001 C CNN
	1    2900 4300
	-1   0    0    1   
$EndComp
$Comp
L Device:R RD?
U 1 1 5E676F28
P 2900 4750
AR Path="/5DD0103A/5E676F28" Ref="RD?"  Part="1" 
AR Path="/5E676F28" Ref="RD?"  Part="1" 
AR Path="/5E63133E/5E676F28" Ref="RD?"  Part="1" 
F 0 "RD?" H 2970 4796 50  0000 L CNN
F 1 "200" H 2970 4705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2830 4750 50  0001 C CNN
F 3 "~" H 2900 4750 50  0001 C CNN
	1    2900 4750
	1    0    0    -1  
$EndComp
Text GLabel 2900 4950 2    50   Input ~ 0
Status
Wire Wire Line
	2900 4900 2900 4950
Text Label 2900 4600 0    50   ~ 0
LED6
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 5E676F31
P 2050 4550
AR Path="/5E676F31" Ref="J?"  Part="1" 
AR Path="/5E63133E/5E676F31" Ref="J?"  Part="1" 
F 0 "J?" H 2200 4900 50  0000 R CNN
F 1 "Conn_01x06_Male" H 2650 4150 50  0000 R CNN
F 2 "" H 2050 4550 50  0001 C CNN
F 3 "~" H 2050 4550 50  0001 C CNN
	1    2050 4550
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5E676F37
P 1850 4350
AR Path="/5E676F37" Ref="#PWR?"  Part="1" 
AR Path="/5E63133E/5E676F37" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1850 4200 50  0001 C CNN
F 1 "+3.3V" V 1865 4478 50  0000 L CNN
F 2 "" H 1850 4350 50  0001 C CNN
F 3 "" H 1850 4350 50  0001 C CNN
	1    1850 4350
	0    -1   -1   0   
$EndComp
Text GLabel 1850 4550 0    50   Input ~ 0
GPIO_2
Text GLabel 1850 4650 0    50   Input ~ 0
GPIO_15
Text GLabel 1850 4750 0    50   Input ~ 0
TXD
Text GLabel 1850 4850 0    50   Input ~ 0
RXD
$Comp
L power:GND #PWR?
U 1 1 5E676F41
P 1850 4450
AR Path="/5E676F41" Ref="#PWR?"  Part="1" 
AR Path="/5E63133E/5E676F41" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1850 4200 50  0001 C CNN
F 1 "GND" V 1855 4322 50  0000 R CNN
F 2 "" H 1850 4450 50  0001 C CNN
F 3 "" H 1850 4450 50  0001 C CNN
	1    1850 4450
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E676F47
P 2900 1800
AR Path="/5DD0103A/5E676F47" Ref="#PWR?"  Part="1" 
AR Path="/5E676F47" Ref="#PWR?"  Part="1" 
AR Path="/5E63133E/5E676F47" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2900 1550 50  0001 C CNN
F 1 "GND" H 2905 1627 50  0000 C CNN
F 2 "" H 2900 1800 50  0001 C CNN
F 3 "" H 2900 1800 50  0001 C CNN
	1    2900 1800
	-1   0    0    1   
$EndComp
$Comp
L Connector:Jack-DC J?
U 1 1 5E698902
P 9000 3100
AR Path="/5E698902" Ref="J?"  Part="1" 
AR Path="/5E63133E/5E698902" Ref="J?"  Part="1" 
F 0 "J?" H 8800 3300 50  0000 C CNN
F 1 "Jack-DC" H 9150 3300 50  0000 C CNN
F 2 "" H 9050 3060 50  0001 C CNN
F 3 "~" H 9050 3060 50  0001 C CNN
	1    9000 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:L L?
U 1 1 5E698908
P 10450 5200
AR Path="/5E698908" Ref="L?"  Part="1" 
AR Path="/5E63133E/5E698908" Ref="L?"  Part="1" 
F 0 "L?" V 10503 5246 50  0000 L CNN
F 1 "68uH" V 10500 5000 50  0000 L CNN
F 2 "" H 10450 5200 50  0001 C CNN
F 3 "~" H 10450 5200 50  0001 C CNN
	1    10450 5200
	0    -1   -1   0   
$EndComp
$Comp
L Diode:B260 D?
U 1 1 5E69890E
P 10300 5700
AR Path="/5E69890E" Ref="D?"  Part="1" 
AR Path="/5E63133E/5E69890E" Ref="D?"  Part="1" 
F 0 "D?" V 10254 5779 50  0000 L CNN
F 1 "B260" V 10345 5779 50  0000 L CNN
F 2 "Diode_SMD:D_SMB" H 10300 5525 50  0001 C CNN
F 3 "http://www.jameco.com/Jameco/Products/ProdDS/1538777.pdf" H 10300 5700 50  0001 C CNN
	1    10300 5700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E698914
P 9850 5900
AR Path="/5E698914" Ref="#PWR?"  Part="1" 
AR Path="/5E63133E/5E698914" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9850 5650 50  0001 C CNN
F 1 "GND" H 9855 5727 50  0000 C CNN
F 2 "" H 9850 5900 50  0001 C CNN
F 3 "" H 9850 5900 50  0001 C CNN
	1    9850 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 5200 10250 5200
Wire Wire Line
	10600 5200 10650 5200
$Comp
L power:+3.3V #PWR?
U 1 1 5E69891C
P 10900 5200
AR Path="/5E69891C" Ref="#PWR?"  Part="1" 
AR Path="/5E63133E/5E69891C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10900 5050 50  0001 C CNN
F 1 "+3.3V" H 10915 5373 50  0000 C CNN
F 2 "" H 10900 5200 50  0001 C CNN
F 3 "" H 10900 5200 50  0001 C CNN
	1    10900 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 5450 10650 5450
Wire Wire Line
	10650 5450 10650 5200
Wire Wire Line
	10300 5550 10300 5200
Connection ~ 10300 5200
$Comp
L Device:CP C?
U 1 1 5E698926
P 10800 5350
AR Path="/5E698926" Ref="C?"  Part="1" 
AR Path="/5E63133E/5E698926" Ref="C?"  Part="1" 
F 0 "C?" H 10800 5450 50  0000 L CNN
F 1 "15uF" H 10800 5250 50  0000 L CNN
F 2 "" H 10838 5200 50  0001 C CNN
F 3 "~" H 10800 5350 50  0001 C CNN
	1    10800 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	10650 5200 10800 5200
Connection ~ 10650 5200
Connection ~ 10800 5200
Wire Wire Line
	10800 5200 10900 5200
Wire Wire Line
	9850 5900 10300 5900
Wire Wire Line
	10300 5900 10300 5850
Connection ~ 9850 5900
Wire Wire Line
	9850 5700 9850 5900
Wire Wire Line
	10800 5500 10800 5900
Wire Wire Line
	10800 5900 10300 5900
Connection ~ 10300 5900
Connection ~ 9400 5900
Wire Wire Line
	9400 5900 9850 5900
Wire Wire Line
	9200 5900 9400 5900
Connection ~ 9200 5200
Wire Wire Line
	9400 5200 9200 5200
Wire Wire Line
	9400 5450 9400 5900
Wire Wire Line
	9200 5500 9200 5900
$Comp
L Device:CP C?
U 1 1 5E69893E
P 9200 5350
AR Path="/5E69893E" Ref="C?"  Part="1" 
AR Path="/5E63133E/5E69893E" Ref="C?"  Part="1" 
F 0 "C?" H 8900 5400 50  0000 L CNN
F 1 "15uF" H 8900 5300 50  0000 L CNN
F 2 "" H 9238 5200 50  0001 C CNN
F 3 "~" H 9200 5350 50  0001 C CNN
	1    9200 5350
	1    0    0    -1  
$EndComp
$Comp
L power:+24V #PWR?
U 1 1 5E698944
P 8950 5200
AR Path="/5E698944" Ref="#PWR?"  Part="1" 
AR Path="/5E63133E/5E698944" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8950 5050 50  0001 C CNN
F 1 "+24V" H 8965 5373 50  0000 C CNN
F 2 "" H 8950 5200 50  0001 C CNN
F 3 "" H 8950 5200 50  0001 C CNN
	1    8950 5200
	1    0    0    -1  
$EndComp
$Comp
L Aktorbaustein:MIC4680-3.3YM-TR U?
U 1 1 5E69894A
P 9850 5000
AR Path="/5E69894A" Ref="U?"  Part="1" 
AR Path="/5E63133E/5E69894A" Ref="U?"  Part="1" 
F 0 "U?" H 9825 5065 50  0000 C CNN
F 1 "MIC4680-3.3YM-TR" H 9825 4974 50  0000 C CNN
F 2 "LM75BIMX-3_:SOIC127P600X175-8N" H 9850 5000 50  0001 C CNN
F 3 "" H 9850 5000 50  0001 C CNN
	1    9850 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F?
U 1 1 5E698950
P 9600 4050
AR Path="/5E698950" Ref="F?"  Part="1" 
AR Path="/5E63133E/5E698950" Ref="F?"  Part="1" 
F 0 "F?" V 9700 4100 50  0000 L CNN
F 1 "Fuse" V 9700 3900 50  0000 L CNN
F 2 "" V 9530 4050 50  0001 C CNN
F 3 "~" H 9600 4050 50  0001 C CNN
	1    9600 4050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8950 5200 9200 5200
Wire Wire Line
	9650 4350 9900 4350
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 5E698958
P 9900 3050
AR Path="/5E698958" Ref="J?"  Part="1" 
AR Path="/5E63133E/5E698958" Ref="J?"  Part="1" 
F 0 "J?" H 9950 3000 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 9500 2850 50  0000 L CNN
F 2 "" H 9900 3050 50  0001 C CNN
F 3 "~" H 9900 3050 50  0001 C CNN
	1    9900 3050
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 5E69895E
P 9150 4150
AR Path="/5E69895E" Ref="J?"  Part="1" 
AR Path="/5E63133E/5E69895E" Ref="J?"  Part="1" 
F 0 "J?" H 9200 4100 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 8700 4250 50  0000 L CNN
F 2 "" H 9150 4150 50  0001 C CNN
F 3 "~" H 9150 4150 50  0001 C CNN
	1    9150 4150
	-1   0    0    1   
$EndComp
$Comp
L power:+24V #PWR?
U 1 1 5E698964
P 10200 4350
AR Path="/5E698964" Ref="#PWR?"  Part="1" 
AR Path="/5E63133E/5E698964" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10200 4200 50  0001 C CNN
F 1 "+24V" V 10215 4478 50  0000 L CNN
F 2 "" H 10200 4350 50  0001 C CNN
F 3 "" H 10200 4350 50  0001 C CNN
	1    10200 4350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E69896A
P 10250 4050
AR Path="/5E69896A" Ref="#PWR?"  Part="1" 
AR Path="/5E63133E/5E69896A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10250 3800 50  0001 C CNN
F 1 "GND" V 10255 3922 50  0000 R CNN
F 2 "" H 10250 4050 50  0001 C CNN
F 3 "" H 10250 4050 50  0001 C CNN
	1    10250 4050
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D?
U 1 1 5E698970
P 9900 4200
AR Path="/5E698970" Ref="D?"  Part="1" 
AR Path="/5E63133E/5E698970" Ref="D?"  Part="1" 
F 0 "D?" V 9854 4279 50  0000 L CNN
F 1 "D" V 9945 4279 50  0000 L CNN
F 2 "" H 9900 4200 50  0001 C CNN
F 3 "~" H 9900 4200 50  0001 C CNN
	1    9900 4200
	0    1    1    0   
$EndComp
Connection ~ 9900 4350
Wire Wire Line
	9900 4350 10200 4350
Wire Wire Line
	9750 4050 9900 4050
Wire Wire Line
	9900 4050 10250 4050
Connection ~ 9900 4050
Wire Wire Line
	9700 3050 9500 3050
Wire Wire Line
	9500 3050 9500 3000
Wire Wire Line
	9500 3000 9300 3000
Wire Wire Line
	9700 3150 9500 3150
Wire Wire Line
	9500 3150 9500 3200
Wire Wire Line
	9500 3200 9300 3200
Wire Wire Line
	9450 4050 9350 4050
Wire Wire Line
	9350 4150 9650 4150
Wire Wire Line
	9650 4150 9650 4350
$EndSCHEMATC
