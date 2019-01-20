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
P 2750 2250
F 0 "A1" H 2750 1164 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 2750 1073 50  0000 C CNN
F 2 "Arduino:Arduino_Nano_Socket" H 2900 1300 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 2750 1250 50  0001 C CNN
	1    2750 2250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male MAIN_Power1
U 1 1 5C0AA93D
P 5100 800
F 0 "MAIN_Power1" V 5160 840 50  0000 L CNN
F 1 "Conn_01x02_Male" V 5251 840 50  0000 L CNN
F 2 "Connector_Phoenix_GMSTB:PhoenixContact_GMSTBVA_2,5_2-G-7,62_1x02_P7.62mm_Vertical" H 5100 800 50  0001 C CNN
F 3 "~" H 5100 800 50  0001 C CNN
	1    5100 800 
	0    1    1    0   
$EndComp
Wire Wire Line
	5000 1000 5000 1100
Text GLabel 10000 6000 2    50   Input ~ 0
12V
Text GLabel 5050 3000 3    50   Input ~ 0
GND
Text GLabel 2950 1150 1    50   Input ~ 0
5V_Main
Text GLabel 5600 3000 3    50   Input ~ 0
5V_Main
Text GLabel 7450 3500 1    50   Input ~ 0
5V_2
Wire Wire Line
	7450 3750 7450 3500
$Comp
L MCU_Module:Arduino_Nano_v3.x A2
U 1 1 5C0AA492
P 7250 4750
F 0 "A2" H 7250 3664 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 7250 3573 50  0000 C CNN
F 2 "Arduino:Arduino_Nano_Socket" H 7400 3800 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 7250 3750 50  0001 C CNN
	1    7250 4750
	1    0    0    -1  
$EndComp
Text GLabel 5700 4400 1    50   Input ~ 0
5V_Main
Text GLabel 2900 3250 3    50   Input ~ 0
GND
Text GLabel 7150 3500 1    50   Input ~ 0
12V
Wire Wire Line
	7150 3500 7150 3750
$Comp
L Switch:SW_Push SW1
U 1 1 5C0C113F
P 6700 5650
F 0 "SW1" H 6700 5935 50  0000 C CNN
F 1 "SW_Push" H 6700 5844 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x01_P2.54mm_Vertical_SMD" H 6700 5850 50  0001 C CNN
F 3 "" H 6700 5850 50  0001 C CNN
	1    6700 5650
	0    -1   -1   0   
$EndComp
Text GLabel 7350 5850 2    50   Input ~ 0
GND
$Comp
L Connector:Conn_01x05_Female MotorServo1
U 1 1 5C0C1D2E
P 9800 5500
F 0 "MotorServo1" H 9694 5075 50  0000 C CNN
F 1 "Conn_01x05_Female" H 9694 5166 50  0000 C CNN
F 2 "Connector_Phoenix_MSTB:PhoenixContact_MSTBVA_2,5_5-G-5,08_1x05_P5.08mm_Vertical" H 9800 5500 50  0001 C CNN
F 3 "~" H 9800 5500 50  0001 C CNN
	1    9800 5500
	-1   0    0    1   
$EndComp
Text GLabel 10050 5400 2    50   Input ~ 0
5V_2
Text GLabel 10200 5600 2    50   Input ~ 0
GND
Wire Wire Line
	10050 5400 10000 5400
Wire Wire Line
	10050 5700 10000 5700
Wire Wire Line
	10000 5600 10150 5600
Wire Wire Line
	4900 6800 4900 6850
Wire Wire Line
	10000 5300 10450 5300
$Comp
L Device:C C1
U 1 1 5C0C57CF
P 10750 5650
F 0 "C1" H 10865 5696 50  0000 L CNN
F 1 "C" H 10865 5605 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_Tantal_D8.0mm_P5.00mm" H 10788 5500 50  0001 C CNN
F 3 "~" H 10750 5650 50  0001 C CNN
	1    10750 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 5600 10150 5800
Wire Wire Line
	10150 5800 10750 5800
Connection ~ 10150 5600
Wire Wire Line
	10150 5600 10200 5600
