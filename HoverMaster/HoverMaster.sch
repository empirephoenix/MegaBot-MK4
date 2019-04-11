EESchema Schematic File Version 4
LIBS:HoverMaster-cache
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
U 1 1 5CAF0BD4
P 5350 3300
F 0 "XA1" H 5350 4537 60  0000 C CNN
F 1 "Arduino_Nano_Socket" H 5350 4431 60  0000 C CNN
F 2 "Arduino:Arduino_Nano_Socket" H 7150 7050 60  0001 C CNN
F 3 "https://store.arduino.cc/arduino-nano" H 7150 7050 60  0001 C CNN
	1    5350 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F1
U 1 1 5CAF1701
P 7700 2000
F 0 "F1" H 7760 2046 50  0000 L CNN
F 1 "Fuse" H 7760 1955 50  0000 L CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Stelvio-Kontek_PTF78_Horizontal_Open" V 7630 2000 50  0001 C CNN
F 3 "~" H 7700 2000 50  0001 C CNN
	1    7700 2000
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5CAF2837
P 7300 1550
F 0 "J1" H 7408 1731 50  0000 C CNN
F 1 "Conn_01x02_Male" H 7408 1640 50  0000 C CNN
F 2 "Connector_Phoenix_MSTB:PhoenixContact_MSTBVA_2,5_2-G_1x02_P5.00mm_Vertical" H 7300 1550 50  0001 C CNN
F 3 "~" H 7300 1550 50  0001 C CNN
	1    7300 1550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J2
U 1 1 5CAF2F05
P 9000 1450
F 0 "J2" H 9108 1731 50  0000 C CNN
F 1 "Conn_01x03_Male" H 9108 1640 50  0000 C CNN
F 2 "Connector_Phoenix_MSTB:PhoenixContact_MSTBVA_2,5_3-G-5,08_1x03_P5.08mm_Vertical" H 9000 1450 50  0001 C CNN
F 3 "~" H 9000 1450 50  0001 C CNN
	1    9000 1450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J3
U 1 1 5CAF35C9
P 9750 1350
F 0 "J3" H 9858 1631 50  0000 C CNN
F 1 "Conn_01x04_Male" H 9858 1540 50  0000 C CNN
F 2 "Connector_Phoenix_MSTB:PhoenixContact_MSTBVA_2,5_4-G-5,08_1x04_P5.08mm_Vertical" H 9750 1350 50  0001 C CNN
F 3 "~" H 9750 1350 50  0001 C CNN
	1    9750 1350
	1    0    0    -1  
$EndComp
$Comp
L nodemcu:NodeMCU_Amica_R2 U1
U 1 1 5CAF476B
P 9200 3450
F 0 "U1" H 9200 4465 50  0000 C CNN
F 1 "NodeMCU_Amica_R2" H 9200 4374 50  0000 C CNN
F 2 "nodemcu:NodeMCU_Amica_R2" H 9200 4283 50  0000 C CNN
F 3 "" H 9450 3450 50  0000 C CNN
	1    9200 3450
	1    0    0    -1  
$EndComp
$Comp
L LED:APA102 D1
U 1 1 5CAF5C82
P 5150 1400
F 0 "D1" H 5150 1881 50  0000 C CNN
F 1 "APA102" H 4900 1650 50  0000 C CNN
F 2 "LED_SMD:LED_RGB_PLCC-6" H 5200 1100 50  0001 L TNN
F 3 "http://www.led-color.com/upload/201506/APA102%20LED.pdf" H 5250 1025 50  0001 L TNN
	1    5150 1400
	1    0    0    -1  
