EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "sam. 04 avril 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L RF_Module:ESP32-WROOM-32 U?
U 1 1 5E46B362
P 1700 2950
F 0 "U?" H 1700 4531 50  0000 C CNN
F 1 "ESP32-WROOM-32" H 1700 4440 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 1700 1450 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf" H 1400 3000 50  0001 C CNN
	1    1700 2950
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:DMG3402L Q?
U 1 1 5E480B95
P 3400 2250
F 0 "Q?" H 3604 2296 50  0000 L CNN
F 1 "DMG3402L" H 3604 2205 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3600 2175 50  0001 L CIN
F 3 "http://www.diodes.com/assets/Datasheets/DMG3402L.pdf" H 3400 2250 50  0001 L CNN
	1    3400 2250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5E49F8B9
P 3500 900
F 0 "#PWR?" H 3500 750 50  0001 C CNN
F 1 "+3.3V" H 3515 1073 50  0000 C CNN
F 2 "" H 3500 900 50  0001 C CNN
F 3 "" H 3500 900 50  0001 C CNN
	1    3500 900 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E4A06BA
P 3000 2700
F 0 "#PWR?" H 3000 2450 50  0001 C CNN
F 1 "GND" H 3005 2527 50  0000 C CNN
F 2 "" H 3000 2700 50  0001 C CNN
F 3 "" H 3000 2700 50  0001 C CNN
	1    3000 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 2250 3000 2250
$Comp
L Device:R_Small 10k
U 1 1 5E4AFE10
P 3000 2500
F 0 "10k" H 3059 2546 50  0000 L CNN
F 1 "R_Small" H 3059 2455 50  0000 L CNN
F 2 "" H 3000 2500 50  0001 C CNN
F 3 "~" H 3000 2500 50  0001 C CNN
	1    3000 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 2400 3000 2250
Connection ~ 3000 2250
Wire Wire Line
	3000 2250 3200 2250
$Comp
L power:GND #PWR?
U 1 1 5E4B3F5D
P 3500 2700
F 0 "#PWR?" H 3500 2450 50  0001 C CNN
F 1 "GND" H 3505 2527 50  0000 C CNN
F 2 "" H 3500 2700 50  0001 C CNN
F 3 "" H 3500 2700 50  0001 C CNN
	1    3500 2700
	1    0    0    -1  
$EndComp
$Comp
L Motor:Motor_AC Release
U 1 1 5E4B442A
P 3500 1450
F 0 "Release" H 3658 1446 50  0000 L CNN
F 1 "Motor_AC" H 3658 1355 50  0000 L CNN
F 2 "" H 3500 1360 50  0001 C CNN
F 3 "~" H 3500 1360 50  0001 C CNN
	1    3500 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 1750 3500 1900
Wire Wire Line
	3500 1250 3500 1050
Wire Wire Line
	3000 2700 3000 2600
$Comp
L Diode:1N4001 D?
U 1 1 5E482322
P 3200 1550
F 0 "D?" H 3200 1766 50  0000 C CNN
F 1 "1N4001" H 3200 1675 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 3200 1375 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 3200 1550 50  0001 C CNN
	1    3200 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	3200 1700 3200 1900
Wire Wire Line
	3200 1900 3500 1900
Connection ~ 3500 1900
Wire Wire Line
	3500 1900 3500 2050
Wire Wire Line
	3200 1400 3200 1050
Wire Wire Line
	3200 1050 3500 1050
Connection ~ 3500 1050
Wire Wire Line
	3500 1050 3500 900 
Wire Wire Line
	3500 2700 3500 2450
$Comp
L Transistor_FET:DMG3402L Q?
U 1 1 5E4D53CE
P 4650 2250
F 0 "Q?" H 4854 2296 50  0000 L CNN
F 1 "DMG3402L" H 4854 2205 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4850 2175 50  0001 L CIN
F 3 "http://www.diodes.com/assets/Datasheets/DMG3402L.pdf" H 4650 2250 50  0001 L CNN
	1    4650 2250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5E4D53D4
