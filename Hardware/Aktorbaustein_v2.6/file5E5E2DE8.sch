EESchema Schematic File Version 4
LIBS:Aktorbaustein-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
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
L power:GND #PWR?
U 1 1 5E60C64B
P 3750 2100
AR Path="/5E60C64B" Ref="#PWR?"  Part="1" 
AR Path="/5E5E2DE9/5E60C64B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3750 1850 50  0001 C CNN
F 1 "GND" H 3900 2050 50  0000 C CNN
F 2 "" H 3750 2100 50  0001 C CNN
F 3 "" H 3750 2100 50  0001 C CNN
	1    3750 2100
	1    0    0    -1  
$EndComp
Text GLabel 2200 3550 0    50   Input Italic 0
K2
Text GLabel 2200 5300 0    50   Input ~ 0
K3
Text GLabel 2200 7050 0    50   Input ~ 0
K4
Text GLabel 2200 1750 0    50   Input ~ 0
K1
Wire Wire Line
	2700 1750 2600 1750
$Comp
L Device:R R?
U 1 1 5E60C656
P 2350 1750
AR Path="/5E60C656" Ref="R?"  Part="1" 
AR Path="/5E5E2DE9/5E60C656" Ref="R?"  Part="1" 
F 0 "R?" V 2143 1750 50  0000 C CNN
F 1 "330" V 2234 1750 50  0000 C CNN
F 2 "" V 2280 1750 50  0001 C CNN
F 3 "~" H 2350 1750 50  0001 C CNN
	1    2350 1750
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5E60C65C
P 2600 1900
AR Path="/5E60C65C" Ref="R?"  Part="1" 
AR Path="/5E5E2DE9/5E60C65C" Ref="R?"  Part="1" 
F 0 "R?" H 2670 1946 50  0000 L CNN
F 1 "100k" H 2670 1855 50  0000 L CNN
F 2 "" V 2530 1900 50  0001 C CNN
F 3 "~" H 2600 1900 50  0001 C CNN
	1    2600 1900
	1    0    0    -1  
$EndComp
Connection ~ 2600 1750
Wire Wire Line
	2600 1750 2500 1750
Wire Wire Line
	3000 1950 3000 2050
Wire Wire Line
	3000 2050 2600 2050
$Comp
L power:GND #PWR?
U 1 1 5E60C666
P 3000 3850
AR Path="/5E60C666" Ref="#PWR?"  Part="1" 
AR Path="/5E5E2DE9/5E60C666" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3000 3600 50  0001 C CNN
F 1 "GND" H 3150 3800 50  0000 C CNN
F 2 "" H 3000 3850 50  0001 C CNN
F 3 "" H 3000 3850 50  0001 C CNN
	1    3000 3850
	1    0    0    -1  
$EndComp
Connection ~ 3000 2500
$Comp
L power:+24V #PWR?
U 1 1 5E60C66D
P 3000 2500
AR Path="/5E60C66D" Ref="#PWR?"  Part="1" 
AR Path="/5E5E2DE9/5E60C66D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3000 2350 50  0001 C CNN
F 1 "+24V" H 3015 2673 50  0000 C CNN
F 2 "" H 3000 2500 50  0001 C CNN
F 3 "" H 3000 2500 50  0001 C CNN
	1    3000 2500
	1    0    0    -1  
$EndComp
Text Label 3400 3400 3    50   ~ 0
K2_11
Text Label 3500 2550 1    50   ~ 0
K2_14
Text Label 3300 2550 1    50   ~ 0
K2_12
Wire Wire Line
	3400 3250 3400 3400
Wire Wire Line
	3500 2650 3500 2550
Wire Wire Line
	3300 2650 3300 2550
Wire Wire Line
	3000 2500 2650 2500
Wire Wire Line
	3000 3350 3000 3250
Wire Wire Line
	2650 3350 3000 3350
Wire Wire Line
	2650 3100 2650 3350
Wire Wire Line
	2650 2500 2650 2800
Wire Wire Line
	3000 2500 3000 2650
Wire Wire Line
	2700 3550 2600 3550
$Comp
L Device:R R?
U 1 1 5E60C680
P 2350 3550
AR Path="/5E60C680" Ref="R?"  Part="1" 
AR Path="/5E5E2DE9/5E60C680" Ref="R?"  Part="1" 
F 0 "R?" V 2143 3550 50  0000 C CNN
F 1 "330" V 2234 3550 50  0000 C CNN
F 2 "" V 2280 3550 50  0001 C CNN
F 3 "~" H 2350 3550 50  0001 C CNN
	1    2350 3550
	0    1    1    0   
$EndComp
$Comp
L Relay:RT314A24 K?
U 1 1 5E60C686
P 3200 2950
AR Path="/5E60C686" Ref="K?"  Part="1" 
AR Path="/5E5E2DE9/5E60C686" Ref="K?"  Part="1" 
F 0 "K?" H 3630 2996 50  0000 L CNN
F 1 "RT314A24" H 3450 2700 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_Schrack-RT1-16A-FormC_RM5mm" H 4750 2900 50  0001 C CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=RT1_bistable&DocType=DS&DocLang=English" H 3650 3100 50  0001 C CNN
	1    3200 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E60C68C
P 2600 3700
AR Path="/5E60C68C" Ref="R?"  Part="1" 
AR Path="/5E5E2DE9/5E60C68C" Ref="R?"  Part="1" 
F 0 "R?" H 2670 3746 50  0000 L CNN
F 1 "100k" H 2670 3655 50  0000 L CNN
F 2 "" V 2530 3700 50  0001 C CNN
F 3 "~" H 2600 3700 50  0001 C CNN
	1    2600 3700
	1    0    0    -1  
$EndComp
Connection ~ 2600 3550
Wire Wire Line
	2600 3550 2500 3550
Wire Wire Line
	3000 3750 3000 3850
Wire Wire Line
	3000 3850 2600 3850
Connection ~ 3000 3850
$Comp
L power:GND #PWR?
U 1 1 5E60C697
P 3000 5600
AR Path="/5E60C697" Ref="#PWR?"  Part="1" 
AR Path="/5E5E2DE9/5E60C697" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3000 5350 50  0001 C CNN
F 1 "GND" H 3150 5550 50  0000 C CNN
F 2 "" H 3000 5600 50  0001 C CNN
F 3 "" H 3000 5600 50  0001 C CNN
	1    3000 5600
	1    0    0    -1  
$EndComp
Connection ~ 3000 4250
$Comp
L power:+24V #PWR?
U 1 1 5E60C69E
P 3000 4250
AR Path="/5E60C69E" Ref="#PWR?"  Part="1" 
AR Path="/5E5E2DE9/5E60C69E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3000 4100 50  0001 C CNN
F 1 "+24V" H 3015 4423 50  0000 C CNN
F 2 "" H 3000 4250 50  0001 C CNN
F 3 "" H 3000 4250 50  0001 C CNN
	1    3000 4250
	1    0    0    -1  
