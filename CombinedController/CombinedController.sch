EESchema Schematic File Version 4
EELAYER 26 0
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
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 5C0AA3BC
P 1700 3050
F 0 "A1" H 1700 1964 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 1700 1873 50  0000 C CNN
F 2 "Arduino:Arduino_Nano_Socket" H 1850 2100 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 1700 2050 50  0001 C CNN
	1    1700 3050
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5C0AA93D
P 2550 1200
F 0 "J1" V 2610 1240 50  0000 L CNN
F 1 "Conn_01x02_Male" V 2701 1240 50  0000 L CNN
F 2 "Connector_Phoenix_GMSTB:PhoenixContact_GMSTBVA_2,5_2-G-7,62_1x02_P7.62mm_Vertical" H 2550 1200 50  0001 C CNN
F 3 "~" H 2550 1200 50  0001 C CNN
	1    2550 1200
	0    1    1    0   
$EndComp
Wire Wire Line
	1700 4050 1800 4050
$Comp
L max5259:MAX5259 DAC1
U 1 1 5C0AE667
P 1900 5600
F 0 "DAC1" H 1825 5975 50  0000 C CNN
F 1 "MAX5259" H 1825 5884 50  0000 C CNN
F 2 "Package_SO:QSOP-16_3.9x4.9mm_P0.635mm" H 1900 5600 50  0001 C CNN
F 3 "" H 1900 5600 50  0001 C CNN
	1    1900 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 1850 1600 2050
Wire Wire Line
	1900 1950 1900 2050
Wire Wire Line
	3400 5750 3300 5750
$Comp
L Connector:Conn_01x04_Male J2
U 1 1 5C0AF9EA
P 3250 2850
F 0 "J2" V 3310 2991 50  0000 L CNN
F 1 "APA102C" V 3401 2991 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 3250 2850 50  0001 C CNN
F 3 "~" H 3250 2850 50  0001 C CNN
	1    3250 2850
	1    0    0    -1  
$EndComp
Text GLabel 3300 3650 0    50   Input ~ 0
Lenkung
Text GLabel 2600 1500 2    50   Input ~ 0
12V
Wire Wire Line
	2400 1500 2450 1500
Wire Wire Line
	2450 1400 2450 1500
Wire Wire Line
	2600 1500 2550 1500
Wire Wire Line
	2550 1500 2550 1400
Text GLabel 3150 5200 0    50   Input ~ 0
12V
Text GLabel 3300 4650 1    50   Input ~ 0
GND
Text GLabel 1150 5650 0    50   Input ~ 0
GND
Wire Wire Line
	1150 5650 1500 5650
Text GLabel 1600 1850 1    50   Input ~ 0
12V
Text GLabel 1900 1950 1    50   Input ~ 0
5V_Main
Text GLabel 1150 5750 0    50   Input ~ 0
5V_Main
Text GLabel 4750 1800 1    50   Input ~ 0
5V_2
Wire Wire Line
	4750 2050 4750 1800
Wire Wire Line
	4650 4050 4550 4050
$Comp
L MCU_Module:Arduino_Nano_v3.x A2
U 1 1 5C0AA492
P 4550 3050
F 0 "A2" H 4550 1964 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 4550 1873 50  0000 C CNN
F 2 "Arduino:Arduino_Nano_Socket" H 4700 2100 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 4550 2050 50  0001 C CNN
	1    4550 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 2950 4050 2950
Wire Wire Line
	3450 2850 4050 2850
Text GLabel 3450 3150 3    50   Input ~ 0
5V_2
Wire Wire Line
	3450 3050 3450 3150
Wire Wire Line
	3450 2750 3450 2650
Text GLabel 3100 5950 0    50   Input ~ 0
5V_2
Text GLabel 1550 4050 0    50   Input ~ 0
GND
Wire Wire Line
	1550 4050 1700 4050
Connection ~ 1700 4050
Text GLabel 4450 4050 0    50   Input ~ 0
GND
Wire Wire Line
	4450 4050 4550 4050
Connection ~ 4550 4050
Text GLabel 4450 1800 1    50   Input ~ 0
12V
Wire Wire Line
	4450 1800 4450 2050
$Comp
L Switch:SW_Push SW1
U 1 1 5C0C113F
P 3700 4000
F 0 "SW1" H 3700 4285 50  0000 C CNN
F 1 "SW_Push" H 3700 4194 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x01_P2.54mm_Vertical_SMD" H 3700 4200 50  0001 C CNN
F 3 "" H 3700 4200 50  0001 C CNN
	1    3700 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 3750 3900 3750
Wire Wire Line
	3900 3750 3900 4000
Text GLabel 3400 4000 0    50   Input ~ 0
GND
Wire Wire Line
	3500 4000 3400 4000