$Comp
L pspice:DIODE D1
U 1 1 5C0CD48B
P 9600 6000
F 0 "D1" H 9600 6265 50  0000 C CNN
F 1 "DIODE" H 9600 6174 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P5.08mm_Vertical_AnodeUp" H 9600 6000 50  0001 C CNN
F 3 "~" H 9600 6000 50  0001 C CNN
	1    9600 6000
	-1   0    0    1   
$EndComp
Wire Wire Line
	9800 6000 10000 6000
Text GLabel 6600 4400 1    50   Input ~ 0
GND
$Comp
L Connector:Conn_01x03_Male 12VConverter1
U 1 1 5C3A3F02
P 6400 800
F 0 "12VConverter1" V 6460 940 50  0000 L CNN
F 1 "Conn_01x03_Male" V 6551 940 50  0000 L CNN
F 2 "Connector_Phoenix_MSTB:PhoenixContact_MSTBVA_2,5_3-G_1x03_P5.00mm_Vertical" H 6400 800 50  0001 C CNN
F 3 "~" H 6400 800 50  0001 C CNN
	1    6400 800 
	0    1    1    0   
$EndComp
Text GLabel 6500 1150 3    50   Input ~ 0
12V
$Comp
L Analog_DAC:MCP4728 U2
U 1 1 5C3AB1E2
P 5600 2550
F 0 "U2" H 5600 1972 50  0000 C CNN
F 1 "MCP4728" H 5600 2063 50  0000 C CNN
F 2 "Package_SO:MSOP-10_3x3mm_P0.5mm" H 5600 1950 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/22187E.pdf" H 5600 2800 50  0001 C CNN
	1    5600 2550
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x02_Male ReverseConn1
U 1 1 5C3AB2F8
P 1450 2550
F 0 "ReverseConn1" H 1556 2828 50  0000 C CNN
F 1 "Conn_01x02_Male" H 1556 2737 50  0000 C CNN
F 2 "Connector_JST:JST_EH_B02B-EH-A_1x02_P2.50mm_Vertical" H 1450 2550 50  0001 C CNN
F 3 "~" H 1450 2550 50  0001 C CNN
	1    1450 2550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male SpeedConn1
U 1 1 5C3AB396
P 4400 2450
F 0 "SpeedConn1" H 4506 2728 50  0000 C CNN
F 1 "Conn_01x04_Male" H 4506 2637 50  0000 C CNN
F 2 "Connector_JST:JST_EH_B04B-EH-A_1x04_P2.50mm_Vertical" H 4400 2450 50  0001 C CNN
F 3 "~" H 4400 2450 50  0001 C CNN
	1    4400 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 2450 4750 2450
Wire Wire Line
	4600 2650 4950 2650
Connection ~ 4950 2650
Wire Wire Line
	4950 2650 5000 2650
Wire Wire Line
	6200 2550 6250 2550
Wire Wire Line
	5600 2150 5050 2150
Wire Wire Line
	5050 2150 5050 3000
$Comp
L Device:C ceramic1
U 1 1 5C41D631
P 5350 2900
F 0 "ceramic1" V 5098 2900 50  0000 C CNN
F 1 "0.1uF" V 5189 2900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5388 2750 50  0001 C CNN
F 3 "~" H 5350 2900 50  0001 C CNN
	1    5350 2900
	0    1    1    0   
$EndComp
$Comp
L Device:C tantal1
U 1 1 5C41D698
P 5350 3150
F 0 "tantal1" V 5098 3150 50  0000 C CNN
F 1 "10uF" V 5189 3150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5388 3000 50  0001 C CNN
F 3 "~" H 5350 3150 50  0001 C CNN
	1    5350 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	5200 3150 5200 3000
Wire Wire Line
	5050 3000 5200 3000
Connection ~ 5200 3000
Wire Wire Line
	5200 3000 5200 2900
Wire Wire Line
	5600 2850 5600 2950
Wire Wire Line
	5500 2900 5500 2950
Wire Wire Line
	5500 2950 5600 2950
