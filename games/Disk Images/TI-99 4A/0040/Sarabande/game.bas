10 REM  GREG & KIM CAGLE
20 REM  501 N. DORT ST
30 REM  PLANT CITY FL 33566     1/20/83
40 CALL SCREEN(13)
50 FOR I=1 TO 8
60 CALL COLOR(I,16,13)
70 NEXT I
80 CALL CLEAR
90 PRINT TAB(8);"* SARABANDE *": : : : :TAB(13);"BY": :"  GEORGE FRIEDRICH HANDEL": : : : : : : : :
100 READ B1,C1,CS,D1,DS,E1,F1,FS,G1,GS,A2,AX,B2,C2,CT,D2,DT,E2,F2,FT,G2,GT,A3,AU,B3,C3,CU,D3,DU,E3,F3,FU
110 READ G3,GU,A4,AV,B4,C4,CV,D4,DV,E4,F4
120 DATA 110,117,123,131,139,147,156,165,175,185,196,208,220,233,247,262,277,294,311,330,349,370,392,415,440,466
130 DATA 494,523,554,587,622,659,698,740,784,831,880,932,988,1047,1109,1175,1245,1319,1397
140 A=385
150 GOSUB 2770
160 X=0
170 Y=3
180 Z=7
190 R=40000
200 P=30
210 GOSUB 1600
220 GOSUB 1700
230 CALL SOUND(B,AV,Y-1,D3,Y-1,G1,Y-1)
240 CALL SOUND(B,AV,Y-2,D3,Y-2,G2,Y-2)
250 CALL SOUND(A,G1,Y-2)
260 CALL SOUND(A,C4,Y-1,A4,Y-1,G1,Y-1)
270 CALL SOUND(B,A4,Y-1,F3,Y-1,D1,Y-1)
280 CALL SOUND(B,A4,Y,F3,Y,D1,Y)
290 CALL SOUND(A,R,P)
300 CALL SOUND(A,A4,Y-1,C2,Y-1)
310 CALL SOUND(B,D4,Y-1,A4,Y-1,AX,Y-1)
320 CALL SOUND(B,D4,Y-2,G3,Y-2,AU,Y-2)
330 CALL SOUND(A,R,P)
340 CALL SOUND(A,E4,Y-3)
350 CALL SOUND(B,CV,X,E3,X,A3,X)
360 CALL SOUND(A,CV,X+1,E3,X+1,A2,X+1)
370 CALL SOUND(A,CV,X+2,E3,X+2,G2,X+2)
380 CALL SOUND(A,F2,X+3)
390 CALL SOUND(A,E2,X+4)
400 GOSUB 1590
410 GOSUB 1800
420 CALL SOUND(A,AV,Y-2,D3,Y-2,G1,Y-2)
430 CALL SOUND(A,AV,Y-2,D3,Y-2,G2,Y-2)
440 CALL SOUND(A,AV,Y-3,C3,Y-3,E2,Y-3)
450 CALL SOUND(A,AV,Y-3,C3,Y-3,G2,Y-3)
460 CALL SOUND(A,C2,Y-3)
470 CALL SOUND(A,C4,Y-2,E2,Y-2)
480 CALL SOUND(C,A4,Y-2,C3,Y-2,F2,Y-2)
490 CALL SOUND(A,A4,Y-1,D2,Y-1)
500 CALL SOUND(A,D4,Y-1,F3,Y-1,AU,Y-1)
510 CALL SOUND(A,CV,Y-2,F3,Y-2,AU,Y-2)
520 CALL SOUND(A,D4,Y-2,AV,Y-2,G2,Y-2)
530 CALL SOUND(A,E4,Y-3,AV,Y-3,G2,Y-3)
540 CALL SOUND(B,F4,X,A4,X,A3,X)
550 CALL SOUND(A,E4,X,G3,X,A2,X)
560 CALL SOUND(A,D4,X,G3,X,A2,X)
570 CALL SOUND(B,D4,X+1,F3,X+1,D2,X+1)
580 CALL SOUND(B,D4,X+2,F3,X+2,D1,X+2)
590 CALL SOUND(B,R,P)
600 CALL SOUND(A,F3,Z,A3,Z,D2,Z)
610 CALL SOUND(A,F3,Z,A3,Z,CT,Z)
620 CALL SOUND(A,F3,Z,A3,Z,D2,Z)
630 CALL SOUND(A,F3,Z,A3,Z,E2,Z)
640 CALL SOUND(A,F3,Z,A3,Z,F2,Z)
650 CALL SOUND(A,F3,Z,A3,Z,G2,Z)
660 CALL SOUND(A,E3,Z,CU,Z,A3,Z)
670 CALL SOUND(A,E3,Z,CU,Z,G2,Z)
680 CALL SOUND(A,E3,Z,CU,Z,A3,Z)
690 CALL SOUND(A,E3,Z,CU,Z,E2,Z)
700 CALL SOUND(A,E3,Z,CU,Z,CT,Z)
710 CALL SOUND(A,E3,Z,CU,Z,A2,Z)
720 CALL SOUND(A,A4,Z,C3,Z,F2,Z)
730 CALL SOUND(A,A4,Z,C3,Z,E2,Z)
740 CALL SOUND(A,A4,Z,C3,Z,F2,Z)
750 CALL SOUND(A,A4,Z,C3,Z,G2,Z)
760 CALL SOUND(A,A4,Z,C3,Z,A3,Z)
770 CALL SOUND(A,A4,Z,C3,Z,AU,Z)
780 CALL SOUND(A,G3,Z,E3,Z,C3,Z)
790 CALL SOUND(A,G3,Z,E3,Z,G2,Z)
800 CALL SOUND(A,G3,Z,E3,Z,E2,Z)
810 CALL SOUND(A,G3,Z,E3,Z,G2,Z)
820 CALL SOUND(A,G3,Z,E3,Z,C2,Z)
830 CALL SOUND(A,G3,Z,E3,Z,E2,Z)
840 CALL SOUND(A,AV,Z,D3,Z,G2,Z)
850 CALL SOUND(A,AV,Z,D3,Z,FT,Z)
860 CALL SOUND(A,AV,Z,G3,Z,G2,Z)
870 CALL SOUND(A,AV,Z,G3,Z,A3,Z)
880 CALL SOUND(A,AV,Z,G3,Z,AU,Z)
890 CALL SOUND(A,AV,Z,G3,Z,C3,Z)
900 CALL SOUND(A,A4,Z,F3,Z,D3,Z)
910 CALL SOUND(A,A4,Z,F3,Z,A3,Z)
920 CALL SOUND(A,A4,Z,F3,Z,F2,Z)
930 CALL SOUND(A,A4,Z,F3,Z,A3,Z)
940 CALL SOUND(A,A4,Z,F3,Z,F2,Z)
950 CALL SOUND(A,A4,Z,F3,Z,D2,Z)
960 CALL SOUND(A,D4,Z,A4,Z,AX,Z)
970 CALL SOUND(A,D4,Z,A4,Z,F2,Z)
980 CALL SOUND(A,E4,Z-1,G3,Z-1,AU,Z-1)
990 CALL SOUND(A,E4,Z-2,G3,Z-2,A3,Z-2)
1000 CALL SOUND(A,E4,Z-3,G3,Z-3,G2,Z-3)
1010 CALL SOUND(A,D4,Z-4,G3,Z-4,AU,Z-4)
1020 CALL SOUND(A,CV,Z-5,E3,Z-5,A3,Z-5)
1030 CALL SOUND(A,CV,Z-5,E3,Z-5,AU,Z-5)
1040 CALL SOUND(A,CV,Z-6,E3,Z-6,A3,Z-6)
1050 CALL SOUND(A,CV,Z-6,E3,Z-6,G2,Z-6)
1060 CALL SOUND(A,CV,Z-7,E3,Z-7,F2,Z-7)
1070 CALL SOUND(A,CV,Z-7,E3,Z-7,E2,Z-7)
1080 CALL SOUND(A,F3,X,A3,X,D2,X)
1090 CALL SOUND(A,F3,X,A3,X,A2,X)
1100 CALL SOUND(A,F3,X,A3,X,F1,X)
1110 CALL SOUND(A,F3,X,A3,X,A2,X)
1120 CALL SOUND(A,F3,X,A3,X,D1,X)
1130 CALL SOUND(A,F3,X,D3,X,F1,X)
1140 CALL SOUND(A,E3,X,CU,X,A2,X)
1150 CALL SOUND(A,E3,X,CU,X,E2,X)
1160 CALL SOUND(A,E3,X,CU,X,A3,X)
1170 CALL SOUND(A,E3,X,CU,X,G2,X)
1180 CALL SOUND(A,E3,X,CU,X,F2,X)
1190 CALL SOUND(A,E3,X,CU,X,E2,X)
1200 CALL SOUND(A,A4,X,C3,X,F2,X)
1210 CALL SOUND(A,A4,X,C3,X,C2,X)
1220 CALL SOUND(A,A4,X,C3,X,A2,X)
1230 CALL SOUND(A,A4,X,C3,X,C2,X)
1240 CALL SOUND(A,A4,X,C3,X,F1,X)
1250 CALL SOUND(A,A4,X,F3,X,A2,X)
1260 CALL SOUND(A,G3,X,E3,X,C2,X)
1270 CALL SOUND(A,G3,X,E3,X,B2,X)
1280 CALL SOUND(A,G3,X,E3,X,C2,X)
1290 CALL SOUND(A,G3,X,E3,X,D2,X)
1300 CALL SOUND(A,G3,X,E3,X,E2,X)
1310 CALL SOUND(A,G3,X,E3,X,F2,X)
1320 CALL SOUND(A,AV,X,D3,X,G2,X)
1330 CALL SOUND(A,AV,X,D3,X,D2,X)
1340 CALL SOUND(A,AV,X+1,G3,X+1,AX,X+1)
1350 CALL SOUND(A,AV,X+1,G3,X+1,D2,X+1)
1360 CALL SOUND(A,AV,X+2,G3,X+2,G1,X+2)
1370 CALL SOUND(A,AV,X+2,G3,X+2,AX,X+2)
1380 CALL SOUND(A,A4,X+3,F3,X+3,D2,X+3)
1390 CALL SOUND(A,A4,X+3,F3,X+3,E2,X+3)
1400 CALL SOUND(A,A4,X+3,F3,X+3,D2,X+3)
1410 CALL SOUND(A,A4,X+2,C2,X+2)
1420 CALL SOUND(A,D4,X+2,G3,X+2,AX,X+2)
1430 CALL SOUND(A,CV,X+1,G3,X+1,A2,X+1)
1440 CALL SOUND(A,D4,X+1,AX,X+1)
1450 CALL SOUND(A,E4,X,G1,X)
1460 CALL SOUND(A,F4,X,A4,X,A2,X)
1470 CALL SOUND(A,F4,X,D4,X,A2,X)
1480 CALL SOUND(A,E4,X,CV,X,A3,X)
1490 CALL SOUND(A,E4,X,G3,X,A3,X)
1500 CALL SOUND(A,D4,X,F3,X,D3,X)
1510 CALL SOUND(A,D4,X,F3,X,A3,X)
1520 CALL SOUND(A,D4,X,F3,X,F2,X)
1530 CALL SOUND(A,D4,X,F3,X,A3,X)
1540 CALL SOUND(C*1.4,D4,X,F3,X,D2,X)
1550 FOR D=1 TO 500
1560 NEXT D
1570 CALL CLEAR
1580 GOTO 1910
1590 Y=Y*1.6
1600 CALL SOUND(B,F3,Y,A3,Y,D2,Y)
1610 CALL SOUND(B,F3,Y,A3,Y,D1,Y)
1620 CALL SOUND(A,R,P)
1630 CALL SOUND(A,G3,Y,E3,Y)
1640 CALL SOUND(B,E3,Y,CU,Y,A2,Y)
1650 CALL SOUND(A,E3,Y,CU,Y)
1660 CALL SOUND(A,E3,Y,CU,Y,AX,Y)
1670 CALL SOUND(A,A2,Y)
1680 CALL SOUND(A,G1,Y)
1690 RETURN
1700 CALL SOUND(B,A4,Y,C3,Y,F1,Y)
1710 CALL SOUND(B,A4,Y,C3,Y,F2,Y)
1720 CALL SOUND(A,R,P)
1730 CALL SOUND(A,AV,Y,G3,Y)
1740 CALL SOUND(B,G3,Y,E3,Y,C2,Y)
1750 CALL SOUND(A,G3,Y,E3,Y)
1760 CALL SOUND(A,G3,Y,E3,Y,C2,Y)
1770 CALL SOUND(A,AX,Y)
1780 CALL SOUND(A,A4,Y-1,FU,Y-1,A2,Y-1)
1790 RETURN
1800 Y=Y/1.6
1810 CALL SOUND(B,A4,Y,C3,Y,F1,Y)
1820 CALL SOUND(B,A4,Y-1,C3,Y-1,F2,Y-1)
1830 CALL SOUND(A,R,P)
1840 CALL SOUND(A,AV,Y-2,G3,Y-2)
1850 CALL SOUND(B,G3,Y-1,E3,Y-1,C2,Y-1)
1860 CALL SOUND(A,G3,Y-1,E3,Y-1)
1870 CALL SOUND(A,C2,Y)
1880 CALL SOUND(A,AX,Y)
1890 CALL SOUND(A,A4,Y-1,FU,Y-1,A2,Y-1)
1900 RETURN
1910 PRINT "  * THE JOLLY BLACKSMITH *": : : : :TAB(13);"BY": :"  GEORGE FRIEDRICH HANDEL": : : : : : : : :
1920 RESTORE
1930 READ A1,AS,B1,C1,CS,D1,DS,E1,F1,FS,G1,GS,A2,AX,B2,C2,CT,D2,DT,E2,F2,FT,G2,GT,A3,AU,B3,C3,CU,D3,DU
1940 READ E3,F3,FU,G3,GU,A4,AV
1950 A=250
1960 Z=7
1970 GOSUB 2770
1980 GOSUB 2610
1990 CALL SOUND(B,D2,Y-3,F1,Y-3)
2000 CALL SOUND(B,B3,Y-2,G1,Y-2)
2010 CALL SOUND(D,C3,Y+1,E2,Y+1,C1,Y+1)
2020 Y=Y+5
2030 GOSUB 2610
2040 CALL SOUND(B,D2,Y-5,F1,Y-5)
2050 CALL SOUND(B,B3,Y-6,G1,Y-6)
2060 CALL SOUND(D,C3,Y-6,E2,Y-6,C1,Y-6)
2070 Y=Y-5
2080 CALL SOUND(B,C3,X+1,A2,X+1)
2090 CALL SOUND(A,F3,X,F1,X)
2100 CALL SOUND(A,C3,X,F1,X)
2110 CALL SOUND(B,D3,X,AX,X)
2120 CALL SOUND(B,C3,X,A2,X)
2130 CALL SOUND(A,A3,X,F1,X)
2140 CALL SOUND(A,C3,X,F1,X)
2150 CALL SOUND(A,F3,X,A2,X)
2160 CALL SOUND(A,C3,X,A2,X)
2170 CALL SOUND(B,D3,X,AX,X)
2180 CALL SOUND(B,C3,X,A2,X)
2190 CALL SOUND(A,A3,X)
2200 CALL SOUND(A,C3,X)
2210 CALL SOUND(A,F3,X,A2,X)
2220 CALL SOUND(A,E3,X,A2,X)
2230 CALL SOUND(A,E3,X,AX,X)
2240 CALL SOUND(A,D3,X,AX,X)
2250 CALL SOUND(A,D3,X,A2,X)
2260 CALL SOUND(A,C3,X,A2,X)
2270 CALL SOUND(A,C3,X+1,G1,X+1)
2280 CALL SOUND(A,AU,X+2,G1,X+2)
2290 CALL SOUND(A/2,A3,X+3,F1,X+3)
2300 CALL SOUND(A/2,AU,X+3,F1,X+3)
2310 CALL SOUND(A,C3,X+4,F1,X+4)
2320 CALL SOUND(B,G2,X+5,E2,X+5,AX,X+5)
2330 CALL SOUND(B,G2,X+6,E2,X+6,AX,X+6)
2340 CALL SOUND(B,C3,Z-1)
2350 CALL SOUND(B,F2,Z-1,A2,Z-1)
2360 CALL SOUND(B,G2,Z,AX,Z)
2370 CALL SOUND(B,F2,Z,A2,Z)
2380 CALL SOUND(A,C3,Z)
2390 CALL SOUND(A,A3,Z)
2400 CALL SOUND(A,G2,Z,A2,Z)
2410 CALL SOUND(A,F2,Z,A2,Z)
2420 CALL SOUND(A,G2,Z,AX,Z)
2430 CALL SOUND(A,E2,Z,AX,Z)
2440 CALL SOUND(B,F2,Z,A2,Z)
2450 CALL SOUND(B,C3,Y)
2460 CALL SOUND(A,F2,Y-1,A2,Y-1)
2470 CALL SOUND(A,G2,Y-1,A2,Y-1)
2480 CALL SOUND(A,E2,Y-2,G1,Y-2)
2490 CALL SOUND(A,AU,Y-2,G1,Y-2)
2500 CALL SOUND(A,A3,Y-3,F1,Y-3)
2510 CALL SOUND(A,G2,Y-3,F1,Y-3)
2520 CALL SOUND(B*1.2,A3,Y-3,F2,Y-3,C2,Y-3)
2530 CALL SOUND(B*.98,G2,Y-3,AX,Y-3,C2,Y-3)
2540 CALL SOUND(A/1.6,F2,Y-2,AX,Y-2,C2,Y-2)
2550 CALL SOUND(D*1.6,F2,Y-1,A2,Y-1,F1,Y-1)
2560 FOR D=1 TO 750
2570 NEXT D
2580 CALL CLEAR
2590 RESTORE
2600 GOTO 80
2610 CALL SOUND(B,F2,Y,A2,Y)
2620 CALL SOUND(B,A3,Y,F1,Y)
2630 CALL SOUND(B,G2,Y,E1,Y)
2640 CALL SOUND(B,C3,Y,E1,Y)
2650 CALL SOUND(B,A3,Y,F1,Y)
2660 CALL SOUND(A,G2,Y,A2,Y)
2670 CALL SOUND(A,F2,Y,A2,Y)
2680 CALL SOUND(B,G2,Y,E1,Y)
2690 CALL SOUND(B,C3,Y,E1,Y)
2700 CALL SOUND(B,A3,Y-1,F1,Y-1)
2710 CALL SOUND(A,D3,Y-2,D1,Y-2)
2720 CALL SOUND(A,F2,Y-2,D1,Y-2)
2730 CALL SOUND(B,E2,Y-3,G1,Y-3)
2740 CALL SOUND(A,C3,Y-3,A2,Y-3)
2750 CALL SOUND(A,E2,Y-3,A2,Y-3)
2760 RETURN
2770 B=A*2
2780 C=A*3
2790 D=A*4
2800 RETURN