EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
Title "Battery Protector"
Date "2021-01-13"
Rev "v0.1"
Comp "Rico Schmitt"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:Battery BT1
U 1 1 5FFE0FC7
P 1500 1600
F 0 "BT1" H 1608 1646 50  0000 L CNN
F 1 "Battery" H 1608 1555 50  0000 L CNN
F 2 "makita_protector:contact_plates" V 1500 1660 50  0001 C CNN
F 3 "~" V 1500 1660 50  0001 C CNN
	1    1500 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5FFE14F6
P 1500 1800
F 0 "#PWR09" H 1500 1550 50  0001 C CNN
F 1 "GND" H 1505 1627 50  0000 C CNN
F 2 "" H 1500 1800 50  0001 C CNN
F 3 "" H 1500 1800 50  0001 C CNN
	1    1500 1800
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR08
U 1 1 5FFE189E
P 1500 1000
F 0 "#PWR08" H 1500 850 50  0001 C CNN
F 1 "+BATT" H 1515 1173 50  0000 C CNN
F 2 "" H 1500 1000 50  0001 C CNN
F 3 "" H 1500 1000 50  0001 C CNN
	1    1500 1000
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:SiS415DNT Q1
U 1 1 5FFE391B
P 3550 1300
F 0 "Q1" V 3892 1300 50  0000 C CNN
F 1 "SQJ457EP" V 3801 1300 50  0000 C CNN
F 2 "Package_SO:Vishay_PowerPAK_1212-8_Single" H 3750 1225 50  0001 L CIN
F 3 "https://www.vishay.com/docs/63684/sis415dnt.pdf" V 3550 1300 50  0001 L CNN
	1    3550 1300
	0    1    -1   0   
$EndComp
$Comp
L power:+BATT #PWR011
U 1 1 5FFE4AB8
P 2100 1000
F 0 "#PWR011" H 2100 850 50  0001 C CNN
F 1 "+BATT" H 2115 1173 50  0000 C CNN
F 2 "" H 2100 1000 50  0001 C CNN
F 3 "" H 2100 1000 50  0001 C CNN
	1    2100 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 1200 2950 1200
$Comp
L Diode:BZX84Cxx D1
U 1 1 5FFE677C
P 2100 1350
F 0 "D1" V 2146 1270 50  0000 R CNN
F 1 "LBZX84C10LT1G" V 2055 1270 50  0000 R CNN
F 2 "Diode_SMD:D_SOT-23_ANK" H 2100 1175 50  0001 C CNN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/bzx84c2v4.pdf" H 2100 1350 50  0001 C CNN
	1    2100 1350
	0    -1   -1   0   
$EndComp
Connection ~ 2100 1200
$Comp
L Diode:BZX84Cxx D2
U 1 1 5FFE8F7C
P 2100 1650
F 0 "D2" V 2054 1730 50  0000 L CNN
F 1 "LBZX84C10LT1G" V 2145 1730 50  0000 L CNN
F 2 "Diode_SMD:D_SOT-23_ANK" H 2100 1475 50  0001 C CNN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/bzx84c2v4.pdf" H 2100 1650 50  0001 C CNN
	1    2100 1650
	0    1    1    0   
$EndComp
Wire Wire Line
	2100 1800 2950 1800
Wire Wire Line
	3550 1800 3550 1500
$Comp
L Device:R R3
U 1 1 5FFE9861
P 2950 1500
F 0 "R3" H 3020 1546 50  0000 L CNN
F 1 "33k" H 3020 1455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2880 1500 50  0001 C CNN
F 3 "~" H 2950 1500 50  0001 C CNN
	1    2950 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 1350 2950 1200
Wire Wire Line
	2950 1650 2950 1800
Wire Wire Line
	3750 1200 4050 1200
$Comp
L power:VBUS #PWR016
U 1 1 5FFED9A2
P 4350 1050
F 0 "#PWR016" H 4350 900 50  0001 C CNN
F 1 "VBUS" H 4365 1223 50  0000 C CNN
F 2 "" H 4350 1050 50  0001 C CNN
F 3 "" H 4350 1050 50  0001 C CNN
	1    4350 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 1050 4350 1200
