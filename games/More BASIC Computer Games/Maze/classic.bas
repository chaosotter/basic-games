10 PRINT TAB(27); "MAZE"
20 PRINT TAB(20); "CREATIVE COMPUTING"
30 PRINT TAB(18); "MORRISTOWN, NEW JERSEY"
40 PRINT: PRINT: PRINT
50 RANDOMIZE TIMER
100 REM  MOUSE IN MAZE - SOLUTION SECTION BY RICHARD SCHAAL FMCC
110 REM  ORIGINAL MAZE PROGRAM FROM "101 BASIC COMPUTER GAMES"
120 PRINT "DO YOU NEED INSTRUCTIONS";: INPUT A$
130 IF LEFT$(A$, 1) = "Y" THEN 150
140 GOTO 200
150 PRINT: PRINT: PRINT "THIS PROGRAM WILL SIMULATE A NEAR-SIGHTED MOUSE IN"
160 PRINT "A MAZE.  YOU SELECT THE DIFFICULTY FACTOR - SIZE!"
170 PRINT "YOU MAY HAVE A MAZE OF ANY SIZE PERMITTED BY THE SIZE OF YOUR"
180 PRINT "SYSTEM. DIMENSIONS LESS THAN 5 ARE TOO TRIVIAL."
190 PRINT "EACH MAZE IS DIFFERENT, AND HAS ONLY ONE WAY THROUGH IT."
200 PRINT
210 PRINT "WHAT ARE YOUR DIMENSIONS (HORIZONTAL, VERTICAL)";
220 CLEAR 100: REM ERASE ALL ARRAYS AND VARIABLE VALUES
230 INPUT H, V
240 H = INT(ABS(H)): V = INT(ABS(V))
250 IF H >= 5 AND V >= 5 THEN 270
260 GOTO 150
270 DIM W(H, V), V(H, V)
280 PRINT: PRINT
290 Q = 0: Z = 0
300 X = INT(RND(1) * H + 1)
310 FOR I = 1 TO H
320 IF I = X THEN 350
330 PRINT ":--";
340 GOTO 360
350 PRINT ":  ";
360 NEXT I
370 PRINT ":"
380 C = 1: W(X, 1) = C: C = C + 1: R = X: S = 1
390 GOTO 470
400 IF R <> H THEN 450
410 IF S <> V THEN 440
420 R = 1: S = 1
430 GOTO 460
440 R = 1: S = S + 1: GOTO 460
450 R = R + 1
460 IF W(R, S) = 0 THEN 400
470 IF R = 1 THEN 830
480 IF W(R - 1, S) > 0 THEN 830
490 IF S = 1 THEN 640
500 IF W(R, S - 1) <> 0 THEN 640
510 IF R = H THEN 550
520 IF W(R + 1, S) > 0 THEN 550
530 X = INT(RND(1) * 3 + 1)
540 ON X GOTO 1200, 1240, 1280
550 IF S <> V THEN 590
560 IF Z = 1 THEN 620
570 Q = 1
580 GOTO 600
590 IF W(R, S + 1) > 0 THEN 620
600 X = INT(RND(1) * 3 + 1)
610 ON X GOTO 1200, 1240, 1370
620 X = INT(RND(1) * 2 + 1)
630 ON X GOTO 1200, 1240
640 IF R = H THEN 750
650 IF W(R + 1, S) > 0 THEN 750
660 IF S <> V THEN 700
670 IF Z = 1 THEN 730
680 Q = 1
690 GOTO 710
700 IF W(R, S + 1) > 0 THEN 730
710 X = INT(RND(1) * 3 + 1)
720 ON X GOTO 1200, 1280, 1370
730 X = INT(RND(1) * 2 + 1)
740 ON X GOTO 1200, 1280
750 IF S <> V THEN 790
760 IF Z = 1 THEN 820
770 Q = 1
780 GOTO 800
790 IF W(R, S + 1) > 0 THEN 820
800 X = INT(RND(1) * 2 + 1)
810 ON X GOTO 1200, 1370
820 GOTO 1200
830 IF S = 1 THEN 1040
840 IF W(R, S - 1) > 0 THEN 1040
850 IF R = H THEN 960
860 IF W(R + 1, S) > 0 THEN 960
870 IF S <> V THEN 910
880 IF Z = 1 THEN 940
890 Q = 1
900 GOTO 920
910 IF W(R, S + 1) > 0 THEN 940
920 X = INT(RND(1) * 3 + 1)
930 ON X GOTO 1240, 1280, 1370
940 X = INT(RND(1) * 2 + 1)
950 ON X GOTO 1240, 1280
960 IF S <> V THEN 1000
970 IF Z = 1 THEN 1030
980 Q = 1
990 GOTO 1010
1000 IF W(R, S + 1) > 0 THEN 1030
1010 X = INT(RND(1) * 2 + 1)
1020 ON X GOTO 1240, 1370
1030 GOTO 1240
1040 IF R = H THEN 1140
1050 IF W(R + 1, S) > 0 THEN 1140
1060 IF S <> V THEN 1100
1070 IF Z = 1 THEN 1130
1080 Q = 1
1090 GOTO 1110
1100 IF W(R, S + 1) > 0 THEN 1130
1110 X = INT(RND(1) * 2 + 1)
1120 ON X GOTO 1280, 1370
1130 GOTO 1280
1140 IF S <> V THEN 1180
1150 IF Z = 1 THEN 400
1160 Q = 1
1170 GOTO 1190
1180 IF W(R, S + 1) > 0 THEN 400
1190 GOTO 1370
1200 W(R - 1, S) = C: C = C + 1: V(R - 1, S) = 2: R = R - 1
1210 IF C = H * V + 1 THEN 1510
1220 Q = 0
1230 GOTO 470
1240 W(R, S - 1) = C: C = C + 1: V(R, S - 1) = 1: S = S - 1
1250 IF C = H * V + 1 THEN 1510
1260 Q = 0
1270 GOTO 470
1280 W(R + 1, S) = C: C = C + 1
1290 IF V(R, S) = 0 THEN 1320
1300 V(R, S) = 3
1310 GOTO 1330
1320 V(R, S) = 2
1330 R = R + 1
1340 IF C = H * V + 1 THEN 1510
1350 Q = 0
1360 GOTO 830
1370 IF Q = 1 THEN 1470
1380 W(R, S + 1) = C
1390 C = C + 1
1400 IF V(R, S) = 0 THEN 1430
1410 V(R, S) = 3
1420 GOTO 1440
1430 V(R, S) = 1
1440 S = S + 1
1450 IF C = H * V + 1 THEN 1510
1460 GOTO 470
1470 Z = 1
1480 IF V(R, S) = 0 THEN 1500
1490 V(R, S) = 3: Q = 0: GOTO 400
1500 V(R, S) = 1: Q = 0: R = 1: S = 1: GOTO 460
1510 IF Z = 1 THEN 1540
1520 R = INT(RND(1) * H) + 1: S = V
1530 V(R, S) = V(R, S) + 1
1540 GOSUB 2320
1550 PRINT "DO YOU WANT THE SOLUTION";: INPUT A$
1560 IF LEFT$(A$, 1) <> "Y" THEN 2620
1570 PRINT "DO YOU WANT TO SEE EACH STEP";: INPUT A$: PRINT: PRINT
1580 FOR I = 1 TO H: IF W(I, 1) = 1 THEN S = I: GOTO 1720
1590 NEXT I
1600 REM NOW WE CAN CLEAR W ARRAY AS ENTRY POINT IS FOUND.
1610 REM ELEMENTS IN V ARE EITHER 0,1,2 OR 3
1620 REM 0 IS CLOSED ON THE RIGHT AND AT THE BOTTOM
1630 REM 1 IS CLOSED ON THE RIGHT
1640 REM 2 IS CLOSED ON THE BOTTOM
1650 REM 3 IS OPEN ON THE RIGHT AND AT THE BOTTOM
1660 REM DIRECTIONS WILL BE CODED:
1670 REM  1 : UP
1680 REM  2 : DOWN
1690 REM  4 : RIGHT
1700 REM  8 : LEFT
1710 REM SCAN V ARRAY FOR POSSIBLE MOVES IN ALL DIRECTIONS
1720 FOR I = 1 TO H: FOR J = 1 TO V
1730 W(I, J) = 0
1740 REM TRY UP
1750 IF J = 1 THEN 1780
1760 IF V(I, J - 1) = 1 OR V(I, J - 1) = 3 THEN W(I, J) = W(I, J) + 1
1770 REM TRY DOWN
1780 IF J = V THEN 1810
1790 IF V(I, J) = 1 OR V(I, J) = 3 THEN W(I, J) = W(I, J) + 2
1800 REM TRY RIGHT
1810 IF I = H THEN 1840
1820 IF V(I, J) = 2 OR V(I, J) = 3 THEN W(I, J) = W(I, J) + 4
1830 REM TRY LEFT
1840 IF I = 1 THEN 1860
1850 IF V(I - 1, J) = 2 OR V(I - 1, J) = 3 THEN W(I, J) = W(I, J) + 8
1860 NEXT J
1870 NEXT I
1880 FOR I = 1 TO H
1890 IF V(I, V) = 1 OR V(I, V) = 3 THEN W(I, V) = W(I, V) + 2: E = I: GOTO 1920
1900 NEXT I
1910 REM HAVE TO GO DOWN FIRST
1920 Y = 1: X = S
1930 V(X, Y) = V(X, Y) + 4
1940 REM CHECK FOR POSSIBLE DIRECTIONS NOW...
1950 IF Y = V AND X = E THEN PRINT: GOSUB 2250: PRINT: PRINT: GOTO 2620
1960 GOSUB 2230
1970 REM CHECK POSSIBLE DIRECTIONS
1980 IF (W(X, Y) AND 2) <> 0 THEN 2030
1990 IF (W(X, Y) AND 4) <> 0 THEN 2080
2000 IF (W(X, Y) AND 8) <> 0 THEN 2130
2010 IF (W(X, Y) AND 1) <> 0 THEN 2180
2020 GOTO 1950
2030 IF (V(X, Y + 1) > 3) AND ((W(X, Y) AND 13) = 0) THEN 2060
2040 IF V(X, Y + 1) > 3 THEN 1990
2050 Y = Y + 1: V(X, Y) = V(X, Y) + 4: GOTO 1950
2060 V(X, Y) = V(X, Y) - 4: W(X, Y) = (W(X, Y) AND 13): Y = Y + 1: W(X, Y) = (W(X, Y) AND 14)
2070 GOTO 1950
2080 IF (V(X + 1, Y) > 3) AND ((W(X, Y) AND 11) = 0) THEN 2110
2090 IF V(X + 1, Y) > 3 THEN 2000
2100 X = X + 1: V(X, Y) = V(X, Y) + 4: GOTO 1950
2110 V(X, Y) = V(X, Y) - 4: W(X, Y) = (W(X, Y) AND 11): X = X + 1: W(X, Y) = (W(X, Y) AND 7)
2120 GOTO 1950
2130 IF (V(X - 1, Y) > 3) AND ((W(X, Y) AND 7) = 0) THEN 2160
2140 IF V(X - 1, Y) > 3 THEN 2010
2150 X = X - 1: V(X, Y) = V(X, Y) + 4: GOTO 1950
2160 V(X, Y) = V(X, Y) - 4: W(X, Y) = (W(X, Y) AND 7): X = X - 1: W(X, Y) = (W(X, Y) AND 11)
2170 GOTO 1950
2180 IF (V(X, Y - 1) > 3) AND ((W(X, Y) AND 14) = 0) THEN 2210
2190 IF V(X, Y - 1) > 3 THEN 1980
2200 Y = Y - 1: V(X, Y) = V(X, Y) + 4: GOTO 1950
2210 V(X, Y) = V(X, Y) - 4: W(X, Y) = (W(X, Y) AND 14): Y = Y - 1: W(X, Y) = (W(X, Y) AND 13)
2220 GOTO 1950
2230 IF LEFT$(A$, 1) <> "Y" THEN RETURN
2240 PRINT
2250 FOR I = 1 TO H
2260 IF I = S THEN 2290
2270 PRINT ":--";
2280 GOTO 2300
2290 PRINT ":**";
2300 NEXT I
2310 PRINT ":"
2320 FOR J = 1 TO V
2330 PRINT "I";
2340 FOR I = 1 TO H
2350 IF V(I, J) > 3 THEN Z = V(I, J) - 4: GOTO 2370
2360 Z = V(I, J)
2370 IF Z < 2 THEN 2420
2380 IF Z <> V(I, J) AND V(I + 1, J) > 3 THEN PRINT "***";: GOTO 2440
2390 IF Z <> V(I, J) THEN PRINT "** ";: GOTO 2440
2400 PRINT "   ";
2410 GOTO 2440
2420 IF Z <> V(I, J) THEN PRINT "**I";: GOTO 2440
2430 PRINT "  I";
2440 NEXT I
2450 PRINT
2460 FOR I = 1 TO H
2470 IF V(I, J) > 3 THEN Z = V(I, J) - 4: GOTO 2490
2480 Z = V(I, J)
2490 IF Z = 0 THEN 2560
2500 IF Z = 2 THEN 2560
2510 IF Z <> V(I, J) AND J = V THEN PRINT ":**";: GOTO 2570
2520 IF J = V THEN 2540
2530 IF Z <> V(I, J) AND V(I, J + 1) > 3 THEN PRINT ":**";: GOTO 2570
2540 PRINT ":  ";
2550 GOTO 2570
2560 PRINT ":--";
2570 NEXT I
2580 PRINT ":"
2590 NEXT J
2600 PRINT: PRINT
2610 RETURN
2620 PRINT: PRINT: PRINT "DO YOU WANT ANOTHER MAZE";: INPUT A$
2630 IF LEFT$(A$, 1) = "Y" THEN PRINT: GOTO 210
2640 PRINT: END

