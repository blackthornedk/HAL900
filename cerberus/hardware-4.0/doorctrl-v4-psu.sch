EESchema Schematic File Version 2  date 2010-12-19T21:45:09 CET
LIBS:enc28j60
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:contrib
LIBS:valves
LIBS:bc807
LIBS:bc817
LIBS:amp-rj45-tap-up-with-leds
LIBS:l4960
LIBS:borniers
LIBS:g5sb
LIBS:pulse-pe-68517-ethernet-trafo
LIBS:sn65hvd1x
LIBS:i2c
LIBS:linear
LIBS:atmel
LIBS:doorctrl-v4-cache
EELAYER 24  0
EELAYER END
$Descr A4 11700 8267
Sheet 6 6
Title ""
Date "19 dec 2010"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L +5V #PWR071
U 1 1 4D0BB423
P 5850 2200
F 0 "#PWR071" H 5850 2290 20  0001 C CNN
F 1 "+5V" H 5850 2290 30  0000 C CNN
	1    5850 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 3000 4250 3000
Connection ~ 5150 5100
Connection ~ 5150 4700
Connection ~ 2200 4700
Connection ~ 2550 5650
Wire Wire Line
	4050 4700 3750 4700
Wire Wire Line
	2200 4550 2200 4700
Wire Wire Line
	2200 5100 5150 5100
Wire Wire Line
	5000 5100 5000 6600
Wire Wire Line
	5000 6600 2300 6600
Wire Wire Line
	3550 5250 3550 5000
Wire Wire Line
	2800 5600 2800 5000
Connection ~ 3050 6600
Wire Wire Line
	3050 6050 3050 6600
Connection ~ 3550 6600
Wire Wire Line
	3550 6450 3550 6600
Wire Wire Line
	5150 5100 5150 5250
Connection ~ 3900 5100
Wire Wire Line
	5150 4500 5150 4700
Connection ~ 2800 6600
Connection ~ 2550 6600
Wire Wire Line
	2550 6050 2550 6600
Wire Wire Line
	2300 5650 2550 5650
Wire Wire Line
	5850 2600 5850 2200
Connection ~ 5850 3000
Wire Wire Line
	5850 3000 5850 3150
Connection ~ 7550 2600
Connection ~ 7050 2600
Connection ~ 6550 2600
Connection ~ 6050 2600
Connection ~ 6800 3000
Connection ~ 7300 3000
Connection ~ 6550 3000
Connection ~ 6050 3000
Connection ~ 5850 2300
Connection ~ 5050 2600
Wire Wire Line
	4600 2300 5850 2300
Connection ~ 4250 2600
Wire Wire Line
	3900 2600 4350 2600
Connection ~ 3900 2750
Wire Wire Line
	3900 2850 3900 2750
Wire Wire Line
	3900 3350 3900 3450
Wire Wire Line
	2200 3300 2200 3450
Connection ~ 3050 2000
Wire Wire Line
	2900 2000 3050 2000
Connection ~ 3900 2350
Wire Wire Line
	3900 2450 3900 1750
Wire Wire Line
	3050 2050 3050 1950
Wire Wire Line
	2200 2400 2200 1750
Wire Wire Line
	2200 1750 3900 1750
Wire Wire Line
	2400 2000 2200 2000
Connection ~ 2200 2000
Wire Wire Line
	2200 2900 2200 2700
Wire Wire Line
	3050 3050 3050 3150
Wire Wire Line
	3900 2750 4100 2750
Wire Wire Line
	4100 2750 4100 2300
Connection ~ 5350 2600
Connection ~ 5050 3000
Connection ~ 5350 3000
Connection ~ 6300 3000
Connection ~ 7050 3000
Connection ~ 7550 3000
Connection ~ 6300 2600
Connection ~ 6800 2600
Connection ~ 7300 2600
Connection ~ 5850 2600
Wire Wire Line
	2300 6600 2300 6150
Wire Wire Line
	2800 6100 2800 6200
Connection ~ 3900 4700
Wire Wire Line
	5150 4700 4650 4700
Connection ~ 4800 4700
Connection ~ 4800 5100
Connection ~ 5000 5100
Wire Wire Line
	3550 5950 3550 5750
Wire Wire Line
	3550 5850 4950 5850
Wire Wire Line
	4950 5850 4950 4700
Connection ~ 4950 4700
Connection ~ 3550 5850
Wire Wire Line
	3050 5650 3050 5000
Wire Wire Line
	2550 5650 2550 5000
Wire Wire Line
	3300 5000 3300 6600
Connection ~ 3300 6600
Wire Wire Line
	2200 4700 2350 4700
Wire Wire Line
	4950 2600 7550 2600
$Comp
L L4960 U3
U 1 1 4D04D789
P 3050 4700
F 0 "U3" H 3000 4950 50  0000 L BNN
F 1 "L4960" H 2900 4700 50  0000 L BNN
F 2 "l4960-HEPTAWATT" H 3050 4800 50  0001 C CNN
	1    3050 4700
	1    0    0    -1  