$EndComp
Text Label 3400 5150 3    50   ~ 0
K3_11
Text Label 3500 4300 1    50   ~ 0
K3_14
Text Label 3300 4300 1    50   ~ 0
K3_12
Wire Wire Line
	3400 5000 3400 5150
Wire Wire Line
	3500 4400 3500 4300
Wire Wire Line
	3300 4400 3300 4300
Wire Wire Line
	3000 4250 2650 4250
Wire Wire Line
	3000 5100 3000 5000
Wire Wire Line
	2650 5100 3000 5100
Wire Wire Line
	2650 4850 2650 5100
Wire Wire Line
	2650 4250 2650 4550
Wire Wire Line
	3000 4250 3000 4400
Wire Wire Line
	2700 5300 2600 5300
$Comp
L Device:R R?
U 1 1 5E60C6B1
P 2350 5300
AR Path="/5E60C6B1" Ref="R?"  Part="1" 
AR Path="/5E5E2DE9/5E60C6B1" Ref="R?"  Part="1" 
F 0 "R?" V 2143 5300 50  0000 C CNN
F 1 "330" V 2234 5300 50  0000 C CNN
F 2 "" V 2280 5300 50  0001 C CNN
F 3 "~" H 2350 5300 50  0001 C CNN
	1    2350 5300
	0    1    1    0   
$EndComp
$Comp
L Relay:RT314A24 K?
U 1 1 5E60C6B7
P 3200 4700
AR Path="/5E60C6B7" Ref="K?"  Part="1" 
AR Path="/5E5E2DE9/5E60C6B7" Ref="K?"  Part="1" 
F 0 "K?" H 3630 4746 50  0000 L CNN
F 1 "RT314A24" H 3450 4450 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_Schrack-RT1-16A-FormC_RM5mm" H 4750 4650 50  0001 C CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=RT1_bistable&DocType=DS&DocLang=English" H 3650 4850 50  0001 C CNN
	1    3200 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E60C6BD
P 2600 5450
AR Path="/5E60C6BD" Ref="R?"  Part="1" 
AR Path="/5E5E2DE9/5E60C6BD" Ref="R?"  Part="1" 
F 0 "R?" H 2670 5496 50  0000 L CNN
F 1 "100k" H 2670 5405 50  0000 L CNN
F 2 "" V 2530 5450 50  0001 C CNN
F 3 "~" H 2600 5450 50  0001 C CNN
	1    2600 5450
	1    0    0    -1  
$EndComp
Connection ~ 2600 5300
Wire Wire Line
	2600 5300 2500 5300
Wire Wire Line
	3000 5500 3000 5600
Wire Wire Line
	3000 5600 2600 5600
Connection ~ 3000 5600
$Comp
L power:GND #PWR?
U 1 1 5E60C6C8
P 3000 7350
AR Path="/5E60C6C8" Ref="#PWR?"  Part="1" 
AR Path="/5E5E2DE9/5E60C6C8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3000 7100 50  0001 C CNN
F 1 "GND" H 3150 7300 50  0000 C CNN
F 2 "" H 3000 7350 50  0001 C CNN
F 3 "" H 3000 7350 50  0001 C CNN
	1    3000 7350
	1    0    0    -1  
$EndComp
Connection ~ 3000 6000
$Comp
L power:+24V #PWR?
U 1 1 5E60C6CF
P 3000 6000
AR Path="/5E60C6CF" Ref="#PWR?"  Part="1" 
AR Path="/5E5E2DE9/5E60C6CF" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3000 5850 50  0001 C CNN
F 1 "+24V" H 3015 6173 50  0000 C CNN
F 2 "" H 3000 6000 50  0001 C CNN
F 3 "" H 3000 6000 50  0001 C CNN
	1    3000 6000
	1    0    0    -1  
$EndComp
Text Label 3400 6900 3    50   ~ 0
K4_11
Text Label 3500 6050 1    50   ~ 0
K4_14
Text Label 3300 6050 1    50   ~ 0
K4_12
Wire Wire Line
	3400 6750 3400 6900
Wire Wire Line
	3500 6150 3500 6050
Wire Wire Line
	3300 6150 3300 6050
Wire Wire Line
	3000 6000 2650 6000
Wire Wire Line
	3000 6850 3000 6750
Wire Wire Line
	2650 6850 3000 6850
Wire Wire Line
	2650 6600 2650 6850
Wire Wire Line
	2650 6000 2650 6300
Wire Wire Line
	3000 6000 3000 6150
Wire Wire Line
	2700 7050 2600 7050
$Comp
L Device:R R?
U 1 1 5E60C6E2
P 2350 7050
AR Path="/5E60C6E2" Ref="R?"  Part="1" 
AR Path="/5E5E2DE9/5E60C6E2" Ref="R?"  Part="1" 
F 0 "R?" V 2143 7050 50  0000 C CNN
F 1 "330" V 2234 7050 50  0000 C CNN
F 2 "" V 2280 7050 50  0001 C CNN
F 3 "~" H 2350 7050 50  0001 C CNN
	1    2350 7050
	0    1    1    0   
$EndComp
$Comp
L Relay:RT314A24 K?
U 1 1 5E60C6E8
P 3200 6450
AR Path="/5E60C6E8" Ref="K?"  Part="1" 
AR Path="/5E5E2DE9/5E60C6E8" Ref="K?"  Part="1" 
F 0 "K?" H 3630 6496 50  0000 L CNN
F 1 "RT314A24" H 3450 6200 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_Schrack-RT1-16A-FormC_RM5mm" H 4750 6400 50  0001 C CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=RT1_bistable&DocType=DS&DocLang=English" H 3650 6600 50  0001 C CNN
	1    3200 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E60C6EE
P 2600 7200
AR Path="/5E60C6EE" Ref="R?"  Part="1" 
AR Path="/5E5E2DE9/5E60C6EE" Ref="R?"  Part="1" 
F 0 "R?" H 2670 7246 50  0000 L CNN
F 1 "100k" H 2670 7155 50  0000 L CNN
F 2 "" V 2530 7200 50  0001 C CNN
F 3 "~" H 2600 7200 50  0001 C CNN
	1    2600 7200
	1    0    0    -1  
$EndComp
Connection ~ 2600 7050
Wire Wire Line
	2600 7050 2500 7050
Wire Wire Line
	3000 7350 2600 7350