$EndComp
Text GLabel 7600 1550 2    50   Input ~ 0
GND
Text GLabel 7600 1650 2    50   Input ~ 0
BAT+
Text GLabel 9250 1450 2    50   Input ~ 0
BAT_Fuse+
Text GLabel 9250 1550 2    50   Input ~ 0
GND
Text GLabel 9250 1350 2    50   Input ~ 0
5V
Text GLabel 10000 1250 2    50   Input ~ 0
GND
Text GLabel 10000 1550 2    50   Input ~ 0
5V
Text GLabel 10000 1350 2    50   Input ~ 0
LED1
Text GLabel 10000 1450 2    50   Input ~ 0
LED2
Text GLabel 5150 1750 3    50   Input ~ 0
GND
Text GLabel 5150 1050 1    50   Input ~ 0
5V
Text GLabel 4000 4100 0    50   Input ~ 0
5V
Text GLabel 4000 3900 0    50   Input ~ 0
GND
Text GLabel 8700 4150 0    50   Input ~ 0
5V
Text GLabel 8700 4050 0    50   Input ~ 0
GND
Text GLabel 9700 4150 2    50   Input ~ 0
3V3
$Comp
L Connector:Conn_01x03_Male J8
U 1 1 5CAF4413
P 8250 1450
F 0 "J8" H 8358 1731 50  0000 C CNN
F 1 "Conn_01x03_Male" H 8358 1640 50  0000 C CNN
F 2 "Connector_Phoenix_MSTB:PhoenixContact_MSTBVA_2,5_3-G-5,08_1x03_P5.08mm_Vertical" H 8250 1450 50  0001 C CNN
F 3 "~" H 8250 1450 50  0001 C CNN
	1    8250 1450
	1    0    0    -1  
$EndComp
Text GLabel 8500 1450 2    50   Input ~ 0
BAT_Fuse+
Text GLabel 8500 1550 2    50   Input ~ 0
GND
Text GLabel 8500 1350 2    50   Input ~ 0
12V
$Comp
L Connector:Conn_01x03_Male J7
U 1 1 5CAF532D
P 7250 850
F 0 "J7" H 7358 1131 50  0000 C CNN
F 1 "Conn_01x03_Male" H 7358 1040 50  0000 C CNN
F 2 "Connector_Phoenix_MSTB:PhoenixContact_MSTBVA_2,5_3-G_1x03_P5.00mm_Vertical" H 7250 850 50  0001 C CNN
F 3 "~" H 7250 850 50  0001 C CNN
	1    7250 850 
	1    0    0    -1  
$EndComp
Text GLabel 7500 950  2    50   Input ~ 0
GND
Text GLabel 7500 850  2    50   Input ~ 0
Signal_Steering
Text GLabel 7500 750  2    50   Input ~ 0
12V
Text GLabel 7500 2000 0    50   Input ~ 0
BAT+
Text GLabel 7900 2000 2    50   Input ~ 0
BAT_Fuse+
Wire Wire Line
	9200 1350 9250 1350
Wire Wire Line
	9250 1450 9200 1450
Wire Wire Line
	9200 1550 9250 1550
Wire Wire Line
	8450 1550 8500 1550
Wire Wire Line
	8500 1450 8450 1450
Wire Wire Line
	8450 1350 8500 1350
Wire Wire Line
	7600 1550 7500 1550
Wire Wire Line
	7500 1650 7600 1650
Wire Wire Line
	7500 2000 7550 2000
Wire Wire Line
	7850 2000 7900 2000
Wire Wire Line
	7450 750  7500 750 
Wire Wire Line
	7450 850  7500 850 
Wire Wire Line
	7450 950  7500 950 
Wire Wire Line
	9950 1250 10000 1250
Wire Wire Line
	10000 1350 9950 1350
Wire Wire Line
	9950 1450 10000 1450
Wire Wire Line
	10000 1550 9950 1550
Wire Wire Line
	5150 1100 5150 1050
Wire Wire Line
	5150 1750 5150 1700
Wire Wire Line
	4000 3900 4050 3900
Wire Wire Line
	4000 4100 4050 4100