$Comp
L Device:C C5
U 1 1 5FFEEC71
P 3550 2050
F 0 "C5" H 3665 2096 50  0000 L CNN
F 1 "100n" H 3665 2005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3588 1900 50  0001 C CNN
F 3 "~" H 3550 2050 50  0001 C CNN
	1    3550 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 1900 3550 1800
Connection ~ 3550 1800
$Comp
L power:GND #PWR014
U 1 1 5FFEF5BB
P 3550 2200
F 0 "#PWR014" H 3550 1950 50  0001 C CNN
F 1 "GND" H 3555 2027 50  0000 C CNN
F 2 "" H 3550 2200 50  0001 C CNN
F 3 "" H 3550 2200 50  0001 C CNN
	1    3550 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5FFF01F2
P 4350 2200
F 0 "R8" H 4420 2246 50  0000 L CNN
F 1 "33k" H 4420 2155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4280 2200 50  0001 C CNN
F 3 "~" H 4350 2200 50  0001 C CNN
	1    4350 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 2050 4350 1800
Wire Wire Line
	4350 1800 3550 1800
$Comp
L Transistor_FET:BSS123 Q2
U 1 1 5FFF0D54
P 4450 2550
F 0 "Q2" H 4655 2596 50  0000 L CNN
F 1 "BSS123" H 4655 2505 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4650 2475 50  0001 L CIN
F 3 "http://www.diodes.com/assets/Datasheets/ds30366.pdf" H 4450 2550 50  0001 L CNN
	1    4450 2550
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5FFF3A9D
P 4350 2750
F 0 "#PWR017" H 4350 2500 50  0001 C CNN
F 1 "GND" H 4355 2577 50  0000 C CNN
F 2 "" H 4350 2750 50  0001 C CNN
F 3 "" H 4350 2750 50  0001 C CNN
	1    4350 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F1
U 1 1 6000079F
P 1350 1200
F 0 "F1" H 1410 1246 50  0000 L CNN
F 1 "Fuse" H 1410 1155 50  0000 L CNN
F 2 "Fuse:Fuse_1206_3216Metric" V 1280 1200 50  0001 C CNN
F 3 "~" H 1350 1200 50  0001 C CNN
	1    1350 1200
	1    0    0    -1  
$EndComp
$Comp
L Comparator:LM2903 U2
U 1 1 60001597
P 7450 1650
F 0 "U2" H 7450 2017 50  0000 C CNN
F 1 "LM2903" H 7450 1926 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 7450 1650 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/lm393b.pdf" H 7450 1650 50  0001 C CNN
	1    7450 1650
	-1   0    0    -1  
$EndComp
$Comp
L Comparator:LM2903 U2
U 2 1 60003599
P 8550 3000
F 0 "U2" H 8550 3367 50  0000 C CNN
F 1 "LM2903" H 8550 3276 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 8550 3000 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/lm393b.pdf" H 8550 3000 50  0001 C CNN
	2    8550 3000
	1    0    0    -1  
$EndComp
$Comp
L Comparator:LM2903 U2
U 3 1 6000413E
P 7250 2950
F 0 "U2" H 7208 2996 50  0000 L CNN
F 1 "LM2903" H 7208 2905 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 7250 2950 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/lm393b.pdf" H 7250 2950 50  0001 C CNN
	3    7250 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR028
U 1 1 60004B61
P 7150 3250
F 0 "#PWR028" H 7150 3000 50  0001 C CNN
F 1 "GND" H 7155 3077 50  0000 C CNN
F 2 "" H 7150 3250 50  0001 C CNN
F 3 "" H 7150 3250 50  0001 C CNN
	1    7150 3250
	1    0    0    -1  
$EndComp
NoConn ~ 8850 3000
$Comp
L Device:R R14
U 1 1 600059BA
P 8100 3100
F 0 "R14" V 8300 3100 50  0000 C CNN
F 1 "100k" V 8200 3100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8030 3100 50  0001 C CNN
F 3 "~" H 8100 3100 50  0001 C CNN
	1    8100 3100
	0    -1   1    0   