$Comp
L Diode:1N4148 D?
U 1 1 5E60C6F7
P 2650 2950
AR Path="/5E60C6F7" Ref="D?"  Part="1" 
AR Path="/5E5E2DE9/5E60C6F7" Ref="D?"  Part="1" 
F 0 "D?" V 2600 2750 50  0000 L CNN
F 1 "1N4148" V 2750 2600 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2650 2775 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 2650 2950 50  0001 C CNN
	1    2650 2950
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 5E60C6FD
P 2650 4700
AR Path="/5E60C6FD" Ref="D?"  Part="1" 
AR Path="/5E5E2DE9/5E60C6FD" Ref="D?"  Part="1" 
F 0 "D?" V 2600 4500 50  0000 L CNN
F 1 "1N4148" V 2750 4350 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2650 4525 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 2650 4700 50  0001 C CNN
	1    2650 4700
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 5E60C703
P 2650 6450
AR Path="/5E60C703" Ref="D?"  Part="1" 
AR Path="/5E5E2DE9/5E60C703" Ref="D?"  Part="1" 
F 0 "D?" V 2600 6250 50  0000 L CNN
F 1 "1N4148" V 2750 6100 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2650 6275 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 2650 6450 50  0001 C CNN
	1    2650 6450
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5E60C709
P 3500 2050
AR Path="/5E60C709" Ref="R?"  Part="1" 
AR Path="/5E5E2DE9/5E60C709" Ref="R?"  Part="1" 
F 0 "R?" V 3400 2000 50  0000 C CNN
F 1 "2k" V 3400 2150 50  0000 C CNN
F 2 "" V 3430 2050 50  0001 C CNN
F 3 "~" H 3500 2050 50  0001 C CNN
	1    3500 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	3000 2050 3300 2050
Connection ~ 3000 2050
Wire Wire Line
	3650 2050 3750 2050
Wire Wire Line
	3750 2050 3750 2100
Wire Wire Line
	3750 1650 3300 1650
Wire Wire Line
	3300 1650 3300 2050
Connection ~ 3300 2050
Wire Wire Line
	3300 2050 3350 2050
Text GLabel 3450 1850 0    50   Input ~ 0
K1
Wire Wire Line
	2650 750  2650 1000
Connection ~ 3000 750 
Wire Wire Line
	3000 750  3000 850 
$Comp
L Diode:1N4148 D?
U 1 1 5E60C71B
P 2650 1150
AR Path="/5E60C71B" Ref="D?"  Part="1" 
AR Path="/5E5E2DE9/5E60C71B" Ref="D?"  Part="1" 
F 0 "D?" V 2600 950 50  0000 L CNN
F 1 "1N4148" V 2750 800 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2650 975 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 2650 1150 50  0001 C CNN
	1    2650 1150
	0    1    1    0   
$EndComp
$Comp
L Relay:RT314A24 K?
U 1 1 5E60C721
P 3200 1150
AR Path="/5E60C721" Ref="K?"  Part="1" 
AR Path="/5E5E2DE9/5E60C721" Ref="K?"  Part="1" 
F 0 "K?" H 3630 1196 50  0000 L CNN
F 1 "RT314A24" H 3450 900 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_Schrack-RT1-16A-FormC_RM5mm" H 4750 1100 50  0001 C CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=RT1_bistable&DocType=DS&DocLang=English" H 3650 1300 50  0001 C CNN
	1    3200 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 1300 2650 1550
Wire Wire Line
	2650 1550 3000 1550
Wire Wire Line
	3000 1550 3000 1450
Wire Wire Line
	3000 750  2650 750 
Wire Wire Line
	3300 850  3300 750 
Wire Wire Line
	3500 850  3500 750 
Wire Wire Line
	3400 1450 3400 1600
Text Label 3300 750  1    50   ~ 0
K1_12
Text Label 3500 750  1    50   ~ 0
K1_14
Text Label 3400 1600 0    50   ~ 0
K1_11
$Comp
L power:+24V #PWR?
U 1 1 5E60C731
P 3000 750
AR Path="/5E60C731" Ref="#PWR?"  Part="1" 
AR Path="/5E5E2DE9/5E60C731" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3000 600 50  0001 C CNN
F 1 "+24V" H 3015 923 50  0000 C CNN
F 2 "" H 3000 750 50  0001 C CNN
F 3 "" H 3000 750 50  0001 C CNN
	1    3000 750 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E684B47
P 4600 1800
AR Path="/5E684B47" Ref="R?"  Part="1" 
AR Path="/5E5E2DE9/5E684B47" Ref="R?"  Part="1" 
F 0 "R?" H 4670 1846 50  0000 L CNN
F 1 "10k" H 4670 1755 50  0000 L CNN
F 2 "" V 4530 1800 50  0001 C CNN
F 3 "~" H 4600 1800 50  0001 C CNN
	1    4600 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E684B4D
P 4900 1650
AR Path="/5E684B4D" Ref="R?"  Part="1" 
AR Path="/5E5E2DE9/5E684B4D" Ref="R?"  Part="1" 
F 0 "R?" V 4800 1550 50  0000 C CNN
F 1 "3.9k" V 4800 1750 50  0000 C CNN
F 2 "" V 4830 1650 50  0001 C CNN
F 3 "~" H 4900 1650 50  0001 C CNN
	1    4900 1650
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5E684B53
P 5750 1800
AR Path="/5E684B53" Ref="C?"  Part="1" 
AR Path="/5E5E2DE9/5E684B53" Ref="C?"  Part="1" 
F 0 "C?" H 5750 1900 50  0000 L CNN
F 1 "10nF" H 5750 1700 50  0000 L CNN
F 2 "" H 5788 1650 50  0001 C CNN
F 3 "~" H 5750 1800 50  0001 C CNN
	1    5750 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E684B59
P 6800 1750
AR Path="/5E684B59" Ref="R?"  Part="1" 
AR Path="/5E5E2DE9/5E684B59" Ref="R?"  Part="1" 
F 0 "R?" V 6700 1650 50  0000 C CNN
F 1 "10k" V 6700 1850 50  0000 C CNN
F 2 "" V 6730 1750 50  0001 C CNN
F 3 "~" H 6800 1750 50  0001 C CNN
	1    6800 1750
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5E684B5F
P 7050 1900
AR Path="/5E684B5F" Ref="R?"  Part="1" 
AR Path="/5E5E2DE9/5E684B5F" Ref="R?"  Part="1" 
F 0 "R?" H 7100 1950 50  0000 L CNN
F 1 "22k" H 7100 1850 50  0000 L CNN
F 2 "" V 6980 1900 50  0001 C CNN
F 3 "~" H 7050 1900 50  0001 C CNN
	1    7050 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E684B65
