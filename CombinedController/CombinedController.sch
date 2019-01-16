EESchema Schematic File Version 4
LIBS:CombinedController-cache
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
L Connector:Conn_01x02_Male MAIN_Power1
U 1 1 5C0AA93D
P 2550 1200
F 0 "MAIN_Power1" V 2610 1240 50  0000 L CNN
F 1 "Conn_01x02_Male" V 2701 1240 50  0000 L CNN
F 2 "Connector_Phoenix_GMSTB:PhoenixContact_GMSTBVA_2,5_2-G-7,62_1x02_P7.62mm_Vertical" H 2550 1200 50  0001 C CNN
F 3 "~" H 2550 1200 50  0001 C CNN
	1    2550 1200
	0    1    1    0   
$EndComp
Wire Wire Line
	1700 4050 1800 4050
Wire Wire Line
	1900 1950 1900 2000
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
Wire Wire Line
	2450 1400 2450 1500
Text GLabel 4950 5550 2    50   Input ~ 0
12V
Text GLabel 1300 5700 3    50   Input ~ 0
GND
Text GLabel 1900 1950 1    50   Input ~ 0
5V_Main
Text GLabel 1850 5950 3    50   Input ~ 0
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
Text GLabel 3500 3050 2    50   Input ~ 0
5V_2
Wire Wire Line
	3450 2750 3450 2650
Text GLabel 1850 4050 3    50   Input ~ 0
GND
Connection ~ 1700 4050
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
Text GLabel 3700 4100 3    50   Input ~ 0
GND
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
	3750 6450 3750 6500
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
$Comp
L pspice:DIODE D1
U 1 1 5C0CD48B
P 4550 5550
F 0 "D1" H 4550 5815 50  0000 C CNN
F 1 "DIODE" H 4550 5724 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P5.08mm_Vertical_AnodeUp" H 4550 5550 50  0001 C CNN
F 3 "~" H 4550 5550 50  0001 C CNN
	1    4550 5550
	-1   0    0    1   
$EndComp
Wire Wire Line
	4750 5550 4950 5550
Wire Wire Line
	3950 3550 4050 3550
Text GLabel 3450 2650 1    50   Input ~ 0
GND
$Comp
L Connector:Conn_01x04_Male 12VConverter1
U 1 1 5C3A3F02
P 3850 1200
F 0 "12VConverter1" V 3910 1340 50  0000 L CNN
F 1 "Conn_01x04_Male" V 4001 1340 50  0000 L CNN
F 2 "Connector_Phoenix_MC:PhoenixContact_MC_1,5_4-G-3.5_1x04_P3.50mm_Horizontal" H 3850 1200 50  0001 C CNN
F 3 "~" H 3850 1200 50  0001 C CNN
	1    3850 1200
	0    1    1    0   
$EndComp
Text GLabel 3950 1500 3    50   Input ~ 0
12V
Wire Wire Line
	3650 1400 3650 1450
Wire Wire Line
	3950 1400 3950 1500
$Comp
L Analog_DAC:MCP4728 U2
U 1 1 5C3AB1E2
P 1850 5250
F 0 "U2" H 1850 4672 50  0000 C CNN
F 1 "MCP4728" H 1850 4763 50  0000 C CNN
F 2 "Package_SO:MSOP-10_3x3mm_P0.5mm" H 1850 4650 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/22187E.pdf" H 1850 5500 50  0001 C CNN
	1    1850 5250
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x02_Male ReverseConn1
U 1 1 5C3AB2F8
P 650 4850
F 0 "ReverseConn1" H 756 5128 50  0000 C CNN
F 1 "Conn_01x02_Male" H 756 5037 50  0000 C CNN
F 2 "Connector_JST:JST_EH_B02B-EH-A_1x02_P2.50mm_Vertical" H 650 4850 50  0001 C CNN
F 3 "~" H 650 4850 50  0001 C CNN
	1    650  4850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male SpeedConn1
U 1 1 5C3AB396
P 650 5150
F 0 "SpeedConn1" H 756 5428 50  0000 C CNN
F 1 "Conn_01x04_Male" H 756 5337 50  0000 C CNN
F 2 "Connector_JST:JST_EH_B04B-EH-A_1x04_P2.50mm_Vertical" H 650 5150 50  0001 C CNN
F 3 "~" H 650 5150 50  0001 C CNN
	1    650  5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 5050 1050 5050
Wire Wire Line
	850  5150 1100 5150
