EESchema Schematic File Version 4
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
L RF_Module:ESP32-WROOM-32D U?
U 1 1 5E7EA5FE
P 4300 2850
F 0 "U?" H 4300 4431 50  0000 C CNN
F 1 "ESP32-WROOM-32D" H 4300 4340 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 4300 1350 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32d_esp32-wroom-32u_datasheet_en.pdf" H 4000 2900 50  0001 C CNN
	1    4300 2850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female VDD
U 1 1 5E7ED20A
P 6900 1550
F 0 "VDD" H 6928 1576 50  0000 L CNN
F 1 " " H 6928 1485 50  0000 L CNN
F 2 "" H 6900 1550 50  0001 C CNN
F 3 "~" H 6900 1550 50  0001 C CNN
	1    6900 1550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female GND
U 1 1 5E7EDFE8
P 6900 1700
F 0 "GND" H 6928 1726 50  0000 L CNN
F 1 " " H 6928 1635 50  0000 L CNN
F 2 "" H 6900 1700 50  0001 C CNN
F 3 "~" H 6900 1700 50  0001 C CNN
	1    6900 1700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female L/R
U 1 1 5E7EE390
P 6900 1850
F 0 "L/R" H 6928 1876 50  0000 L CNN
F 1 " " H 6928 1785 50  0000 L CNN
F 2 "" H 6900 1850 50  0001 C CNN
F 3 "~" H 6900 1850 50  0001 C CNN
	1    6900 1850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female SD
U 1 1 5E7EE516
P 6900 2000
F 0 "SD" H 6928 2026 50  0000 L CNN
F 1 " " H 6928 1935 50  0000 L CNN
F 2 "" H 6900 2000 50  0001 C CNN
F 3 "~" H 6900 2000 50  0001 C CNN
	1    6900 2000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female WS
U 1 1 5E7EE801
P 6900 2150
F 0 "WS" H 6928 2176 50  0000 L CNN
F 1 " " H 6928 2085 50  0000 L CNN
F 2 "" H 6900 2150 50  0001 C CNN
F 3 "~" H 6900 2150 50  0001 C CNN
	1    6900 2150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female SCK
U 1 1 5E7EE837
P 6900 2300
F 0 "SCK" H 6928 2326 50  0000 L CNN
F 1 " " H 6928 2235 50  0000 L CNN
F 2 "" H 6900 2300 50  0001 C CNN
F 3 "~" H 6900 2300 50  0001 C CNN
	1    6900 2300
	1    0    0    -1  
$EndComp
Text Notes 6550 1350 0    50   ~ 0
I2S  INMP441 MEMS
$EndSCHEMATC