Connection ~ 5500 2950
Wire Wire Line
	5500 2950 5500 3150
$Comp
L Connector:Conn_01x07_Male J3
U 1 1 5C4683E3
P 10950 3100
F 0 "J3" V 10785 3076 50  0000 C CNN
F 1 "Conn_01x11_Male" V 10876 3076 50  0000 C CNN
F 2 "Connector_JST:JST_EH_B07B-EH-A_1x07_P2.50mm_Vertical" H 10950 3100 50  0001 C CNN
F 3 "~" H 10950 3100 50  0001 C CNN
	1    10950 3100
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x03_Male 5VConverter1
U 1 1 5C502A18
P 6750 800
F 0 "5VConverter1" V 6810 940 50  0000 L CNN
F 1 "Conn_01x04_Male" V 6901 940 50  0000 L CNN
F 2 "Connector_Phoenix_MSTB:PhoenixContact_MSTBVA_2,5_3-G_1x03_P5.00mm_Vertical" H 6750 800 50  0001 C CNN
F 3 "~" H 6750 800 50  0001 C CNN
	1    6750 800 
	0    1    1    0   
$EndComp
Text GLabel 6850 1050 3    50   Input ~ 0
5V_Main
$Comp
L Connector:Conn_01x04_Male Pulse_in1
U 1 1 5C556D65
P 8150 1650
F 0 "Pulse_in1" V 8210 1790 50  0000 L CNN
F 1 "Conn_01x04_Male" V 8301 1790 50  0000 L CNN
F 2 "Connector_JST:JST_EH_B04B-EH-A_1x04_P2.50mm_Vertical" H 8150 1650 50  0001 C CNN
F 3 "~" H 8150 1650 50  0001 C CNN
	1    8150 1650
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5C56F9C1
P 7950 2050
F 0 "R3" H 8020 2096 50  0000 L CNN
F 1 "R" H 8020 2005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7880 2050 50  0001 C CNN
F 3 "~" H 7950 2050 50  0001 C CNN
	1    7950 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5C56FACD
P 8050 2150
F 0 "R5" H 8120 2196 50  0000 L CNN
F 1 "R" H 8120 2105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7980 2150 50  0001 C CNN
F 3 "~" H 8050 2150 50  0001 C CNN
	1    8050 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5C56FB23
P 8150 2250
F 0 "R7" H 8220 2296 50  0000 L CNN
F 1 "R" H 8220 2205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8080 2250 50  0001 C CNN
F 3 "~" H 8150 2250 50  0001 C CNN
	1    8150 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5C56FB7B
P 8250 2350
F 0 "R9" H 8320 2396 50  0000 L CNN
F 1 "10kohm" H 8320 2305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8180 2350 50  0001 C CNN
F 3 "~" H 8250 2350 50  0001 C CNN
	1    8250 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5C56FBD5
P 7950 2450
F 0 "R4" H 8020 2496 50  0000 L CNN
F 1 "R" H 8020 2405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7880 2450 50  0001 C CNN
F 3 "~" H 7950 2450 50  0001 C CNN
	1    7950 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5C56FC31
P 8050 2550
F 0 "R6" H 8120 2596 50  0000 L CNN
F 1 "R" H 8120 2505 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7980 2550 50  0001 C CNN
F 3 "~" H 8050 2550 50  0001 C CNN
	1    8050 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5C56FC8F
P 8150 2650
F 0 "R8" H 8220 2696 50  0000 L CNN
F 1 "R" H 8220 2605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8080 2650 50  0001 C CNN
F 3 "~" H 8150 2650 50  0001 C CNN
	1    8150 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5C56FCEF
P 8250 2700
F 0 "R10" H 8320 2746 50  0000 L CNN
F 1 "1kohm" H 8320 2655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8180 2700 50  0001 C CNN
F 3 "~" H 8250 2700 50  0001 C CNN
	1    8250 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 1850 7950 1900
Wire Wire Line
	8050 1850 8050 2000
Wire Wire Line
	8150 1850 8150 2100
Wire Wire Line
	8250 1850 8250 2200