P 7050 2200
AR Path="/5E684B65" Ref="R?"  Part="1" 
AR Path="/5E5E2DE9/5E684B65" Ref="R?"  Part="1" 
F 0 "R?" H 7100 2250 50  0000 L CNN
F 1 "10k" H 7100 2150 50  0000 L CNN
F 2 "" V 6980 2200 50  0001 C CNN
F 3 "~" H 7050 2200 50  0001 C CNN
	1    7050 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E684B6B
P 7700 1900
AR Path="/5E684B6B" Ref="C?"  Part="1" 
AR Path="/5E5E2DE9/5E684B6B" Ref="C?"  Part="1" 
F 0 "C?" H 7750 2000 50  0000 L CNN
F 1 "100nF" H 7750 1800 50  0000 L CNN
F 2 "" H 7738 1750 50  0001 C CNN
F 3 "~" H 7700 1900 50  0001 C CNN
	1    7700 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 1750 7050 1750
$Comp
L Device:Varistor RV?
U 1 1 5E684B72
P 7350 1900
AR Path="/5E684B72" Ref="RV?"  Part="1" 
AR Path="/5E5E2DE9/5E684B72" Ref="RV?"  Part="1" 
F 0 "RV?" H 7400 1950 50  0000 L CNN
F 1 "Varistor" H 7350 1750 50  0000 L CNN
F 2 "" V 7280 1900 50  0001 C CNN
F 3 "~" H 7350 1900 50  0001 C CNN
	1    7350 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 1750 7350 1750
Connection ~ 7050 1750
Wire Wire Line
	7700 1750 7950 1750
$Comp
L power:GND #PWR?
U 1 1 5E684B7B
P 7350 2050
AR Path="/5E684B7B" Ref="#PWR?"  Part="1" 
AR Path="/5E5E2DE9/5E684B7B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7350 1800 50  0001 C CNN
F 1 "GND" H 7355 1877 50  0000 C CNN
F 2 "" H 7350 2050 50  0001 C CNN
F 3 "" H 7350 2050 50  0001 C CNN
	1    7350 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E684B81
P 7700 2050
AR Path="/5E684B81" Ref="#PWR?"  Part="1" 
AR Path="/5E5E2DE9/5E684B81" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7700 1800 50  0001 C CNN
F 1 "GND" H 7705 1877 50  0000 C CNN
F 2 "" H 7700 2050 50  0001 C CNN
F 3 "" H 7700 2050 50  0001 C CNN
	1    7700 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E684B87
P 4600 1950
AR Path="/5E684B87" Ref="#PWR?"  Part="1" 
AR Path="/5E5E2DE9/5E684B87" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4600 1700 50  0001 C CNN
F 1 "GND" H 4605 1777 50  0000 C CNN
F 2 "" H 4600 1950 50  0001 C CNN
F 3 "" H 4600 1950 50  0001 C CNN
	1    4600 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E684B8D
P 5750 1950
AR Path="/5E684B8D" Ref="#PWR?"  Part="1" 
AR Path="/5E5E2DE9/5E684B8D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5750 1700 50  0001 C CNN
F 1 "GND" H 5755 1777 50  0000 C CNN
F 2 "" H 5750 1950 50  0001 C CNN
F 3 "" H 5750 1950 50  0001 C CNN
	1    5750 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 1850 6050 1850
$Comp
L Amplifier_Operational:LM324A U?
U 1 1 5E684B94
P 6350 1750
AR Path="/5E684B94" Ref="U?"  Part="1" 
AR Path="/5E5E2DE9/5E684B94" Ref="U?"  Part="1" 
F 0 "U?" H 6350 2117 50  0000 C CNN
F 1 "LM324A" H 6350 2026 50  0000 C CNN
F 2 "" H 6300 1850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 6400 1950 50  0001 C CNN
	1    6350 1750
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM324A U?
U 5 1 5E684B9A
P 10800 3800
AR Path="/5E684B9A" Ref="U?"  Part="5" 
AR Path="/5E5E2DE9/5E684B9A" Ref="U?"  Part="5" 
F 0 "U?" H 10758 3846 50  0000 L CNN
F 1 "LM324A" H 10758 3755 50  0000 L CNN
F 2 "" H 10750 3900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 10850 4000 50  0001 C CNN
	5    10800 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 1750 7350 1750
Connection ~ 7700 1750
Connection ~ 7350 1750
$Comp
L power:+24V #PWR?
U 1 1 5E684BA3
P 10700 3500
AR Path="/5E684BA3" Ref="#PWR?"  Part="1" 
AR Path="/5E5E2DE9/5E684BA3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10700 3350 50  0001 C CNN
F 1 "+24V" H 10715 3673 50  0000 C CNN
F 2 "" H 10700 3500 50  0001 C CNN
F 3 "" H 10700 3500 50  0001 C CNN
	1    10700 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E684BA9
P 10700 4100
AR Path="/5E684BA9" Ref="#PWR?"  Part="1" 
AR Path="/5E5E2DE9/5E684BA9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10700 3850 50  0001 C CNN
F 1 "GND" H 10705 3927 50  0000 C CNN
F 2 "" H 10700 4100 50  0001 C CNN
F 3 "" H 10700 4100 50  0001 C CNN
	1    10700 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E684BAF
P 6800 2700
AR Path="/5E684BAF" Ref="R?"  Part="1" 
AR Path="/5E5E2DE9/5E684BAF" Ref="R?"  Part="1" 
F 0 "R?" V 6700 2600 50  0000 C CNN
F 1 "10k" V 6700 2800 50  0000 C CNN
F 2 "" V 6730 2700 50  0001 C CNN
F 3 "~" H 6800 2700 50  0001 C CNN
	1    6800 2700
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5E684BB5
P 7050 2850
AR Path="/5E684BB5" Ref="R?"  Part="1" 
AR Path="/5E5E2DE9/5E684BB5" Ref="R?"  Part="1" 
F 0 "R?" H 7100 2900 50  0000 L CNN
F 1 "22k" H 7100 2800 50  0000 L CNN
F 2 "" V 6980 2850 50  0001 C CNN
F 3 "~" H 7050 2850 50  0001 C CNN
	1    7050 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E684BBB
P 7050 3150
AR Path="/5E684BBB" Ref="R?"  Part="1" 
AR Path="/5E5E2DE9/5E684BBB" Ref="R?"  Part="1" 
F 0 "R?" H 7100 3200 50  0000 L CNN
F 1 "10k" H 7100 3100 50  0000 L CNN
F 2 "" V 6980 3150 50  0001 C CNN
F 3 "~" H 7050 3150 50  0001 C CNN
	1    7050 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E684BC1
