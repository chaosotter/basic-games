5 CLS: COLOR 12
10 PRINT TAB(37); "Twonky"
20 PRINT TAB(31); "Creative Computing"
30 PRINT TAB(29); "Morristown, New Jersey"
40 PRINT: PRINT: PRINT: COLOR 15
50 RANDOMIZE TIMER
140 GOSUB 2250
150 DIM A(15, 15)
160 LET R9 = 0
170 GOSUB 1830
180 PRINT "--------------------------------------"
200 GOSUB 1450
210 REM
220 COLOR 10: PRINT "Move or shoot (M/S)";
230 INPUT Q8$: COLOR 15
240 IF Q8$ = "M" OR Q8$ = "m" THEN 270
250 IF Q8$ = "S" OR Q8$ = "s" THEN 950
260 GOTO 210
270 COLOR 10: PRINT "Move which way: forward, back, right, or left (F/B/R/L)";
280 INPUT Q$: COLOR 15
290 IF Q$ = "F" OR Q$ = "f" THEN 340
300 IF Q$ = "B" OR Q$ = "b" THEN 370
310 IF Q$ = "L" OR Q$ = "l" THEN 400
320 IF Q$ = "R" OR Q$ = "r" THEN 430
330 GOTO 210
340 LET X5 = X
350 LET Y5 = Y - 1
360 GOTO 460
370 LET X5 = X
380 LET Y5 = Y + 1
390 GOTO 460
400 LET X5 = X - 1
410 LET Y5 = Y
420 GOTO 460
430 LET X5 = X + 1
440 LET Y5 = Y
450 GOTO 460
460 IF X5 < 1 THEN 510
470 IF X5 > 15 THEN 510
480 IF Y5 < 1 THEN 510
490 IF Y5 > 15 THEN 510
500 GOTO 540
510 PRINT "That move takes you out of the maze."
520 PRINT "Move not allowed."
530 GOTO 1430
540 ON (A(X5, Y5) + 1) GOTO 550, 620, 630, 660, 760, 800, 920
550 REM *** EMPTY SPACE
560 LET A(X, Y) = 0
570 LET A(X5, Y5) = 1
580 LET X = X5
590 LET Y = Y5
600 PRINT "Move allowed."
610 GOTO 1430
620 REM *** IMPOSSIBLE TO GET HERE
630 REM *** BLOCKED SPACE ROUTINE.
640 PRINT "That space is blocked."
650 GOTO 1430
660 REM *** RELOCATION ROUTINE.
670 PRINT "You've been *R E L O C A T E D*!!!"
680 GOSUB 2710
690 IF A(Z, W) > 2 THEN 540
700 IF A(Z, W) <> 0 THEN 680
710 LET A(Z, W) = 1
720 LET A(X, Y) = 0
730 LET X = Z
740 LET Y = W
750 GOTO 1430
760 REM *** CHANGE ALL, SUPER TRAP.
770 PRINT "You hit the super trap!  You get a new maze."
780 GOSUB 1830
790 GOTO 1430
800 REM *** HE WON!
810 PRINT: COLOR 12
820 PRINT "I don't believe it, but you won the game!"
830 PRINT "You got to the objective before the Twonky got you!"
850 PRINT
870 COLOR 10: PRINT "Try again (Y/N)";
880 INPUT Q$: COLOR 15
890 IF LEFT$(Q$, 1) = "Y" OR LEFT$(Q$, 1) = "y" THEN 160
900 IF LEFT$(Q$, 1) = "N" OR LEFT$(Q$, 1) = "n" THEN 2750
910 GOTO 870
920 REM *** HE LANDED ON TWONKY!]
930 PRINT "You stepped on the Twonky!"
940 GOTO 1790
950 REM *** SHOOT ROUTINE
960 PRINT "Shoot which way: forward, back, right, left (F/B/R/L)";
970 INPUT Q$
980 IF Q$ = "F" OR Q$ = "f" THEN 1030
990 IF Q$ = "B" OR Q$ = "b" THEN 1060
1000 IF Q$ = "R" OR Q$ = "r" THEN 1120
1010 IF Q$ = "L" OR Q$ = "l" THEN 1090
1020 GOTO 210
1030 LET S1 = 0
1040 LET S2 = -1
1050 GOTO 1140
1060 LET S1 = 0
1070 LET S2 = 1
1080 GOTO 1140
1090 LET S1 = -1
1100 LET S2 = 0
1110 GOTO 1140
1120 LET S1 = 1
1130 LET S2 = 0
1140 LET R1 = X
1150 LET R2 = Y
1160 LET R1 = R1 + S1
1170 LET R2 = R2 + S2
1180 PRINT "Z A P -- ";
1190 IF R1 < 1 THEN 1240
1200 IF R1 > 15 THEN 1240
1210 IF R2 < 1 THEN 1240
1220 IF R2 > 15 THEN 1240
1230 GOTO 1280
1240 PRINT "Fizzle.  Shot left maze and missed."
1270 GOTO 1430
1280 IF A(R1, R2) <> 2 THEN 1330
1290 PRINT "Blast!  You hit the wall.  (Shot missed.)"
1320 GOTO 1430
1330 IF A(R1, R2) <> 6 THEN 1160
1340 PRINT "OUCH!  The Twonky retreats."
1360 LET A(R1, R2) = R9
1370 GOSUB 2710
1380 IF A(Z, W) <> 0 THEN 1370
1390 LET A(Z, W) = 6
1410 LET X1 = Z
1420 LET Y1 = W
1430 GOSUB 1450
1440 GOTO 1570
1450 REM *** PRINT TWONKY AND OBJECTIVE DISTANCE
1455 PRINT: COLOR 13
1460 PRINT "The Twonky is";
1470 D = (SQR(ABS((X1 - X) ^ 2 + (Y1 - Y) ^ 2)))
1490 PRINT D;
1500 PRINT "units away."
1510 PRINT "The objective is";
1520 D1 = (SQR(ABS(X2 - X) ^ 2 + (Y2 - Y) ^ 2))
1530 PRINT D1;
1540 PRINT "units away."
1550 PRINT: COLOR 15
1560 RETURN
1570 REM *** TWONKYS LOGIC
1580 IF D < 2 THEN 1790
1590 LET Z2 = Y1
1600 LET Z1 = X1
1610 IF X < X1 THEN 1680
1620 IF X > X1 THEN 1700
1630 IF Y < Y1 THEN 1660
1640 LET Z2 = Y1 + 1
1650 GOTO 1710
1660 LET Z2 = Y1 - 1
1670 GOTO 1710
1680 LET Z1 = X1 - 1
1690 GOTO 1710
1700 LET Z1 = X1 + 1
1710 LET A(X1, Y1) = R9
1720 LET R9 = A(Z1, Z2)
1730 LET A(Z1, Z2) = 6
1740 LET X1 = Z1
1750 LET Y1 = Z2
1760 PRINT "Twonky moves..."
1770 GOSUB 1450
1780 IF D >= 2 THEN 210
1790 PRINT: COLOR 12
1800 PRINT "> > > SCHLOORP !!! < < <"
1810 PRINT "The Twonky just absorbed you!  You lose."
1820 GOTO 850
1830 REM *** SET UP NEW MAZE ROUTINE
1840 REM *** 1=PLAYER, 2=BLOCKED SPACES
1850 REM *** 3=RELOCATIONS, 4=SUPER TRAP
1860 REM *** 5=OBJECTIVE, 6=TWONKY
1870 REM *** 0=EMPTY SPACES
1880 REM *** CLEAR MAZE
1883 FOR B0 = 1 TO 15
1885 FOR B1 = 1 TO 15
1890 LET A(B0, B1) = 0
1893 NEXT B1
1895 NEXT B0
1910 FOR I = 1 TO 30
1920 GOSUB 2710
1930 IF A(Z, W) <> 0 THEN 1920
1940 LET A(Z, W) = 2
1950 NEXT I
1960 REM *** PLACE RELOCATIONS
1970 FOR I = 1 TO 22
1980 GOSUB 2710
1990 IF A(Z, W) <> 0 THEN 1980
2000 LET A(Z, W) = 3
2010 NEXT I
2020 REM *** PLACE THE SPECIAL TRAP
2030 GOSUB 2710
2040 IF A(Z, W) <> 0 THEN 2030
2050 LET A(Z, W) = 4
2060 REM *** PLACE THE PLAYER
2070 GOSUB 2710
2080 IF A(Z, W) <> 0 THEN 2070
2090 LET A(Z, W) = 1
2100 LET X = Z
2110 LET Y = W
2120 REM *** PLACE THE OBJECTIVE
2130 GOSUB 2710
2140 IF A(Z, W) <> 0 THEN 2130
2150 LET A(Z, W) = 5
2160 LET X2 = Z
2170 LET Y2 = W
2180 REM *** PLACE THE TWONKY
2190 GOSUB 2710
2200 IF A(Z, W) <> 0 THEN 2190
2210 LET A(Z, W) = 6
2220 LET X1 = Z
2230 LET Y1 = W
2240 RETURN
2250 REM
2310 COLOR 10: PRINT "Do you want instructions (Y/N)";
2320 INPUT Q$: COLOR 15
2330 IF LEFT$(Q$, 1) = "N" OR LEFT$(Q$, 1) = "n" THEN 2700
2340 IF LEFT$(Q$, 1) <> "Y" AND LEFT$(Q$, 1) <> "y" THEN 2310
2350 PRINT: COLOR 14
2380 PRINT "This is the game of Twonky."
2390 PRINT
2400 PRINT "You have landed on the planet of Twinky and its king (Kong; their king is King"
2410 PRINT "Kong) has captured you.  He has put you in a maze that is 15x15 units long."
2420 PRINT "You are in the dark and cannot see.  You must get to the objective square and"
2430 PRINT "be set free.  Hazards include:"
2470 PRINT: COLOR 11
2480 PRINT "* Squares that you cannot go into (30);"
2490 PRINT "* Squares that randomly throw you around the maze (22);"
2500 PRINT "* A square that sets up a new maze and all that's in it (1); and"
2510 PRINT "* A monster called Twonky that chases you and will absorb you if the distance"
2520 PRINT "  it from you falls below 2 units.  Twonky is also immune to all traps,"
2530 PRINT "  including walls."
2570 PRINT: COLOR 14
2590 PRINT "You can move one square at a time to find the objective or escape from the"
2600 PRINT "Twonky.  You can also shoot at the Twonky one direction at a time.  If the"
2610 PRINT "Twonky is hit, he will be replaced in the maze randomly."
2645 PRINT
2650 PRINT "If the Twonky absorbs you, you lose.  If you land on the objective square, you"
2660 PRINT "win.  Good luck!"
2670 PRINT: COLOR 13: PRINT "(Press any key.)"
2680 Z$ = INKEY$: IF Z$ = "" THEN 2680
2690 PRINT: COLOR 15
2700 RETURN
2710 REM *** SUBROUTINE TO GET 2 RANDOM NUMBERS
2720 LET Z = INT(RND(1) * 15 + 1)
2730 LET W = INT(RND(1) * 15 + 1)
2740 RETURN
2750 END