Wire Wire Line
	7950 2250 7950 2200
Wire Wire Line
	8250 2500 8250 2550
Wire Wire Line
	7950 2850 8050 2850
Wire Wire Line
	8150 2800 8150 2850
Connection ~ 8150 2850
Wire Wire Line
	8150 2850 8250 2850
Wire Wire Line
	8050 2700 8050 2850
Connection ~ 8050 2850
$Comp
L Relay_SolidState:34.81-8240 U1
U 1 1 5C3D7F61
P 5700 1500
F 0 "U1" H 5700 1825 50  0000 C CNN
F 1 "34.81-8240" H 5700 1734 50  0000 C CNN
F 2 "OptoDevice:Finder_34.81" H 5500 1300 50  0001 L CIN
F 3 "https://gfinder.findernet.com/public/attachments/34/EN/S34USAEN.pdf" H 5675 1500 50  0001 L CNN
	1    5700 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 1100 6400 1000
Wire Wire Line
	6000 1400 6050 1400
Wire Wire Line
	5100 1050 5100 1000
Text GLabel 6400 1100 3    50   Input ~ 0
GND
Wire Wire Line
	5400 1400 5400 1100
Wire Wire Line
	5000 1100 5400 1100
Connection ~ 5400 1100
$Comp
L TLE5205-2G:TLE5205 U3
U 1 1 5C40E1E9
P 9200 5050
F 0 "U3" H 9578 5040 50  0000 L CNN
F 1 "TLE5205" H 9578 4949 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-263-7_TabPin4" H 9200 5050 50  0001 C CNN
F 3 "" H 9200 5050 50  0001 C CNN
	1    9200 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 5700 10050 5750
Wire Wire Line
	9500 5350 9500 5750
Wire Wire Line
	9500 5750 10050 5750
Wire Wire Line
	9000 5350 9000 5400
Wire Wire Line
	8900 5850 10450 5850
Wire Wire Line
	8900 5350 8900 5850
Wire Wire Line
	10450 5850 10450 5300
Wire Wire Line
	9400 5350 9400 6000
Text GLabel 9200 5400 3    50   Input ~ 0
GND
Text GLabel 6250 2550 2    50   Input ~ 0
SDA_DA
Text GLabel 6250 2650 2    50   Input ~ 0
SCL_DA
Text GLabel 2200 2750 0    50   Input ~ 0
SCL_DA
Text GLabel 2200 2850 0    50   Input ~ 0
SDA_DA
Wire Wire Line
	2200 2850 2250 2850
Wire Wire Line
	2200 2750 2250 2750
$Comp
L nodemcu:NodeMCU_Amica_R2 U4
U 1 1 5C4BBB1D
P 9400 3500
F 0 "U4" H 9400 4515 50  0000 C CNN
F 1 "NodeMCU_Amica_R2" H 9400 4424 50  0000 C CNN
F 2 "nodemcu:NodeMCU_Amica_R2" H 9400 4333 50  0000 C CNN
F 3 "" H 9650 3500 50  0000 C CNN
	1    9400 3500
	1    0    0    -1  
$EndComp
Text GLabel 8900 4100 0    50   Input ~ 0
GND
Text GLabel 8900 4200 0    50   Input ~ 0
5V_Main
Wire Wire Line
	8950 4200 8900 4200
$Comp
L Transistor_FET:BSS138 Q2
U 1 1 5C4F1893
P 9850 1650
F 0 "Q2" V 10100 1650 50  0000 C CNN
F 1 "BSS138" V 10191 1650 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10050 1575 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/BS/BSS138.pdf" H 9850 1650 50  0001 L CNN
	1    9850 1650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R12
U 1 1 5C4FC6A5
P 9650 1700
F 0 "R12" H 9580 1654 50  0000 R CNN
F 1 "R" H 9580 1745 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9580 1700 50  0001 C CNN
F 3 "~" H 9650 1700 50  0001 C CNN
	1    9650 1700
	-1   0    0    1   