$EndComp
$Comp
L Device:R R13
U 1 1 60009F06
P 8100 2900
F 0 "R13" V 7893 2900 50  0000 C CNN
F 1 "100k" V 7984 2900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8030 2900 50  0001 C CNN
F 3 "~" H 8100 2900 50  0001 C CNN
	1    8100 2900
	0    1    1    0   
$EndComp
$Comp
L power:VBUS #PWR032
U 1 1 6000DCC2
P 7950 3100
F 0 "#PWR032" H 7950 2950 50  0001 C CNN
F 1 "VBUS" V 7965 3227 50  0000 L CNN
F 2 "" H 7950 3100 50  0001 C CNN
F 3 "" H 7950 3100 50  0001 C CNN
	1    7950 3100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR031
U 1 1 6000EA0C
P 7950 2900
F 0 "#PWR031" H 7950 2650 50  0001 C CNN
F 1 "GND" V 7955 2772 50  0000 R CNN
F 2 "" H 7950 2900 50  0001 C CNN
F 3 "" H 7950 2900 50  0001 C CNN
	1    7950 2900
	0    1    1    0   
$EndComp
$Comp
L power:VBUS #PWR027
U 1 1 6000F4FA
P 7150 2650
F 0 "#PWR027" H 7150 2500 50  0001 C CNN
F 1 "VBUS" H 7165 2823 50  0000 C CNN
F 2 "" H 7150 2650 50  0001 C CNN
F 3 "" H 7150 2650 50  0001 C CNN
	1    7150 2650
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR023
U 1 1 60010026
P 6800 2800
F 0 "#PWR023" H 6800 2650 50  0001 C CNN
F 1 "VBUS" H 6815 2973 50  0000 C CNN
F 2 "" H 6800 2800 50  0001 C CNN
F 3 "" H 6800 2800 50  0001 C CNN
	1    6800 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 600110BB
P 6800 2950
F 0 "C10" H 6915 2996 50  0000 L CNN
F 1 "100n" H 6915 2905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6838 2800 50  0001 C CNN
F 3 "~" H 6800 2950 50  0001 C CNN
	1    6800 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 60011B03
P 6800 3100
F 0 "#PWR024" H 6800 2850 50  0001 C CNN
F 1 "GND" H 6805 2927 50  0000 C CNN
F 2 "" H 6800 3100 50  0001 C CNN
F 3 "" H 6800 3100 50  0001 C CNN
	1    6800 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 1650 7100 1650
$Comp
L Device:R R9
U 1 1 6001C131
P 6650 1650
F 0 "R9" V 6443 1650 50  0000 C CNN
F 1 "33k" V 6534 1650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6580 1650 50  0001 C CNN
F 3 "~" H 6650 1650 50  0001 C CNN
	1    6650 1650
	0    1    1    0   
$EndComp
$Comp
L Device:C C8
U 1 1 6001D9B7
P 4850 2800
F 0 "C8" H 4965 2846 50  0000 L CNN
F 1 "100n" H 4965 2755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4888 2650 50  0001 C CNN
F 3 "~" H 4850 2800 50  0001 C CNN
	1    4850 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 6001E05F
P 4850 2950
F 0 "#PWR019" H 4850 2700 50  0001 C CNN
F 1 "GND" H 4855 2777 50  0000 C CNN
F 2 "" H 4850 2950 50  0001 C CNN
F 3 "" H 4850 2950 50  0001 C CNN
	1    4850 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 2650 4850 2550
Connection ~ 4850 2550
Wire Wire Line
	4850 2550 4650 2550