Wire Wire Line
	1250 5250 1150 5250
Wire Wire Line
	850  5350 1200 5350
Wire Wire Line
	1200 5350 1200 4550
Wire Wire Line
	1200 4550 2500 4550
Wire Wire Line
	2500 4550 2500 3450
Connection ~ 1200 5350
Wire Wire Line
	1200 5350 1250 5350
Wire Wire Line
	2450 4500 1150 4500
Wire Wire Line
	1150 4500 1150 5250
Connection ~ 1150 5250
Wire Wire Line
	1150 5250 850  5250
Wire Wire Line
	1100 5150 1100 4450
Wire Wire Line
	1100 4450 2400 4450
Wire Wire Line
	2400 4450 2400 3650
Connection ~ 1100 5150
Wire Wire Line
	1100 5150 1250 5150
Wire Wire Line
	1050 5050 1050 4400
Wire Wire Line
	1050 4400 2350 4400
Wire Wire Line
	2350 4400 2350 3750
Connection ~ 1050 5050
Wire Wire Line
	1050 5050 850  5050
Wire Wire Line
	2450 5250 2500 5250
Wire Wire Line
	2650 5250 2650 4350
Wire Wire Line
	2650 4350 1050 4350
Wire Wire Line
	1050 4350 1050 3550
Wire Wire Line
	1050 3550 1200 3550
Wire Wire Line
	1200 3650 1100 3650
Wire Wire Line
	1100 3650 1100 4300
Wire Wire Line
	1100 4300 2700 4300
Wire Wire Line
	2700 4300 2700 5350
Wire Wire Line
	2700 5350 2450 5350
Wire Wire Line
	1200 3450 1000 3450
Wire Wire Line
	1000 3450 1000 4950
Wire Wire Line
	1000 4950 850  4950
Wire Wire Line
	850  4850 950  4850
Wire Wire Line
	950  4850 950  3350
Wire Wire Line
	950  3350 1200 3350
Wire Wire Line
	900  3250 1200 3250
Wire Wire Line
	1850 4850 1300 4850
Wire Wire Line
	1300 4850 1300 5700
$Comp
L Device:C ceramic1
U 1 1 5C41D631
P 1600 5600
F 0 "ceramic1" V 1348 5600 50  0000 C CNN
F 1 "0.1uF" V 1439 5600 50  0000 C CNN
F 2 "Capacitor_SMD:C_1806_4516Metric" H 1638 5450 50  0001 C CNN
F 3 "~" H 1600 5600 50  0001 C CNN
	1    1600 5600
	0    1    1    0   
$EndComp
$Comp
L Device:C tantal1
U 1 1 5C41D698
P 1600 5850
F 0 "tantal1" V 1348 5850 50  0000 C CNN
F 1 "10uF" V 1439 5850 50  0000 C CNN
F 2 "Capacitor_SMD:C_1806_4516Metric" H 1638 5700 50  0001 C CNN
F 3 "~" H 1600 5850 50  0001 C CNN
	1    1600 5850
	0    1    1    0   
$EndComp
Wire Wire Line
	1450 5850 1450 5700
Wire Wire Line
	1300 5700 1450 5700
Connection ~ 1450 5700
Wire Wire Line
	1450 5700 1450 5600
$Comp
L Device:R R1
U 1 1 5C432CF7
P 2100 5650
F 0 "R1" V 1893 5650 50  0000 C CNN
F 1 "10kOhm" V 1984 5650 50  0000 C CNN
F 2 "Resistor_SMD:R_1806_4516Metric" V 2030 5650 50  0001 C CNN
F 3 "~" H 2100 5650 50  0001 C CNN
	1    2100 5650
	0    1    1    0   
$EndComp
Wire Wire Line
	2450 5350 2450 5650
Wire Wire Line
	2450 5650 2250 5650
Connection ~ 2450 5350
$Comp
L Device:R R2
U 1 1 5C43E5B8
P 2100 5800
F 0 "R2" V 1893 5800 50  0000 C CNN
F 1 "10kOhm" V 1984 5800 50  0000 C CNN
F 2 "Resistor_SMD:R_1806_4516Metric" V 2030 5800 50  0001 C CNN
F 3 "~" H 2100 5800 50  0001 C CNN
	1    2100 5800
	0    1    1    0   
$EndComp
Wire Wire Line
	1850 5550 1850 5650
Wire Wire Line
	1750 5600 1750 5650
Wire Wire Line
	1950 5650 1850 5650