P 4750 900
F 0 "#PWR?" H 4750 750 50  0001 C CNN
F 1 "+3.3V" H 4765 1073 50  0000 C CNN
F 2 "" H 4750 900 50  0001 C CNN
F 3 "" H 4750 900 50  0001 C CNN
	1    4750 900 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E4D53DA
P 4250 2700
F 0 "#PWR?" H 4250 2450 50  0001 C CNN
F 1 "GND" H 4255 2527 50  0000 C CNN
F 2 "" H 4250 2700 50  0001 C CNN
F 3 "" H 4250 2700 50  0001 C CNN
	1    4250 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small 10k?
U 1 1 5E4D53E1
P 4250 2500
F 0 "10k?" H 4309 2546 50  0000 L CNN
F 1 "R_Small" H 4309 2455 50  0000 L CNN
F 2 "" H 4250 2500 50  0001 C CNN
F 3 "~" H 4250 2500 50  0001 C CNN
	1    4250 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 2400 4250 2250
Wire Wire Line
	4250 2250 4450 2250
$Comp
L power:GND #PWR?
U 1 1 5E4D53EA
P 4750 2700
F 0 "#PWR?" H 4750 2450 50  0001 C CNN
F 1 "GND" H 4755 2527 50  0000 C CNN
F 2 "" H 4750 2700 50  0001 C CNN
F 3 "" H 4750 2700 50  0001 C CNN
	1    4750 2700
	1    0    0    -1  
$EndComp
$Comp
L Motor:Motor_AC VMotor
U 1 1 5E4D53F0
P 4750 1450
F 0 "VMotor" H 4908 1446 50  0000 L CNN
F 1 "Motor_AC" H 4908 1355 50  0000 L CNN
F 2 "" H 4750 1360 50  0001 C CNN
F 3 "~" H 4750 1360 50  0001 C CNN
	1    4750 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 1750 4750 1900
Wire Wire Line
	4750 1250 4750 1050
Wire Wire Line
	4250 2700 4250 2600
$Comp
L Diode:1N4001 D?
U 1 1 5E4D53F9
P 4450 1550
F 0 "D?" H 4450 1766 50  0000 C CNN
F 1 "1N4001" H 4450 1675 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 4450 1375 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 4450 1550 50  0001 C CNN
	1    4450 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	4450 1700 4450 1900
Wire Wire Line
	4450 1900 4750 1900
Connection ~ 4750 1900
Wire Wire Line
	4750 1900 4750 2050
Wire Wire Line
	4450 1400 4450 1050
Wire Wire Line
	4450 1050 4750 1050
Connection ~ 4750 1050
Wire Wire Line
	4750 1050 4750 900 
Wire Wire Line
	4750 2700 4750 2450
$Comp
L Transistor_FET:DMG3402L Q?
U 1 1 5E4E0E3D
P 5850 2250
F 0 "Q?" H 6054 2296 50  0000 L CNN
F 1 "DMG3402L" H 6054 2205 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6050 2175 50  0001 L CIN
F 3 "http://www.diodes.com/assets/Datasheets/DMG3402L.pdf" H 5850 2250 50  0001 L CNN
	1    5850 2250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5E4E0E43
P 5950 900
F 0 "#PWR?" H 5950 750 50  0001 C CNN
F 1 "+3.3V" H 5965 1073 50  0000 C CNN
F 2 "" H 5950 900 50  0001 C CNN
F 3 "" H 5950 900 50  0001 C CNN
	1    5950 900 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E4E0E49
P 5450 2700
F 0 "#PWR?" H 5450 2450 50  0001 C CNN
F 1 "GND" H 5455 2527 50  0000 C CNN
F 2 "" H 5450 2700 50  0001 C CNN
F 3 "" H 5450 2700 50  0001 C CNN
	1    5450 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small 10k?