$Comp
L Device:R R15
U 1 1 6001F6AC
P 8700 1150
F 0 "R15" V 8900 1150 50  0000 C CNN
F 1 "100k" V 8800 1150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8630 1150 50  0001 C CNN
F 3 "~" H 8700 1150 50  0001 C CNN
	1    8700 1150
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R21
U 1 1 60021403
P 10400 1950
F 0 "R21" V 10600 1950 50  0000 C CNN
F 1 "100k" V 10500 1950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10330 1950 50  0001 C CNN
F 3 "~" H 10400 1950 50  0001 C CNN
	1    10400 1950
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R20
U 1 1 600219DA
P 10400 1200
F 0 "R20" V 10600 1200 50  0000 C CNN
F 1 "100k" V 10500 1200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10330 1200 50  0001 C CNN
F 3 "~" H 10400 1200 50  0001 C CNN
	1    10400 1200
	-1   0    0    -1  
$EndComp
$Comp
L Diode:BZX84Cxx D3
U 1 1 60022748
P 5250 2800
F 0 "D3" V 5204 2880 50  0000 L CNN
F 1 "LBZX84C10LT1G" V 5295 2880 50  0000 L CNN
F 2 "Diode_SMD:D_SOT-23_ANK" H 5250 2625 50  0001 C CNN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/bzx84c2v4.pdf" H 5250 2800 50  0001 C CNN
	1    5250 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 2650 5250 2550
Wire Wire Line
	5250 2550 4850 2550
$Comp
L power:GND #PWR022
U 1 1 60025F5D
P 5250 2950
F 0 "#PWR022" H 5250 2700 50  0001 C CNN
F 1 "GND" H 5255 2777 50  0000 C CNN
F 2 "" H 5250 2950 50  0001 C CNN
F 3 "" H 5250 2950 50  0001 C CNN
	1    5250 2950
	1    0    0    -1  
$EndComp
$Comp
L Diode:BZX84Cxx D4
U 1 1 600276CF
P 8700 1950
F 0 "D4" V 8654 2030 50  0000 L CNN
F 1 "LBZX84C10LT1G" V 8745 2030 50  0000 L CNN
F 2 "Diode_SMD:D_SOT-23_ANK" H 8700 1775 50  0001 C CNN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/bzx84c2v4.pdf" H 8700 1950 50  0001 C CNN
	1    8700 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	8700 1300 8700 1750
Wire Wire Line
	7750 1750 8300 1750
Connection ~ 8700 1750
Wire Wire Line
	8700 1750 8700 1800
$Comp
L power:GND #PWR036
U 1 1 6002ED7F
P 8700 2100
F 0 "#PWR036" H 8700 1850 50  0001 C CNN
F 1 "GND" H 8705 1927 50  0000 C CNN
F 2 "" H 8700 2100 50  0001 C CNN
F 3 "" H 8700 2100 50  0001 C CNN
	1    8700 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR041
U 1 1 6002F417
P 10400 2100
F 0 "#PWR041" H 10400 1850 50  0001 C CNN
F 1 "GND" H 10405 1927 50  0000 C CNN
F 2 "" H 10400 2100 50  0001 C CNN
F 3 "" H 10400 2100 50  0001 C CNN
	1    10400 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 1800 10400 1550
Wire Wire Line
	10400 1550 9600 1550
Wire Wire Line
	10400 1550 10400 1350
Connection ~ 10400 1550
$Comp
L power:VBUS #PWR035
U 1 1 6003311C
P 8700 800
F 0 "#PWR035" H 8700 650 50  0001 C CNN
F 1 "VBUS" H 8715 973 50  0000 C CNN
F 2 "" H 8700 800 50  0001 C CNN
F 3 "" H 8700 800 50  0001 C CNN
	1    8700 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 800  8700 1000
$Comp
L power:VBUS #PWR040
U 1 1 600341C4
P 10400 800
F 0 "#PWR040" H 10400 650 50  0001 C CNN
F 1 "VBUS" H 10415 973 50  0000 C CNN
F 2 "" H 10400 800 50  0001 C CNN
F 3 "" H 10400 800 50  0001 C CNN
	1    10400 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 800  10400 1050
$Comp
L Device:C C13
U 1 1 600355A8
P 8300 1950
F 0 "C13" H 8415 1996 50  0000 L CNN
F 1 "100n" H 8415 1905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8338 1800 50  0001 C CNN
F 3 "~" H 8300 1950 50  0001 C CNN
	1    8300 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR033