Connection ~ 1850 5650
Wire Wire Line
	1850 5650 1850 5800
Wire Wire Line
	1750 5650 1850 5650
Connection ~ 1750 5650
Wire Wire Line
	1750 5650 1750 5850
Wire Wire Line
	1950 5800 1850 5800
Connection ~ 1850 5800
Wire Wire Line
	1850 5800 1850 5950
Wire Wire Line
	2250 5800 2500 5800
Wire Wire Line
	2500 5800 2500 5250
Connection ~ 2500 5250
Wire Wire Line
	2500 5250 2650 5250
Wire Wire Line
	2450 5150 2550 5150
Wire Wire Line
	2550 5150 2550 4850
Wire Wire Line
	2550 4850 1850 4850
Connection ~ 1850 4850
$Comp
L Connector:Conn_01x11_Male J3
U 1 1 5C4683E3
P 1100 750
F 0 "J3" V 935 726 50  0000 C CNN
F 1 "Conn_01x11_Male" V 1026 726 50  0000 C CNN
F 2 "Connector_JST:JST_EH_B11B-EH-A_1x11_P2.50mm_Vertical" H 1100 750 50  0001 C CNN
F 3 "~" H 1100 750 50  0001 C CNN
	1    1100 750 
	0    1    1    0   
$EndComp
Text GLabel 1600 1050 3    50   Input ~ 0
GND
Text GLabel 1500 1050 3    50   Input ~ 0
5V_Main
Wire Wire Line
	1600 1050 1600 950 
Wire Wire Line
	1500 1050 1500 950 
Wire Wire Line
	3500 4000 3500 4050
Wire Wire Line
	3500 4050 3700 4050
Wire Wire Line
	3700 4050 3700 4100
Connection ~ 3700 4050
Wire Wire Line
	3700 4050 4550 4050
Text GLabel 1400 1050 3    50   Input ~ 0
Lenkung
Text GLabel 3850 3650 0    50   Input ~ 0
Lenkung
Wire Wire Line
	4050 3650 3850 3650
Wire Wire Line
	3500 3050 3450 3050
Wire Wire Line
	1400 1050 1400 950 
Text GLabel 1300 1050 3    50   Input ~ 0
Throttle
Text GLabel 1200 1050 3    50   Input ~ 0
Mode
Wire Wire Line
	1300 1050 1300 950 
Wire Wire Line
	1200 1050 1200 950 
Text GLabel 1150 3050 0    50   Input ~ 0
Throttle
Text GLabel 1150 2950 0    50   Input ~ 0
Lenkung
Text GLabel 1150 2850 0    50   Input ~ 0
Mode
Wire Wire Line
	1200 2850 1150 2850
Wire Wire Line
	1150 2950 1200 2950
Wire Wire Line
	1200 3050 1150 3050
$Comp
L Connector:Conn_01x04_Male J1
U 1 1 5C4F5EB3
P 500 2250
F 0 "J1" V 560 2391 50  0000 L CNN
F 1 "APA102C" V 651 2391 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 500 2250 50  0001 C CNN
F 3 "~" H 500 2250 50  0001 C CNN
	1    500  2250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male 5VConverter1
U 1 1 5C502A18
P 5350 1200
F 0 "5VConverter1" V 5410 1340 50  0000 L CNN
F 1 "Conn_01x04_Male" V 5501 1340 50  0000 L CNN
F 2 "Connector_JST:JST_EH_B04B-EH-A_1x04_P2.50mm_Vertical" H 5350 1200 50  0001 C CNN
F 3 "~" H 5350 1200 50  0001 C CNN
	1    5350 1200
	0    1    1    0   
$EndComp
Text GLabel 5300 1500 3    50   Input ~ 0
GND
Text GLabel 5150 1500 3    50   Input ~ 0
VIN
Text GLabel 5450 1500 3    50   Input ~ 0
5V_Main
Wire Wire Line
	5150 1400 5150 1500
Wire Wire Line
	5250 1400 5300 1400
Wire Wire Line
	5300 1400 5300 1500
Wire Wire Line
	5350 1400 5300 1400
Connection ~ 5300 1400
Wire Wire Line
	5450 1400 5450 1500
Wire Wire Line
	1100 2350 1100 2750
Wire Wire Line
	1100 2750 1200 2750
Wire Wire Line
	1200 2650 1150 2650
Wire Wire Line
	1150 2650 1150 2250
Connection ~ 1900 2000
Wire Wire Line
	1900 2000 1900 2050
