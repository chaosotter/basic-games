10 CLS: COLOR 12
70 RANDOMIZE TIMER
80 PRINT TAB(37); "Convoy"
90 PRINT TAB(31); "Creative Computing"
95 PRINT TAB(29); "Morristown, New Jersey": PRINT
100 COLOR 10: PRINT "Instructions (Y/N)";
110 INPUT B$
120 IF LEFT$(B$, 1) = "N" OR LEFT$(B$, 1) = "n" THEN 300
125 COLOR 14: PRINT
130 PRINT "This naval war game is played on a 10-by-10 matrix.  You are the sub; the"
140 PRINT "computer is a cargo ship and its two destroyers.  The ship starts in square 100"
145 PRINT "and randomly moves to square 1, moving 0, 1, 2, or 3 squares at a time.  One of"
150 PRINT "the ship's destroyers starts at square 78 and moves randomly 0, 1, 2, or 3"
155 PRINT "squares at a time searching for the sub.  The other destroyer stays within one"
160 PRINT "square of the ship as an escort.  The sub starts in square 1; can move up,"
165 PRINT "down, left, or right 1 square at a time, 2 moves per turn; and it has torpedoes"
170 PRINT "which it can fire 1 at a time in any straight line.  After each sub move, the"
175 PRINT "periscope will search each adjacent square for the ship.  Also, random"
200 PRINT "reconnaisance reports will be made.  The sequence of play is:"
230 PRINT: COLOR 13
240 PRINT "  1. Ship and destroyers move."
245 PRINT "  2. Your move."
250 PRINT "  3. You can fire a torpedo."
270 PRINT "  4. Periscope search."
275 PRINT "  5. Your move again. (And back to 1.)"
280 PRINT: COLOR 14
283 PRINT "The sub wins if it succeeds in hitting the ship within 4 torpedoes without"
285 PRINT "moving to a square occupied by a destroyer."
286 PRINT
287 PRINT "To 'Fire?', answer NO, L (left), R (right), U (up), D (down), LU (left up),"
288 PRINT "LD (left down), RU (right up), or RD (right down)."
290 PRINT
300 COLOR 10: PRINT "Will you need a board (Y/N)";
310 INPUT B$: COLOR 15
320 IF LEFT$(B$, 1) = "N" OR LEFT$(B$, 1) = "n" THEN 420
330 PRINT
340 PRINT: COLOR 11
350 PRINT "  1   2   3   4   5   6   7   8   9  10"
360 FOR I = 1 TO 9
370 FOR J = 1 TO 10
380 PRINT I * 10 + J;
390 NEXT J
400 PRINT
410 NEXT I
420 COLOR 15: PRINT: PRINT
440 D = 12
450 T = 4
460 S = 100
470 C = 78
480 C2 = 78
490 L = 100
500 IF C = -100 THEN 550
510 GOTO 2780
520 Y3 = 0
530 M1 = 0
540 GOTO 580
550 M1 = 0
560 IF S = 2 THEN 1230
570 Y3 = 1
580 IF S = 3 THEN 1230
590 IF S = 11 THEN 1230
600 IF S = 12 THEN 1230
610 IF S = 21 THEN 1230
620 X = RND(1)
630 IF X > .4 THEN 690
640 IF X > .2 THEN 710
650 IF X > .05 THEN 670
660 GOTO 1020
670 S1 = 0
680 GOTO 720
690 S1 = 2
700 GOTO 720
710 S1 = 1
720 X = RND(1)
730 IF X < .75 THEN 760
740 P1 = 1
750 GOTO 830
760 P1 = -1
770 GOTO 830
780 IF S = 10 * INT(S / 10) THEN 820
790 GOTO 860
800 IF S = 1 + (10 * INT(S / 10)) THEN 820
810 GOTO 860
820 P1 = P1 * (-1)
830 M2 = P1 * ((INT(2 * (RND(1))) * 9) + 1)
840 IF M2 = 1 THEN 780
850 IF M2 = -1 THEN 800
860 IF M1 = M2 * (-1) THEN 820
870 C1 = S + M2
880 IF C1 = 1 THEN 1230
890 IF C1 = D THEN 2720
900 IF C1 = C THEN 820
910 IF C1 < 1 THEN 820
920 IF C1 > 100 THEN 820
930 M1 = M2
940 S = C1
950 C6 = S + ((INT(2 * RND(1)) * (-2)) + 1) * ((INT(2 * RND(1)) * 9) + 1)
960 IF C6 < 2 THEN 950
970 IF C6 > 100 THEN 950
980 IF C6 = D THEN 2700
990 IF S1 = 1 THEN 670
1000 IF S1 = 2 THEN 710
1010 C3 = 0
1020 PRINT "Ship moved."
1030 IF Y3 = 0 THEN 1060
1040 X1 = 0
1050 GOTO 2340
1060 PRINT
1070 X1 = 1
1080 PRINT "Sub at"; STR$(D); "."
1090 PRINT "Ship last seen at"; STR$(L); "."
1100 COLOR 10: PRINT "Fire";
1110 INPUT A$: COLOR 15
1120 IF LEFT$(A$, 1) = "N" OR LEFT$(A$, 1) = "n" THEN 1730
1130 IF A$ = "L" OR A$ = "l" THEN 1250
1140 IF A$ = "R" OR A$ = "r" THEN 1270
1150 IF A$ = "U" OR A$ = "u" THEN 1290
1160 IF A$ = "D" OR A$ = "d" THEN 1310
1180 IF A$ = "LU" OR A$ = "lu" THEN 1330
1185 IF A$ = "LD" OR A$ = "ld" THEN 1350
1190 IF A$ = "RU" OR A$ = "ru" THEN 1370
1200 IF A$ = "RD" OR A$ = "rd" THEN 1390
1210 PRINT "Valid answers: NO, L, R, U, D, LU, LD, RU, or RD"
1220 GOTO 1100
1230 PRINT "Ship's in port!"
1240 GOTO 2750
1250 P1 = -1
1260 GOTO 1400
1270 P1 = 1
1280 GOTO 1400
1290 P1 = -10
1300 GOTO 1400
1310 P1 = 10
1320 GOTO 1400
1330 P1 = -11
1340 GOTO 1400
1350 P1 = 9
1360 GOTO 1400
1370 P1 = -9
1380 GOTO 1400
1390 P1 = 11
1400 D1 = D
1410 D1 = D1 + P1
1420 PRINT D1;
1430 IF D1 = S THEN 1500
1440 IF D1 = C THEN 1520
1450 IF D1 < 11 THEN 1600
1460 IF D1 > 90 THEN 1640
1470 IF D1 = 10 * INT(D1 / 10) THEN 1560
1480 IF D1 = 1 + (10 * INT(D1 / 10)) THEN 1580
1490 GOTO 1410
1500 PRINT "Ker-boom! Cargo ship destroyed!"
1502 PRINT "You win!"
1504 Q = 1
1510 GOTO 2750
1520 PRINT "Whamo! Destroyer sunk."
1530 C = -100
1540 T = T - 1
1550 GOTO 1710
1560 IF D = 10 * INT(D / 10) THEN 1410
1570 GOTO 1680
1580 IF D = 1 + (10 * INT(D / 10)) THEN 1410
1590 GOTO 1680
1600 IF D > 10 THEN 1680
1610 IF D1 < 2 THEN 1680
1620 IF D1 > 9 THEN 1680
1630 GOTO 1410
1640 IF D < 91 THEN 1680
1650 IF D1 < 92 THEN 1680
1660 IF D1 > 99 THEN 1680
1670 GOTO 1410
1680 T = T - 1
1690 PRINT "Miss!"
1700 IF T = 0 THEN 2740
1710 PRINT T; "torpedoes left."
1720 GOTO 1100
1730 PRINT
1740 Y = 0
1750 PRINT "Up periscope..."
1760 Y2 = 0
1770 IF S = D THEN 1930
1780 IF S = D - 1 THEN 1930
1790 IF S = D + 1 THEN 1930
1800 IF S = D - 10 THEN 1930
1810 IF S = D + 10 THEN 1930
1820 IF S = D - 9 THEN 1930
1830 IF S = D + 9 THEN 1930
1840 IF S = D - 11 THEN 1930
1850 IF S = D + 11 THEN 1930
1860 IF Y = 1 THEN 1960
1870 PRINT "Ship not in sight."
1880 X = RND(1)
1890 IF X < .35 THEN 1960
1900 PRINT
1910 PRINT "Recon shows ";
1920 Y2 = -1
1930 PRINT "ship at"; S
1940 Y2 = Y2 + 1
1950 L = S
1960 IF C = D THEN 2280
1970 IF C6 = D THEN 2700
1980 IF C = D + 1 THEN 2260
1990 IF C6 = D + 1 THEN 2240
2000 IF C = D - 1 THEN 2260
2010 IF C6 = D - 1 THEN 2240
2020 IF C = D + 9 THEN 2260
2030 IF C6 = D + 9 THEN 2240
2040 IF C = D - 9 THEN 2260
2050 IF C6 = D - 9 THEN 2240
2060 IF C = D + 10 THEN 2260
2070 IF C6 = D + 10 THEN 2240
2080 IF C = D - 10 THEN 2260
2090 IF C6 = D - 10 THEN 2240
2100 IF C = D + 11 THEN 2260
2110 IF C6 = D + 11 THEN 2240
2120 IF C = D - 11 THEN 2260
2130 IF C6 = D - 11 THEN 2240
2140 IF C = D + 2 THEN 2260
2150 IF C = D - 2 THEN 2260
2160 IF C = D + 20 THEN 2260
2170 IF C = D - 20 THEN 2260
2180 IF C = -100 THEN 2320
2190 IF Y = 1 THEN 2330
2200 X = RND(1)
2210 IF X < .6 THEN 2320
2220 PRINT "Recon plane spots tin can at"; STR$(C); "."
2230 GOTO 2300
2240 PRINT "Escort very near!"
2250 GOTO 2320
2260 PRINT "Destroyer closing in at"; STR$(C); "."
2270 GOTO 2300
2280 PRINT "Destroyer directly overhead."
2290 GOTO 2660
2300 C2 = C
2310 C3 = 1
2320 IF Y = 0 THEN 2340
2330 RETURN
2340 PRINT
2350 PRINT "Sub is now at"; STR$(D); "."
2360 IF C3 = 1 THEN 2390
2370 IF C = -100 THEN 2390
2380 PRINT "Destroyer last sighted at"; STR$(C2); "."
2390 D2 = 0
2400 COLOR 10: PRINT "Sub's move";
2410 Y = 1
2420 INPUT X: COLOR 15
2430 IF X = D THEN 2560
2440 IF X < 2 THEN 2640
2450 IF X > 100 THEN 2640
2460 IF X = INT(X) THEN 2480
2470 GOTO 2640
2480 IF X = D + 1 THEN 2530
2490 IF X = D - 1 THEN 2550
2500 IF X = D + 10 THEN 2560
2510 IF X = D - 10 THEN 2560
2520 GOTO 2640
2530 IF D = 10 * INT(D / 10) THEN 2640
2540 GOTO 2560
2550 IF X = 10 * INT(X / 10) THEN 2640
2560 D = X
2570 GOSUB 1760
2580 IF D2 = 1 THEN 2610
2590 D2 = 1
2600 GOTO 2400
2610 IF X1 = 0 THEN 3060
2620 IF C = -100 THEN 550
2630 GOTO 2780
2640 PRINT "Can't do."
2650 GOTO 2400
2660 X = RND(1)
2670 IF X < .8 THEN 2700
2680 PRINT "Depth charge just missed!"
2690 GOTO 2300
2700 PRINT "Varoom!! Sub depth-charged!"
2710 GOTO 2750
2720 PRINT "Ship now overhead."
2730 GOTO 550
2740 PRINT "Ammo depleted."
2750 PRINT
2751 IF Q = 0 THEN 2754
2752 Q1 = Q1 + 1
2753 GOTO 2755
2754 Q2 = Q2 + 1
2755 COLOR 13: PRINT "Score: Computer"; Q2; "-- Sub"; Q1
2756 PRINT: COLOR 15
2757 Q = 0
2760 COLOR 10: PRINT "New game (Y/N)";
2761 INPUT N$: COLOR 15
2762 IF LEFT$(N$, 1) = "N" OR LEFT$(N$, 1) = "n" THEN 3080
2770 GOTO 420
2780 M1 = 0
2790 S1 = 0
2800 X = RND(1)
2810 IF X < .6 THEN 2840
2820 P1 = 1
2830 GOTO 2850
2840 P1 = -1
2850 M2 = (P1 * ((INT(2 * RND(1))) * 9) + 1)
2860 IF M2 = 1 THEN 3000
2870 IF M2 = -1 THEN 3020
2880 IF M1 = M2 * (-1) THEN 3040
2890 C1 = C + M2
2900 IF C1 = D THEN 2700
2910 IF C1 = S THEN 3040
2920 IF C1 < 2 THEN 3040
2930 IF C1 > 100 THEN 3040
2940 M1 = M2
2950 C = C1
2960 IF S1 = 1 THEN 550
2970 S1 = 1
2980 PRINT "Destroyer has moved."
2990 GOTO 2800
3000 IF C = 10 * INT(C / 10) THEN 3040
3010 GOTO 2880
3020 IF C = 1 + (10 * INT(C / 10)) THEN 3040
3030 GOTO 2880
3040 P1 = P1 * (-1)
3050 GOTO 2850
3060 IF Y2 = 0 THEN 1060
3070 GOTO 520
3080 END