U 1 1 60035D5E
P 8300 2100
F 0 "#PWR033" H 8300 1850 50  0001 C CNN
F 1 "GND" H 8305 1927 50  0000 C CNN
F 2 "" H 8300 2100 50  0001 C CNN
F 3 "" H 8300 2100 50  0001 C CNN
	1    8300 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 1800 8300 1750
Connection ~ 8300 1750
Wire Wire Line
	8300 1750 8700 1750
$Comp
L Device:R R10
U 1 1 60036E45
P 7550 1000
F 0 "R10" V 7750 1000 50  0000 C CNN
F 1 "1Meg" V 7650 1000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7480 1000 50  0001 C CNN
F 3 "~" H 7550 1000 50  0001 C CNN
	1    7550 1000
	0    1    -1   0   
$EndComp
Wire Wire Line
	7700 1000 8050 1000
Wire Wire Line
	8050 1000 8050 1550
Connection ~ 8050 1550
Wire Wire Line
	8050 1550 7750 1550
Wire Wire Line
	7400 1000 7100 1000
Wire Wire Line
	7100 1000 7100 1650
Connection ~ 7100 1650
Wire Wire Line
	7100 1650 6800 1650
$Comp
L Device:R R4
U 1 1 60134EC2
P 2950 2050
F 0 "R4" H 3020 2096 50  0000 L CNN
F 1 "33k" H 3020 2005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2880 2050 50  0001 C CNN
F 3 "~" H 2950 2050 50  0001 C CNN
	1    2950 2050
	1    0    0    -1  
$EndComp
Connection ~ 2950 1200
Connection ~ 2950 1800
Wire Wire Line
	2950 1200 3350 1200
Wire Wire Line
	2950 1800 3550 1800
Wire Wire Line
	2950 1900 2950 1800
$Comp
L power:GND #PWR013
U 1 1 60145EBF
P 2950 3100
F 0 "#PWR013" H 2950 2850 50  0001 C CNN
F 1 "GND" H 2955 2927 50  0000 C CNN
F 2 "" H 2950 3100 50  0001 C CNN
F 3 "" H 2950 3100 50  0001 C CNN
	1    2950 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 6014C9D1
P 2950 2450
F 0 "C3" H 3065 2496 50  0000 L CNN
F 1 "100n" H 3065 2405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2988 2300 50  0001 C CNN
F 3 "~" H 2950 2450 50  0001 C CNN
	1    2950 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 2300 2950 2200
$Comp
L Device:R R16
U 1 1 6016C037
P 9600 1800
F 0 "R16" H 9670 1846 50  0000 L CNN
F 1 "33k" H 9670 1755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9530 1800 50  0001 C CNN
F 3 "~" H 9600 1800 50  0001 C CNN
	1    9600 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR037
U 1 1 6016C043
P 9600 2950
F 0 "#PWR037" H 9600 2700 50  0001 C CNN
F 1 "GND" H 9605 2777 50  0000 C CNN
F 2 "" H 9600 2950 50  0001 C CNN
F 3 "" H 9600 2950 50  0001 C CNN
	1    9600 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 1650 9600 1550
Connection ~ 9600 1550
Wire Wire Line
	9600 1550 8050 1550
$Comp
L power:GND #PWR06
U 1 1 6025E4C7
P 1600 3850
F 0 "#PWR06" H 1600 3600 50  0001 C CNN
F 1 "GND" H 1605 3677 50  0000 C CNN
F 2 "" H 1600 3850 50  0001 C CNN
F 3 "" H 1600 3850 50  0001 C CNN
	1    1600 3850
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR05
U 1 1 602608BF
P 1250 3700
F 0 "#PWR05" H 1250 3550 50  0001 C CNN
F 1 "+12V" H 1265 3873 50  0000 C CNN
F 2 "" H 1250 3700 50  0001 C CNN
F 3 "" H 1250 3700 50  0001 C CNN
	1    1250 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 3700 1250 3800
Wire Wire Line
	2100 1000 2100 1200
