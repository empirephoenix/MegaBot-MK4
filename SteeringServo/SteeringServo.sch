EESchema Schematic File Version 4
LIBS:SteeringServo-cache
EELAYER 29 0
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
L arduino:Arduino_Nano_Socket XA1
U 1 1 5CA07DE3
P 5350 2750
F 0 "XA1" H 5350 3987 60  0000 C CNN
F 1 "Arduino_Nano_Socket" H 5350 3881 60  0000 C CNN
F 2 "Arduino:Arduino_Nano_Socket" H 7150 6500 60  0001 C CNN
F 3 "https://store.arduino.cc/arduino-nano" H 7150 6500 60  0001 C CNN
	1    5350 2750
	1    0    0    -1  
$EndComp
$Comp
L crumpschemes:SK9822 U2
U 1 1 5CA07F7A
P 8800 3700
F 0 "U2" H 8800 4243 60  0000 C CNN
F 1 "StatusLED" H 8800 4137 60  0000 C CNN
F 2 "TLE5205:APA102_hand_solder" H 8800 4031 60  0000 C CNN
F 3 "" H 8800 3250 60  0000 C CNN
	1    8800 3700
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5CA0805B
P 5400 4750
F 0 "SW1" H 5400 5035 50  0000 C CNN
F 1 "SW_Push" H 5400 4944 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 5400 4950 50  0001 C CNN
F 3 "" H 5400 4950 50  0001 C CNN
	1    5400 4750
	1    0    0    -1  
$EndComp
$Comp
L pspice:DIODE D1
U 1 1 5CA08132
P 8950 2700
F 0 "D1" V 8996 2572 50  0000 R CNN
F 1 "DIODE" V 8905 2572 50  0000 R CNN
F 2 "Diode_THT:D_A-405_P7.62mm_Horizontal" H 8950 2700 50  0001 C CNN
F 3 "" H 8950 2700 50  0001 C CNN
	1    8950 2700
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP C2
U 1 1 5CA082DF
P 8250 4750
F 0 "C2" H 8368 4796 50  0000 L CNN
F 1 "CP" H 8368 4705 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P5.00mm" H 8288 4600 50  0001 C CNN
F 3 "~" H 8250 4750 50  0001 C CNN
	1    8250 4750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 5CA08408
P 2000 1300
F 0 "J2" V 2060 1440 50  0000 L CNN
F 1 "To 12V Converter" V 2151 1440 50  0000 L CNN
F 2 "Connector_Phoenix_MSTB:PhoenixContact_MSTBVA_2,5_2-G-5,08_1x02_P5.08mm_Vertical" H 2000 1300 50  0001 C CNN
F 3 "~" H 2000 1300 50  0001 C CNN
	1    2000 1300
	0    1    1    0   
$EndComp
Text GLabel 2000 1600 3    50   Input ~ 0
GND
Text GLabel 1900 1600 3    50   Input ~ 0
12V
Text GLabel 4000 3650 0    50   Input ~ 0
12V
Text GLabel 4000 3250 0    50   Input ~ 0
GND
Text GLabel 4000 3350 0    50   Input ~ 0
GND
Text GLabel 6750 2050 2    50   Input ~ 0
LED_DIN
Text GLabel 6750 2150 2    50   Input ~ 0
LED_CIN
Text GLabel 8300 3550 0    50   Input ~ 0
LED_DIN
Text GLabel 8300 3700 0    50   Input ~ 0
LED_CIN
Text GLabel 8300 3850 0    50   Input ~ 0
GND
Text GLabel 4000 3550 0    50   Input ~ 0
5V
Text GLabel 9300 3850 2    50   Input ~ 0
5V
Text GLabel 8750 2100 3    50   Input ~ 0
GND
Text GLabel 8850 2100 3    50   Input ~ 0
M_IN_2
Text GLabel 8450 2100 3    50   Input ~ 0
M1
Text GLabel 9050 2100 3    50   Input ~ 0
M2
Text GLabel 4050 2350 0    50   Input ~ 0
SERVO_POTI
$Comp
L Connector:Conn_01x05_Male J1
U 1 1 5CA088E8
P 1950 2550
F 0 "J1" V 1923 2480 50  0000 R CNN
F 1 "MotorConnector" V 1923 2571 50  0000 R CNN
F 2 "Connector_Phoenix_MSTB:PhoenixContact_MSTBVA_2,5_5-G-5,08_1x05_P5.08mm_Vertical" H 1950 2550 50  0001 C CNN
F 3 "~" H 1950 2550 50  0001 C CNN
	1    1950 2550
	0    1    1    0   
$EndComp
Text GLabel 8250 4950 3    50   Input ~ 0
GND
Text GLabel 8250 4550 1    50   Input ~ 0
12V
Text GLabel 8950 2950 3    50   Input ~ 0
12V
Text GLabel 8550 2100 3    50   Input ~ 0
M_ERR
Text GLabel 6750 2450 2    50   Input ~ 0
M_ERR
Text GLabel 6750 2550 2    50   Input ~ 0
Signal
$Comp
L Connector:Conn_01x03_Male J3
U 1 1 5CA08D34
P 2100 3350
F 0 "J3" V 2160 3491 50  0000 L CNN
F 1 "Signal" V 2251 3491 50  0000 L CNN
F 2 "Connector_JST:JST_EH_B03B-EH-A_1x03_P2.50mm_Vertical" H 2100 3350 50  0001 C CNN
F 3 "~" H 2100 3350 50  0001 C CNN
	1    2100 3350
	0    1    1    0   