$EndComp
$Comp
L R R29
U 1 1 4D04D9A5
P 3550 5500
F 0 "R29" V 3630 5500 50  0000 C CNN
F 1 "6k2" V 3550 5500 50  0000 C CNN
	1    3550 5500
	1    0    0    -1  
$EndComp
$Comp
L R R30
U 1 1 4D04D99F
P 3550 6200
F 0 "R30" V 3630 6200 50  0000 C CNN
F 1 "4k7" V 3550 6200 50  0000 C CNN
	1    3550 6200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR072
U 1 1 4D04D8EB
P 5150 5250
F 0 "#PWR072" H 5150 5250 30  0001 C CNN
F 1 "GND" H 5150 5180 30  0001 C CNN
	1    5150 5250
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR073
U 1 1 4D04D8CC
P 5150 4500
F 0 "#PWR073" H 5150 4450 20  0001 C CNN
F 1 "+12V" H 5150 4600 30  0000 C CNN
	1    5150 4500
	1    0    0    -1  
$EndComp
$Comp
L C C16
U 1 1 4D04D8AA
P 5150 4900
F 0 "C16" H 5200 5000 50  0000 L CNN
F 1 "100nF" H 5200 4800 50  0000 L CNN
	1    5150 4900
	1    0    0    -1  
$EndComp
$Comp
L DIODESCH D2
U 1 1 4D04D88B
P 3900 4900
F 0 "D2" H 3900 5000 40  0000 C CNN
F 1 "SK 86" H 3900 4800 40  0000 C CNN
	1    3900 4900
	0    1    1    0   
$EndComp
$Comp
L INDUCTOR L1
U 1 1 4D04D880
P 4350 4700
F 0 "L1" V 4300 4700 40  0000 C CNN
F 1 "220uH" V 4450 4700 40  0000 C CNN
	1    4350 4700
	0    -1   -1   0   
$EndComp
$Comp
L R R26
U 1 1 4D04D801
P 2300 5900
F 0 "R26" V 2380 5900 50  0000 C CNN
F 1 "4k7" V 2300 5900 50  0000 C CNN
	1    2300 5900
	1    0    0    -1  
$EndComp
$Comp
L R R28
U 1 1 4D04D7F1
P 2800 5850
F 0 "R28" V 2850 6100 50  0000 C CNN
F 1 "15k" V 2800 5850 50  0000 C CNN
	1    2800 5850
	1    0    0    -1  
$EndComp
$Comp
L C C13
U 1 1 4D04D7E8
P 3050 5850
F 0 "C13" V 3100 6000 50  0000 L CNN
F 1 "2.2uF" V 3100 5700 50  0000 L CNN
	1    3050 5850
	1    0    0    -1  
$EndComp
$Comp
L C C12
U 1 1 4D04D7D1
P 2800 6400
F 0 "C12" V 2850 6550 50  0000 L CNN
F 1 "33nF" V 2700 6550 50  0000 L CNN
	1    2800 6400
	1    0    0    -1  
$EndComp
$Comp
L C C11
U 1 1 4D04D7C7
P 2550 5850
F 0 "C11" V 2600 6000 50  0000 L CNN
F 1 "2.2nF" V 2600 5700 50  0000 L CNN
	1    2550 5850
	1    0    0    -1  
$EndComp
$Comp
L +24V #PWR074
U 1 1 4D04D7BB
P 2200 4550
F 0 "#PWR074" H 2200 4500 20  0001 C CNN
F 1 "+24V" H 2200 4650 30  0000 C CNN
	1    2200 4550
	1    0    0    -1  
$EndComp
$Comp
L CAPAPOL C14
U 1 1 4D04D79B
P 4800 4900
F 0 "C14" H 4650 5000 50  0000 L CNN
F 1 "1000uF" H 4500 4800 50  0000 L CNN
	1    4800 4900
	1    0    0    -1  
$EndComp
$Comp
L CAPAPOL C10
U 1 1 4D04D797
P 2200 4900
F 0 "C10" H 2050 5000 50  0000 L CNN
F 1 "1200uF" H 1900 4800 50  0000 L CNN
	1    2200 4900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR075
U 1 1 4D04D42D
P 5850 3150
F 0 "#PWR075" H 5850 3150 30  0001 C CNN
F 1 "GND" H 5850 3080 30  0001 C CNN
	1    5850 3150
	1    0    0    -1  
$EndComp
$Comp
L C C25
U 1 1 4D04D39E
P 7550 2800
F 0 "C25" H 7600 2900 50  0000 L CNN
F 1 "100nF" H 7500 2550 50  0000 L CNN
	1    7550 2800
	1    0    0    -1  
$EndComp
$Comp
L C C24
U 1 1 4D04D39B
P 7300 2800
F 0 "C24" H 7350 2900 50  0000 L CNN
F 1 "100nF" H 7250 2550 50  0000 L CNN
	1    7300 2800
	1    0    0    -1  