$Comp
L power:PWR_FLAG #FLG01
U 1 1 602769E4
P 1000 1200
F 0 "#FLG01" H 1000 1275 50  0001 C CNN
F 1 "PWR_FLAG" H 1000 1373 50  0000 C CNN
F 2 "" H 1000 1200 50  0001 C CNN
F 3 "~" H 1000 1200 50  0001 C CNN
	1    1000 1200
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 60277571
P 1000 1650
F 0 "#FLG02" H 1000 1725 50  0001 C CNN
F 1 "PWR_FLAG" H 1000 1823 50  0000 C CNN
F 2 "" H 1000 1650 50  0001 C CNN
F 3 "~" H 1000 1650 50  0001 C CNN
	1    1000 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 60277C65
P 1000 1650
F 0 "#PWR04" H 1000 1400 50  0001 C CNN
F 1 "GND" H 1005 1477 50  0000 C CNN
F 2 "" H 1000 1650 50  0001 C CNN
F 3 "" H 1000 1650 50  0001 C CNN
	1    1000 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR03
U 1 1 602781DE
P 1000 1200
F 0 "#PWR03" H 1000 1050 50  0001 C CNN
F 1 "+BATT" H 1015 1373 50  0000 C CNN
F 2 "" H 1000 1200 50  0001 C CNN
F 3 "" H 1000 1200 50  0001 C CNN
	1    1000 1200
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG03
U 1 1 60280BBA
P 4050 1050
F 0 "#FLG03" H 4050 1125 50  0001 C CNN
F 1 "PWR_FLAG" H 4050 1223 50  0000 C CNN
F 2 "" H 4050 1050 50  0001 C CNN
F 3 "~" H 4050 1050 50  0001 C CNN
	1    4050 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 1050 4050 1200
Connection ~ 4050 1200
Wire Wire Line
	4050 1200 4350 1200
Wire Wire Line
	5250 2550 5250 1650
Wire Wire Line
	5250 1650 6500 1650
Connection ~ 5250 2550
$Comp
L Device:Fuse F2
U 1 1 600EFABA
P 1650 1200
F 0 "F2" H 1710 1246 50  0000 L CNN
F 1 "Fuse" H 1710 1155 50  0000 L CNN
F 2 "Fuse:Fuse_0603_1608Metric" V 1580 1200 50  0001 C CNN
F 3 "~" H 1650 1200 50  0001 C CNN
	1    1650 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 1050 1500 1050
Wire Wire Line
	1500 1050 1500 1000
Wire Wire Line
	1650 1050 1500 1050
Connection ~ 1500 1050
Wire Wire Line
	1500 1400 1350 1400
Wire Wire Line
	1350 1400 1350 1350
Wire Wire Line
	1500 1400 1650 1400
Wire Wire Line
	1650 1400 1650 1350
Connection ~ 1500 1400
$Comp
L Graphic:Logo_Open_Hardware_Small #LOGO1
U 1 1 6012B83E
P 6000 7100
F 0 "#LOGO1" H 6000 7375 50  0001 C CNN
F 1 "Logo_Open_Hardware_Small" H 6000 6875 50  0001 C CNN
F 2 "" H 6000 7100 50  0001 C CNN
F 3 "~" H 6000 7100 50  0001 C CNN
	1    6000 7100
	1    0    0    -1  
$EndComp
$Sheet
S 6950 4750 2550 750 
U 60187A3F
F0 "Sheet60187A3E" 50
F1 "TPS54302.sch" 50
$EndSheet
$Sheet
S 3500 4800 2550 750 
U 60198760
F0 "sheet6019875E" 50
F1 "TPS54302.sch" 50
$EndSheet
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 601E9C7C
P 900 3700
F 0 "#FLG0101" H 900 3775 50  0001 C CNN
F 1 "PWR_FLAG" H 900 3873 50  0000 C CNN
F 2 "" H 900 3700 50  0001 C CNN
F 3 "~" H 900 3700 50  0001 C CNN
	1    900  3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  3800 900  3700