$EndComp
Text GLabel 4000 2550 0    50   Input ~ 0
SDA
Text GLabel 4000 2450 0    50   Input ~ 0
SCL
Text GLabel 2200 3600 3    50   Input ~ 0
SDA
Text GLabel 2100 3600 3    50   Input ~ 0
SCL
Text GLabel 2000 3600 3    50   Input ~ 0
GND
Text GLabel 6750 2850 2    50   Input ~ 0
Calibrate
Text GLabel 5650 4750 2    50   Input ~ 0
Calibrate
Text GLabel 5150 4750 0    50   Input ~ 0
GND
Text GLabel 6750 2350 2    50   Input ~ 0
M_IN_1
Text GLabel 6750 2250 2    50   Input ~ 0
M_IN_2
Text GLabel 2150 2800 3    50   Input ~ 0
M1
Text GLabel 1750 2800 3    50   Input ~ 0
M2
Text GLabel 2050 2800 3    50   Input ~ 0
5V
Text GLabel 1850 2800 3    50   Input ~ 0
GND
Text GLabel 1950 2800 3    50   Input ~ 0
SERVO_POTI
Wire Wire Line
	6650 2050 6750 2050
Wire Wire Line
	6750 2150 6650 2150
Wire Wire Line
	6650 2250 6750 2250
Wire Wire Line
	6750 2350 6650 2350
Wire Wire Line
	6650 2550 6750 2550
Wire Wire Line
	6750 2850 6650 2850
Wire Wire Line
	4000 2450 4050 2450
Wire Wire Line
	4050 2550 4000 2550
Wire Wire Line
	4050 3250 4000 3250
Wire Wire Line
	4000 3350 4050 3350
Wire Wire Line
	4050 3550 4000 3550
Wire Wire Line
	4000 3650 4050 3650
Wire Wire Line
	2200 3600 2200 3550
Wire Wire Line
	2100 3550 2100 3600
Wire Wire Line
	2000 3600 2000 3550
Wire Wire Line
	1750 2800 1750 2750
Wire Wire Line
	1850 2750 1850 2800
Wire Wire Line
	1950 2800 1950 2750
Wire Wire Line
	2050 2750 2050 2800
Wire Wire Line
	2150 2800 2150 2750
Wire Wire Line
	2000 1600 2000 1500
Wire Wire Line
	1900 1600 1900 1500
Wire Wire Line
	5150 4750 5200 4750
Wire Wire Line
	5600 4750 5650 4750
Wire Wire Line
	8250 4950 8250 4900
Wire Wire Line
	8250 4600 8250 4550
$Comp
L Device:C C1
U 1 1 5CA0C844
P 7900 4750
F 0 "C1" H 8015 4796 50  0000 L CNN
F 1 "C" H 8015 4705 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 7938 4600 50  0001 C CNN
F 3 "~" H 7900 4750 50  0001 C CNN
	1    7900 4750
	1    0    0    -1  
$EndComp
Text GLabel 7900 4550 1    50   Input ~ 0
SERVO_POTI
Text GLabel 7900 4950 3    50   Input ~ 0
GND
Wire Wire Line
	7900 4950 7900 4900
Wire Wire Line
	7900 4600 7900 4550
Wire Wire Line
	9250 3850 9300 3850
Wire Wire Line
	8300 3850 8350 3850
Wire Wire Line
	8350 3700 8300 3700
Wire Wire Line
	8300 3550 8350 3550
Wire Wire Line
	8950 2950 8950 2900
Wire Wire Line
	8950 2500 8950 2050
Wire Wire Line
	9050 2050 9050 2100
Wire Wire Line
	8850 2100 8850 2050
Wire Wire Line
	8750 2050 8750 2100
Wire Wire Line
	8550 2050 8550 2100
Wire Wire Line
	8450 2100 8450 2050
Wire Wire Line
	6750 2450 6650 2450
NoConn ~ 6650 2950
NoConn ~ 6650 2750
NoConn ~ 6650 2650
NoConn ~ 6650 1950
NoConn ~ 6650 1850
NoConn ~ 4050 1950
NoConn ~ 4050 1850
NoConn ~ 4050 2250
NoConn ~ 4050 2850
NoConn ~ 4050 2750
NoConn ~ 4050 2650
NoConn ~ 4050 3450
NoConn ~ 9250 3700
NoConn ~ 9250 3550
Text GLabel 8650 2100 3    50   Input ~ 0
M_IN_1
$Comp
L TLE5205-2G:TLE5205 U1
U 1 1 5CA07E74
P 8750 1750
F 0 "U1" H 9128 1740 50  0000 L CNN
F 1 "TLE5205" H 9128 1649 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-263-7_TabPin4" H 8750 1750 50  0001 C CNN
F 3 "" H 8750 1750 50  0001 C CNN
	1    8750 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 2100 8650 2050
NoConn ~ 4050 3050
NoConn ~ 4050 2950
$EndSCHEMATC
