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
L Connector:Conn_01x02_Male BAT1
U 1 1 5CAF2837
P 7300 1550
F 0 "BAT1" H 7408 1731 50  0000 C CNN
F 1 "Conn_01x02_Male" H 7408 1640 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x02_P5.08mm_Drill1.5mm" H 7300 1550 50  0001 C CNN
F 3 "~" H 7300 1550 50  0001 C CNN
	1    7300 1550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male DCDC-5V1
U 1 1 5CAF2F05
P 9000 1450
F 0 "DCDC-5V1" H 9108 1731 50  0000 C CNN
F 1 "Conn_01x03_Male" H 9108 1640 50  0001 C CNN
F 2 "Connector_Wire:SolderWirePad_1x03_P3.81mm_Drill1.2mm" H 9000 1450 50  0001 C CNN
F 3 "~" H 9000 1450 50  0001 C CNN
	1    9000 1450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J3
U 1 1 5CAF35C9
P 9750 1350
F 0 "J3" H 9858 1631 50  0000 C CNN
F 1 "LED" H 9858 1540 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x04_P3.81mm_Drill1.2mm" H 9750 1350 50  0001 C CNN
F 3 "~" H 9750 1350 50  0001 C CNN
	1    9750 1350
	1    0    0    -1  
$EndComp
Text GLabel 7600 1550 2    50   Input ~ 0
GND
Text GLabel 7600 1650 2    50   Input ~ 0
BAT+
Text GLabel 9250 1450 2    50   Input ~ 0
BAT_Fuse+
Text GLabel 9250 1350 2    50   Input ~ 0
GND
Text GLabel 9250 1550 2    50   Input ~ 0
5V
Text GLabel 10000 1250 2    50   Input ~ 0
GND
Text GLabel 10000 1550 2    50   Input ~ 0
5V
Text GLabel 10000 1450 2    50   Input ~ 0
LED2
Text GLabel 10000 1350 2    50   Input ~ 0
LED1
Text GLabel 7600 4650 0    50   Input ~ 0
5V
Text GLabel 7600 4450 0    50   Input ~ 0
GND
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
	7600 1550 7500 1550
Wire Wire Line
	7500 1650 7600 1650
Wire Wire Line
	7500 2000 7550 2000
Wire Wire Line
	7850 2000 7900 2000
Wire Wire Line
	9950 1250 10000 1250
Wire Wire Line
	10000 1350 9950 1350
Wire Wire Line
	9950 1450 10000 1450
Wire Wire Line
	10000 1550 9950 1550
Text GLabel 10250 3050 2    50   Input ~ 0
HOVER_POWER_RELAY
Text GLabel 10300 3150 2    50   Input ~ 0
PPM_OUT
$Comp
L Connector:Conn_01x03_Male Receiver_Power1
U 1 1 5CB0A5ED
P 6550 2850
F 0 "Receiver_Power1" V 6514 2662 50  0000 R CNN
F 1 "Conn_01x04" V 6423 2662 50  0000 R CNN
F 2 "Connector_PinSocket_2.00mm:PinSocket_1x03_P2.00mm_Vertical" H 6550 2850 50  0001 C CNN
F 3 "~" H 6550 2850 50  0001 C CNN
	1    6550 2850
	0    1    1    0   
$EndComp
Text GLabel 6650 3100 3    50   Input ~ 0
PPM_IN
Text GLabel 6450 3100 3    50   Input ~ 0
5V
Text GLabel 10300 3950 2    50   Input ~ 0
LED1
Text GLabel 10300 3850 2    50   Input ~ 0
LED2
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
Text GLabel 6550 3100 3    50   Input ~ 0
GND
Text GLabel 10300 2950 2    50   Input ~ 0
PPM_IN
Wire Wire Line
	6450 3050 6450 3100
Wire Wire Line
	6550 3050 6550 3100
$Comp
L Connector_Generic:Conn_01x02 Left_Sensor1
U 1 1 5CC05E03
P 5700 2100
F 0 "Left_Sensor1" H 5780 2092 50  0000 L CNN
F 1 "Conn_01x02" H 5780 2001 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x02_P3.81mm_Drill1.2mm" H 5700 2100 50  0001 C CNN
F 3 "~" H 5700 2100 50  0001 C CNN
	1    5700 2100
	1    0    0    -1  
$EndComp
Text GLabel 5350 1500 0    50   Input ~ 0
PPM_OUT
Text GLabel 5350 2200 0    50   Input ~ 0
GND
Wire Wire Line
	5350 2200 5500 2200