U 1 1 5E4E0E50
P 5450 2500
F 0 "10k?" H 5509 2546 50  0000 L CNN
F 1 "R_Small" H 5509 2455 50  0000 L CNN
F 2 "" H 5450 2500 50  0001 C CNN
F 3 "~" H 5450 2500 50  0001 C CNN
	1    5450 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 2400 5450 2250
Wire Wire Line
	5450 2250 5650 2250
$Comp
L power:GND #PWR?
U 1 1 5E4E0E59
P 5950 2700
F 0 "#PWR?" H 5950 2450 50  0001 C CNN
F 1 "GND" H 5955 2527 50  0000 C CNN
F 2 "" H 5950 2700 50  0001 C CNN
F 3 "" H 5950 2700 50  0001 C CNN
	1    5950 2700
	1    0    0    -1  
$EndComp
$Comp
L Motor:Motor_AC PMotor
U 1 1 5E4E0E5F
P 5950 1450
F 0 "PMotor" H 6108 1446 50  0000 L CNN
F 1 "Motor_AC" H 6108 1355 50  0000 L CNN
F 2 "" H 5950 1360 50  0001 C CNN
F 3 "~" H 5950 1360 50  0001 C CNN
	1    5950 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 1750 5950 1900
Wire Wire Line
	5950 1250 5950 1050
Wire Wire Line
	5450 2700 5450 2600
$Comp
L Diode:1N4001 D?
U 1 1 5E4E0E68
P 5650 1550
F 0 "D?" H 5650 1766 50  0000 C CNN
F 1 "1N4001" H 5650 1675 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 5650 1375 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 5650 1550 50  0001 C CNN
	1    5650 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	5650 1700 5650 1900
Wire Wire Line
	5650 1900 5950 1900
Connection ~ 5950 1900
Wire Wire Line
	5950 1900 5950 2050
Wire Wire Line
	5650 1400 5650 1050
Wire Wire Line
	5650 1050 5950 1050
Connection ~ 5950 1050
Wire Wire Line
	5950 1050 5950 900 
Wire Wire Line
	5950 2700 5950 2450
Wire Wire Line
	2300 2750 2800 2750
Wire Wire Line
	2800 2750 2800 3000
Wire Wire Line
	2800 3000 4050 3000
Wire Wire Line
	4050 3000 4050 2250
Wire Wire Line
	4050 2250 4250 2250
Connection ~ 4250 2250
Wire Wire Line
	2300 2850 2700 2850
Wire Wire Line
	2700 2850 2700 3100
Wire Wire Line
	2700 3100 5300 3100
Wire Wire Line
	5300 3100 5300 2250
Wire Wire Line
	5300 2250 5450 2250
Connection ~ 5450 2250
$Comp
L power:+3.3V #PWR?
U 1 1 5E4E6150
P 1700 1050
F 0 "#PWR?" H 1700 900 50  0001 C CNN
F 1 "+3.3V" H 1715 1223 50  0000 C CNN
F 2 "" H 1700 1050 50  0001 C CNN
F 3 "" H 1700 1050 50  0001 C CNN
	1    1700 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E4E72BE
P 1700 4600
F 0 "#PWR?" H 1700 4350 50  0001 C CNN
F 1 "GND" H 1705 4427 50  0000 C CNN
F 2 "" H 1700 4600 50  0001 C CNN
F 3 "" H 1700 4600 50  0001 C CNN
	1    1700 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 4600 1700 4350
Wire Wire Line
	1700 1550 1700 1050
$Comp
L Transistor_Array:ULN2003 U?
U 1 1 5E4F8DEE
P 6550 4500
F 0 "U?" H 6550 5167 50  0000 C CNN
F 1 "ULN2003" H 6550 5076 50  0000 C CNN
F 2 "" H 6600 3950 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/uln2003a.pdf" H 6650 4300 50  0001 C CNN
	1    6550 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 4300 5950 4400
Wire Wire Line
	5950 4400 6150 4400
Wire Wire Line
	5500 4300 5950 4300
Connection ~ 5950 4300
Wire Wire Line
	5950 4300 6150 4300