P 7700 2850
AR Path="/5E684BC1" Ref="C?"  Part="1" 
AR Path="/5E5E2DE9/5E684BC1" Ref="C?"  Part="1" 
F 0 "C?" H 7750 2950 50  0000 L CNN
F 1 "100nF" H 7750 2750 50  0000 L CNN
F 2 "" H 7738 2700 50  0001 C CNN
F 3 "~" H 7700 2850 50  0001 C CNN
	1    7700 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 2700 7050 2700
$Comp
L Device:Varistor RV?
U 1 1 5E684BC8
P 7350 2850
AR Path="/5E684BC8" Ref="RV?"  Part="1" 
AR Path="/5E5E2DE9/5E684BC8" Ref="RV?"  Part="1" 
F 0 "RV?" H 7400 2900 50  0000 L CNN
F 1 "Varistor" H 7350 2700 50  0000 L CNN
F 2 "" V 7280 2850 50  0001 C CNN
F 3 "~" H 7350 2850 50  0001 C CNN
	1    7350 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 2700 7350 2700
Connection ~ 7050 2700
Wire Wire Line
	7700 2700 7950 2700
$Comp
L power:GND #PWR?
U 1 1 5E684BD1
P 7350 3000
AR Path="/5E684BD1" Ref="#PWR?"  Part="1" 
AR Path="/5E5E2DE9/5E684BD1" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7350 2750 50  0001 C CNN
F 1 "GND" H 7355 2827 50  0000 C CNN
F 2 "" H 7350 3000 50  0001 C CNN
F 3 "" H 7350 3000 50  0001 C CNN
	1    7350 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E684BD7
P 7700 3000
AR Path="/5E684BD7" Ref="#PWR?"  Part="1" 
AR Path="/5E5E2DE9/5E684BD7" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7700 2750 50  0001 C CNN
F 1 "GND" H 7705 2827 50  0000 C CNN
F 2 "" H 7700 3000 50  0001 C CNN
F 3 "" H 7700 3000 50  0001 C CNN
	1    7700 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 2800 6050 2800
Wire Wire Line
	7700 2700 7350 2700
Connection ~ 7700 2700
Connection ~ 7350 2700
$Comp
L Amplifier_Operational:LM324A U?
U 2 1 5E684BE1
P 6350 2700
AR Path="/5E684BE1" Ref="U?"  Part="2" 
AR Path="/5E5E2DE9/5E684BE1" Ref="U?"  Part="2" 
F 0 "U?" H 6350 3067 50  0000 C CNN
F 1 "LM324A" H 6350 2976 50  0000 C CNN
F 2 "" H 6300 2800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 6400 2900 50  0001 C CNN
	2    6350 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E684BE7
P 7050 2350
AR Path="/5E684BE7" Ref="#PWR?"  Part="1" 
AR Path="/5E5E2DE9/5E684BE7" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7050 2100 50  0001 C CNN
F 1 "GND" H 7055 2177 50  0000 C CNN
F 2 "" H 7050 2350 50  0001 C CNN
F 3 "" H 7050 2350 50  0001 C CNN
	1    7050 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E684BED
P 7050 3300
AR Path="/5E684BED" Ref="#PWR?"  Part="1" 
AR Path="/5E5E2DE9/5E684BED" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7050 3050 50  0001 C CNN
F 1 "GND" H 7055 3127 50  0000 C CNN
F 2 "" H 7050 3300 50  0001 C CNN
F 3 "" H 7050 3300 50  0001 C CNN
	1    7050 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:Varistor RV?
U 1 1 5E684BF3
P 8650 1900
AR Path="/5E684BF3" Ref="RV?"  Part="1" 
AR Path="/5E5E2DE9/5E684BF3" Ref="RV?"  Part="1" 
F 0 "RV?" H 8700 1950 50  0000 L CNN
F 1 "Varistor" H 8700 1800 50  0000 L CNN
F 2 "" V 8580 1900 50  0001 C CNN
F 3 "~" H 8650 1900 50  0001 C CNN
	1    8650 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E684BF9
P 8650 2050
AR Path="/5E684BF9" Ref="#PWR?"  Part="1" 
AR Path="/5E5E2DE9/5E684BF9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8650 1800 50  0001 C CNN
F 1 "GND" H 8655 1877 50  0000 C CNN
F 2 "" H 8650 2050 50  0001 C CNN
F 3 "" H 8650 2050 50  0001 C CNN
	1    8650 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 2050 6000 2050
Wire Wire Line
	6000 1850 6000 2050
Connection ~ 7050 2050
Wire Wire Line
	7050 3000 6000 3000
Wire Wire Line
	6000 2800 6000 3000
Connection ~ 7050 3000
Wire Wire Line
	8650 1750 8450 1750
Text GLabel 7950 1750 2    50   Input ~ 0
out1
Text GLabel 7950 2700 2    50   Input ~ 0
out2
Text GLabel 8450 1750 0    50   Input ~ 0
in1
Text GLabel 8450 2700 0    50   Input ~ 0
in2
Text GLabel 4450 1650 0    50   Input ~ 0
pwm1
Text GLabel 10600 2700 2    50   Input ~ 0
AD2
Wire Wire Line
	4600 1650 4750 1650
Wire Wire Line
	4600 1650 4450 1650
Connection ~ 4600 1650
$Comp
L Device:C C?
U 1 1 5E684C0F
P 5200 1800
AR Path="/5E684C0F" Ref="C?"  Part="1" 
AR Path="/5E5E2DE9/5E684C0F" Ref="C?"  Part="1" 
F 0 "C?" H 5200 1900 50  0000 L CNN
F 1 "100nF" H 5200 1700 50  0000 L CNN
F 2 "" H 5238 1650 50  0001 C CNN
F 3 "~" H 5200 1800 50  0001 C CNN
	1    5200 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 1650 5200 1650
$Comp
L Device:R R?
U 1 1 5E684C16
P 5500 1650
AR Path="/5E684C16" Ref="R?"  Part="1" 
AR Path="/5E5E2DE9/5E684C16" Ref="R?"  Part="1" 
F 0 "R?" V 5400 1550 50  0000 C CNN
F 1 "39k" V 5400 1850 50  0000 C CNN
F 2 "" V 5430 1650 50  0001 C CNN
F 3 "~" H 5500 1650 50  0001 C CNN
	1    5500 1650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E684C1C
P 5200 1950
AR Path="/5E684C1C" Ref="#PWR?"  Part="1" 
AR Path="/5E5E2DE9/5E684C1C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5200 1700 50  0001 C CNN
F 1 "GND" H 5205 1777 50  0000 C CNN
F 2 "" H 5200 1950 50  0001 C CNN
F 3 "" H 5200 1950 50  0001 C CNN
	1    5200 1950
	1    0    0    -1  
$EndComp
Connection ~ 5200 1650
Wire Wire Line
	5200 1650 5350 1650
