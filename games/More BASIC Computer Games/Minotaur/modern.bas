90 CLS: COLOR 12
100 PRINT TAB(36); "Minotaur"
110 PRINT TAB(31); "Creative Computing"
120 PRINT TAB(29); "Morristown, New Jersey"
130 PRINT: PRINT: PRINT: COLOR 15
150 RANDOMIZE TIMER
160 L1 = INT(RND(1) * 3) + 1
170 X1 = INT(RND(1) * (-21)) + 11
180 Y1 = INT(RND(1) * (-21)) + 11
190 PRINT
195 DIM B(15), C(15)
200 GOSUB 1350
210 REM INSTRUCTIONS
220 GOSUB 1660
230 REM BARRIERS
240 GOSUB 2330
250 REM PLACE PLAYER
260 GOSUB 2420
270 REM START GAME
280 REM SPEAR
290 IF X2 = S1 AND Y2 = S2 AND L2 = L3 AND T > 1 THEN 3690
300 REM  IS HE EATEN?
310 IF X1 = X2 AND Y2 = 1 AND L1 = L2 THEN 3670
320 REM CHARGING
330 IF RND(1) < .1 THEN 2850
340 REM TURN #
350 T = T + 1
360 X1$ = STR$(X1): IF X1 >= 0 THEN X1$ = RIGHT$(X1$, LEN(X1$) - 1)
361 Y1$ = STR$(Y1): IF Y1 >= 0 THEN Y1$ = RIGHT$(Y1$, LEN(Y1$) - 1)
365 PRINT "Turn"; STR$(T); ".  Minotaur is at ("; X1$; ", "; Y1$; "), on level"; STR$(L1); "."
370 COLOR 10: PRINT "Your control (1-8)";
380 INPUT Z: COLOR 15
390 ON Z GOTO 400, 430, 450, 480, 500, 530, 550, 3270
400 X2 = X2 + F
410 IF ABS(X2) > 10 THEN 1160
420 GOTO 1180
430 X2 = X2 - F
440 GOTO 410
450 Y2 = Y2 + F
460 IF ABS(Y2) > 10 THEN 1160
470 GOTO 420
480 Y2 = Y2 - F
490 GOTO 460
500 L2 = L2 + 1
510 IF L2 > 3 OR L2 < 1 THEN 1330
520 GOTO 420
530 L2 = L2 - 1
540 GOTO 510
550 REM  SPEAR-THROWING
560 IF L1 <> L2 THEN 1080
570 IF X1 <> X2 AND Y1 <> Y2 THEN 1100
580 IF X1 <> X2 AND ABS(Y1 - Y2) > 10 THEN 1120
590 IF ABS(X1 - X2) > 10 THEN 1120
600 IF S9 = 1 THEN 3720
610 COLOR 10: PRINT "In which direction would you like to throw (1-4)";
620 INPUT H1
630 PRINT "How far";
640 INPUT H2: COLOR 15
650 S5 = X2
660 S6 = Y2
670 FOR H3 = 1 TO H2
680 ON H1 GOTO 690, 720, 740, 770
690 S5 = S5 + 1
700 IF ABS(S5) > 10 THEN 860
710 GOTO 790
720 S5 = S5 - 1
730 GOTO 700
740 S6 = S6 - 1
750 IF ABS(S6) > 10 THEN 860
760 GOTO 790
770 S6 = S6 - 1
780 GOTO 750
790 S5$ = STR$(S5): IF S5 >= 0 THEN S5$ = RIGHT$(S5$, LEN(S5$) - 1)
791 S6$ = STR$(S6): IF S6 >= 0 THEN S6$ = RIGHT$(S6$, LEN(S6$) - 1)
795 PRINT "The spear is at ("; S5$; ", "; S6$; ")."
800 REM TEST FOR BARRIERS
810 FOR A = 1 TO 10
820 IF S5 = B(A) AND S6 = C(A) THEN 850
830 NEXT A
840 GOTO 870
850 PRINT "SMASH SPEAR SPLITERED AGAINST BARRIER #"; A; ""
860 GOTO 1140
870 NEXT H3
880 IF S5 <> X1 OR S6 <> Y1 THEN 1010
890 X = INT(RND(1) * 3) + 1
900 ON X GOTO 910, 1010, 1070
910 PRINT "You killed the minotaur in"; T; "turns."
920 GOTO 1450
930 COLOR 10: PRINT "Would you like to play again (Y/N)";
940 INPUT X$: COLOR 15
950 IF X$ <> "Y" AND X$ <> "y" THEN 3760
960 T = 0
970 L1 = INT(RND(1) * 3) + 1
980 X1 = INT(RND(1) * (-21)) + 11
990 Y = INT(RND(1) * (-21)) + 11
1000 GOTO 230
1010 S5$ = STR$(S5): IF S5 >= 0 THEN S5$ = RIGHT$(S5$, LEN(S5$) - 1)
1011 S6$ = STR$(S6): IF S6 >= 0 THEN S6$ = RIGHT$(S6$, LEN(S6$) - 1)
1015 PRINT "You missed.  The spear is at ("; S5$; ", "; S6$; ").  You must get it."
1020 S1 = S5
1030 S2 = S6
1040 S3 = L2
1050 S9 = 1
1060 GOTO 280
1070 GOSUB 2840
1080 PRINT "You are not on the same level.  You cannot throw."
1090 GOTO 420
1100 PRINT "You are not on the same X or L position.  You cannot throw."
1110 GOTO 420
1120 PRINT "You are not within 10 positions.  You cannot throw."
1130 GOTO 420
1140 PRINT "You are now weaponless.  You lose, sucker!"
1150 GOTO 930
1160 PRINT "Yaaaaaaaaaaaaaaaaah!  You fell off the edge!"
1170 GOTO 1150
1180 X2$ = STR$(X2): IF X2 >= 0 THEN X2$ = RIGHT$(X2$, LEN(X2$) - 1)
1181 Y2$ = STR$(Y2): IF Y2 >= 0 THEN Y2$ = RIGHT$(Y2$, LEN(Y2$) - 1)
1185 PRINT "You are at ("; X2$; ", "; Y2$; "), on level"; STR$(L2); "."
1190 REM TEST FOR BARRIERS
1200 FOR A = 1 TO 10
1210 IF X2 = B(A) AND Y2 = C(A) THEN 1240
1220 NEXT A
1230 GOTO 1260
1240 PRINT "You have just fried yourself on an electrified barrier."
1250 GOTO 1150
1260 REM TRAPDOORS
1270 X = INT(RND(1) * 10) + 1
1280 IF X = 5 THEN 1300
1290 GOTO 2510
1300 PRINT "Yaaaaaaaaaah!  Trapdoor -- you fell down one level."
1310 L2 = L2 - 1
1320 IF L2 > 0 THEN 1290
1330 PRINT "You fell out of the cavern.  You lose."
1340 GOTO 1150
1350 COLOR 10: PRINT "Do you want to be the minotaur champion (Y/N)";
1360 INPUT X9$: COLOR 15
1370 IF X9$ <> "Y" AND X9$ <> "y" THEN 1440
1380 C2 = 20
1390 PRINT "You must beat a score of 20."
1391 DIM C3$(72)
1419 DIM C4$(72)
1440 RETURN
1450 IF X9$ <> "YES" THEN 930
1460 C3 = (1 / T) * 100
1470 IF C3 < 20 THEN 1630
1480 PRINT "You are now a qualified champion!"
1620 GOTO 930
1630 PRINT "Sorry, you did not beat the champion."
1640 COLOR 10: PRINT "Do you want to play again (Y/N)";
1650 GOTO 940
1660 REM INSTRUCTIONS
1670 PRINT
1672 PRINT STRING$(30, ASC("*"));
1680 PRINT TAB(32); "Minotaur";
1681 PRINT TAB(41); STRING$(30, ASC("*"));
1720 PRINT
1730 PRINT
1740 COLOR 10: PRINT "Do you need instructions (Y/N)";
1760 INPUT X$: COLOR 15
1770 IF X$ <> "Y" AND X$ <> "y" THEN 2320
1780 PRINT: COLOR 14
1800 PRINT "The object of the game is to kill the minotaur."
1820 PRINT
1830 PRINT "CAVERN: The cavern of the minotaur is in three levels.  Each level is a"
1840 PRINT "coordinate plane.  Outside of the levels there is nothing but vacuum.  The"
1850 PRINT "planes stretch out 10 on each axis from the origin."
1890 PRINT
1960 PRINT "BARRIERS: Inside the cavern are 10 electrified pillars stretching through the"
1970 PRINT "levels.  They will destroy anything that touches them!"
2010 PRINT
2020 PRINT "TRAPDOORS: Trapdoors will appear out of nowhere and drop you down one level."
2030 PRINT "If you were on level one, you lose!"
2060 PRINT
2070 PRINT "MINOTAUR: The Minotaur will charge if you wound him with your spear.  Also, he"
2090 PRINT "may charge for no reason at all!"
2110 PRINT
2115 COLOR 13: PRINT "(Press any key.)"
2116 Z$ = INKEY$: IF Z$ = "" THEN 2116
2120 COLOR 14: PRINT
2130 PRINT "Here are your control functions:"
2135 COLOR 11: PRINT
2140 PRINT "    1) Moving east."
2150 PRINT "    2) Moving west."
2160 PRINT "    3) Moving north."
2170 PRINT "    4) Moving south."
2180 PRINT "    5) Moving up a level."
2190 PRINT "    6) Moving down a level."
2200 PRINT "    7) Throwing your spear."
2210 PRINT "    8) Getting a map."
2220 COLOR 15
2230 PRINT
2240 PRINT STRING$(29, ASC("*"));
2270 PRINT TAB(31); "Have fun!";
2280 PRINT TAB(41); STRING$(29, ASC("*"));
2310 PRINT: PRINT
2315 COLOR 13: PRINT "(Press any key.)"
2316 Z$ = INKEY$: IF Z$ = "" THEN 2316
2317 COLOR 15: PRINT
2320 RETURN
2330 REM BARRIERS
2340 PRINT "I will now set the barriers."
2350 COLOR 11: FOR A = 1 TO 10
2360 B(A) = INT(RND(1) * (-21)) + 11
2370 C(A) = INT(RND(1) * (-21)) + 11
2375 A$ = STR$(A): A$ = RIGHT$(A$, LEN(A$) - 1)
2376 B$ = STR$(B(A)): IF B(A) >= 0 THEN B$ = RIGHT$(B$, LEN(B$) - 1)
2377 C$ = STR$(C(A)): IF C(A) >= 0 THEN C$ = RIGHT$(C$, LEN(C$) - 1)
2380 PRINT "Barrier #"; A$; ": ("; B$; ", "; C$; ")."
2390 NEXT A: COLOR 15
2400 PRINT
2410 RETURN
2420 REM PLACE PLAYER
2430 COLOR 10: PRINT "Which level do you want to start on";
2440 INPUT L2
2450 PRINT "Which point";
2460 INPUT X2, Y2
2470 PRINT "How far do you want to move per turn";
2480 INPUT F: COLOR 15
2490 PRINT
2500 RETURN
2510 REM MOVE MINOTAUR
2520 X4 = X1
2530 Y4 = Y1
2540 L4 = L1
2550 X3 = INT(RND(1) * 6) + 1
2560 ON X3 GOTO 2570, 2620, 2640, 2690, 2710, 2760
2570 X1 = X1 + 1
2580 IF ABS(X1) > 10 THEN 2600
2590 GOTO 2780
2600 X1 = X4
2610 GOTO 2550
2620 X1 = X1 - 1
2630 GOTO 2580
2640 Y1 = Y1 + 1
2650 IF ABS(Y1) > 10 THEN 2670
2660 GOTO 2780
2670 Y1 = Y4
2680 GOTO 2550
2690 IF X1 = B(A) AND Y1 = C(A) THEN 2550
2700 GOTO 2650
2710 L1 = L1 + 1
2720 IF L1 > 3 OR L1 < 1 THEN 2740
2730 GOTO 2780
2740 L1 = L4
2750 GOTO 2550
2760 L1 = L1 - 1
2770 GOTO 2720
2780 FOR A = 1 TO 10
2790 IF X1 = B(A) AND Y1 = C(A) THEN 2550
2800 NEXT A
2810 PRINT
2820 GOTO 280
2830 PRINT
2840 PRINT "You wounded the minotaur!"
2850 PRINT "The minotaur is charging."
2860 IF X1 > X2 THEN 2890
2870 X3 = 1
2880 GOTO 2910
2890 X3 = -1
2900 GOTO 2910
2910 IF Y1 > Y2 THEN 2940
2920 Y3 = 1
2930 GOTO 2960
2940 Y3 = -1
2950 GOTO 2960
2960 IF L1 > L2 THEN 2990
2970 L3 = 1
2980 GOTO 3000
2990 L3 = -1
3000 IF L1 = L2 THEN 3050
3010 L1 = L1 + L3
3020 PRINT "Level"; L1
3030 GOTO 3000
3040 REM HI THERE
3050 IF X1 = X2 THEN 3100
3060 X1 = X1 + X3
3070 GOSUB 3140
3080 X1$ = STR$(X1): IF X1 >= 0 THEN X1$ = RIGHT$(X1$, LEN(X1$) - 1)
3081 Y1$ = STR$(Y1): IF Y1 >= 0 THEN Y1$ = RIGHT$(Y1$, LEN(Y1$) - 1)
3085 PRINT "("; X1$; ", "; Y1$; ")"
3090 GOTO 3050
3100 IF Y1 = Y2 THEN 3210
3110 Y1 = Y1 + Y3
3120 GOSUB 3140
3130 GOTO 3080
3140 FOR P = 1 TO 10
3150 IF B(P) = X1 AND C(P) = Y1 THEN 3180
3160 NEXT P
3170 RETURN
3180 PRINT "Bzzzzzzzzzzzzzownt!  The minotaur just fried himself."
3190 PRINT "You win, you lucky scab!"
3200 GOTO 1450
3210 COLOR 12: PRINT "Bite!"
3220 PRINT "Chew!"
3230 PRINT "Chomp!"
3240 PRINT "*GULP*"
3250 COLOR 15: PRINT "You lose, sucker!"
3260 GOTO 930
3270 COLOR 10: PRINT "What level";
3280 INPUT L4: COLOR 15
3290 COLOR 13: FOR Y4 = 10 TO -10 STEP -1
3300 FOR X4 = -10 TO 10
3310 IF X4 = X2 AND Y4 = Y2 AND L4 = L2 THEN 3410
3320 IF X4 = X1 AND Y4 = Y1 AND L4 = L1 THEN 3430
3330 IF L4 = S1 AND Y4 = S2 AND L4 = S3 THEN 3450
3340 FOR A = 1 TO 10
3350 IF B(A) = X4 AND C(A) = Y4 THEN 3480
3360 NEXT A
3370 IF X4 = 0 AND Y4 = 0 THEN 3500
3380 IF X4 = 0 OR Y4 = 0 THEN 3520
3390 PRINT ".";
3400 GOTO 3530
3410 COLOR 14: PRINT CHR$(1);: COLOR 13
3420 GOTO 3400
3430 COLOR 12: PRINT CHR$(157);: COLOR 13
3440 GOTO 3400
3450 IF S9 = 0 THEN 3340
3460 COLOR 14: PRINT CHR$(24);: COLOR 13
3470 GOTO 3400
3480 COLOR 15: PRINT CHR$(177);: COLOR 13
3490 GOTO 3400
3500 PRINT CHR$(197);
3510 GOTO 3400
3520 IF X4 = 0 THEN PRINT CHR$(179); ELSE PRINT CHR$(196);
3530 NEXT X4
3540 IF Y4 = 4 THEN COLOR 14: PRINT "     "; CHR$(1); " - You": COLOR 13: GOTO 3550
3541 IF Y4 = 3 THEN COLOR 12: PRINT "     "; CHR$(157); " - Minotaur": COLOR 13: GOTO 3550
3542 IF Y4 = 2 THEN COLOR 14: PRINT "     "; CHR$(24); " - Spear": COLOR 13: GOTO 3550
3543 IF Y4 = 1 THEN COLOR 15: PRINT "     "; CHR$(177); " - Barrier": COLOR 13: GOTO 3550
3549 PRINT
3550 NEXT Y4: COLOR 15
3560 Z$ = INKEY$: IF Z$ = "" THEN 3560
3650 PRINT
3660 GOTO 2510
3670 PRINT "The minotaur moved to your spot; he said you tasted great!"
3680 GOTO 930
3690 PRINT "You have your spear."
3700 S9 = 0
3710 GOTO 300
3720 PRINT "How can you throw your spear if you don't have one?"
3725 S1$ = STR$(S1): S1$ = RIGHT$(S1$, LEN(S1$) - 1)
3726 S2$ = STR$(S2): S2$ = RIGHT$(S2$, LEN(S2$) - 1)
3730 PRINT "The spear is at ("; S1$; ", "; S2$; ") on level"; STR$(S3); "."
3740 GOTO 420
3750 STOP
3760 END