Connection ~ 1800 4050
Wire Wire Line
	750  4050 1700 4050
Wire Wire Line
	700  2250 1150 2250
Wire Wire Line
	700  2350 1100 2350
Wire Wire Line
	750  4050 750  2150
Wire Wire Line
	750  2150 700  2150
Wire Wire Line
	800  2000 800  2450
Wire Wire Line
	800  2450 700  2450
Wire Wire Line
	800  2000 1900 2000
$Comp
L Connector:Conn_01x04_Male Pulse_in1
U 1 1 5C556D65
P 2800 2450
F 0 "Pulse_in1" V 2860 2590 50  0000 L CNN
F 1 "Conn_01x04_Male" V 2951 2590 50  0000 L CNN
F 2 "Connector_JST:JST_EH_B04B-EH-A_1x04_P2.50mm_Vertical" H 2800 2450 50  0001 C CNN
F 3 "~" H 2800 2450 50  0001 C CNN
	1    2800 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	1800 4050 2750 4050
$Comp
L Device:R R3
U 1 1 5C56F9C1
P 2600 2850
F 0 "R3" H 2670 2896 50  0000 L CNN
F 1 "R" H 2670 2805 50  0000 L CNN
F 2 "Resistor_SMD:R_1806_4516Metric" V 2530 2850 50  0001 C CNN
F 3 "~" H 2600 2850 50  0001 C CNN
	1    2600 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5C56FACD
P 2700 2950
F 0 "R5" H 2770 2996 50  0000 L CNN
F 1 "R" H 2770 2905 50  0000 L CNN
F 2 "Resistor_SMD:R_1806_4516Metric" V 2630 2950 50  0001 C CNN
F 3 "~" H 2700 2950 50  0001 C CNN
	1    2700 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5C56FB23
P 2800 3050
F 0 "R7" H 2870 3096 50  0000 L CNN
F 1 "R" H 2870 3005 50  0000 L CNN
F 2 "Resistor_SMD:R_1806_4516Metric" V 2730 3050 50  0001 C CNN
F 3 "~" H 2800 3050 50  0001 C CNN
	1    2800 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5C56FB7B
P 2900 3150
F 0 "R9" H 2970 3196 50  0000 L CNN
F 1 "10kohm" H 2970 3105 50  0000 L CNN
F 2 "Resistor_SMD:R_1806_4516Metric" V 2830 3150 50  0001 C CNN
F 3 "~" H 2900 3150 50  0001 C CNN
	1    2900 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5C56FBD5
P 2600 3200
F 0 "R4" H 2670 3246 50  0000 L CNN
F 1 "R" H 2670 3155 50  0000 L CNN
F 2 "Resistor_SMD:R_1806_4516Metric" V 2530 3200 50  0001 C CNN
F 3 "~" H 2600 3200 50  0001 C CNN
	1    2600 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5C56FC31
P 2700 3300
F 0 "R6" H 2770 3346 50  0000 L CNN
F 1 "R" H 2770 3255 50  0000 L CNN
F 2 "Resistor_SMD:R_1806_4516Metric" V 2630 3300 50  0001 C CNN
F 3 "~" H 2700 3300 50  0001 C CNN
	1    2700 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5C56FC8F
P 2800 3400
F 0 "R8" H 2870 3446 50  0000 L CNN
F 1 "R" H 2870 3355 50  0000 L CNN
F 2 "Resistor_SMD:R_1806_4516Metric" V 2730 3400 50  0001 C CNN
F 3 "~" H 2800 3400 50  0001 C CNN
	1    2800 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5C56FCEF
P 2900 3500
F 0 "R10" H 2970 3546 50  0000 L CNN
F 1 "1kohm" H 2970 3455 50  0000 L CNN
F 2 "Resistor_SMD:R_1806_4516Metric" V 2830 3500 50  0001 C CNN
F 3 "~" H 2900 3500 50  0001 C CNN
	1    2900 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 3750 2350 3750
Wire Wire Line
	2200 3650 2400 3650
Wire Wire Line
	2200 3550 2450 3550
Wire Wire Line
	2450 3550 2450 4500
Wire Wire Line
	2200 3450 2500 3450
Wire Wire Line
	2600 2650 2600 2700
Wire Wire Line
	2700 2650 2700 2800
Wire Wire Line
	2800 2650 2800 2900
Wire Wire Line
	2900 2650 2900 3000
Wire Wire Line
	2200 3050 2600 3050
Wire Wire Line
	2600 3050 2600 3000
