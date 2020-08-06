5 CLS: COLOR 12
10 PRINT TAB(37); "Dodgem"
20 PRINT TAB(31); "Creative Computing"
30 PRINT TAB(29); "Morristown, New Jersey"
40 PRINT: PRINT: PRINT: COLOR 15
50 RANDOMIZE TIMER
240 COLOR 10: PRINT "Do you want instructions for Dodgem (Y/N)";
250 INPUT A$: COLOR 15
260 GOSUB 2950
270 IF LEFT$(A$, 1) <> "Y" AND LEFT$(A$, 1) <> "y" THEN 290
280 GOSUB 3130
290 COLOR 10: PRINT "Board size (3-6)";
300 INPUT A: COLOR 15
310 LET A = INT(A)
320 IF (6 - A) * (A - 3) >= 0 THEN 340
330 GOTO 290
340 LET P(1, 0) = A - 1: LET P(2, 0) = A - 1
380 FOR J = 1 TO A - 1
390 LET P(1, J) = 10 * J + 1
400 NEXT J
420 FOR J = 1 TO A - 1
430 LET P(2, J) = 10 * A + J + 1
440 NEXT J
460 LET F = 1
470 LET M$(1) = "NES"
480 LET M$(2) = "NE W"
490 LET C$(1) = "Digits"
500 LET C$(2) = "Letters"
510 LET A$(1) = "1234567"
520 LET A$(2) = "ABCDEFG"
560 FOR J = 1 TO A
570 IF J = A THEN 630
580 LET D$(J, 1) = CHR$(48 + J)
590 FOR K = 2 TO A
600 LET D$(J, K) = "."
610 NEXT K
620 GOTO 670
630 LET D$(J, 1) = "."
640 FOR K = 2 TO A
650 LET D$(J, K) = CHR$(63 + K)
660 NEXT K
670 NEXT J
690 COLOR 10: PRINT "How many players (1 or 2)";
700 INPUT B: COLOR 15
710 IF B = 2 THEN 800
720 IF B = 1 THEN 740
730 GOTO 690
740 PRINT "Okay, the computer will move the digits."
750 COLOR 10: PRINT "Who moves first (1=Computer, 2=You)";
760 INPUT F: COLOR 15
770 IF (2 - F) * (1 - F) = 0 THEN 800
780 PRINT "Please type 1 or 2."
790 GOTO 750
800 PRINT
810 PRINT "Here we go..."
840 PRINT
850 COLOR 11: FOR J = 1 TO A
860 FOR K = 1 TO A
870 PRINT "  "; D$(J, K);
880 NEXT K
890 PRINT
900 NEXT J
910 PRINT: COLOR 15
950 FOR J = F TO 3 - F STEP 3 - 2 * F
960 REM
980 FOR J1 = 1 TO A - 1
990 LET R = INT(P(J, J1) / 10)
1000 LET C = P(J, J1) - 10 * R
1020 ON J GOTO 1040, 1100
1040 IF C = A THEN 1080
1050 IF C > A THEN 1070
1060 GOTO 1160
1070 GOTO 1250
1080 GOTO 1300
1100 IF R = 1 THEN 1140
1110 IF R = 0 THEN 1130
1120 GOTO 1160
1130 GOTO 1250
1140 GOTO 1300
1160 REM
1165 IF D$(R - 1, C) = "." THEN 1240
1170 IF D$(R, C + 1) = "." THEN 1240
1180 IF J = 2 THEN 1220
1190 IF D$(R + 1, C) = "." THEN 1210
1200 GOTO 1250
1210 GOTO 1300
1220 IF D$(R, C - 1) = "." THEN 1240
1230 GOTO 1250
1240 GOTO 1300
1245 PRINT "BBS---1245", J1
1250 NEXT J1
1260 PRINT "The "; C$(3 - J); " have no legal moves for the "; C$(J); "!"
1270 PRINT "The "; C$(J); " win!!!"
1280 STOP
1300 IF B = 2 THEN 1750
1310 IF J = 2 THEN 1750
1340 LET L1 = 2
1350 FOR L0 = 1 TO 3
1370 ON L0 GOTO 1450, 1380, 1430
1380 IF RND(1) < .5 THEN 1410
1390 LET L1 = 1
1400 GOTO 1450
1410 LET L1 = 3
1420 GOTO 1450
1430 LET L1 = 4 - L1
1450 LET P1 = INT(RND(1) * A)
1460 FOR L2 = 1 TO A - 1
1470 LET P1 = P1 + 1
1480 IF P1 <= A - 1 THEN 1500
1490 LET P1 = P1 - (A - 1)
1500 LET R = INT(P(J, P1) / 10)
1510 LET C = P(J, P1) - 10 * R
1520 IF C > A THEN 1720
1540 ON L1 GOTO 1570, 1620, 1690
1570 IF D$(R - 1, C) = "." THEN 1590
1580 GOTO 1720
1590 GOTO 2090
1620 IF D$(R, C + 1) = "." THEN 1660
1630 IF C = A THEN 1650
1640 GOTO 1720
1650 LET P(J, 0) = P(J, 0) - 1
1660 GOTO 2160
1690 IF D$(R + 1, C) = "." THEN 1710
1700 GOTO 1720
1710 GOTO 2230
1720 NEXT L2
1730 NEXT L0
1740 GOTO 1260
1750 COLOR 10: PRINT C$(J); " move";
1760 INPUT A$: COLOR 15
1770 GOSUB 2950
1790 IF LEFT$(A$, 1) = "R" OR LEFT$(A$, 1) = "r" THEN 2860
1800 IF LEFT$(A$, 1) = "H" OR LEFT$(A$, 1) = "h" THEN 2460
1810 LET A$ = MID$(A$, 1, 2): IF A$ >= "a" AND A$ <= "z" THEN A$ = CHR$(ASC(A$) - 32)
1811 P1 = 0
1813 FOR B0 = 1 TO A - 1
1815 IF MID$(A$(J), B0, 1) = MID$(A$, 1, 1) THEN P1 = B0
1817 NEXT B0
1830 IF P1 = 0 THEN 2430
1832 LET P2 = 0
1834 FOR B0 = 1 TO 4
1836 IF MID$(M$(J), B0, 1) = MID$(A$, 2, 1) THEN P2 = B0
1838 NEXT B0
1850 IF P2 = 0 THEN 2430
1860 LET R = INT(P(J, P1) / 10)
1870 LET C = P(J, P1) - 10 * R
1880 IF R = 0 THEN 2430
1890 IF C > A THEN 2430
1910 ON J GOTO 1930, 1990
1930 IF C < A THEN 1970
1940 IF P2 <> 2 THEN 1970
1950 LET P(1, 0) = P(1, 0) - 1
1960 GOTO 2160
1970 GOTO 2040
1990 IF R > 1 THEN 2040
2000 IF P2 <> 1 THEN 2040
2010 LET P(2, 0) = P(2, 0) - 1
2020 GOTO 2090
2040 ON P2 GOTO 2070, 2140, 2210, 2280
2070 IF D$(R - 1, C) = "." THEN 2090
2080 GOTO 2430
2090 LET D$(R - 1, C) = MID$(A$(J), P1, 1)
2100 LET P(J, P1) = P(J, P1) - 10
2110 GOTO 2330
2140 IF D$(R, C + 1) = "." THEN 2160
2150 GOTO 2430
2160 LET D$(R, C + 1) = MID$(A$(J), P1, 1)
2170 LET P(J, P1) = P(J, P1) + 1
2180 GOTO 2330
2210 IF D$(R + 1, C) = "." THEN 2230
2220 GOTO 2430
2230 LET D$(R + 1, C) = MID$(A$(J), P1, 1)
2240 LET P(J, P1) = P(J, P1) + 10
2250 GOTO 2330
2280 IF D$(R, C - 1) = "." THEN 2300
2290 GOTO 2430
2300 LET D$(R, C - 1) = MID$(A$(J), P1, 1)
2310 LET P(J, P1) = P(J, P1) - 1
2330 LET D$(R, C) = "."
2340 IF B = 2 THEN 2380
2350 IF J = 2 THEN 2380
2360 PRINT "The Digits move: "; MID$(A$(J), P1, 1);
2365 PRINT MID$(M$(J), L1, 1)
2380 IF P(J, 0) <> 0 THEN 2420
2390 PRINT
2400 PRINT "*** The "; C$(J); " win!!! ***"
2410 END
2420 GOTO 2900
2430 PRINT "Illegal move or bad input."
2440 PRINT "Input ignored.  Type H for help."
2450 GOTO 1750
2460 PRINT "The "; C$(J); " have these legal moves:"
2480 FOR J3 = 1 TO A - 1
2490 LET P$ = MID$(A$(J), J3, 1)
2500 LET R = INT(P(J, J3) / 10)
2510 LET C = P(J, J3) - 10 * R
2530 ON J GOTO 2550, 2620
2550 IF C = A THEN 2590
2560 IF C > A THEN 2580
2570 GOTO 2690
2580 GOTO 2830
2590 PRINT " "; P$; "E";
2600 GOTO 2690
2620 IF R = 1 THEN 2660
2630 IF R = 0 THEN 2650
2640 GOTO 2690
2650 GOTO 2830
2660 GOTO 2700
2690 IF D$(R - 1, C) <> "." THEN 2730
2700 PRINT "  "; P$; "N";
2730 IF D$(R, C + 1) <> "." THEN 2770
2740 PRINT "  "; P$; "E";
2770 IF J = 2 THEN 2810
2780 IF D$(R + 1, C) <> "." THEN 2800
2790 PRINT "  "; P$; "S";
2800 GOTO 2830
2810 IF D$(R, C - 1) <> "." THEN 2830
2820 PRINT "  "; P$; "W";
2830 NEXT J3
2840 PRINT
2850 GOTO 1750
2860 PRINT "The "; C$(J); " give up!!!"
2870 PRINT "*** The "; C$(3 - J); " win!!! ***"
2880 END
2900 NEXT J
2910 GOTO 840
2950 IF LEN(A$) > 10 THEN 3090
2960 LET C1 = 0
2963 FOR B0 = 1 TO LEN(A$)
2965 LET A(B0) = ASC(MID$(A$, B0, 1))
2966 IF A(B0) >= 97 AND A(B0) < 97 + 26 THEN A(B0) = A(B0) - 32
2970 NEXT B0
2975 LET A(0) = LEN(A$)
2980 FOR J2 = 1 TO A(0)
2990 IF A(J2) < 96 THEN 3010
3000 LET A(J2) = A(J2) - 32
3010 IF (57 - A(J2)) * (A(J2) - 48) >= 0 THEN 3040
3020 IF (90 - A(J2)) * (A(J2) - 65) >= 0 THEN 3040
3030 GOTO 3060
3040 LET C1 = C1 + 1
3050 LET A(C1) = A(J2)
3060 NEXT J2
3070 LET A(0) = C1
3073 LET A$ = ""
3075 FOR B0 = 1 TO A(0)
3077 LET A$ = A$ + CHR$(A(B0))
3080 NEXT B0
3090 RETURN
3130 PRINT: COLOR 14
3140 PRINT "Here's a sample playing board:"
3150 PRINT: COLOR 11
3160 PRINT "    1 . . . ."
3170 PRINT "    2 . . . ."
3180 PRINT "    3 . . . ."
3190 PRINT "    4 . . . ."
3200 PRINT "    . A B C D"
3210 PRINT: COLOR 14
3220 PRINT "Two sets of pieces (Digits and Letters) race at right angles across a square"
3230 PRINT "board.  Vacant locations are shown as periods.  You choose the board size"
3240 PRINT "(the one above is size 5)."
3250 PRINT: COLOR 12
3260 PRINT "       N"
3270 PRINT "       |"
3280 PRINT "    W--+--E"
3290 PRINT "       |"
3300 PRINT "       S"
3310 PRINT: COLOR 14
3320 PRINT "The object is to move all of your pieces across the board and off the opposite"
3330 PRINT "and off the opposite edge.  Digits leave the board only at the eastern edge;"
3340 PRINT "letters only at the northern.  The winner is the player whose pieces have all"
3350 PRINT "left the board."
3355 PRINT: COLOR 13: PRINT "(Press any key.)";
3356 Z$ = INKEY$: IF Z$ = "" THEN 3356
3360 PRINT: PRINT: COLOR 14
3370 PRINT "The players go in turn, moving one of their pieces to an adjacent location"
3380 PRINT "which is either off the board or currently vacant.  There are no diagonal"
3390 PRINT "moves, no jumps, and no captures.  Digits cannot move west, nor letters move"
3400 PRINT "south."
3410 PRINT
3420 PRINT "To move a piece, type its name and the first letter of the desired direction."
3430 PRINT "Examples:": PRINT: COLOR 11
3440 PRINT "  2E means that piece 2 wants to go east."
3450 PRINT "  BW means that piece B wants to go west."
3460 PRINT: COLOR 14
3470 PRINT "Note: You forfeit the game if your move leaves your opponent without any legal"
3480 PRINT "move."
3490 PRINT
3500 PRINT "Lastly, you may type R to resign and H for help."
3510 PRINT: COLOR 15
3520 RETURN
3530 END