Text GLabel 6700 2400 2    50   Input ~ 0
C1
Text GLabel 6700 2500 2    50   Input ~ 0
C2
Text GLabel 6700 2600 2    50   Input ~ 0
C3
Text GLabel 6700 2700 2    50   Input ~ 0
C4
Text GLabel 6700 2800 2    50   Input ~ 0
C5
Text GLabel 6700 2900 2    50   Input ~ 0
C6
Text GLabel 9700 2750 2    50   Input ~ 0
C7
Text GLabel 9700 2850 2    50   Input ~ 0
C8
Text GLabel 9700 2950 2    50   Input ~ 0
C9
Text GLabel 9700 3050 2    50   Input ~ 0
C10
Wire Wire Line
	6650 2400 6700 2400
Wire Wire Line
	6700 2500 6650 2500
Wire Wire Line
	6650 2600 6700 2600
Wire Wire Line
	6700 2700 6650 2700
Wire Wire Line
	6650 2800 6700 2800
Wire Wire Line
	9650 2750 9700 2750
Wire Wire Line
	9700 2850 9650 2850
Wire Wire Line
	9650 2950 9700 2950
Wire Wire Line
	9700 3050 9650 3050
Wire Wire Line
	9700 4150 9650 4150
Wire Wire Line
	8700 4150 8750 4150
Wire Wire Line
	8750 4050 8700 4050
Wire Wire Line
	6650 2900 6700 2900
Text GLabel 6700 3000 2    50   Input ~ 0
Status_D
Text GLabel 6700 3100 2    50   Input ~ 0
Status_C
Wire Wire Line
	6650 3000 6700 3000
Wire Wire Line
	6700 3100 6650 3100
Text GLabel 6700 3200 2    50   Input ~ 0
Signal_Steering
Text GLabel 6700 3300 2    50   Input ~ 0
Signal_Light
Wire Wire Line
	6650 3200 6700 3200
Wire Wire Line
	6700 3300 6650 3300
Text GLabel 9700 3150 2    50   Input ~ 0
Signal_Light
$Comp
L Connector_Generic:Conn_01x09 J4
U 1 1 5CB08B08
P 2200 3050
F 0 "J4" H 2280 3046 50  0000 L CNN
F 1 "Conn_01x09" H 2280 3001 50  0001 L CNN
F 2 "Connector_PinSocket_2.00mm:PinSocket_1x09_P2.00mm_Vertical" H 2200 3050 50  0001 C CNN
F 3 "~" H 2200 3050 50  0001 C CNN
	1    2200 3050
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J5
U 1 1 5CB0A5ED
P 2250 3600
F 0 "J5" V 2214 3412 50  0000 R CNN
F 1 "Conn_01x03" V 2123 3412 50  0000 R CNN
F 2 "Connector_PinSocket_2.00mm:PinSocket_1x03_P2.00mm_Vertical" H 2250 3600 50  0001 C CNN
F 3 "~" H 2250 3600 50  0001 C CNN
	1    2250 3600
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J6
U 1 1 5CB0B74F
P 2300 2500
F 0 "J6" V 2172 2680 50  0000 L CNN
F 1 "Conn_01x03" V 2263 2680 50  0000 L CNN
F 2 "Connector_PinSocket_2.00mm:PinSocket_1x03_P2.00mm_Vertical" H 2300 2500 50  0001 C CNN
F 3 "~" H 2300 2500 50  0001 C CNN
	1    2300 2500
	0    1    1    0   
$EndComp
Text GLabel 2200 2200 1    50   Input ~ 0
C1
Text GLabel 1900 2650 0    50   Input ~ 0
C2
Text GLabel 1900 2750 0    50   Input ~ 0
C3
Text GLabel 1900 2850 0    50   Input ~ 0
C4
Text GLabel 1900 2950 0    50   Input ~ 0
C5
Text GLabel 1900 3050 0    50   Input ~ 0
C6
Text GLabel 1900 3150 0    50   Input ~ 0
C7
Text GLabel 1900 3250 0    50   Input ~ 0
C8
Text GLabel 1900 3350 0    50   Input ~ 0
C9
Text GLabel 1900 3450 0    50   Input ~ 0
C10
Text GLabel 2300 2250 1    50   Input ~ 0
5V
Text GLabel 2400 2250 1    50   Input ~ 0
GND
Wire Wire Line
	2400 2300 2400 2250