$EndComp
$Comp
L Device:R R14
U 1 1 5C4FC744
P 10050 1700
F 0 "R14" H 9980 1654 50  0000 R CNN
F 1 "R" H 9980 1745 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9980 1700 50  0001 C CNN
F 3 "~" H 10050 1700 50  0001 C CNN
	1    10050 1700
	-1   0    0    1   
$EndComp
Wire Wire Line
	9850 1850 10050 1850
Wire Wire Line
	10050 1900 10050 1850
Connection ~ 10050 1850
Wire Wire Line
	9650 1850 9650 1900
Text GLabel 9650 1900 3    50   Input ~ 0
5V_Main
Text GLabel 10050 1900 3    50   Input ~ 0
3.3V_1
$Comp
L Transistor_FET:BSS138 Q1
U 1 1 5C527F2F
P 9850 1200
F 0 "Q1" V 10193 1200 50  0000 C CNN
F 1 "BSS138" V 10102 1200 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10050 1125 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/BS/BSS138.pdf" H 9850 1200 50  0001 L CNN
	1    9850 1200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R11
U 1 1 5C527F36
P 9650 1250
F 0 "R11" H 9580 1204 50  0000 R CNN
F 1 "R" H 9580 1295 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9580 1250 50  0001 C CNN
F 3 "~" H 9650 1250 50  0001 C CNN
	1    9650 1250
	-1   0    0    1   
$EndComp
$Comp
L Device:R R13
U 1 1 5C527F3D
P 10050 1250
F 0 "R13" H 9980 1204 50  0000 R CNN
F 1 "R" H 9980 1295 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9980 1250 50  0001 C CNN
F 3 "~" H 10050 1250 50  0001 C CNN
	1    10050 1250
	-1   0    0    1   
$EndComp
Wire Wire Line
	10150 1400 10150 1850
Wire Wire Line
	10150 1850 10050 1850
Connection ~ 10050 1400
Wire Wire Line
	10050 1400 10150 1400
Wire Wire Line
	9850 1400 10050 1400
Wire Wire Line
	9550 1850 9550 1400
Wire Wire Line
	9550 1400 9650 1400
Wire Wire Line
	9550 1850 9650 1850
Text GLabel 3300 2750 2    50   Input ~ 0
SCL_H
Text GLabel 7800 5250 2    50   Input ~ 0
SCL_H
Text GLabel 7800 5150 2    50   Input ~ 0
SDA_H
Text GLabel 3300 2650 2    50   Input ~ 0
SDA_H
Wire Wire Line
	7750 5150 7800 5150
Wire Wire Line
	7800 5250 7750 5250
Wire Wire Line
	3300 2650 3250 2650
Wire Wire Line
	3250 2750 3300 2750
Text GLabel 9500 1550 0    50   Input ~ 0
SDA_H
Text GLabel 9500 1100 0    50   Input ~ 0
SCL_H
Text GLabel 10200 1100 2    50   Input ~ 0
SCL_L
Text GLabel 10200 1550 2    50   Input ~ 0
SDA_L
Wire Wire Line
	10200 1100 10050 1100
Connection ~ 10050 1100
Wire Wire Line
	10050 1550 10200 1550
Connection ~ 10050 1550
Wire Wire Line
	9650 1550 9500 1550
Wire Wire Line
	9500 1100 9650 1100
Connection ~ 9650 1100
Text GLabel 10050 3800 2    50   Input ~ 0
SDA_L
Text GLabel 10050 3700 2    50   Input ~ 0
SCL_L
Wire Wire Line
	10050 3700 9850 3700
Wire Wire Line
	9850 3800 10050 3800
Text GLabel 7800 5050 2    50   Input ~ 0
IN2
Text GLabel 7800 4950 2    50   Input ~ 0
IN1
Text GLabel 9300 5400 3    50   Input ~ 0
IN2
Text GLabel 9100 5400 3    50   Input ~ 0
IN1
Wire Wire Line
	7800 4850 7750 4850
Wire Wire Line
	9100 5350 9100 5400
Wire Wire Line
	9300 5350 9300 5400
Wire Wire Line
	9200 5350 9200 5400
