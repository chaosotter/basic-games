100 REM  HARRIED HOUSEWIFE 
110 REM  99'ER VERSION 7.81.1     
120 REM  BY REGENA 
130 CALL CLEAR
140 PRINT TAB(10):"HARRIED"
150 PRINT: :TAB(9):"HOUSEWIFE"
160 PRINT: : : : : : : : : :"BY REGENA"
170 CALL COLOR(9,7,15)
180 CALL COLOR(10,13,12)
190 CALL COLOR(11,14,11)
200 CALL COLOR(12,16,3)
210 CALL COLOR(13,7,12)
220 CALL COLOR(14,5,8)
230 CALL COLOR(15,15,16)
240 CALL COLOR(16,3,16)
250 CALL CHAR(96,"0000040EBEBEFFFF")
260 CALL CHAR(97,"0000000020E0C0C")
270 CALL CHAR(98,"0201010703010101")
280 CALL CHAR(99,"FFFFFFFFFFFFFFFF")
290 CALL CHAR(100,"F0E0C0F0F1E080C")
300 CALL CHAR(101,"03070E1C3870E0C")
310 CALL CHAR(102,"FF0E03")
320 CALL CHAR(103,"0")
330 CALL CHAR(104,"FFFFFFFFFFFFFFFF")
340 CALL CHAR(105,"FCFCFCFFFFFFFFFF")
350 CALL CHAR(106,"FCFCF8F8F0E0C")
360 CALL CHAR(107,"FFFFFFFFFCFCFCFC")
370 CALL CHAR(108,"FFFFFFFFFF")
380 CALL CHAR(109,"0")
390 CALL CHAR(112,"000000000F0F0F0F")
400 CALL CHAR(113,"0000000081C3FFFF")
410 CALL CHAR(114,"00000000F0F0F0F0")
420 CALL CHAR(115,"0F0F")
430 CALL CHAR(116,"FFFFFFFFFFFFFFFF")
440 CALL CHAR(117,"F0F")
450 CALL CHAR(118,"FFFFFFFF")
460 CALL CHAR(119,"0")
470 CALL CHAR(120,"00000000000C0F0F")
480 CALL CHAR(121,"000000000000FFFF")
490 CALL CHAR(122,"0000000000C0C0FC")
500 CALL CHAR(123,"0F0F0F0F0F0F0F07")
510 CALL CHAR(124,"FFFFFFFFFFFFFFFF")
520 CALL CHAR(125,"FEC6C6C6DCF8E08")
530 CALL CHAR(126,"FFFF")
540 CALL CHAR(128,"1F1F1F1F1F1F1F1F")
550 CALL CHAR(129,"FFFFFCFCFCFCFCFC")
560 CALL CHAR(130,"FFFF")
570 CALL CHAR(131,"1F1F0F")
580 CALL CHAR(132,"FCFCF8")
590 CALL CHAR(133,"0")
600 CALL CHAR(136,"1F0F010000000303")
610 CALL CHAR(137,"80C0C0C0C0F0F8F8")
620 CALL CHAR(138,"0303030303030101")
630 CALL CHAR(139,"F8F0F0F0F0F0E0E")
640 CALL CHAR(140,"E0C7CF7FFFFFFF")
650 CALL CHAR(141,"0080C0C0F0F0E")
660 CALL CHAR(142,"0")
670 CALL CHAR(144,"00000000040C1A19")
680 CALL CHAR(145,"090F09090F09090F")
690 CALL CHAR(146,"FE252424FF2424FF")
700 CALL CHAR(147,"00E09E92FE9292FE")
710 CALL CHAR(148,"06090906")
720 CALL CHAR(149,"0")
730 CALL CHAR(152,"000000001F1F1F1F")
740 CALL CHAR(153,"00000000F0FFFFFF")
750 CALL CHAR(154,"0000000000F0FEFE")
760 CALL CHAR(155,"1F1F1F040201")
770 CALL CHAR(156,"FFFFE2040810A04")
780 CALL CHAR(157,"090A0C0808")
790 CALL CHAR(158,"A119070101")
800 CALL CHAR(159,"0")
810 GOSUB 3070
820 TIME=0
830 MATCH=0
840 DIM HH(16),WORK(16)
850 CALL CHAR(43,"FFFFFFFFFFFFFFFF")
860 CALL CHAR(44,"0")
870 CALL SOUND(4225,44000,30)
880 CALL SOUND(4,44000,30)
890 CALL CLEAR
900 CALL SCREEN(12)
910 CALL COLOR(2,6,9)
920 GOSUB 2040
930 GOSUB 3370
940 DATA 72,79,85,83,69,87,79,82,75
950 RESTORE 940
960 FOR Y=23 TO 31
970 READ GR
980 CALL HCHAR(2,Y,GR)
990 NEXT Y
1000 DATA 77,65,84,67,72,32,50
1010 RESTORE 1000
1020 FOR Y=23 TO 29
1030 READ GR
1040 CALL HCHAR(5,Y,GR)
1050 NEXT Y
1060 DATA 76,69,84,84,69,82,83
1070 RESTORE 1060
1080 FOR Y=23 TO 29
1090 READ GR
1100 CALL HCHAR(6,Y,GR)
1110 NEXT Y
1120 CALL COLOR(8,7,1)
1130 CALL HCHAR(8,25,95)
1140 CALL HCHAR(8,27,95)
1150 CALL KEY(0,K1,ST)
1160 IF K1=83 THEN 1830
1170 IF K1<65 THEN 1150
1180 IF K1>80 THEN 1150
1190 CALL HCHAR(8,25,K1)
1200 SS=1
1210 ON(K1-64)GOSUB 5350,5390,5430,5470,5510,5550,5590,5630,5670,5710,5750,5790,5830,5870,5910,5950
1220 IF CH(1)<>0 THEN 1250
1230 GOSUB 4430
1240 GOTO 1260
1250 ON CH(1)GOSUB 2290,2400,2480,2590,2680,2770,2870,2970
1260 CALL KEY(0,K2,ST)
1270 IF K2=83 THEN 1830
1280 IF K2<65 THEN 1260
1290 IF K2>80 THEN 1260
1300 IF K2=K1 THEN 1260
1310 CALL HCHAR(8,27,K2)
1320 SS=2
1330 ON(K2-64)GOSUB 5350,5390,5430,5470,5510,5550,5590,5630,5670,5710,5750,5790,5830,5870,5910,5950
1340 IF CH(2)<>0 THEN 1380
1350 GOSUB 4430
1360 GOTO 1400
1370 IF CH(1)=0 THEN 1400
1380 ON CH(2)GOSUB 2290,2400,2480,2590,2680,2770,2870,2970
1390 IF CH(1)=CH(2)THEN 1620
1400 TIME=TIME+1
1410 IF TIME=10 THEN 1550
1420 IF TIME=12 THEN 1440
1430 GOTO 4480
1440 CALL HCHAR(22,2,32,31)
1450 DATA 79,72,32,78,79,33,32,75,73,68,83,32,65,82,69,32,72,79,77,69,33
1460 RESTORE 1450
1470 FOR Y=3 TO 23
1480 READ GR
1490 CALL HCHAR(24,Y,GR)
1500 NEXT Y
1510 GOSUB 2040
1520 GOSUB 3370
1530 TIME=0
1540 GOTO 4480
1550 DATA 83,80,69,69,68,36,32,75,73,68,83,32,87,73,76,76,32,66,69,32,72,79,77,69,32,83,79,79,78,33
1560 RESTORE 1550
1570 FOR Y=2 TO 31
1580 READ GR
1590 CALL HCHAR(22,Y,GR)
1600 NEXT Y
1610 GOTO 4480
1620 CALL SOUND(1000,440,2)
1630 MATCH=MATCH+1
1640 IF MATCH<>1 THEN 1710
1650 DATA 70,73,78,73,83,72,69,68,35
1660 RESTORE 1650
1670 FOR Y=23 TO 31
1680 READ GR
1690 CALL HCHAR(11,Y,GR)
1700 NEXT Y
1710 X=MATCH+9
1720 Y=26
1730 ON CH(1)GOSUB 3610,3700,3780,3870,4030,4110,4250,4340
1740 HH(K1-64)=0
1750 HH(K2-64)=0
1760 IF MATCH<>8 THEN 1400
1770 DATA 67,76,69,65,78,32,72,79,85,83,69,33,33
1780 RESTORE 1770
1790 FOR Y=3 TO 27 STEP 2
1800 READ GR
1810 CALL HCHAR(24,Y,GR)
1820 NEXT Y
1830 CALL HCHAR(8,25,83)
1840 GOSUB 3570
1850 FOR S=1 TO 16
1860 SS=3
1870 ON S GOSUB 5350,5390,5430,5470,5510,5550,5590,5630,5670,5710,5750,5790,5830,5870,5910,5950
1880 ON CH(SS)GOSUB 2290,2400,2480,2590,2680,2770,2870,2970
1890 NEXT S
1900 CALL HCHAR(21,3,32,6)
1910 CALL HCHAR(22,2,32,31)
1920 IF MATCH<>8 THEN 1970
1930 FOR X=2 TO 8
1940 CALL HCHAR(X,23,32,9)
1950 NEXT X
1960 GOTO 2030
1970 DATA 72,79,85,83,69,87,79,82,75,32,78,69,86,69,82,32,69,78,6,83,33
1980 RESTORE 1970
1990 FOR Y=3 TO 23
2000 READ GR
2010 CALL HCHAR(24,Y,GR)
2020 NEXT Y
2030 GOTO 2030
2040 FOR Z=1 TO 11 STEP 10
2050 FOR X=Z TO Z+4
2060 FOR Y=2 TO 12 STEP 10
2070 CALL SOUND(100,1047,2)
2080 CALL HCHAR(X,Y,43,5)
2090 CALL HCHAR(X,Y+5,44,5)
2100 CALL SOUND(100,523,2)
2110 CALL HCHAR(X+5,Y,44,5)
2120 CALL HCHAR(X+5,Y+5,43,5)
2130 NEXT Y
2140 NEXT X
2150 NEXT Z
2160 DATA 3,4,3,9,3,14,3,19,8,4,8,9,8,14,8,19,13,4,13,9,13,14,13,19,18,4,18,9,18,14,18,19
2170 RESTORE 2160
2180 FOR CC=65 TO 80
2190 READ X,Y
2200 CALL HCHAR(X,Y,CC)
2210 NEXT CC
2220 CALL HCHAR(21,3,83)
2230 CALL HCHAR(21,4,37)
2240 CALL HCHAR(21,5,83)
2250 CALL HCHAR(21,6,84)
2260 CALL HCHAR(21,7,79)
2270 CALL HCHAR(21,8,80)
2280 RETURN
2290 CALL HCHAR(X-1,Y,96)
2300 CALL HCHAR(X-1,Y-1,103)
2310 CALL HCHAR(X-1,Y+1,97)
2320 CALL HCHAR(X,Y-1,98)
2330 CALL HCHAR(X,Y,99)
2340 CALL HCHAR(X,Y+1,100)
2350 CALL HCHAR(X+1,Y-1,101)
2360 CALL HCHAR(X+1,Y,102)
2370 CALL HCHAR(X+1,Y+1,103)
2380 GOSUB 3650
2390 RETURN
2400 CALL HCHAR(X-1,Y-1,104,2)
2410 CALL HCHAR(X,Y,109)
2420 CALL HCHAR(X-1,Y+1,105)
2430 CALL HCHAR(X,Y-1,106)
2440 CALL HCHAR(X,Y+1,107)
2450 CALL HCHAR(X+1,Y-1,108,3)
2460 GOSUB 3740
2470 RETURN
2480 CALL HCHAR(X-1,Y-1,112)
2490 CALL HCHAR(X-1,Y,113)
2500 CALL HCHAR(X-1,Y+1,114)
2510 CALL HCHAR(X,Y-1,115)
2520 CALL HCHAR(X,Y,116)
2530 CALL HCHAR(X,Y+1,117)
2540 CALL HCHAR(X+1,Y-1,119)
2550 CALL HCHAR(X+1,Y+1,119)
2560 CALL HCHAR(X+1,Y,118)
2570 GOSUB 3820
2580 RETURN
2590 CALL HCHAR(X-1,Y-1,120)
2600 CALL HCHAR(X-1,Y,121)
2610 CALL HCHAR(X-1,Y+1,122)
2620 CALL HCHAR(X,Y-1,123)
2630 CALL HCHAR(X,Y,124)
2640 CALL HCHAR(X,Y+1,125)
2650 CALL HCHAR(X+1,Y-1,126,3)
2660 GOSUB 3980
2670 RETURN
2680 CALL HCHAR(X,Y-1,128)
2690 CALL HCHAR(X-1,Y-1,133,3)
2700 CALL HCHAR(X+1,Y+1,133)
2710 CALL HCHAR(X,Y,129)
2720 CALL HCHAR(X,Y+1,130)
2730 CALL HCHAR(X+1,Y-1,131)
2740 CALL HCHAR(X+1,Y,132)
2750 GOSUB 4070
2760 RETURN
2770 CALL HCHAR(X-1,Y-1,136)
2780 CALL VCHAR(X-1,Y+1,142,2)
2790 CALL HCHAR(X+1,Y-1,142)
2800 CALL HCHAR(X-1,Y,137)
2810 CALL HCHAR(X,Y-1,138)
2820 CALL HCHAR(X,Y,139)
2830 CALL HCHAR(X+1,Y,140)
2840 CALL HCHAR(X+1,Y+1,141)
2850 GOSUB 4210
2860 RETURN
2870 CALL HCHAR(X-1,Y-1,144)
2880 CALL HCHAR(X-1,Y,149,2)
2890 CALL HCHAR(X+1,Y,149)
2900 CALL HCHAR(X,Y-1,145)
2910 CALL HCHAR(X,Y,146)
2920 CALL HCHAR(X,Y+1,147)
2930 CALL HCHAR(X+1,Y-1,148)
2940 CALL HCHAR(X+1,Y+1,148)
2950 GOSUB 4290
2960 RETURN
2970 CALL HCHAR(X-1,Y-1,152)
2980 CALL HCHAR(X-1,Y,153)
2990 CALL HCHAR(X-1,Y+1,154)
3000 CALL HCHAR(X,Y-1,155)
3010 CALL HCHAR(X,Y,156)
3020 CALL HCHAR(X+1,Y-1,157)
3030 CALL HCHAR(X+1,Y,158)
3040 CALL VCHAR(X,Y+1,159,2)
3050 GOSUB 4380
3060 RETURN
3070 X=3
3080 Y=5
3090 GOSUB 2290
3100 X=4
3110 Y=16
3120 GOSUB 2400
3130 Y=27
3140 GOSUB 2480
3150 X=8
3160 Y=7
3170 GOSUB 2590
3180 X=10
3190 Y=26
3200 GOSUB 2680
3210 X=17
3220 GOSUB 2770
3230 X=16
3240 Y=15
3250 GOSUB 2870
3260 X=15
3270 Y=6
3280 GOSUB 2970
3290 CALL SOUND(300,494,2,196,7)
3300 CALL SOUND(200,440,2)
3310 CALL SOUND(200,392,2)
3320 CALL SOUND(300,440,2,185,8)
3330 CALL SOUND(200,392,3)
3340 CALL SOUND(200,370,3)
3350 CALL SOUND(1000,392,3,165,9)
3360 RETURN
3370 FOR Z=1 TO 8
3380 WORK(Z)=Z
3390 WORK(Z+8)=Z
3400 NEXT Z
3410 RANDOMIZE
3420 FOR R=1 TO 16
3430 RR=INT(16*RND)+1
3440 IF WORK(RR)=0 THEN 3430
3450 HH(R)=WORK(RR)
3460 WORK(RR)=0
3470 NEXT R
3480 FOR R=1 TO 16
3490 WORK(R)=HH(R)
3500 NEXT R
3510 MATCH=0
3520 FOR X=11 TO 18
3530 CALL HCHAR(X,23,32,9)
3540 NEXT X
3550 CALL HCHAR(24,3,32,22)
3560 RETURN
3570 FOR R=1 TO 16
3580 HH(R)=WORK(R)
3590 NEXT R
3600 RETURN
3610 CALL COLOR(9,15,7)
3620 CALL COLOR(9,7,15)
3630 CALL COLOR(9,15,7)
3640 CALL COLOR(9,7,15)
3650 CALL HCHAR(X+2,Y-1,68)
3660 CALL HCHAR(X+2,Y,85)
3670 CALL HCHAR(X+2,Y+1,83)
3680 CALL HCHAR(X+2,Y+2,84)
3690 RETURN
3700 CALL COLOR(10,12,13)
3710 CALL COLOR(10,13,12)
3720 CALL COLOR(10,12,13)
3730 CALL COLOR(10,13,12)
3740 CALL HCHAR(X+2,Y-1,83)
3750 CALL HCHAR(X+2,Y,69)
3760 CALL HCHAR(X+2,Y+1,87)
3770 RETURN
3780 CALL COLOR(11,11,14)
3790 CALL COLOR(11,14,11)
3800 CALL COLOR(11,11,14)
3810 CALL COLOR(11,14,11)
3820 CALL HCHAR(X+2,Y-1,87)
3830 CALL HCHAR(X+2,Y,65)
3840 CALL HCHAR(X+2,Y+1,83)
3850 CALL HCHAR(X+2,Y+2,72)
3860 RETURN
3870 CALL COLOR(12,3,16)
3880 CALL COLOR(12,16,3)
3890 CALL COLOR(12,3,16)
3900 CALL COLOR(12,16,3)
3910 CALL HCHAR(X+2,25,68)
3920 CALL HCHAR(X+2,26,73)
3930 CALL HCHAR(X+2,27,83)
3940 CALL HCHAR(X+2,28,72)
3950 CALL HCHAR(X+2,29,69)
3960 CALL HCHAR(X+2,30,83)
3970 RETURN
3980 CALL HCHAR(X+2,Y-1,68)
3990 CALL HCHAR(X+2,Y,73)
4000 CALL HCHAR(X+2,Y+1,83)
4010 CALL HCHAR(X+2,Y+2,72)
4020 RETURN
4030 CALL COLOR(13,12,7)
4040 CALL COLOR(13,7,12)
4050 CALL COLOR(13,12,7)
4060 CALL COLOR(13,7,12)
4070 CALL HCHAR(X+2,Y-1,67)
4080 CALL HCHAR(X+2,Y,79,2)
4090 CALL HCHAR(X+2,Y+2,75)
4100 RETURN
4110 CALL COLOR(14,8,5)
4120 CALL COLOR(14,5,8)
4130 CALL COLOR(14,8,5)
4140 CALL COLOR(14,5,8)
4150 CALL HCHAR(X+2,25,86)
4160 CALL HCHAR(X+2,26,65)
4170 CALL HCHAR(X+2,27,67)
4180 CALL HCHAR(X+2,28,85,2)
4190 CALL HCHAR(X+2,30,77)
4200 RETURN
4210 CALL HCHAR(X+2,Y-1,86)
4220 CALL HCHAR(X+2,Y,65)
4230 CALL HCHAR(X+2,Y+1,67)
4240 RETURN
4250 CALL COLOR(15,16,15)
4260 CALL COLOR(15,15,16)
4270 CALL COLOR(15,16,15)
4280 CALL COLOR(15,15,16)
4290 CALL HCHAR(X+2,Y-1,83)
4300 CALL HCHAR(X+2,Y,72)
4310 CALL HCHAR(X+2,Y+1,79)
4320 CALL HCHAR(X+2,Y+2,80)
4330 RETURN
4340 CALL COLOR(16,16,3)
4350 CALL COLOR(16,3,16)
4360 CALL COLOR(16,16,3)
4370 CALL COLOR(16,3,16)
4380 CALL HCHAR(X+2,Y-1,73)
4390 CALL HCHAR(X+2,Y,82)
4400 CALL HCHAR(X+2,Y+1,79)
4410 CALL HCHAR(X+2,Y+2,78)
4420 RETURN
4430 CALL HCHAR(X,Y-1,68)
4440 CALL HCHAR(X,Y,79)
4450 CALL HCHAR(X,Y+1,78)
4460 CALL HCHAR(X,Y+2,69)
4470 RETURN
4480 DATA 80,82,69,83,83,32,69,78,84,69,82,32,84,79,32,67,79,78,84,73,78,85,69,32
4490 RESTORE 4480
4500 FOR Y=3 TO 26
4510 READ GR
4520 CALL HCHAR(23,Y,GR)
4530 NEXT Y
4540 CALL KEY(0,KEY,ST)
4550 IF KEY<>13 THEN 4540
4560 CALL HCHAR(4,24,32,5)
4570 CALL HCHAR(23,2,32,5)
4580 ON(K1-64)GOSUB 4630,4670,4710,4750,4790,4830,4870,4910,4950,4990,5030,5070,5110,5150,5190,5230
4590 CALL HCHAR(X,Y,K1)
4600 ON(K2-64)GOSUB 4630,4670,4710,4750,4790,4830,4870,4910,4950,4990,5030,5070,5110,5150,5190,5230
4610 CALL HCHAR(X,Y,K2)
4620 GOTO 1130
4630 X=3
4640 Y=4
4650 GOSUB 5270
4660 RETURN
4670 X=3
4680 Y=9
4690 GOSUB 5310
4700 RETURN
4710 X=3
4720 Y=14
4730 GOSUB 5270
4740 RETURN
4750 X=3
4760 Y=19
4770 GOSUB 5310
4780 RETURN
4790 X=8
4800 Y=4
4810 GOSUB 5310
4820 RETURN
4830 X=8
4840 Y=9
4850 GOSUB 5270
4860 RETURN
4870 X=8
4880 Y=14
4890 GOSUB 5310
4900 RETURN
4910 X=8
4920 Y=19
4930 GOSUB 5270
4940 RETURN
4950 X=13
4960 Y=4
4970 GOSUB 5270
4980 RETURN
4990 X=13
5000 Y=9
5010 GOSUB 5310
5020 RETURN
5030 X=13
5040 Y=14
5050 IF SCORE=5 THEN 5100
5060 RETURN
5070 X=13
5080 Y=19
5090 GOSUB 5310
5100 RETURN
5110 X=18
5120 Y=4
5130 GOSUB 5310
5140 RETURN
5150 X=18
5160 Y=9
5170 GOSUB 5270
5180 RETURN
5190 X=18
5200 Y=14
5210 GOSUB 5310
5220 RETURN
5230 X=18
5240 Y=19
5250 GOSUB 5270
5260 RETURN
5270 FOR XX=X-1 TO X+2
5280 CALL HCHAR(XX,Y-1,43,4)
5290 NEXT XX
5300 RETURN
5310 FOR XX=X-1 TO X+2
5320 CALL HCHAR(XX,Y-1,44,4)
5330 NEXT XX
5340 RETURN
5350 CH(SS)=HH(1)
5360 X=3
5370 Y=4
5380 RETURN
5390 CH(SS)=HH(2)
5400 X=3
5410 Y=9
5420 RETURN
5430 CH(SS)=HH(3)
5440 X=3
5450 Y=14
5460 RETURN
5470 CH(SS)=HH(4)
5480 X=3
5490 Y=19
5500 RETURN
5510 CH(SS)=HH(5)
5520 X=8
5530 Y=4
5540 RETURN
5550 CH(SS)=HH(6)
5560 X=8
5570 Y=9
5580 RETURN
5590 CH(SS)=HH(7)
5600 X=8
5610 Y=9
5620 RETURN
5630 CH(SS)=HH(8)
5640 X=8
5650 Y=19
5660 RETURN
5670 CH(SS)=HH(9)
5680 X=13
5690 Y=4
5700 RETURN
5710 CH(SS)=HH(10)
5720 X=13
5730 Y=9
5740 RETURN
5750 CH(SS)=HH(11)
5760 X=13
5770 Y=14
5780 RETURN
5790 CH(SS)=HH(12)
5800 X=13
5810 Y=19
5820 RETURN
5830 CH(SS)=HH(13)
5840 X=18
5850 Y=4
5860 RETURN
5870 CH(SS)=HH(14)
5880 X=18
5890 Y=9
5900 RETURN
5910 CH(SS)=HH(15)
5920 X=18
5930 Y=9
5940 RETURN
5950 CH(SS)=HH(16)
5960 X=18
5970 Y=9
5980 RETURN