Connection ~ 5750 1650
Wire Wire Line
	5750 1650 6050 1650
Wire Wire Line
	5650 1650 5750 1650
$Comp
L Device:R R?
U 1 1 5E684C27
P 4600 2750
AR Path="/5E684C27" Ref="R?"  Part="1" 
AR Path="/5E5E2DE9/5E684C27" Ref="R?"  Part="1" 
F 0 "R?" H 4670 2796 50  0000 L CNN
F 1 "10k" H 4670 2705 50  0000 L CNN
F 2 "" V 4530 2750 50  0001 C CNN
F 3 "~" H 4600 2750 50  0001 C CNN
	1    4600 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E684C2D
P 4900 2600
AR Path="/5E684C2D" Ref="R?"  Part="1" 
AR Path="/5E5E2DE9/5E684C2D" Ref="R?"  Part="1" 
F 0 "R?" V 4800 2500 50  0000 C CNN
F 1 "3.9k" V 4800 2700 50  0000 C CNN
F 2 "" V 4830 2600 50  0001 C CNN
F 3 "~" H 4900 2600 50  0001 C CNN
	1    4900 2600
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5E684C33
P 5750 2750
AR Path="/5E684C33" Ref="C?"  Part="1" 
AR Path="/5E5E2DE9/5E684C33" Ref="C?"  Part="1" 
F 0 "C?" H 5750 2850 50  0000 L CNN
F 1 "10nF" H 5750 2650 50  0000 L CNN
F 2 "" H 5788 2600 50  0001 C CNN
F 3 "~" H 5750 2750 50  0001 C CNN
	1    5750 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E684C39
P 4600 2900
AR Path="/5E684C39" Ref="#PWR?"  Part="1" 
AR Path="/5E5E2DE9/5E684C39" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4600 2650 50  0001 C CNN
F 1 "GND" H 4605 2727 50  0000 C CNN
F 2 "" H 4600 2900 50  0001 C CNN
F 3 "" H 4600 2900 50  0001 C CNN
	1    4600 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E684C3F
P 5750 2900
AR Path="/5E684C3F" Ref="#PWR?"  Part="1" 
AR Path="/5E5E2DE9/5E684C3F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5750 2650 50  0001 C CNN
F 1 "GND" H 5755 2727 50  0000 C CNN
F 2 "" H 5750 2900 50  0001 C CNN
F 3 "" H 5750 2900 50  0001 C CNN
	1    5750 2900
	1    0    0    -1  
$EndComp
Text GLabel 4450 2600 0    50   Input ~ 0
pwm2
Wire Wire Line
	4600 2600 4750 2600
Wire Wire Line
	4600 2600 4450 2600
Connection ~ 4600 2600
$Comp
L Device:C C?
U 1 1 5E684C49
P 5200 2750
AR Path="/5E684C49" Ref="C?"  Part="1" 
AR Path="/5E5E2DE9/5E684C49" Ref="C?"  Part="1" 
F 0 "C?" H 5200 2850 50  0000 L CNN
F 1 "100nF" H 5200 2650 50  0000 L CNN
F 2 "" H 5238 2600 50  0001 C CNN
F 3 "~" H 5200 2750 50  0001 C CNN
	1    5200 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 2600 5200 2600
$Comp
L Device:R R?
U 1 1 5E684C50
P 5500 2600
AR Path="/5E684C50" Ref="R?"  Part="1" 
AR Path="/5E5E2DE9/5E684C50" Ref="R?"  Part="1" 
F 0 "R?" V 5400 2500 50  0000 C CNN
F 1 "39k" V 5400 2800 50  0000 C CNN
F 2 "" V 5430 2600 50  0001 C CNN
F 3 "~" H 5500 2600 50  0001 C CNN
	1    5500 2600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E684C56
P 5200 2900
AR Path="/5E684C56" Ref="#PWR?"  Part="1" 
AR Path="/5E5E2DE9/5E684C56" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5200 2650 50  0001 C CNN
F 1 "GND" H 5205 2727 50  0000 C CNN
F 2 "" H 5200 2900 50  0001 C CNN
F 3 "" H 5200 2900 50  0001 C CNN
	1    5200 2900
	1    0    0    -1  
$EndComp
Connection ~ 5200 2600
Wire Wire Line
	5200 2600 5350 2600
Connection ~ 5750 2600
Wire Wire Line
	5750 2600 6050 2600
Wire Wire Line
	5650 2600 5750 2600
Text GLabel 10600 1750 2    50   Input ~ 0
AD1
Wire Wire Line
	10450 1750 10600 1750
$Comp
L power:GND #PWR?
U 1 1 5E684C63
P 10450 2050
AR Path="/5E684C63" Ref="#PWR?"  Part="1" 
AR Path="/5E5E2DE9/5E684C63" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10450 1800 50  0001 C CNN
F 1 "GND" H 10455 1877 50  0000 C CNN
F 2 "" H 10450 2050 50  0001 C CNN
F 3 "" H 10450 2050 50  0001 C CNN
	1    10450 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E684C69
P 10450 1900
AR Path="/5E684C69" Ref="C?"  Part="1" 
AR Path="/5E5E2DE9/5E684C69" Ref="C?"  Part="1" 
F 0 "C?" H 10450 2000 50  0000 L CNN
F 1 "100nF" H 10450 1800 50  0000 L CNN
F 2 "" H 10488 1750 50  0001 C CNN
F 3 "~" H 10450 1900 50  0001 C CNN
	1    10450 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 1750 9400 1750
$Comp
L power:GND #PWR?
U 1 1 5E684C70
P 9400 2050
AR Path="/5E684C70" Ref="#PWR?"  Part="1" 
AR Path="/5E5E2DE9/5E684C70" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9400 1800 50  0001 C CNN
F 1 "GND" H 9405 1877 50  0000 C CNN
F 2 "" H 9400 2050 50  0001 C CNN
F 3 "" H 9400 2050 50  0001 C CNN
	1    9400 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E684C76
P 9400 1900
AR Path="/5E684C76" Ref="R?"  Part="1" 
AR Path="/5E5E2DE9/5E684C76" Ref="R?"  Part="1" 
F 0 "R?" H 9450 1950 50  0000 L CNN
F 1 "22k" H 9450 1850 50  0000 L CNN
F 2 "" V 9330 1900 50  0001 C CNN
F 3 "~" H 9400 1900 50  0001 C CNN
	1    9400 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E684C7C
P 9150 1750
AR Path="/5E684C7C" Ref="R?"  Part="1" 
AR Path="/5E5E2DE9/5E684C7C" Ref="R?"  Part="1" 
F 0 "R?" V 9250 1800 50  0000 L CNN
F 1 "47k" V 9250 1600 50  0000 L CNN
F 2 "" V 9080 1750 50  0001 C CNN
F 3 "~" H 9150 1750 50  0001 C CNN
	1    9150 1750
	0    -1   -1   0   