Text GLabel 9000 5400 3    50   Input ~ 0
EF
Text GLabel 7800 4850 2    50   Input ~ 0
EF
Wire Wire Line
	6750 5450 6700 5450
Text GLabel 7800 4750 2    50   Input ~ 0
SERVO_In
Text GLabel 10550 5450 1    50   Input ~ 0
SERVO_In
Wire Wire Line
	10000 5500 10550 5500
Wire Wire Line
	7800 4750 7750 4750
Wire Wire Line
	10550 5450 10550 5500
Connection ~ 10550 5500
Wire Wire Line
	10550 5500 10750 5500
Text GLabel 5350 1600 0    50   Input ~ 0
Power_Relay
Text GLabel 2200 2450 0    50   Input ~ 0
Power_Relay
Wire Wire Line
	5350 1600 5400 1600
Wire Wire Line
	2200 2350 2250 2350
Text GLabel 10700 3100 0    50   Input ~ 0
5V_Main
Text GLabel 10700 3400 0    50   Input ~ 0
GND
Wire Wire Line
	9850 2800 10750 2800
Wire Wire Line
	9850 2900 10750 2900
Wire Wire Line
	9850 3000 10750 3000
Wire Wire Line
	6450 4450 6500 4450
$Comp
L crumpschemes:SK9822 U5
U 1 1 5C43F5D1
P 1650 1800
F 0 "U5" H 1650 1257 60  0000 C CNN
F 1 "SK9822" H 1650 1363 60  0000 C CNN
F 2 "TLE5205:APA102_hand_solder" H 1650 1469 60  0000 C CNN
F 3 "" H 1650 1350 60  0000 C CNN
	1    1650 1800
	-1   0    0    1   
$EndComp
Text GLabel 1150 1650 0    50   Input ~ 0
5V_Main
Text GLabel 2100 1600 1    50   Input ~ 0
GND
Wire Wire Line
	2950 1150 2950 1250
Wire Wire Line
	1200 1650 1150 1650
Wire Wire Line
	2100 1600 2100 1650
Wire Wire Line
	2100 1850 2100 1800
Wire Wire Line
	2100 1850 2250 1850
Wire Wire Line
	2100 1950 2250 1950
$Comp
L crumpschemes:SK9822 U6
U 1 1 5C4C14BB
P 6150 4600
F 0 "U6" H 6150 4200 60  0000 C CNN
F 1 "SK9822" H 6150 4300 60  0000 C CNN
F 2 "TLE5205:APA102_hand_solder" H 6450 4900 60  0000 C CNN
F 3 "" H 6150 4150 60  0000 C CNN
	1    6150 4600
	-1   0    0    1   
$EndComp
Wire Wire Line
	5700 4400 5700 4450
Wire Wire Line
	6600 4450 6600 4400
Text GLabel 4950 2700 3    50   Input ~ 0
VOUTA
Text GLabel 4850 2700 3    50   Input ~ 0
VOUTB
Text GLabel 4750 2700 3    50   Input ~ 0
VOUTC
Text GLabel 4650 2700 3    50   Input ~ 0
VOUTD
Wire Wire Line
	4950 2700 4950 2650
Wire Wire Line
	4850 2700 4850 2550
Connection ~ 4850 2550
Wire Wire Line
	4850 2550 4600 2550
Wire Wire Line
	4750 2700 4750 2450
Connection ~ 4750 2450
Wire Wire Line
	4650 2700 4650 2350
Connection ~ 4650 2350
Wire Wire Line
	4650 2350 4600 2350
Text GLabel 3300 2450 2    50   Input ~ 0
VOUTA
Text GLabel 3300 2550 2    50   Input ~ 0
VOUTB
Text GLabel 3300 2850 2    50   Input ~ 0
VOUTC
Text GLabel 3300 2950 2    50   Input ~ 0
VOUTD
Wire Wire Line
	4750 2450 5000 2450