Connection ~ 2600 3050
Wire Wire Line
	2700 3100 2700 3150
Wire Wire Line
	2200 3150 2700 3150
Connection ~ 2700 3150
Wire Wire Line
	2800 3200 2800 3250
Wire Wire Line
	2800 3250 2200 3250
Connection ~ 2800 3250
Wire Wire Line
	2900 3300 2900 3350
Wire Wire Line
	2900 3350 2700 3350
Wire Wire Line
	2700 3350 2700 3300
Wire Wire Line
	2700 3300 2500 3300
Wire Wire Line
	2500 3300 2500 3350
Wire Wire Line
	2500 3350 2200 3350
Connection ~ 2900 3350
Wire Wire Line
	2600 3350 2600 3650
Wire Wire Line
	2600 3650 2700 3650
Wire Wire Line
	2800 3550 2800 3650
Connection ~ 2800 3650
Wire Wire Line
	2800 3650 2900 3650
Wire Wire Line
	2700 3450 2700 3650
Connection ~ 2700 3650
Wire Wire Line
	2700 3650 2750 3650
Connection ~ 2750 3650
Wire Wire Line
	2750 3650 2800 3650
Wire Wire Line
	2750 3650 2750 4050
$Comp
L Relay_SolidState:34.81-8240 U1
U 1 1 5C3D7F61
P 3150 1900
F 0 "U1" H 3150 2225 50  0000 C CNN
F 1 "34.81-8240" H 3150 2134 50  0000 C CNN
F 2 "OptoDevice:Finder_34.81" H 2950 1700 50  0001 L CIN
F 3 "https://gfinder.findernet.com/public/attachments/34/EN/S34USAEN.pdf" H 3125 1900 50  0001 L CNN
	1    3150 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 1500 3850 1400
Wire Wire Line
	3450 1800 3500 1800
Wire Wire Line
	3500 1800 3500 1450
Wire Wire Line
	3500 1450 3650 1450
Wire Wire Line
	3750 1400 3750 2000
Wire Wire Line
	3750 2000 3450 2000
Wire Wire Line
	3500 1450 2550 1450
Connection ~ 3500 1450
Wire Wire Line
	2550 1450 2550 1400
Text GLabel 3850 1500 3    50   Input ~ 0
GND
Wire Wire Line
	2850 1800 2850 1500
Wire Wire Line
	2450 1500 2850 1500
Connection ~ 2850 1500
Wire Wire Line
	2850 1500 3850 1500
Wire Wire Line
	700  3150 700  2500
Wire Wire Line
	700  2500 850  2500
Wire Wire Line
	850  2500 850  1550
Wire Wire Line
	850  1550 2100 1550
Wire Wire Line
	2100 1550 2100 2000
Wire Wire Line
	2100 2000 2850 2000
Wire Wire Line
	700  3150 1200 3150
$Comp
L TLE5205-2G:TLE5205 U3
U 1 1 5C40E1E9
P 4150 4600
F 0 "U3" H 4528 4590 50  0000 L CNN
F 1 "TLE5205" H 4528 4499 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-263-7_TabPin4" H 4150 4600 50  0001 C CNN
F 3 "" H 4150 4600 50  0001 C CNN
	1    4150 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 4900 4050 5000
Wire Wire Line
	3450 3450 4050 3450
Wire Wire Line
	3350 3250 4050 3250
Wire Wire Line
	3750 4350 3950 4350
Wire Wire Line
	3950 4350 3950 3550
Wire Wire Line
	3750 4350 3750 4950
Wire Wire Line
	5000 5250 5000 5300
Wire Wire Line
	4450 4900 4450 5300
Wire Wire Line
	4450 5300 5000 5300
Wire Wire Line
	3950 4900 3950 4950
Wire Wire Line
	3750 4950 3950 4950
Wire Wire Line
	4050 5000 3450 5000
Wire Wire Line
	3450 5000 3450 3450
Wire Wire Line
	3850 5400 5400 5400
Wire Wire Line
	3850 4900 3850 5400
Wire Wire Line
	5400 5400 5400 4850
Wire Wire Line
	4250 5050 3350 5050
Wire Wire Line
	4250 4900 4250 5050
Wire Wire Line
	3350 5050 3350 3250
Wire Wire Line
	4350 4900 4350 5550
Text GLabel 4150 5100 3    50   Input ~ 0
GND
Wire Wire Line
	4150 4900 4150 5100
$EndSCHEMATC
