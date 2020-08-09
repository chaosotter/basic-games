10 PRINT TAB(25); "PASART2"
20 PRINT TAB(20); "CREATIVE COMPUTING"
30 PRINT TAB(18); "MORRISTOWN, NEW JERSEY"
40 PRINT: PRINT: PRINT
50 REM *** THIS PROGRAM REQUIRES AROUND 16K FREE WORK SPACE
60 REM *** TO OBTAIN LARGER PICTURES, EXPAND THE ARRAY IN LINE
70 REM *** 110 TO P(72,72)
110 DIM P(72, 72)
130 PRINT "  THIS PROGRAM CREATES ARTIST DESIGNS BASED ON"
135 PRINT "PASCAL'S TRIANGLE."
140 PRINT "DO YOU WANT A LIST OF OPTIONS";
150 INPUT S1$
170 IF LEFT$(S1$, 1) <> "Y" THEN 630
180 PRINT "PLEASE TEAR OFF THIS LIST AND SAVE OR POST FOR FUTURE REFERENCE"
190 PRINT "---------------------------------------------------------------"
200 PRINT "1. A SINGLE PASCALS TRIANGLE PLAYED BACK LIKE THIS:"
210 PRINT "         BEFORE PRINTING     AFTER PRINTING"
220 PRINT "              1 1 1              ***"
230 PRINT "              1 2 3              * *"
240 PRINT "              1 3 6              **"
250 PRINT "2. A SINGLE PASCALS TRIANGLE PLAYED BACK LIKE THIS:"
260 PRINT "         BEFORE PRINTING     AFTER PRINTING"
270 PRINT "                1                 *"
280 PRINT "                1 1               **"
290 PRINT "                1 2 1             * *"
300 PRINT "3. A SINGLE PASCALS TRIANGLE PLAYED BACK LIKE THIS:"
310 PRINT "         BEFORE PRINTING     AFTER PRINTING"
320 PRINT "                1                  *"
330 PRINT "              1 2 1              *   *"
340 PRINT "             1 3 3 1            * * * *"
350 PRINT "4. TWO PASCALS TRIANGLES PRINTED BACK TO BACK LIKE THIS:"
360 PRINT "         BEFORE PRINTING     AFTER PRINTING"
370 PRINT "             1 1 1 0             ***"
380 PRINT "             1 2 0 1             *  *"
390 PRINT "             1 0 2 1             *  *"
400 PRINT "             0 1 1 1              ***"
405 INPUT Z$
410 PRINT "5. FOUR PASCAL TRIANGLES PRINTED IN A SQUARE LIKE THIS:"
420 PRINT "         BEFORE PRINTING     AFTER PRINTING"
430 PRINT "            1 1 1 1 1 1        ******"
440 PRINT "            1 2     2 1        *    *"
450 PRINT "            1         1        *    *"
460 PRINT "            1         1        *    *"
470 PRINT "            1 2     2 1        *    *"
480 PRINT "            1 1 1 1 1 1        ******"
490 PRINT "6. FOUR PASCALS TRIANGLES PRINTED IN A SQUARE LIKE THIS:"
500 PRINT "         BEFORE PRINTING     AFTER PRINTING"
510 PRINT "            1 1 1 1 1 1        ******"
520 PRINT "            1 2 3 3 2 1        * ** *"
530 PRINT "            1 3 6 6 3 1        **  **"
540 PRINT "            1 3 6 6 3 1        **  **"
550 PRINT "            1 2 3 3 2 1        * ** *"
560 PRINT "            1 1 1 1 1 1        ******"
570 PRINT "7. STARTING PASCALS TRIANGLE IN ANY DESIRED ROW & COLUMN"
580 PRINT "   SO THAT A USER CAN TAPE TOGETHER SEVERAL PICTURES"
590 PRINT "   TO MAKE A LARGER DESIGN.  THIS OPTION EXTENDS"
600 PRINT "   PICTURES LIKE THOSE SHOWN IN OPTION 1 IN 36 X 36 CHARACTER"
610 PRINT "   CHUNKS.  ENTRIES UP TO 1000 ROWS AND COLUMNS ARE ACCEPTED."
620 PRINT "---------------------------------------------------------------"
630 PRINT "WHAT'S YOUR PLEASURE (1,2,3,4,5,6 OR 7)";
640 INPUT O
650 IF O <= 7 AND O >= 1 THEN 660
655 PRINT "I'M SUPPOSED TO BE YOUR FRIEND, SO HOW ABOUT IT:": GOTO 630
660 PRINT "YOUR PICTURE SHOULD HIGHLIGHT THE MULTIPLES OF WHAT NUMBER";
670 INPUT Q
680 PRINT "WHAT CHARACTER WOULD YOU LIKE THE COMPUTER TO TYPE REPRESENTING"
690 PRINT "THE MULTIPLES OF "; Q; "(ENTER '' '' FOR A BLANK)";
700 INPUT S$
710 PRINT "WHAT CHARACTER WOULD  YOU LIKE THE COMPUTER TO TYPE REPRESENTING"
720 PRINT "EACH OF THE OTHER NUMBERS IN THE PATTERN (ENTER '' '' FOR A BLANK)";
730 INPUT T$
740 IF O = 7 THEN 780
750 PRINT "HOW MANY ROWS AND COLUMNS IN THE ARRAY (36 IS MAX.)";
760 INPUT T
770 IF T > 36 THEN PRINT "BE REASONABLE!": GOTO 750
780 PRINT "WOULD YOU LIKE A CALENDAR PRINTED WITH YOUR PICTURE";
800 INPUT R5$
810 IF LEFT$(R5$, 1) <> "Y" THEN 850
820 PRINT "WHAT YEAR BETWEEN 1600 AND 2300 WOULD YOU LIKE";
830 INPUT Y9
840 IF Y9 * (3099 - Y9) <= 0 THEN PRINT "EVEN I MAKE MISTAKES!": GOTO 820
850 ON O GOTO 940, 2190, 2330, 1210, 1510, 1510, 2550
920 REM TIME TO CREATE AND PRINT A SINGLE PIECE OF PASART
930 REM FIRST BUILD THE PASCALS TRIANGLE
940 FOR R = 1 TO T
950 FOR C = 1 TO T
960 IF (R - 1) * (C - 1) = 0 THEN 1010
970 P(R, C) = P(R - 1, C) + P(R, C - 1)
980 IF P(R, C) < Q * Q * Q THEN 1020
990 P(R, C) = P(R, C) - Q * Q
1000 GOTO 980
1010 P(R, C) = 1
1020 NEXT C
1030 NEXT R
1040 REM TIME TO PLAY BACK THE TRIANGLE WITH AN ARTISTIC FLARE
1050 IF O <> 3 THEN 1070
1060 LET T = T * 2 - 1
1070 FOR R = 1 TO T
1080 FOR C = 1 TO T
1090 IF P(R, C) = 0 THEN 1130
1100 IF (P(R, C) / Q - INT(P(R, C) / Q)) * Q < .95 THEN 1130
1110 PRINT T$;
1120 GOTO 1140
1130 PRINT S$;
1140 NEXT C
1150 PRINT
1160 NEXT R
1170 IF LEFT$(R5$, 1) = "Y" THEN 3260
1180 GOTO 3710
1190 REM OPTION 4 LINES 1210-1490
1200 REM TIME TO CREATE AND PRINT A DOUBLE PIECE OF PASART
1210 Z = T
1220 REM BUILD THE UPPER LEFT HAND CORNER OF THE ARRAY
1230 LET N = Z
1240 FOR R = 1 TO N
1250 FOR C = 1 TO Z - 1
1260 IF (R - 1) * (C - 1) = 0 THEN 1310
1270 P(R, C) = P(R - 1, C) + P(R, C - 1)
1280 IF P(R, C) < Q * Q * Q THEN 1320
1290 P(R, C) = P(R, C) - Q * Q
1300 GOTO 1280
1310 P(R, C) = 1
1320 NEXT C
1330 Z = Z - 1
1340 NEXT R
1350 REM BUILD THE LOWER RIGHT HALF OF THE ARRAY
1360 Z = N
1370 N = 2
1380 FOR R = Z TO 1 STEP -1
1390 FOR C = Z TO N STEP -1
1400 IF (R - Z) * (FC - Z) = 0 THEN 1450
1410 P(R, C) = P(R, C + 1) + P(R + 1, C)
1420 IF P(R, C) < Q * Q * Q THEN 1460
1430 P(R, C) = P(R, C) - Q * Q
1440 GOTO 1420
1450 P(R, C) = 1
1460 NEXT C
1470 N = N + 1
1480 NEXT R
1490 GOTO 1070
1500 REM OPTIONS 5 AND 6 LINES 1500-2120
1510 M = Q
1520 REM BUILD THE UPPER LEFT CORNER OF THE ARRAY
1530 Y = T
1540 Z = INT(Y / 2)
1550 B5 = Z * 2
1560 Z1 = Z
1570 Z2 = Z1
1580 Z3 = Z2
1590 X4 = Z3
1600 X5 = X4
1610 FOR I = 1 TO Z1
1620 FOR J = 1 TO Z
1630 IF (J - 1) * (I - 1) = 0 THEN 1680
1640 P(I, J) = P(I, J - 1) + P(I - 1, J)
1650 IF P(I, J) < Q * Q * Q THEN 1690
1660 P(I, J) = P(I, J) - Q * Q
1670 GOTO 1650
1680 P(I, J) = 1
1690 NEXT J
1700 IF O = 6 THEN 1720
1710 Z = Z - 1
1720 NEXT I
1730 N = Z1
1740 REM BUILD THE UPPER RIGHT CORNER OF THE ARRAY
1750 FOR I = 1 TO Z1
1760 FOR J = Y TO X5 + 1 STEP -1
1770 IF I = 1 THEN 1830
1780 IF J = Y THEN 1830
1790 P(I, J) = P(I, J + 1) + P(I - 1, J)
1800 IF P(I, J) < Q * Q * Q THEN 1840
1810 P(I, J) = P(I, J) - Q * Q
1820 GOTO 1800
1830 P(I, J) = 1
1840 NEXT J
1850 IF O = 6 THEN 1870
1860 X5 = X5 + 1
1870 NEXT I
1880 N = Z2
1890 REM BUILD THE LOWER LEFT CORNER OF THE ARRAY
1900 FOR I = Y TO X4 + 1 STEP -1
1910 FOR J = 1 TO Z2
1920 IF J = 1 THEN 1980
1930 IF I = Y THEN 1980
1940 P(I, J) = P(I, J - 1) + P(I + 1, J)
1950 IF P(I, J) < Q * Q * Q THEN 1990
1960 P(I, J) = P(I, J) - Q * Q
1970 GOTO 1950
1980 P(I, J) = 1
1990 NEXT J
2000 IF O = 6 THEN 2020
2010 Z2 = Z2 - 1
2020 NEXT I
2030 N = Z3
2040 REM BUILD THE LOWER RIGHT CORNER OF THE ARRAY
2050 FOR I = Y TO N + 1 STEP -1
2060 FOR J = Y TO Z3 + 1 STEP -1
2070 IF J = Y THEN 2130
2080 IF I = Y THEN 2130
2090 P(I, J) = P(I + 1, J) + P(I, J + 1)
2100 IF P(I, J) < Q * Q * Q THEN 2140
2110 P(I, J) = P(I, J) - Q * Q
2120 GOTO 2100
2130 P(I, J) = 1
2140 NEXT J
2150 IF O = 6 THEN 2170
2160 Z3 = Z3 + 1
2170 NEXT I
2180 GOTO 1070
2190 REM PASFORM C OPTION 2 LINES 2150-2260
2200 FOR R = 1 TO T
2210 FOR C = 1 TO T
2220 IF C > R THEN 2300
2230 IF (C - 1) = 0 THEN 2290
2240 IF R = C THEN 2290
2250 LET P(R, C) = P(R - 1, C - 1) + P(R - 1, C)
2260 IF P(R, C) < Q * Q * Q THEN 2300
2270 LET P(R, C) = P(R, C) - Q * Q
2280 GOTO 2260
2290 LET P(R, C) = 1
2300 NEXT C
2310 NEXT R
2320 GOTO 1040
2330 REM PASFORM A OPTION 3 LINES 2290-2480
2340 IF T <= 36 THEN 2370
2350 PRINT "MAX. OF 36 ROWS ALLOWED WITH THIS OPTION...HERE THEY COME"
2360 LET T = 36
2370 LET P(1, T) = 1
2380 FOR R = 2 TO T
2390 LET C = 1
2400 IF C > T * 2 - 1 THEN 2530
2410 IF R + C = T + 1 THEN 2470
2420 IF C = 1 THEN 2480
2430 LET P(R, C) = P(R - 1, C - 1) + P(R - 1, C + 1)
2440 IF P(R, C) < Q * Q * Q THEN 2480
2450 LET P(R, C) = P(R, C) - Q * Q
2460 GOTO 2440
2470 LET P(R, C) = 1
2480 IF R + C < T + 1 THEN 2510
2490 LET C = C + 2
2500 GOTO 2400
2510 LET C = C + 1
2520 GOTO 2400
2530 NEXT R
2540 GOTO 1040
2550 REM OPTION 7 LINES 2540-3190
2570 REM PUSHES THE BOUNDARIES WAY OUT
2580 REM NOTE THE PROTECTION AGAINST THE TIME OUT PROBLEM ON UNIV 1110
2590 PRINT "WHAT WILL BE THE COORDINATES (R,C) OF THE UPPER LEFT CORNER"
2600 PRINT "OF THIS SECTION";
2610 INPUT R1, C1
2620 DIM R(1000), C(1000)
2630 REM *** T=TIM(1)
2640 FOR L1 = 1 TO 72: FOR L2 = 1 TO 72: P(L1, L2) = 0: NEXT L2: NEXT L1
2650 FOR L2 = 1 TO 1000: R(L2) = 1: C(L2) = 1: NEXT L2
2670 IF R1 = 1 THEN 2780
2680 FOR R = 2 TO R1
2690 FOR C = 2 TO C1 + 72
2700 R(C) = R(C) + R(C - 1)
2710 IF R(C) < Q * Q * Q THEN 2740
2720 R(C) = R(C) - Q * Q
2730 GOTO 2710
2740 NEXT C
2750 REM *** IF TIM(1)-T<6 THEN 2770
2760 GOSUB 3210
2770 NEXT R
2780 IF C = 1 THEN 2900
2790 FOR C = 2 TO C1
2800 C(R1) = R(C)
2810 FOR R = R1 + 1 TO R1 + 72
2820 C(R) = C(R) + C(R - 1)
2830 IF C(R) < Q * Q * Q THEN 2860
2840 C(R) = C(R) - Q * Q
2850 GOTO 2830
2860 NEXT R
2870 REM *** IF TIM(1)-T<6 THEN 2890
2880 GOSUB 3210
2890 NEXT C
2900 FOR C = 1 TO 72
2910 P(1, C) = R(C + C1 - 1)
2920 P(C, 1) = C(C + R1 - 1)
2930 NEXT C
2940 FOR R = 2 TO 72
2950 FOR C = 2 TO 72
2960 P(R, C) = P(R - 1, C) + P(R, C - 1)
2970 IF P(R, C) < Q * Q * Q THEN 3000
2980 P(R, C) = P(R, C) - Q * Q
2990 GOTO 2970
3000 NEXT C
3010 REM *** IF TIM(1)-T<6 THEN 3030
3020 GOSUB 3210
3030 NEXT R
3040 GOSUB 3210
3050 PRINT
3060 PRINT
3070 FOR R = 1 TO 70
3080 FOR C = 1 TO 70
3090 IF (P(R, C) / Q - INT(P(R, C) / Q)) * Q < .98 THEN 3120
3100 PRINT T$;
3110 GOTO 3130
3120 PRINT S$;
3130 NEXT C
3140 REM *** IF TIM(1)-T<6 THEN 3160
3150 GOSUB 3210
3160 PRINT
3170 NEXT R
3180 PRINT
3190 PRINT
3200 GOTO 1170
3210 PRINT " ";
3220 REM *** LINPUT A$
3230 REM *** T=TIM(1)
3240 RETURN
3250 GOTO 1170
3260 REM CALENDAR
3270 LET X = Y9
3280 REM LINES 3240-3640 PRODUCE A CALENDAR
3290 REM PROGRAM IS A SUBROUTINE THAT USES VARIABLE X=YEAR OF CALENDAR
3300 REM
3310 C = 6
3320 FOR J = 1600 TO X STEP 1
3330 IF J = X THEN 3390
3340 IF J / 4 <> INT(J / 4) THEN 3380
3350 IF (J - 1700) * (J - 1800) * (J - 1900) * (J - 2100) * (J - 2200) * (J - 2300) = 0 THEN 3380
3360 C = C + 2
3370 GOTO 3390
3380 C = C + 1
3390 IF C < 7 THEN 3410
3400 C = C - 7
3410 NEXT J
3420 PRINT
3430 FOR R = 1 TO 12
3440 READ A$
3450 PRINT TAB(17); A$; " "; X
3460 READ B
3470 IF X / 4 <> INT(X / 4) THEN 3500
3480 IF A$ <> "FEBRUARY" THEN 3500
3490 LET B = B + 1
3500 REM TIME TO PRINT THE CALENDAR FOR THE YEAR X
3510 PRINT "========================================="
3520 PRINT "!SUN   MON   TUE   WED   THU   FRI   SAT!"
3530 PRINT "========================================="
3540 FOR D = 1 TO B
3550 PRINT TAB(6 * C + 1); D;
3560 LET C = C + 1
3570 IF C < 7 THEN 3600
3580 PRINT
3590 C = 0
3600 NEXT D
3610 PRINT
3620 PRINT "========================================="
3630 FOR P = 1 TO 3
3640 PRINT
3650 NEXT P
3660 NEXT R
3670 DATA "JANUARY",31,"FEBRUARY",28,"MARCH",31,"APRIL",30,"MAY",31
3680 DATA "JUNE",30,"JULY",31,"AUGUST",31,"SEPTEMBER",30,"OCTOBER",31
3690 DATA "NOVEMBER",30,"DECEMBER",31
3700 REM THE END
3710 END