Wire Wire Line
	5500 4500 5950 4500
Wire Wire Line
	5950 4500 5950 4600
Wire Wire Line
	5950 4600 6150 4600
Connection ~ 5950 4500
Wire Wire Line
	5950 4500 6150 4500
Wire Wire Line
	5500 4700 5950 4700
Wire Wire Line
	5950 4700 5950 4800
Wire Wire Line
	5950 4800 6150 4800
Connection ~ 5950 4700
Wire Wire Line
	5950 4700 6150 4700
$Comp
L Motor:Motor_AC PMotor?
U 1 1 5E50A625
P 7350 4000
F 0 "PMotor?" H 7508 3996 50  0000 L CNN
F 1 "Motor_AC" H 7508 3905 50  0000 L CNN
F 2 "" H 7350 3910 50  0001 C CNN
F 3 "~" H 7350 3910 50  0001 C CNN
	1    7350 4000
	1    0    0    -1  
$EndComp
$Comp
L Motor:Motor_AC PMotor?
U 1 1 5E50DEFA
P 8000 4000
F 0 "PMotor?" H 8158 3996 50  0000 L CNN
F 1 "Motor_AC" H 8158 3905 50  0000 L CNN
F 2 "" H 8000 3910 50  0001 C CNN
F 3 "~" H 8000 3910 50  0001 C CNN
	1    8000 4000
	1    0    0    -1  
$EndComp
$Comp
L Motor:Motor_AC PMotor?
U 1 1 5E50F620
P 8650 4000
F 0 "PMotor?" H 8808 3996 50  0000 L CNN
F 1 "Motor_AC" H 8808 3905 50  0000 L CNN
F 2 "" H 8650 3910 50  0001 C CNN
F 3 "~" H 8650 3910 50  0001 C CNN
	1    8650 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 4100 7100 4100
Wire Wire Line
	7100 4100 7100 3800
Wire Wire Line
	7100 3800 7350 3800
Wire Wire Line
	7350 3800 8000 3800
Connection ~ 7350 3800
Wire Wire Line
	8000 3800 8650 3800
Connection ~ 8000 3800
Wire Wire Line
	6950 4300 7100 4300
Wire Wire Line
	6950 4400 7100 4400
Wire Wire Line
	7100 4400 7100 4300
Connection ~ 7100 4300
Wire Wire Line
	7100 4300 7350 4300
Wire Wire Line
	6950 4500 7100 4500
Wire Wire Line
	8000 4500 8000 4300
Wire Wire Line
	6950 4600 7100 4600
Wire Wire Line
	7100 4600 7100 4500
Connection ~ 7100 4500
Wire Wire Line
	7100 4500 8000 4500
Wire Wire Line
	6950 4700 7100 4700
Wire Wire Line
	8650 4700 8650 4300
Wire Wire Line
	6950 4800 7100 4800
Wire Wire Line
	7100 4800 7100 4700
Connection ~ 7100 4700
Wire Wire Line
	7100 4700 8650 4700
$Comp
L power:+3.3V #PWR?
U 1 1 5E520787
P 7100 3450
F 0 "#PWR?" H 7100 3300 50  0001 C CNN
F 1 "+3.3V" H 7115 3623 50  0000 C CNN
F 2 "" H 7100 3450 50  0001 C CNN
F 3 "" H 7100 3450 50  0001 C CNN
	1    7100 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 3450 7100 3800
Connection ~ 7100 3800
$Comp
L power:GND #PWR?
U 1 1 5E5244D7
P 6550 5400
F 0 "#PWR?" H 6550 5150 50  0001 C CNN
F 1 "GND" H 6555 5227 50  0000 C CNN
F 2 "" H 6550 5400 50  0001 C CNN
F 3 "" H 6550 5400 50  0001 C CNN
	1    6550 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 5100 6550 5400
Text Notes 5550 3700 0    50   ~ 0
Alternative with Darlington Matrix\n(less efficient)\n
$EndSCHEMATC