Text GLabel 2200 2050 0    50   Input ~ 0
P_IN_A
Text GLabel 2200 2150 0    50   Input ~ 0
P_IN_B
Text GLabel 2200 2250 0    50   Input ~ 0
P_IN_C
Text GLabel 2200 2350 0    50   Input ~ 0
P_IN_D
Wire Wire Line
	2250 2450 2200 2450
Wire Wire Line
	2200 2250 2250 2250
Wire Wire Line
	2200 2150 2250 2150
Wire Wire Line
	2200 2050 2250 2050
Wire Wire Line
	8050 2850 8150 2850
Text GLabel 8300 2850 2    50   Input ~ 0
GND
Wire Wire Line
	8300 2850 8250 2850
Connection ~ 8250 2850
Wire Wire Line
	3250 2550 3300 2550
Wire Wire Line
	3250 2450 3300 2450
Wire Wire Line
	3250 2850 3300 2850
Wire Wire Line
	3300 2950 3250 2950
Wire Wire Line
	4650 2350 5000 2350
Wire Wire Line
	4850 2550 5000 2550
Wire Wire Line
	1650 2550 2250 2550
Wire Wire Line
	1650 2650 2250 2650
Text GLabel 7850 2250 0    50   Input ~ 0
P_IN_A
Text GLabel 7850 2350 0    50   Input ~ 0
P_IN_B
Text GLabel 7850 2450 0    50   Input ~ 0
P_IN_C
Text GLabel 7850 2550 0    50   Input ~ 0
P_IN_D
Wire Wire Line
	7850 2250 7950 2250
Connection ~ 7950 2250
Wire Wire Line
	7950 2600 7950 2850
Wire Wire Line
	7950 2300 7950 2250
Wire Wire Line
	7850 2550 8250 2550
Connection ~ 8250 2550
Wire Wire Line
	8050 2300 8050 2350
Wire Wire Line
	8150 2400 8150 2450
Wire Wire Line
	7850 2450 8150 2450
Connection ~ 8150 2450
Wire Wire Line
	8150 2450 8150 2500
Wire Wire Line
	7850 2350 8050 2350
Connection ~ 8050 2350
Wire Wire Line
	8050 2350 8050 2400
Text GLabel 2650 1200 1    50   Input ~ 0
12V
Wire Wire Line
	2650 1250 2650 1200
NoConn ~ 8950 3600
NoConn ~ 8950 3500
NoConn ~ 8950 3400
NoConn ~ 8950 3300
NoConn ~ 8950 3200
NoConn ~ 8950 3100
NoConn ~ 8950 2800
Text GLabel 8900 3800 0    50   Input ~ 0
3.3V_1
Wire Wire Line
	8900 3800 8950 3800
Wire Wire Line
	8900 4100 8950 4100
NoConn ~ 8950 4000
NoConn ~ 8950 3900
NoConn ~ 8950 3700
NoConn ~ 9850 4200
NoConn ~ 9850 4100
NoConn ~ 9850 4000
NoConn ~ 9850 3900
NoConn ~ 9850 3400
NoConn ~ 9850 3300
NoConn ~ 7750 5450
NoConn ~ 7750 5350
NoConn ~ 7750 4550
NoConn ~ 7750 4250
NoConn ~ 7750 4150
NoConn ~ 7350 3750
NoConn ~ 6750 4150
NoConn ~ 6750 4250
NoConn ~ 6750 4350
NoConn ~ 6750 4450
NoConn ~ 6750 4550
NoConn ~ 6750 4850
Wire Wire Line
	7800 4950 7750 4950
NoConn ~ 6750 4950
NoConn ~ 6750 5350
NoConn ~ 1200 1950
NoConn ~ 1200 1800
NoConn ~ 5700 4750
NoConn ~ 5700 4600
NoConn ~ 2850 1250
NoConn ~ 6200 2350
NoConn ~ 2250 1750
NoConn ~ 2250 1650
NoConn ~ 3250 1750
NoConn ~ 3250 1650
NoConn ~ 3250 2350
NoConn ~ 3250 2250
NoConn ~ 3250 2050
NoConn ~ 2250 2950
$Comp
L Connector:Conn_01x01_Female J1
U 1 1 5C96C4EB
P 6250 1400
F 0 "J1" H 6278 1426 50  0000 L CNN
F 1 "PWR_C" H 6278 1335 50  0000 L CNN
F 2 "Connector_JST:JST_EH_B02B-EH-A_1x02_P2.50mm_Vertical" H 6250 1400 50  0001 C CNN
F 3 "~" H 6250 1400 50  0001 C CNN
	1    6250 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 1000 6300 1050
