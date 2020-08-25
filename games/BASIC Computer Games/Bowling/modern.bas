5 CLS: COLOR 12
10 PRINT TAB(38); "Bowl"
20 PRINT TAB(31); "Creative Computing"
25 PRINT TAB(29); "Morristown, New Jersey"
30 PRINT: PRINT: PRINT: RANDOMIZE TIMER: COLOR 15
270 DIM C(15), A(100, 6)
360 PRINT "Welcome to the alley!  Bring your friends!"
540 PRINT "Okay, let's first get acquainted."
630 PRINT
720 COLOR 10: PRINT "Want the instructions (Y/N)";
810 INPUT Z$: COLOR 15
900 IF LEFT$(Z$, 1) = "Y" OR LEFT$(Z$, 1) = "y" THEN 990
960 IF LEFT$(Z$, 1) = "N" OR LEFT$(Z$, 1) = "n" THEN 1530
990 COLOR 14: PRINT
1000 PRINT "The game of bowling takes mind and skill.  During the game, the computer will"
1010 PRINT "keep scope.  You may compete with other players (up to four).  You will be"
1020 PRINT "playing ten frames."
1030 PRINT
1040 PRINT "On the pin diagram, ";: COLOR 12: PRINT CHR$(167);: COLOR 14: PRINT " means the pin is down and ";
1045 COLOR 11: PRINT CHR$(173);: COLOR 14: PRINT " means the pin is standing."
1050 PRINT "After the game, the computer will show your scores."
1060 PRINT: COLOR 15
1530 COLOR 10: PRINT "How many are playing (1-4)";
1620 INPUT R: COLOR 15
1710 PRINT
1800 PRINT "Very good...": PRINT
1890 FOR I = 1 TO 100: FOR J = 1 TO 6: A(I, J) = 0: NEXT J: NEXT I
1980 F = 1
2070 FOR P = 1 TO R
2160 M = 0
2250 B = 1
2340 M = 0: Q = 0
2430 FOR I = 1 TO 15: C(I) = 0: NEXT I
2520 REM ARK BALL GENERATOR USING MOD '15' SYSTEM
2610 COLOR 13: PRINT "Player"; STR$(P); ", press any key to roll the ball.": COLOR 15
2700 N$ = INKEY$: IF N$ = "" THEN 2700
2790 K = 0: D = 0
2880 FOR I = 1 TO 20
2970 X = INT(RND(1) * 100)
3060 FOR J = 1 TO 10
3150 IF X < 15 * J THEN 3330
3240 NEXT J
3330 C(15 * J - X) = 1
3420 NEXT I
3510 REM ARK PIN DIAGRAM
3600 PRINT: PRINT "Player:"; P; " Frame:"; F; " Ball:"; B: PRINT
3690 FOR I = 0 TO 3
3780 PRINT SPC(I + 1);
3870 FOR J = 1 TO 4 - I
3960 K = K + 1
4050 IF C(K) = 1 THEN 4320
4140 COLOR 11: PRINT CHR$(173); " ";: COLOR 15
4230 GOTO 4410
4320 COLOR 12: PRINT CHR$(167); " ";: COLOR 15
4410 NEXT J: PRINT
4500 NEXT I
4590 PRINT
4680 REM ARK ROLL ANALYSIS
4770 FOR I = 1 TO 10
4860 D = D + C(I)
4950 NEXT I
5040 IF D - M <> 0 THEN 5220
5130 PRINT "Gutter!"
5220 IF B <> 1 OR D <> 10 THEN 5490
5310 PRINT "STRIKE!"
5400 Q = 3
5490 IF B <> 2 OR D <> 10 THEN 5760
5580 PRINT "Spare!"
5670 Q = 2
5760 IF B <> 2 OR D >= 10 THEN 6030
5850 PRINT "Error!"
5940 Q = 1
6030 IF B <> 1 OR D >= 10 THEN 6210
6120 PRINT "Roll your second ball."
6210 REM ARK STORAGE OF THE SCORES
6300 PRINT
6390 A(F * P, B) = D
6480 IF B = 2 THEN 7020
6570 B = 2
6660 M = D
6750 IF Q = 3 THEN 6210
6840 A(F * P, B) = D - M
6930 IF Q = 0 THEN 2520
7020 A(F * P, 3) = Q
7110 NEXT P
7200 F = F + 1
7290 IF F < 11 THEN 2070
7295 PRINT "Frame";
7380 FOR I = 1 TO 10
7470 PRINT TAB(8 + 4 * I); USING "##"; I;
7560 NEXT I
7650 PRINT: PRINT
7740 FOR P = 1 TO R
7750 COLOR 11: PRINT "Player"; P;
7830 FOR I = 1 TO 3
7920 FOR J = 1 TO 10
8010 PRINT TAB(8 + 4 * J);
8020 IF I < 3 THEN PRINT USING "##"; A(J * P, I);: GOTO 8100
8030 IF A(J * P, I) = 1 THEN PRINT " .";
8040 IF A(J * P, I) = 2 THEN PRINT " /";
8050 IF A(J * P, I) = 3 THEN PRINT " X";
8100 NEXT J
8105 PRINT
8190 NEXT I
8280 PRINT
8370 NEXT P
8460 COLOR 10: PRINT "Do you want another game (Y/N)";
8550 INPUT A$: COLOR 15
8640 IF LEFT$(A$, 1) = "Y" OR LEFT$(A$, 1) = "y" THEN 1530
8730 END