$EndComp
$Comp
L Device:D_Schottky D?
U 1 1 5E684C82
P 10150 1600
AR Path="/5E684C82" Ref="D?"  Part="1" 
AR Path="/5E5E2DE9/5E684C82" Ref="D?"  Part="1" 
F 0 "D?" V 10104 1679 50  0000 L CNN
F 1 "D_Schottky" V 10195 1679 50  0000 L CNN
F 2 "" H 10150 1600 50  0001 C CNN
F 3 "~" H 10150 1600 50  0001 C CNN
	1    10150 1600
	0    1    1    0   
$EndComp
$Comp
L Device:D_Schottky D?
U 1 1 5E684C88
P 10150 1900
AR Path="/5E684C88" Ref="D?"  Part="1" 
AR Path="/5E5E2DE9/5E684C88" Ref="D?"  Part="1" 
F 0 "D?" V 10150 1600 50  0000 L CNN
F 1 "D_Schottky" V 10250 1450 50  0000 L CNN
F 2 "" H 10150 1900 50  0001 C CNN
F 3 "~" H 10150 1900 50  0001 C CNN
	1    10150 1900
	0    1    1    0   
$EndComp
Connection ~ 9400 1750
Connection ~ 10450 1750
Wire Wire Line
	9400 1750 10150 1750
Connection ~ 10150 1750
Wire Wire Line
	10150 1750 10450 1750
$Comp
L power:GND #PWR?
U 1 1 5E684C93
P 10150 2050
AR Path="/5E684C93" Ref="#PWR?"  Part="1" 
AR Path="/5E5E2DE9/5E684C93" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10150 1800 50  0001 C CNN
F 1 "GND" H 10155 1877 50  0000 C CNN
F 2 "" H 10150 2050 50  0001 C CNN
F 3 "" H 10150 2050 50  0001 C CNN
	1    10150 2050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5E684C99
P 10150 1450
AR Path="/5E684C99" Ref="#PWR?"  Part="1" 
AR Path="/5E5E2DE9/5E684C99" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10150 1300 50  0001 C CNN
F 1 "+3.3V" V 10165 1578 50  0000 L CNN
F 2 "" H 10150 1450 50  0001 C CNN
F 3 "" H 10150 1450 50  0001 C CNN
	1    10150 1450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9000 1750 8650 1750
Connection ~ 8650 1750
$Comp
L Device:Varistor RV?
U 1 1 5E684CA1
P 8650 2850
AR Path="/5E684CA1" Ref="RV?"  Part="1" 
AR Path="/5E5E2DE9/5E684CA1" Ref="RV?"  Part="1" 
F 0 "RV?" H 8700 2900 50  0000 L CNN
F 1 "Varistor" H 8700 2750 50  0000 L CNN
F 2 "" V 8580 2850 50  0001 C CNN
F 3 "~" H 8650 2850 50  0001 C CNN
	1    8650 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E684CA7
P 8650 3000
AR Path="/5E684CA7" Ref="#PWR?"  Part="1" 
AR Path="/5E5E2DE9/5E684CA7" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8650 2750 50  0001 C CNN
F 1 "GND" H 8655 2827 50  0000 C CNN
F 2 "" H 8650 3000 50  0001 C CNN
F 3 "" H 8650 3000 50  0001 C CNN
	1    8650 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 2700 8450 2700
Wire Wire Line
	10450 2700 10600 2700
$Comp
L power:GND #PWR?
U 1 1 5E684CAF
P 10450 3000
AR Path="/5E684CAF" Ref="#PWR?"  Part="1" 
AR Path="/5E5E2DE9/5E684CAF" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10450 2750 50  0001 C CNN
F 1 "GND" H 10455 2827 50  0000 C CNN
F 2 "" H 10450 3000 50  0001 C CNN
F 3 "" H 10450 3000 50  0001 C CNN
	1    10450 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E684CB5
P 10450 2850
AR Path="/5E684CB5" Ref="C?"  Part="1" 
AR Path="/5E5E2DE9/5E684CB5" Ref="C?"  Part="1" 
F 0 "C?" H 10450 2950 50  0000 L CNN
F 1 "100nF" H 10450 2750 50  0000 L CNN
F 2 "" H 10488 2700 50  0001 C CNN
F 3 "~" H 10450 2850 50  0001 C CNN
	1    10450 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 2700 9400 2700
$Comp
L power:GND #PWR?
U 1 1 5E684CBC
P 9400 3000
AR Path="/5E684CBC" Ref="#PWR?"  Part="1" 
AR Path="/5E5E2DE9/5E684CBC" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9400 2750 50  0001 C CNN
F 1 "GND" H 9405 2827 50  0000 C CNN
F 2 "" H 9400 3000 50  0001 C CNN
F 3 "" H 9400 3000 50  0001 C CNN
	1    9400 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E684CC2
P 9400 2850
AR Path="/5E684CC2" Ref="R?"  Part="1" 
AR Path="/5E5E2DE9/5E684CC2" Ref="R?"  Part="1" 
F 0 "R?" H 9450 2900 50  0000 L CNN
F 1 "22k" H 9450 2800 50  0000 L CNN
F 2 "" V 9330 2850 50  0001 C CNN
F 3 "~" H 9400 2850 50  0001 C CNN
	1    9400 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E684CC8
P 9150 2700
AR Path="/5E684CC8" Ref="R?"  Part="1" 
AR Path="/5E5E2DE9/5E684CC8" Ref="R?"  Part="1" 
F 0 "R?" V 9250 2750 50  0000 L CNN
F 1 "47k" V 9250 2550 50  0000 L CNN
F 2 "" V 9080 2700 50  0001 C CNN
F 3 "~" H 9150 2700 50  0001 C CNN
	1    9150 2700
	0    -1   -1   0   
$EndComp
$Comp
L Device:D_Schottky D?
U 1 1 5E684CCE
P 10150 2550
AR Path="/5E684CCE" Ref="D?"  Part="1" 
AR Path="/5E5E2DE9/5E684CCE" Ref="D?"  Part="1" 
F 0 "D?" V 10104 2629 50  0000 L CNN
F 1 "D_Schottky" V 10195 2629 50  0000 L CNN
F 2 "" H 10150 2550 50  0001 C CNN
F 3 "~" H 10150 2550 50  0001 C CNN
	1    10150 2550
	0    1    1    0   