Wire Wire Line
	2900 3250 2850 3250
NoConn ~ 2750 3250
Wire Wire Line
	5400 1100 6400 1100
Wire Wire Line
	6250 2650 6200 2650
Wire Wire Line
	5600 2950 5600 3000
Connection ~ 5600 2950
Wire Wire Line
	6650 1000 6650 1050
Wire Wire Line
	6650 1050 6300 1050
Connection ~ 6300 1050
Wire Wire Line
	6750 1000 6750 1100
Connection ~ 6400 1100
Wire Wire Line
	6400 1100 6750 1100
Wire Wire Line
	6500 1000 6500 1150
Wire Wire Line
	6850 1000 6850 1050
Wire Wire Line
	5100 1050 6150 1050
Wire Wire Line
	6150 1050 6150 1600
Wire Wire Line
	6000 1600 6150 1600
Connection ~ 6150 1050
Wire Wire Line
	6150 1050 6300 1050
NoConn ~ 6750 5050
NoConn ~ 6750 5150
Wire Wire Line
	7800 5050 7750 5050
NoConn ~ 6750 5250
Connection ~ 9650 1550
Connection ~ 9650 1850
Wire Wire Line
	6750 4650 6650 4650
Wire Wire Line
	6650 4650 6650 4750
Wire Wire Line
	6650 4750 6600 4750
Wire Wire Line
	6750 4750 6700 4750
Wire Wire Line
	6700 4750 6700 4600
Wire Wire Line
	6700 4600 6600 4600
NoConn ~ 7250 5750
Wire Wire Line
	7350 5750 7350 5850
Wire Wire Line
	6700 5850 7350 5850
NoConn ~ 6200 2450
Wire Wire Line
	10700 3400 10750 3400
Wire Wire Line
	10700 3100 10750 3100
Wire Wire Line
	9850 3100 10300 3100
Wire Wire Line
	10300 3100 10300 3200
Wire Wire Line
	10300 3200 10750 3200
Wire Wire Line
	10250 3300 10250 3200
Wire Wire Line
	10250 3200 9850 3200
Wire Wire Line
	10250 3300 10750 3300
$Comp
L Connector:Conn_01x04_Male Main_Light1
U 1 1 5C483C75
P 10750 3700
F 0 "Main_Light1" H 10723 3580 50  0000 R CNN
F 1 "Conn_01x02_Male" H 10723 3671 50  0000 R CNN
F 2 "Connector_Phoenix_MSTB:PhoenixContact_MSTBVA_2,5_4-G_1x04_P5.00mm_Vertical" H 10750 3700 50  0001 C CNN
F 3 "~" H 10750 3700 50  0001 C CNN
	1    10750 3700
	-1   0    0    1   
$EndComp
Wire Wire Line
	10350 3500 10350 3550
Wire Wire Line
	10350 3550 10450 3550
Wire Wire Line
	10450 3550 10450 3600
Wire Wire Line
	10450 3600 10550 3600
Wire Wire Line
	9850 3500 10350 3500
Wire Wire Line
	10400 3600 10400 3700
Wire Wire Line
	10400 3700 10550 3700
Wire Wire Line
	9850 3600 10400 3600
Wire Wire Line
	10750 3400 10750 3500
Wire Wire Line
	10750 3500 10550 3500
Connection ~ 10750 3400
Wire Wire Line
	10750 3100 10750 3150
Wire Wire Line
	10750 3150 10800 3150
Wire Wire Line
	10800 3150 10800 3850
Wire Wire Line
	10800 3850 10550 3850
Wire Wire Line
	10550 3850 10550 3800
Connection ~ 10750 3100
$EndSCHEMATC