$EndComp
$Comp
L C C23
U 1 1 4D04D398
P 7050 2800
F 0 "C23" H 7100 2900 50  0000 L CNN
F 1 "100nF" H 7000 2550 50  0000 L CNN
	1    7050 2800
	1    0    0    -1  
$EndComp
$Comp
L C C22
U 1 1 4D04D394
P 6800 2800
F 0 "C22" H 6850 2900 50  0000 L CNN
F 1 "100nF" H 6750 2550 50  0000 L CNN
	1    6800 2800
	1    0    0    -1  
$EndComp
$Comp
L C C21
U 1 1 4D04D38F
P 6550 2800
F 0 "C21" H 6600 2900 50  0000 L CNN
F 1 "100nF" H 6500 2550 50  0000 L CNN
	1    6550 2800
	1    0    0    -1  
$EndComp
$Comp
L C C20
U 1 1 4D04D38C
P 6300 2800
F 0 "C20" H 6350 2900 50  0000 L CNN
F 1 "100nF" H 6250 2550 50  0000 L CNN
	1    6300 2800
	1    0    0    -1  
$EndComp
$Comp
L C C19
U 1 1 4D04D33D
P 6050 2800
F 0 "C19" H 6100 2900 50  0000 L CNN
F 1 "100nF" H 6000 2550 50  0000 L CNN
	1    6050 2800
	1    0    0    -1  
$EndComp
$Comp
L C C18
U 1 1 4D04D22A
P 5350 2800
F 0 "C18" H 5400 2900 50  0000 L CNN
F 1 "10uF" H 5400 2700 50  0000 L CNN
	1    5350 2800
	1    0    0    -1  
$EndComp
$Comp
L CAPAPOL C15
U 1 1 4D04D0AE
P 5050 2800
F 0 "C15" H 5100 2900 50  0000 L CNN
F 1 "100uF" H 5100 2700 50  0000 L CNN
	1    5050 2800
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR L2
U 1 1 4D04CFE3
P 4650 2600
F 0 "L2" V 4600 2600 40  0000 C CNN
F 1 "330uH" V 4750 2600 40  0000 C CNN
	1    4650 2600
	0    -1   -1   0   
$EndComp
$Comp
L DIODESCH D3
U 1 1 4D04CF74
P 4250 2800
F 0 "D3" H 4250 2900 40  0000 C CNN
F 1 "SK 34SMA" H 4250 2700 40  0000 C CNN
	1    4250 2800
	0    -1   -1   0   
$EndComp
$Comp
L C C9
U 1 1 4D04CF13
P 2200 3100
F 0 "C9" H 2250 3200 50  0000 L CNN
F 1 "82pF" H 2250 3000 50  0000 L CNN
	1    2200 3100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR076
U 1 1 4D04CF0D
P 2200 3450
F 0 "#PWR076" H 2200 3450 30  0001 C CNN
F 1 "GND" H 2200 3380 30  0001 C CNN
	1    2200 3450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR077
U 1 1 4D04CF06
P 3900 3450
F 0 "#PWR077" H 3900 3450 30  0001 C CNN
F 1 "GND" H 3900 3380 30  0001 C CNN
	1    3900 3450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR078
U 1 1 4D04CF02
P 3050 3150
F 0 "#PWR078" H 3050 3150 30  0001 C CNN
F 1 "GND" H 3050 3080 30  0001 C CNN
	1    3050 3150
	1    0    0    -1  
$EndComp
$Comp
L R R32
U 1 1 4D04CED4
P 4350 2300
F 0 "R32" V 4430 2300 50  0000 C CNN
F 1 "3k" V 4350 2300 50  0000 C CNN
	1    4350 2300
	0    1    1    0   
$EndComp
$Comp
L R R31
U 1 1 4D04CEB9
P 3900 3100
F 0 "R31" V 3980 3100 50  0000 C CNN
F 1 "1k" V 3900 3100 50  0000 C CNN
	1    3900 3100
	1    0    0    -1  
$EndComp
$Comp
L R R27
U 1 1 4D04CE98
P 2650 2000
F 0 "R27" V 2730 2000 50  0000 C CNN
F 1 "0.22R" V 2650 2000 50  0000 C CNN
	1    2650 2000
	0    1    1    0   
$EndComp
$Comp
L +24V #PWR079
U 1 1 4D04CE42
P 3050 1950
F 0 "#PWR079" H 3050 1900 20  0001 C CNN
F 1 "+24V" H 3050 2050 30  0000 C CNN
	1    3050 1950
	1    0    0    -1  
$EndComp
$Comp
L MC34063 U2
U 1 1 4D04CE01
P 3050 2550
F 0 "U2" H 3200 2900 60  0000 L CNN
F 1 "MC34063" H 3150 2200 60  0000 L CNN
	1    3050 2550
	1    0    0    -1  
$EndComp
$EndSCHEMATC
