EESchema Schematic File Version 4
LIBS:Frontplatte-cache
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
L Device:Thermistor_NTC TH1
U 1 1 5E871497
P 3400 3450
F 0 "TH1" H 2550 3550 50  0000 L CNN
F 1 "NCU18WF104J60RB" H 2550 3450 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3400 3500 50  0001 C CNN
F 3 "~" H 3400 3500 50  0001 C CNN
F 4 "81-NCU18WF104J60RB" H 3400 3450 50  0001 C CNN "Vendor"
	1    3400 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 3600 3400 3700
Wire Wire Line
	3400 3250 3400 3300
$Comp
L Device:LED D1
U 1 1 5E8764B5
P 5300 2950
F 0 "D1" H 5293 2695 50  0000 C CNN
F 1 "156120GS75000" H 5293 2786 50  0000 C CNN
F 2 "reverse_LED:reverse_mounted_LED_hole_2.3mm" H 5300 2950 50  0001 C CNN
F 3 "~" H 5300 2950 50  0001 C CNN
F 4 "710-156120GS75000" H 5300 2950 50  0001 C CNN "Vendor"
	1    5300 2950
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D2
U 1 1 5E877385
P 5300 3400
F 0 "D2" H 5293 3145 50  0000 C CNN
F 1 "156120GS75000" H 5293 3236 50  0000 C CNN
F 2 "reverse_LED:reverse_mounted_LED_hole_2.3mm" H 5300 3400 50  0001 C CNN
F 3 "~" H 5300 3400 50  0001 C CNN
F 4 "710-156120GS75000" H 5300 3400 50  0001 C CNN "Vendor"
	1    5300 3400
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D3
U 1 1 5E877646
P 5300 3800
F 0 "D3" H 5293 3545 50  0000 C CNN
F 1 "156120GS75000" H 5293 3636 50  0000 C CNN
F 2 "reverse_LED:reverse_mounted_LED_hole_2.3mm" H 5300 3800 50  0001 C CNN
F 3 "~" H 5300 3800 50  0001 C CNN
F 4 "710-156120GS75000" H 5300 3800 50  0001 C CNN "Vendor"
	1    5300 3800
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D4
U 1 1 5E87798E
P 5300 4200
F 0 "D4" H 5293 3945 50  0000 C CNN
F 1 "156120GS75000" H 5293 4036 50  0000 C CNN
F 2 "reverse_LED:reverse_mounted_LED_hole_2.3mm" H 5300 4200 50  0001 C CNN
F 3 "~" H 5300 4200 50  0001 C CNN
F 4 "710-156120GS75000" H 5300 4200 50  0001 C CNN "Vendor"
	1    5300 4200
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 5E877C24
P 4850 2950
F 0 "R1" V 4643 2950 50  0000 C CNN
F 1 "220" V 4734 2950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4780 2950 50  0001 C CNN
F 3 "~" H 4850 2950 50  0001 C CNN
F 4 "71-CRCW0603220RJNEBC" V 4850 2950 50  0001 C CNN "Vendor"
	1    4850 2950
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5E878ACA
P 4850 3800
F 0 "R3" V 4643 3800 50  0000 C CNN
F 1 "220" V 4734 3800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4780 3800 50  0001 C CNN
F 3 "~" H 4850 3800 50  0001 C CNN
F 4 "71-CRCW0603220RJNEBC" V 4850 3800 50  0001 C CNN "Vendor"
	1    4850 3800
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5E8791EF
P 4850 3400
F 0 "R2" V 4643 3400 50  0000 C CNN
F 1 "220" V 4734 3400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4780 3400 50  0001 C CNN
F 3 "~" H 4850 3400 50  0001 C CNN
F 4 "71-CRCW0603220RJNEBC" V 4850 3400 50  0001 C CNN "Vendor"
	1    4850 3400
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5E8797D4
P 4850 4200
F 0 "R4" V 4643 4200 50  0000 C CNN
F 1 "220" V 4734 4200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4780 4200 50  0001 C CNN
F 3 "~" H 4850 4200 50  0001 C CNN
F 4 "71-CRCW0603220RJNEBC" V 4850 4200 50  0001 C CNN "Vendor"
	1    4850 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	5150 2950 5000 2950
Wire Wire Line
	5150 3400 5000 3400
Wire Wire Line
	5000 3800 5150 3800
Wire Wire Line
	5150 4200 5000 4200
$Comp
L power:GND #PWR0102
U 1 1 5E87A81E
P 5550 2950
F 0 "#PWR0102" H 5550 2700 50  0001 C CNN
F 1 "GND" V 5555 2822 50  0000 R CNN
F 2 "" H 5550 2950 50  0001 C CNN
F 3 "" H 5550 2950 50  0001 C CNN
	1    5550 2950
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5E87AA93
P 5550 3400
F 0 "#PWR0103" H 5550 3150 50  0001 C CNN
F 1 "GND" V 5555 3272 50  0000 R CNN
F 2 "" H 5550 3400 50  0001 C CNN
F 3 "" H 5550 3400 50  0001 C CNN
	1    5550 3400
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5E87AC9D
P 5550 3800
F 0 "#PWR0104" H 5550 3550 50  0001 C CNN
F 1 "GND" V 5555 3672 50  0000 R CNN
F 2 "" H 5550 3800 50  0001 C CNN
F 3 "" H 5550 3800 50  0001 C CNN
	1    5550 3800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5E87B28D
P 5550 4200
F 0 "#PWR0105" H 5550 3950 50  0001 C CNN
F 1 "GND" V 5555 4072 50  0000 R CNN
F 2 "" H 5550 4200 50  0001 C CNN
F 3 "" H 5550 4200 50  0001 C CNN
	1    5550 4200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5550 2950 5450 2950