$Comp
L arduino:Arduino_Nano_Socket XA1
U 1 1 5CBDDEF6
P 8950 3850
F 0 "XA1" H 8950 5087 60  0000 C CNN
F 1 "Arduino_Nano_Socket" H 8950 4981 60  0000 C CNN
F 2 "Arduino:Arduino_Nano_Socket" H 10750 7600 60  0001 C CNN
F 3 "https://store.arduino.cc/arduino-nano" H 10750 7600 60  0001 C CNN
	1    8950 3850
	1    0    0    -1  
$EndComp
NoConn ~ 10250 3350
NoConn ~ 10250 3450
NoConn ~ 10250 4050
NoConn ~ 10250 3750
NoConn ~ 10250 3650
NoConn ~ 10250 4550
NoConn ~ 10250 4650
NoConn ~ 7650 4750
NoConn ~ 7650 4550
NoConn ~ 7650 4350
NoConn ~ 7650 4150
NoConn ~ 7650 4050
NoConn ~ 7650 3950
NoConn ~ 7650 3850
NoConn ~ 7650 3750
NoConn ~ 7650 3650
NoConn ~ 7650 3550
NoConn ~ 7650 3450
NoConn ~ 7650 3350
NoConn ~ 7650 3050
NoConn ~ 7650 2950
Wire Wire Line
	10300 3950 10250 3950
Wire Wire Line
	10250 3850 10300 3850
Wire Wire Line
	10300 3150 10250 3150
Wire Wire Line
	10250 2950 10300 2950
Wire Wire Line
	7600 4450 7650 4450
Wire Wire Line
	7650 4650 7600 4650
Wire Wire Line
	6650 3100 6650 3050
NoConn ~ 10250 3250
NoConn ~ 10250 3550
Text GLabel 9050 5350 2    50   Input ~ 0
HOVER_POWER_RELAY
Wire Wire Line
	8100 5350 8300 5350
Text GLabel 8100 5350 0    50   Input ~ 0
GND
Wire Wire Line
	8900 5350 9050 5350
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5CF03D3D
P 7950 5900
F 0 "J1" H 8058 6081 50  0000 C CNN
F 1 "Conn_01x02_Male" H 8058 5990 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x02_P5.08mm_Drill1.5mm" H 7950 5900 50  0001 C CNN
F 3 "~" H 7950 5900 50  0001 C CNN
	1    7950 5900
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 5CF04621
P 9350 6000
F 0 "J2" H 9322 5882 50  0000 R CNN
F 1 "Conn_01x02_Male" H 9322 5973 50  0000 R CNN
F 2 "Connector_Wire:SolderWirePad_1x02_P5.08mm_Drill1.5mm" H 9350 6000 50  0001 C CNN
F 3 "~" H 9350 6000 50  0001 C CNN
	1    9350 6000
	-1   0    0    1   
$EndComp
Wire Wire Line
	8150 6000 8150 6150
Wire Wire Line
	8150 6150 8300 6150
NoConn ~ 8900 5650
NoConn ~ 8900 6050
NoConn ~ 11650 4450
$Comp
L Relay:FRT5 K1
U 1 1 5CEFDC67
P 8600 5750
F 0 "K1" V 7833 5750 50  0000 C CNN
F 1 "FRT5" V 7924 5750 50  0000 C CNN
F 2 "Relay_THT:Relay_DPDT_FRT5" H 9250 5700 50  0001 L CNN
F 3 "https://www.elpro.org/de/index.php?controller=attachment&id_attachment=8663" H 9250 5900 50  0001 C CNN
	1    8600 5750
	0    1    1    0   
$EndComp
Wire Wire Line
	9100 5850 9100 5900
Wire Wire Line
	9100 5900 9150 5900
Wire Wire Line
	8900 5850 9100 5850
Wire Wire Line
	8300 5750 8300 5950
Wire Wire Line
	8300 5950 9050 5950
Wire Wire Line
	9050 5950 9050 6000
Wire Wire Line
	9050 6000 9150 6000
Wire Wire Line
	8900 6250 8900 6350
Wire Wire Line
	8900 6350 7850 6350
Wire Wire Line
	7850 6350 7850 5900
Wire Wire Line
	7850 5900 8150 5900
$Comp
L Device:R R2
U 1 1 5D45AEA4
P 5350 1950
F 0 "R2" H 5420 1996 50  0000 L CNN
F 1 "R" H 5420 1905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 5280 1950 50  0001 C CNN
F 3 "~" H 5350 1950 50  0001 C CNN
	1    5350 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5D45B5B6
P 5350 1650
F 0 "R1" H 5420 1696 50  0000 L CNN
F 1 "R" H 5420 1605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 5280 1650 50  0001 C CNN
F 3 "~" H 5350 1650 50  0001 C CNN
	1    5350 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 1800 5500 1800
Wire Wire Line
	5500 1800 5500 2100
Connection ~ 5350 1800
Wire Wire Line
	5350 2100 5350 2200
$EndSCHEMATC