Wire Wire Line
	900  3800 1250 3800
$Comp
L Connector_Generic:Conn_01x01 J2
U 1 1 602050AE
P 1600 3650
F 0 "J2" V 1564 3562 50  0000 R CNN
F 1 "GND" V 1473 3562 50  0000 R CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 1600 3650 50  0001 C CNN
F 3 "~" H 1600 3650 50  0001 C CNN
	1    1600 3650
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J1
U 1 1 6020725D
P 900 4000
F 0 "J1" V 772 4080 50  0000 L CNN
F 1 "12V" V 863 4080 50  0000 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 900 4000 50  0001 C CNN
F 3 "~" H 900 4000 50  0001 C CNN
	1    900  4000
	0    1    1    0   
$EndComp
Connection ~ 900  3800
$Comp
L Connector_Generic:Conn_01x01 J4
U 1 1 60212546
P 2500 3000
F 0 "J4" H 2400 2800 50  0000 C CNN
F 1 "GND" H 2400 2900 50  0000 C CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 2500 3000 50  0001 C CNN
F 3 "~" H 2500 3000 50  0001 C CNN
	1    2500 3000
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J3
U 1 1 60215C4B
P 2500 2850
F 0 "J3" H 2418 3067 50  0000 C CNN
F 1 "FORCE_ON" H 2418 2976 50  0000 C CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 2500 2850 50  0001 C CNN
F 3 "~" H 2500 2850 50  0001 C CNN
	1    2500 2850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2700 3000 2950 3000
Wire Wire Line
	2950 3000 2950 3100
Wire Wire Line
	2700 2850 2950 2850
Wire Wire Line
	2950 2600 2950 2850
$Comp
L Connector_Generic:Conn_01x01 J6
U 1 1 60223DEB
P 9250 2850
F 0 "J6" H 9150 2650 50  0000 C CNN
F 1 "GND" H 9150 2750 50  0000 C CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 9250 2850 50  0001 C CNN
F 3 "~" H 9250 2850 50  0001 C CNN
	1    9250 2850
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J5
U 1 1 60223DF1
P 9250 2700
F 0 "J5" H 9168 2917 50  0000 C CNN
F 1 "FORCE_OFF" H 9168 2826 50  0000 C CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 9250 2700 50  0001 C CNN
F 3 "~" H 9250 2700 50  0001 C CNN
	1    9250 2700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9450 2700 9600 2700
Wire Wire Line
	9450 2850 9600 2850
Wire Wire Line
	9600 2850 9600 2950
Wire Wire Line
	9600 1950 9600 2700
$Comp
L Mechanical:MountingHole H?
U 1 1 6025B2E9
P 1000 6400
F 0 "H?" H 1100 6446 50  0000 L CNN
F 1 "MountingHole" H 1100 6355 50  0000 L CNN
F 2 "" H 1000 6400 50  0001 C CNN
F 3 "~" H 1000 6400 50  0001 C CNN
	1    1000 6400
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H?
U 1 1 6025BA60
P 1000 6600
F 0 "H?" H 1100 6646 50  0000 L CNN
F 1 "MountingHole" H 1100 6555 50  0000 L CNN
F 2 "" H 1000 6600 50  0001 C CNN
F 3 "~" H 1000 6600 50  0001 C CNN
	1    1000 6600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H?
U 1 1 6025C1C4
P 1000 6800
F 0 "H?" H 1100 6846 50  0000 L CNN
F 1 "MountingHole" H 1100 6755 50  0000 L CNN
F 2 "" H 1000 6800 50  0001 C CNN
F 3 "~" H 1000 6800 50  0001 C CNN
	1    1000 6800
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H?
U 1 1 6025C1CA
P 1000 7000
F 0 "H?" H 1100 7046 50  0000 L CNN
F 1 "MountingHole" H 1100 6955 50  0000 L CNN
F 2 "" H 1000 7000 50  0001 C CNN
F 3 "~" H 1000 7000 50  0001 C CNN
	1    1000 7000
	1    0    0    -1  
$EndComp
$EndSCHEMATC