Wire Wire Line
	5550 3400 5450 3400
Wire Wire Line
	5550 3800 5450 3800
Wire Wire Line
	5550 4200 5450 4200
Text GLabel 4600 2950 0    50   Input ~ 0
LED1
Text GLabel 4600 3400 0    50   Input ~ 0
LED2
Text GLabel 4600 3800 0    50   Input ~ 0
LED3
Text GLabel 4600 4200 0    50   Input ~ 0
LED4
Wire Wire Line
	4700 2950 4600 2950
Wire Wire Line
	4700 3400 4600 3400
Wire Wire Line
	4700 3800 4600 3800
Wire Wire Line
	4700 4200 4600 4200
Text GLabel 6700 2900 0    50   Input ~ 0
touch1
Text GLabel 6700 3400 0    50   Input ~ 0
touch2
Text GLabel 6700 3900 0    50   Input ~ 0
touch3
Text GLabel 6700 4400 0    50   Input ~ 0
touch4
Text GLabel 3400 3250 1    50   Input ~ 0
ntcf
Text GLabel 8500 3200 0    50   Input ~ 0
LED1
Text GLabel 8500 3100 0    50   Input ~ 0
LED2
Text GLabel 8500 3000 0    50   Input ~ 0
LED3
Text GLabel 8500 2900 0    50   Input ~ 0
LED4
Text GLabel 9000 3200 2    50   Input ~ 0
touch1
Text GLabel 9000 3100 2    50   Input ~ 0
touch2
Text GLabel 9000 3000 2    50   Input ~ 0
touch3
Text GLabel 9000 2900 2    50   Input ~ 0
touch4
$Comp
L power:+3.3V #PWR0106
U 1 1 5E88ED6E
P 8500 3300
F 0 "#PWR0106" H 8500 3150 50  0001 C CNN
F 1 "+3.3V" V 8515 3428 50  0000 L CNN
F 2 "" H 8500 3300 50  0001 C CNN
F 3 "" H 8500 3300 50  0001 C CNN
	1    8500 3300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5E88F4C1
P 8500 3400
F 0 "#PWR0107" H 8500 3150 50  0001 C CNN
F 1 "GND" V 8505 3272 50  0000 R CNN
F 2 "" H 8500 3400 50  0001 C CNN
F 3 "" H 8500 3400 50  0001 C CNN
	1    8500 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	6700 2900 7200 2900
Wire Wire Line
	6700 3400 7200 3400
Wire Wire Line
	6700 3900 7200 3900
Wire Wire Line
	6700 4400 7200 4400
Text Label 6850 2900 0    50   ~ 0
touch1
Text Label 6900 3400 0    50   ~ 0
touch2
Text Label 6900 3900 0    50   ~ 0
touch3
Text Label 6900 4400 0    50   ~ 0
touch4
$Comp
L Connector_Generic:Conn_02x06_Odd_Even J1
U 1 1 5E96E803
P 8700 3200
F 0 "J1" H 8750 2800 50  0000 C CNN
F 1 "61000621121" H 8750 2766 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x06_P2.54mm_Vertical_SMD" H 8700 3200 50  0001 C CNN
F 3 "~" H 8700 3200 50  0001 C CNN
F 4 "710-61000621121" H 8700 3200 50  0001 C CNN "Vendor"
	1    8700 3200
	1    0    0    1   
$EndComp
Text GLabel 3400 3700 3    50   Input ~ 0
ntcr
Text Notes 8250 3600 0    50   ~ 0
gespiegelt zur Steuerplatine
$Comp
L touch_area:touch_area_round_12mm TA1
U 1 1 5E9C42C8
P 7400 2900
F 0 "TA1" H 7528 2946 50  0000 L CNN
F 1 "touch_area_round_12mm" H 6900 2750 50  0000 L CNN
F 2 "touch_area:touch_area" H 7400 3000 50  0001 C CNN
F 3 "" H 7400 3000 50  0001 C CNN
	1    7400 2900
	1    0    0    -1  
$EndComp
$Comp
L touch_area:touch_area_round_12mm TA2
U 1 1 5E9C552F
P 7400 3400
F 0 "TA2" H 7528 3446 50  0000 L CNN
F 1 "touch_area_round_12mm" H 6900 3250 50  0000 L CNN
F 2 "touch_area:touch_area" H 7400 3500 50  0001 C CNN
F 3 "" H 7400 3500 50  0001 C CNN
	1    7400 3400
	1    0    0    -1  
$EndComp
$Comp
L touch_area:touch_area_round_12mm TA3
U 1 1 5E9C59ED
P 7400 3900
F 0 "TA3" H 7528 3946 50  0000 L CNN
F 1 "touch_area_round_12mm" H 6900 3750 50  0000 L CNN
F 2 "touch_area:touch_area" H 7400 4000 50  0001 C CNN
F 3 "" H 7400 4000 50  0001 C CNN
	1    7400 3900
	1    0    0    -1  
$EndComp
$Comp
L touch_area:touch_area_round_12mm TA4
U 1 1 5E9C5D52
P 7400 4400
F 0 "TA4" H 7528 4446 50  0000 L CNN
F 1 "touch_area_round_12mm" H 6900 4250 50  0000 L CNN
F 2 "touch_area:touch_area" H 7400 4500 50  0001 C CNN
F 3 "" H 7400 4500 50  0001 C CNN
	1    7400 4400
	1    0    0    -1  
$EndComp
Text GLabel 9000 3400 2    50   Input ~ 0
ntcr
Text GLabel 9000 3300 2    50   Input ~ 0
ntcf
NoConn ~ 7200 2900
NoConn ~ 7200 3400
NoConn ~ 7200 3900
NoConn ~ 7200 4400
$EndSCHEMATC
