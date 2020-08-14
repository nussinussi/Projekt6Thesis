EESchema Schematic File Version 4
LIBS:Spannungsversorgung-cache
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
L Converter_ACDC:IRM-02-5 PS1
U 1 1 5EF74A36
P 5350 2800
F 0 "PS1" H 5350 3125 50  0000 C CNN
F 1 "IRM-02-5" H 5350 3034 50  0000 C CNN
F 2 "Converter_ACDC:Converter_ACDC_MeanWell_IRM-02-xx_THT" H 5350 2500 50  0001 C CNN
F 3 "https://www.meanwell.com/Upload/PDF/IRM-02/IRM-02-SPEC.PDF" H 5750 2450 50  0001 C CNN
F 4 "709-IRM02-5" H 5350 2800 50  0001 C CNN "Vendor"
	1    5350 2800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 5EF7554B
P 6450 2850
F 0 "J2" H 6422 2732 50  0000 R CNN
F 1 "Conn_01x02_Male" H 6422 2823 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 6450 2850 50  0001 C CNN
F 3 "~" H 6450 2850 50  0001 C CNN
	1    6450 2850
	-1   0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 5EF76129
P 4250 2850
F 0 "J1" H 4168 2525 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 4168 2616 50  0000 C CNN
F 2 "TerminalBlock_RND:TerminalBlock_RND_205-00012_1x02_P5.00mm_Horizontal" H 4250 2850 50  0001 C CNN
F 3 "~" H 4250 2850 50  0001 C CNN
F 4 "490-TB003-500-P02BE" H 4250 2850 50  0001 C CNN "Vendor"
	1    4250 2850
	-1   0    0    1   
$EndComp
Wire Wire Line
	5750 2700 6250 2700
Wire Wire Line
	6250 2700 6250 2750
Wire Wire Line
	5750 2900 6250 2900
Wire Wire Line
	6250 2900 6250 2850
Wire Wire Line
	4950 2700 4450 2700
Wire Wire Line
	4450 2700 4450 2750
Wire Wire Line
	4950 2900 4450 2900
Wire Wire Line
	4450 2900 4450 2850
$Comp
L Mechanical:MountingHole H1
U 1 1 5EF7958D
P 3750 3400
F 0 "H1" H 3850 3446 50  0000 L CNN
F 1 "MountingHole" H 3850 3355 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO14580" H 3750 3400 50  0001 C CNN
F 3 "~" H 3750 3400 50  0001 C CNN
	1    3750 3400
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5EF79C63
P 4700 3400
F 0 "H2" H 4800 3446 50  0000 L CNN
F 1 "MountingHole" H 4800 3355 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO14580" H 4700 3400 50  0001 C CNN
F 3 "~" H 4700 3400 50  0001 C CNN
	1    4700 3400
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5EF8071A
P 3750 3800
F 0 "H3" H 3850 3846 50  0000 L CNN
F 1 "MountingHole" H 3850 3755 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO14580" H 3750 3800 50  0001 C CNN
F 3 "~" H 3750 3800 50  0001 C CNN
	1    3750 3800
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5EF80720
P 4700 3800
F 0 "H4" H 4800 3846 50  0000 L CNN
F 1 "MountingHole" H 4800 3755 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO14580" H 4700 3800 50  0001 C CNN
F 3 "~" H 4700 3800 50  0001 C CNN
	1    4700 3800
	1    0    0    -1  
$EndComp
$EndSCHEMATC