Wire Wire Line
	2200 2300 2200 2200
Wire Wire Line
	1900 2650 2000 2650
Wire Wire Line
	1900 2750 2000 2750
Wire Wire Line
	2000 2850 1900 2850
Wire Wire Line
	1900 2950 2000 2950
Wire Wire Line
	2000 3050 1900 3050
Wire Wire Line
	1900 3150 2000 3150
Wire Wire Line
	2000 3250 1900 3250
Wire Wire Line
	1900 3350 2000 3350
Wire Wire Line
	2000 3450 1900 3450
Text GLabel 4800 1300 0    50   Input ~ 0
Status_D
Text GLabel 4800 1400 0    50   Input ~ 0
Status_C
Wire Wire Line
	4800 1300 4850 1300
Wire Wire Line
	4850 1400 4800 1400
NoConn ~ 5450 1300
NoConn ~ 5450 1400
$Comp
L LED:APA102 D2
U 1 1 5CB27D77
P 9000 5250
F 0 "D2" H 9000 5731 50  0000 C CNN
F 1 "APA102" H 8800 5500 50  0000 C CNN
F 2 "LED_SMD:LED_RGB_PLCC-6" H 9050 4950 50  0001 L TNN
F 3 "http://www.led-color.com/upload/201506/APA102%20LED.pdf" H 9100 4875 50  0001 L TNN
	1    9000 5250
	1    0    0    -1  
$EndComp
Text GLabel 9350 5150 2    50   Input ~ 0
LED1
Text GLabel 9350 5250 2    50   Input ~ 0
LED2
Text GLabel 8650 5150 0    50   Input ~ 0
S1
Text GLabel 8650 5250 0    50   Input ~ 0
S2
Text GLabel 9700 3450 2    50   Input ~ 0
S1
Text GLabel 9700 3550 2    50   Input ~ 0
S2
Wire Wire Line
	9650 3450 9700 3450
Wire Wire Line
	9700 3550 9650 3550
Wire Wire Line
	9300 5150 9350 5150
Wire Wire Line
	9350 5250 9300 5250
Wire Wire Line
	8700 5250 8650 5250
Wire Wire Line
	8650 5150 8700 5150
Text GLabel 9000 4900 1    50   Input ~ 0
5V
Text GLabel 9000 5600 3    50   Input ~ 0
GND
Wire Wire Line
	9000 5600 9000 5550
Wire Wire Line
	9000 4950 9000 4900
Text GLabel 2150 3900 3    50   Input ~ 0
BIND
$Comp
L Switch:SW_Push SW1
U 1 1 5CB38532
P 2750 4950
F 0 "SW1" H 2750 5235 50  0000 C CNN
F 1 "SW_Push" H 2750 5144 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 2750 5150 50  0001 C CNN
F 3 "~" H 2750 5150 50  0001 C CNN
	1    2750 4950
	1    0    0    -1  
$EndComp
Text GLabel 2500 4950 0    50   Input ~ 0
BIND
Text GLabel 3000 4950 2    50   Input ~ 0
BIND2
Wire Wire Line
	2500 4950 2550 4950
Wire Wire Line
	2950 4950 3000 4950
Wire Wire Line
	2150 3800 2150 3900
$Comp
L Graphic:SYM_Flash_Large #SYM1
U 1 1 5CB40DAD
P 5300 5650
F 0 "#SYM1" V 5150 5650 50  0001 C CNN
F 1 "SYM_Flash_Large" V 5430 5650 50  0001 C CNN
F 2 "Symbol:Symbol_HighVoltage_Type2_CopperTop_Big" H 5290 5560 50  0001 C CNN
F 3 "~" H 5700 5550 50  0001 C CNN
	1    5300 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 2250 2300 2300
Wire Wire Line
	2350 3800 2350 3900
Text GLabel 2350 3900 3    50   Input ~ 0
BIND2
$EndSCHEMATC