$Comp
L Connector:Conn_01x05_Female MotorServo1
U 1 1 5C0C1D2E
P 4750 5050
F 0 "MotorServo1" H 4644 4625 50  0000 C CNN
F 1 "Conn_01x05_Female" H 4644 4716 50  0000 C CNN
F 2 "Connector_Phoenix_GMSTB:PhoenixContact_GMSTB_2,5_5-GF-7,62_1x05_P7.62mm_Horizontal_ThreadedFlange" H 4750 5050 50  0001 C CNN
F 3 "~" H 4750 5050 50  0001 C CNN
	1    4750 5050
	-1   0    0    1   
$EndComp
Text GLabel 5050 4950 2    50   Input ~ 0
5V_2
Text GLabel 5150 5150 2    50   Input ~ 0
GND
Wire Wire Line
	5050 4950 4950 4950
Wire Wire Line
	5000 5250 4950 5250
Wire Wire Line
	4950 5150 5100 5150
Wire Wire Line
	5000 5250 5000 6450
Wire Wire Line
	5000 6450 3850 6450
Wire Wire Line
	3750 6450 3750 6500
Wire Wire Line
	3750 6500 5400 6500
Wire Wire Line
	5400 6500 5400 4850
Wire Wire Line
	4950 4850 5400 4850
Wire Wire Line
	5050 3050 5500 3050
Wire Wire Line
	5500 3050 5500 5050
Wire Wire Line
	5500 5050 4950 5050
$Comp
L Device:C C1
U 1 1 5C0C57CF
P 5700 5200
F 0 "C1" H 5815 5246 50  0000 L CNN
F 1 "C" H 5815 5155 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L41.5mm_W13.0mm_P37.50mm_MKS4" H 5738 5050 50  0001 C CNN
F 3 "~" H 5700 5200 50  0001 C CNN
	1    5700 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 5050 5500 5050
Connection ~ 5500 5050
Wire Wire Line
	5100 5150 5100 5350
Wire Wire Line
	5100 5350 5700 5350
Connection ~ 5100 5150
Wire Wire Line
	5100 5150 5150 5150
Wire Bus Line
	5050 3450 5900 3450
Wire Bus Line
	5050 3550 5900 3550
Wire Wire Line
	3300 4650 3300 4750
Wire Wire Line
	3850 5300 3850 4750
Wire Wire Line
	3850 4750 3300 4750
Connection ~ 3300 4750
Wire Wire Line
	3300 4750 3300 5750
$Comp
L pspice:DIODE D1
U 1 1 5C0CD48B
P 3550 5200
F 0 "D1" H 3550 5465 50  0000 C CNN
F 1 "DIODE" H 3550 5374 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P5.08mm_Vertical_AnodeUp" H 3550 5200 50  0001 C CNN
F 3 "~" H 3550 5200 50  0001 C CNN
	1    3550 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 5200 3150 5200
Wire Wire Line
	3150 5650 3150 5950
Wire Wire Line
	3150 5950 3100 5950
Wire Wire Line
	3150 5950 3150 6250
Wire Wire Line
	3150 6250 3400 6250
Connection ~ 3150 5950
$Comp
L MC33886:MC33886 U1
U 1 1 5C0AE6FA
P 3800 5850
F 0 "U1" H 3978 5871 50  0000 L CNN
F 1 "MC33886" H 3978 5780 50  0000 L CNN
F 2 "Arduino:MC33886" H 3800 5850 50  0001 C CNN
F 3 "" H 3800 5850 50  0001 C CNN
	1    3800 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 5650 3150 5650
Wire Wire Line
	3400 6150 3300 6150
Wire Wire Line
	3300 6150 3300 5750
Connection ~ 3300 5750
Wire Wire Line
	3400 5850 3350 5850
Wire Wire Line
	3350 5850 3350 5200
Wire Wire Line
	3350 4850 3950 4850
Wire Wire Line
	3950 4850 3950 3550
Wire Wire Line
	3950 3550 4050 3550
Connection ~ 3350 5200
Wire Wire Line
	3350 5200 3350 4850
Wire Wire Line
	3400 5950 3250 5950
Wire Wire Line
	3250 5950 3250 4200
Wire Wire Line
	3250 4200 3450 4200
Wire Wire Line
	3450 4200 3450 3600
Wire Wire Line
	3450 3600 3850 3600
Wire Wire Line
	3850 3600 3850 3450
Wire Wire Line
	3850 3450 4050 3450
Wire Wire Line
	3400 6050 3200 6050
Wire Wire Line
	3200 6050 3200 4200
Wire Wire Line
	3200 4200 3150 4200
Wire Wire Line
	3150 4200 3150 3750
Wire Wire Line
	3150 3750 3400 3750
Wire Wire Line
	3400 3750 3400 3550
Wire Wire Line
	3400 3550 3800 3550
Wire Wire Line
	3800 3550 3800 3250
Wire Wire Line
	3800 3250 4050 3250
Text GLabel 2400 1500 0    50   Input ~ 0
GND
Text GLabel 3450 2650 1    50   Input ~ 0
GND
Wire Wire Line
	3750 5200 3750 5300
Wire Wire Line
	1150 5750 1500 5750
Wire Wire Line
	3300 3650 4050 3650
Connection ~ 4650 4050
Connection ~ 1800 4050
$EndSCHEMATC
