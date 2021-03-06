1 CLS: COLOR 12
5 PRINT TAB(35); "Bridge-It"
10 PRINT TAB(31); "Creative Computing"
20 PRINT TAB(29); "Morristown, New Jersey"
30 I = I - 2
42 PRINT: COLOR 15
50 PRINT
70 COLOR 10: PRINT "Do you want instructions (Y/N)";
80 INPUT B4$: COLOR 15
90 PRINT
100 IF LEFT$(B4$, 1) = "N" OR LEFT$(B4$, 1) = "n" THEN 300
110 COLOR 14
120 PRINT "The object of this game is for you to go from the left column to the right"
130 PRINT "column by connecting the O's.  The computer must go from the top to the bottom"
140 PRINT "by connecting the X's."
150 PRINT
160 PRINT "You make your moves by typing in the coordinates (X,Y) or (column,row) of the"
170 PRINT "'O' you wish to move from after the computer types:"
180 PRINT
190 PRINT TAB(10); "Your move from?"
200 PRINT
210 PRINT "And by typing in the coordinates of the 'O' you wish to move to after the"
220 PRINT "types:"
230 PRINT
240 PRINT TAB(10); "To?"
250 PRINT
260 PRINT "You can move either vertically or horizontally, but not diagonally.  You"
270 PRINT "cannot move vertically in either the first column or the thirteenth column."
280 PRINT "The computer will move first."
290 PRINT: COLOR 13: PRINT "Press any key": COLOR 15
295 B4$ = INKEY$: IF B4$ = "" THEN 295
300 DIM X(20, 20)
320 DIM O(20, 20)
330 DIM T(20, 20)
340 FOR X = 1 TO 13 STEP 2
350 FOR Y = 2 TO 12 STEP 2
360 O(X, Y) = 1
370 X(Y, X) = 1
380 NEXT Y
390 NEXT X
410 PRINT
420 CLS
490 IF E <> 5 THEN 510
500 GOTO 3010
510 GOSUB 1640: REM COMPUTER MOVE
520 GOSUB 640: REM COMPUTER WIN SUBROUTINE
525 GOSUB 990: REM PRINT BOARD
530 PRINT
540 IF E = 5 THEN 490
550 GOSUB 2710: REM PLAYER WIN SUBROUTINE
560 PRINT
570 COLOR 10: PRINT "Your move from";
580 INPUT F, G: COLOR 15
590 COLOR 10: PRINT "to";
600 INPUT F1, G1: COLOR 15
610 PRINT
620 GOSUB 2220: REM ERROR AND CHANGE BOARD SUBROUTINE
630 GOTO 420
640 REM WIN SUBROUTINE **********************************************
650 REM FIRST TEST
660 FOR H = 1 TO 11 STEP 2
670 J = 12
680 IF O(H, J) = 3 THEN 710
690 NEXT H
700 GOTO 980
710 FOR I = 1 TO 11 STEP 2
720 J = 2
730 IF O(I, J) = 3 THEN 760
740 NEXT I
750 GOTO 980
760 REM OTHER TESTS
770 J = J + 2
780 IF J = 12 THEN 960
790 IF O(I, J) = 3 THEN 870
800 IF O(I + 1, J + 1) = 2 THEN 890
810 IF I - 1 < 0 THEN 840
820 IF O(I - 1, J - 1) = 2 THEN 920
830 IF X(I + 1, J + 1) = 2 THEN 890
840 IF I - 1 < 0 THEN 980
850 IF X(I - 1, J - 1) THEN 890
860 GOTO 740
870 J = J + 2
880 GOTO 780
890 J = J
900 I = I + 2
910 GOTO 780
920 J = J
950 GOTO 980
960 PRINT "I win!!!"
970 E = 5
980 RETURN
990 REM PRINT BOARD SUBROUTINE **************************************
1140 PRINT
1150 D = 0
1160 COLOR 13: PRINT TAB(23); "1 1 1 1"
1170 PRINT TAB(5); "1 2 3 4 5 6 7 8 9 0 1 2 3": COLOR 15
1180 FOR Y = 13 TO 1 STEP -1
1190 IF Y < 10 THEN 1220
1200 COLOR 13: PRINT Y;: COLOR 15
1210 GOTO 1230
1220 COLOR 13: PRINT " "; Y;: COLOR 15
1230 FOR X = 1 TO 13 STEP 1
1240 IF Y / 2 = INT(Y / 2) THEN 1330
1250 IF X(X, Y) = 0 THEN 1420
1260 ON X(X, Y) GOTO 1270, 1290, 1310
1270 PRINT "X   ";
1280 GOTO 1450
1290 PRINT "X";: COLOR 12: PRINT CHR$(196); CHR$(196); CHR$(196);: COLOR 15
1300 GOTO 1450
1310 PRINT "X ";: COLOR 10: PRINT CHR$(179); " ";: COLOR 15
1320 GOTO 1450
1330 D = 0
1340 IF O(X, Y) = 0 THEN 1450
1350 ON O(X, Y) GOTO 1360, 1380, 1400
1360 PRINT "O   ";
1370 GOTO 1450
1380 PRINT "O";: COLOR 10: PRINT CHR$(196); CHR$(196); CHR$(196);: COLOR 15
1390 GOTO 1450
1400 PRINT "O ";: COLOR 12: PRINT CHR$(179); " ";: COLOR 15
1410 GOTO 1450
1420 D = D + 1
1430 IF D > 1 THEN 1450
1440 PRINT "  ";
1450 NEXT X
1460 GOSUB 1620
1470 NEXT Y
1480 COLOR 13: PRINT TAB(5); "1 2 3 4 5 6 7 8 9 1 1 1 1"
1490 PRINT TAB(23); "0 1 2 3": COLOR 15
1590 PRINT
1610 RETURN
1620 PRINT
1630 RETURN
1640 REM COMPUTER MOVE SUBROUTINE ***********************************
1650 B = B + 1
1660 IF B > 1 THEN 1710
1670 O(1, 2) = 3
1680 PRINT "I move from 2, 1 to 2, 3."
1690 B1 = B1 + 1
1700 IF B1 > 1 THEN 1890
1710 FOR C = 3 TO 11 STEP 2
1720 T(C, C + 1) = 1
1730 T(C - 2, C + 1) = 1
1740 GOTO 1790
1750 NEXT C
1760 T(2, 3) = 3
1770 T(7, 12) = 2
1780 GOTO 1890
1790 FOR Q = C + 3 TO 12 STEP 2
1800 T(C - 2, Q) = 2
1810 T(C - 1, Q + 1) = 2
1820 T(C - 1, Q - 1) = 2
1830 NEXT Q
1840 FOR S = C TO 3 STEP -2
1850 T(C - 1, S) = 3
1860 T(C, S - 1) = 3
1870 NEXT S
1880 GOTO 1750
1890 IF F > F1 THEN 1950
1900 IF F <> F1 THEN 1920
1910 IF G > G1 THEN 1950
1920 X = F
1930 Y = G
1940 GOTO 1970
1950 X = F1
1960 Y = G1
1970 IF T(X, Y) = 0 THEN 2210
1980 IF F <> F1 THEN 2000
1990 ON T(X - 1, Y + 1) GOTO 2010, 2080, 2150
2000 ON T(X, Y) GOTO 2010, 2080, 2150
2010 IF X = Y - 1 THEN 2050
2020 O(X + 2, Y) = 3
2030 PRINT "I move from"; STR$(X + 3); ","; Y - 1; "to"; STR$(X + 3); ","; Y + 1
2040 GOTO 2210
2050 O(X - 2, Y) = 3
2060 PRINT "I move from"; STR$(X - 1); ","; Y - 1; "to"; STR$(X - 1); ","; Y + 1
2070 GOTO 2210
2080 IF X(X - 1, Y + 1) = 3 THEN 2120
2090 X(X + 1, Y - 1) = 2
2100 PRINT "I move from"; STR$(X + 1); ","; Y - 1; "to"; STR$(X + 3); ","; Y - 1
2110 GOTO 2210
2120 O(X - 2, Y + 2) = 3
2130 PRINT "I move from"; STR$(X - 1); ","; Y + 1; "to"; STR$(X - 1); ","; Y + 3
2140 GOTO 2210
2150 IF X(X - 1, Y + 1) = 3 THEN 2190
2160 X(X - 1, Y + 1) = 2
2170 PRINT "I move from"; STR$(X - 1); ","; Y + 1; "to"; STR$(X + 1); ","; Y + 1
2180 GOTO 2210
2190 O(X, Y) = 3
2200 PRINT "I move from"; STR$(X + 1); ","; Y - 1; "to"; STR$(X + 1); ","; Y + 1
2210 RETURN
2220 REM ERROR AND CHANGE BOARD SUBROUTINE***************************
2230 IF F <> F1 THEN 2280
2240 IF F = 1 THEN 2630
2250 IF F = 13 THEN 2630
2260 IF F1 = 13 THEN 2630
2270 IF G = G1 THEN 2630
2280 IF F / 2 = INT(F / 2) THEN 2630
2290 IF F > 13 THEN 2630
2300 IF G > 12 THEN 2630
2310 IF G / 2 <> INT(G / 2) THEN 2630
2320 IF F <> INT(F) THEN 2630
2330 IF F < 1 THEN 2630
2340 IF G < 1 THEN 2630
2350 IF F1 / 2 = INT(F1 / 2) THEN 2630
2360 IF F1 > 13 THEN 2630
2370 IF G1 > 12 THEN 2630
2380 IF G1 / 2 <> INT(G1 / 2) THEN 2630
2390 IF F1 <> INT(F1) THEN 2630
2400 IF G1 < 1 THEN 2630
2410 IF F = F1 THEN 2530
2420 IF G <> G1 THEN 2630
2430 IF ABS(F - F1) <> 2 THEN 2630: REM PRINT ERROR
2440 IF F > F1 THEN 2490
2450 IF O(F, G) = 2 THEN 2630
2460 IF O(F, G) = 3 THEN 2630
2470 O(F, G) = 2
2480 GOTO 2700: REM RETURN
2490 IF O(F1, G1) = 2 THEN 2630
2500 IF O(F1, G1) = 3 THEN 2630
2510 O(F1, G1) = 2
2520 GOTO 2700: REM RETURN
2530 IF ABS(G - G1) <> 2 THEN 2630: REM PRINT ERROR
2540 IF G > G1 THEN 2590
2550 IF X(F - 1, G + 1) = 2 THEN 2630
2560 IF X(F - 1, G + 1) = 3 THEN 2630
2570 X(F - 1, G + 1) = 3
2580 GOTO 2700: REM RETURN
2590 IF X(F1 - 1, G1 + 1) = 2 THEN 2630
2600 IF X(F1 - 1, G1 + 1) = 3 THEN 2630
2610 X(F1 - 1, G1 + 1) = 3
2620 GOTO 2700: REM RETURN
2630 PRINT "Invalid move -- try again."
2650 COLOR 10: PRINT "Your move from";
2660 INPUT F, G: COLOR 15
2670 COLOR 10: PRINT "To";
2680 INPUT F1, G1: COLOR 15
2690 GOTO 2220
2700 RETURN
2710 REM PLAYER WIN ROUTINE *****************************************
2720 FOR H = 1 TO 11 STEP 2
2730 I = 12
2740 IF X(I, H) = 3 THEN 2770
2750 NEXT H
2760 GOTO 3000
2770 FOR J = 1 TO 11 STEP 2
2780 I = 2
2790 IF X(I, J) = 3 THEN 2820
2800 NEXT J
2810 GOTO 3000
2820 I = I + 2
2830 IF I = 12 THEN 2970
2840 IF X(I, J) = 3 THEN 2910
2850 IF X(I + 1, J + 1) = 2 THEN 2930
2860 IF J - 1 < 0 THEN 2890
2870 IF X(I - 1, J - 1) = 2 THEN 2950
2880 IF O(I + 1, J + 1) = 2 THEN 2930
2890 IF J - 1 < 0 THEN 3000
2900 GOTO 2830
2910 I = I + 2
2920 GOTO 2830
2930 J = J + 2
2940 GOTO 2830
2950 J = J - 2
2960 GOTO 2830
2970 IF O(1, 2) <> 2 THEN 3000
2980 PRINT "You win!!!  Congratulations!!!"
2990 E = 5
3000 RETURN
3010 END