$EndComp
$Comp
L Device:D_Schottky D?
U 1 1 5E684CD4
P 10150 2850
AR Path="/5E684CD4" Ref="D?"  Part="1" 
AR Path="/5E5E2DE9/5E684CD4" Ref="D?"  Part="1" 
F 0 "D?" V 10150 2550 50  0000 L CNN
F 1 "D_Schottky" V 10250 2400 50  0000 L CNN
F 2 "" H 10150 2850 50  0001 C CNN
F 3 "~" H 10150 2850 50  0001 C CNN
	1    10150 2850
	0    1    1    0   
$EndComp
Connection ~ 9400 2700
Wire Wire Line
	9400 2700 10150 2700
Connection ~ 10150 2700
Wire Wire Line
	10150 2700 10450 2700
$Comp
L power:GND #PWR?
U 1 1 5E684CDE
P 10150 3000
AR Path="/5E684CDE" Ref="#PWR?"  Part="1" 
AR Path="/5E5E2DE9/5E684CDE" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10150 2750 50  0001 C CNN
F 1 "GND" H 10155 2827 50  0000 C CNN
F 2 "" H 10150 3000 50  0001 C CNN
F 3 "" H 10150 3000 50  0001 C CNN
	1    10150 3000
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5E684CE4
P 10150 2400
AR Path="/5E684CE4" Ref="#PWR?"  Part="1" 
AR Path="/5E5E2DE9/5E684CE4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10150 2250 50  0001 C CNN
F 1 "+3.3V" V 10165 2528 50  0000 L CNN
F 2 "" H 10150 2400 50  0001 C CNN
F 3 "" H 10150 2400 50  0001 C CNN
	1    10150 2400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9000 2700 8650 2700
Connection ~ 8650 2700
Connection ~ 10450 2700
$Comp
L Connector:Screw_Terminal_01x03 J?
U 1 1 5E69F571
P 8650 4750
F 0 "J?" H 8730 4792 50  0000 L CNN
F 1 "K1" H 8730 4701 50  0000 L CNN
F 2 "" H 8650 4750 50  0001 C CNN
F 3 "~" H 8650 4750 50  0001 C CNN
	1    8650 4750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J?
U 1 1 5E69F577
P 8650 5100
F 0 "J?" H 8730 5142 50  0000 L CNN
F 1 "K2" H 8730 5051 50  0000 L CNN
F 2 "" H 8650 5100 50  0001 C CNN
F 3 "~" H 8650 5100 50  0001 C CNN
	1    8650 5100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J?
U 1 1 5E69F57D
P 8650 5450
F 0 "J?" H 8730 5492 50  0000 L CNN
F 1 "K3" H 8730 5401 50  0000 L CNN
F 2 "" H 8650 5450 50  0001 C CNN
F 3 "~" H 8650 5450 50  0001 C CNN
	1    8650 5450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J?
U 1 1 5E69F583
P 8650 5800
F 0 "J?" H 8730 5842 50  0000 L CNN
F 1 "K4" H 8730 5751 50  0000 L CNN
F 2 "" H 8650 5800 50  0001 C CNN
F 3 "~" H 8650 5800 50  0001 C CNN
	1    8650 5800
	1    0    0    -1  
$EndComp
Text Label 8450 4850 2    50   ~ 0
K1_11
Text Label 8450 4650 2    50   ~ 0
K1_12
Text Label 8450 4750 2    50   ~ 0
K1_14
Text Label 8450 5200 2    50   ~ 0
K2_11
Text Label 8450 5000 2    50   ~ 0
K2_12
Text Label 8450 5100 2    50   ~ 0
K2_14
Text Label 8450 5900 2    50   ~ 0
K4_11
Text Label 8450 5700 2    50   ~ 0
K4_12
Text Label 8450 5800 2    50   ~ 0
K4_14
Text Label 8450 5550 2    50   ~ 0
K3_11
Text Label 8450 5450 2    50   ~ 0
K3_14
Text Label 8450 5350 2    50   ~ 0
K3_12
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 5E69F595
P 8650 3600
F 0 "J?" H 8730 3592 50  0000 L CNN
F 1 "out1" H 8730 3501 50  0000 L CNN
F 2 "" H 8650 3600 50  0001 C CNN
F 3 "~" H 8650 3600 50  0001 C CNN
	1    8650 3600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 5E69F59B
P 8650 3850
F 0 "J?" H 8730 3842 50  0000 L CNN
F 1 "out2" H 8730 3751 50  0000 L CNN
F 2 "" H 8650 3850 50  0001 C CNN
F 3 "~" H 8650 3850 50  0001 C CNN
	1    8650 3850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 5E69F5A1
P 8650 4100
F 0 "J?" H 8730 4092 50  0000 L CNN
F 1 "in1" H 8730 4001 50  0000 L CNN
F 2 "" H 8650 4100 50  0001 C CNN
F 3 "~" H 8650 4100 50  0001 C CNN
	1    8650 4100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 5E69F5A7
P 8650 4350
F 0 "J?" H 8730 4342 50  0000 L CNN
F 1 "in2" H 8730 4251 50  0000 L CNN
F 2 "" H 8650 4350 50  0001 C CNN
F 3 "~" H 8650 4350 50  0001 C CNN
	1    8650 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E69F5AD
P 8450 3700
F 0 "#PWR?" H 8450 3450 50  0001 C CNN
F 1 "GND" V 8455 3572 50  0000 R CNN
F 2 "" H 8450 3700 50  0001 C CNN
F 3 "" H 8450 3700 50  0001 C CNN
	1    8450 3700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E69F5B3
P 8450 3950
F 0 "#PWR?" H 8450 3700 50  0001 C CNN
F 1 "GND" V 8455 3822 50  0000 R CNN
F 2 "" H 8450 3950 50  0001 C CNN
F 3 "" H 8450 3950 50  0001 C CNN
	1    8450 3950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E69F5B9
P 8450 4200
F 0 "#PWR?" H 8450 3950 50  0001 C CNN
F 1 "GND" V 8455 4072 50  0000 R CNN
F 2 "" H 8450 4200 50  0001 C CNN
F 3 "" H 8450 4200 50  0001 C CNN
	1    8450 4200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E69F5BF
P 8450 4450
F 0 "#PWR?" H 8450 4200 50  0001 C CNN
F 1 "GND" V 8455 4322 50  0000 R CNN
F 2 "" H 8450 4450 50  0001 C CNN
F 3 "" H 8450 4450 50  0001 C CNN
	1    8450 4450
	0    1    1    0   
$EndComp
Text GLabel 8450 3600 0    50   Input ~ 0
out1
Text GLabel 8450 3850 0    50   Input ~ 0
out2
Text GLabel 8450 4100 0    50   Input ~ 0
in1
Text GLabel 8450 4350 0    50   Input ~ 0
in2
$EndSCHEMATC
