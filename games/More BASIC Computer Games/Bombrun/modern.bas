5 CLS: COLOR 12
10 PRINT TAB(37); "Bombrun"
13 PRINT TAB(31); "Creative Computing"
15 PRINT TAB(29); "Morristown, New Jersey"
20 PRINT: PRINT: COLOR 15
25 DIM X5(2, 2, 2, 2)
26 RANDOMIZE TIMER
30 COLOR 10: PRINT "This program simulates a bombing run.  Do you need instructions (Y/N)";
40 INPUT I$
50 IF LEFT$(I$, 1) = "Y" OR LEFT$(I$, 1) = "y" THEN 90
60 IF LEFT$(I$, 1) = "N" OR LEFT$(I$, 1) = "n" THEN 290
70 PRINT "Illogical response.  Reply 'YES' or 'NO'."
80 GOTO 40
90 COLOR 14
100 PRINT: PRINT "You have the option of making four passes over the target, with the ability to"
110 PRINT "drop a bomb once during each of these passes.  Altitude changes may be made"
120 PRINT "through the 'CLIMB/DIVE' command by entering 'CLIMB' or 'DIVE', followed by a"
130 PRINT "comma and the desired angle (in degrees).  New velocities (ranging from 300 to"
140 PRINT "900 feet per second) may be input at the 'AIRSPEED' prompt.  'CLIMB/DIVE'"
150 PRINT "angles, varying from 0 to 15 degrees, will add as specified by 'CLIMB' or"
160 PRINT "'DIVE' commands to yield a net inclination/declination angle between 0 to 60"
170 PRINT "degrees, climbing or diving.  A minimum altitude of 100 feet must also be"
180 PRINT "maintained.  Willfully exceeding any of the max/min specs will result in the"
190 PRINT "crash of your bomber.  Also, a bomb command of 'DROP' during a dive will give"
200 PRINT "your bomb an initial downward velocity, shortening the drop time, as a 'CLIMB'"
210 PRINT "command will lengthen this time.  The bomb will be launched immediately"
220 PRINT "following the most recent 'STATS' readout upon 'DROP command, and will be held"
230 PRINT "for further positioning information upon the command 'STAND BY'.  The target"
250 PRINT "is 1 foot in diameter.  Good luck!"
270 COLOR 13: PRINT: PRINT "Press any key": COLOR 15
285 A$ = INKEY$: IF A$ = "" THEN 285
290 Z1 = 1000
300 Z2 = 1000
310 Z3 = 1000
320 Z4 = 1000
330 R = R + 1
340 W1 = 0
350 X2 = 0
360 W3 = 0
370 W4 = 0
380 T = 0
390 A1 = 0
400 A = 0
410 V1 = RND(1)
420 V = V1 * 1000
430 IF V < 300 OR V > 900 THEN 410
440 Y1 = RND(1)
450 Y = Y1 * 500
460 IF Y < 100 THEN 440
470 X = 4500
480 PRINT " "
490 PRINT " "
500 E = X / V
510 PRINT TAB(30); "**INITIAL**"
520 PRINT TAB(30); "***STATS***"
530 GOTO 1430
540 W1 = 0
550 W2 = 0
560 W3 = 0
570 W4 = 0
580 PRINT " "
590 COLOR 10: PRINT "Bomb command: [S]tand By or [D]rop";
600 INPUT C$: COLOR 15
610 IF LEFT$(C$, 1) = "S" OR LEFT$(C$, 1) = "s" THEN 640
620 IF LEFT$(C$, 1) = "D" OR LEFT$(C$, 1) = "d" THEN 1680
630 PRINT "Unrecognizable command.  Reply 'STAND BY' or 'DROP'."
640 PRINT "Standing by."
650 PRINT " "
660 GOTO 700
670 A = A - A1
680 T = T - 1
690 GOTO 770
700 COLOR 10: PRINT "Maintain present resultant angle (Y/N)";
710 INPUT P$: COLOR 15
720 PRINT " "
730 IF LEFT$(P$, 1) = "Y" OR LEFT$(P$, 1) = "y" THEN 1130
740 IF LEFT$(P$, 1) = "N" OR LEFT$(P$, 1) = "n" THEN 770
750 PRINT "Reply 'YES' or 'NO'."
760 GOTO 700
770 COLOR 10: PRINT "[C]limb or [D]ive command (C/D, angle)";
780 INPUT A$, A1: COLOR 15
790 PRINT " "
800 IF A1 < 0 THEN 830
810 IF A1 > 15 THEN 870
820 GOTO 930
830 PRINT "Angle input must be positive.  If necessary, change the 'DIVE' command to"
840 PRINT "'CLIMB', or vice versa."
850 PRINT " "
860 GOTO 770
870 W1 = W1 + 1
880 IF W1 = 2 THEN 2120
890 PRINT "Your bomber cannot tolerate the stress caused by angle inputs exceeding"
900 PRINT "15 degrees.  Reconsider your choice."
910 PRINT " "
920 GOTO 770
930 IF LEFT$(A$, 1) = "C" OR LEFT$(A$, 1) = "c" THEN 950
940 A1 = -A1
950 A = A + A1
960 IF A < -60 THEN 990
970 IF A > 60 THEN 1060
980 GOTO 1140
990 W2 = W2 + 1
1000 IF W2 = 2 THEN 2170
1010 PRINT "Your present 'DIVE' command will exceed the maximum resultant dive angle of"
1020 PRINT "60 degrees, causing an irreversible nosedive.  Reconsider your choice."
1040 PRINT " "
1050 GOTO 670
1060 W3 = W3 + 1
1070 IF W3 = 2 THEN 2210
1080 PRINT "Your present 'CLIMB' command will exceed the maximum resultant climb angle of"
1090 PRINT "60 degrees, causing your engine to fail and your plane to crash.  Reconsider"
1100 PRINT "your choice."
1110 PRINT " "
1120 GOTO 670
1130 A1 = 0
1140 COLOR 10: PRINT "Airspeed (300-900)";
1150 INPUT V: COLOR 15
1160 IF V > 900 THEN 1190
1170 IF V < 300 THEN 1230
1180 GOTO 1290
1190 PRINT "Your bomber isn't capable of attaining that velocity.  Input an airspeed less"
1200 PRINT "than 900 feet per second."
1210 PRINT " "
1220 GOTO 1150
1230 W4 = W4 + 1
1240 IF W4 = 2 THEN 2250
1250 PRINT "If your velocity isn't increased immediately, your bomber will fall to earth"
1260 PRINT "and be destroyed."
1270 PRINT " "
1280 GOTO 1140
1290 T = T + 1
1300 B = A * 3.14159 / 180
1310 Y = Y + V * SIN(B)
1320 IF Y > 100 THEN 1390
1330 W5 = W5 + 1
1340 IF W5 = 2 THEN 2290
1350 PRINT "If your altitude isn't increased immediately to a minimum of 100 feet,"
1360 PRINT "a crash is imminent."
1370 PRINT " "
1380 GOTO 670
1390 X = X - V * COS(B)
1400 IF X <= 0 THEN 2350
1410 E = X / (V * COS(B))
1420 COLOR 13: PRINT TAB(30); "***STATS***"
1430 PRINT " "
1440 IF NOT (T = 1) THEN 1470
1450 PRINT TAB(20); "Elapsed time... 1 second"
1460 GOTO 1480
1470 PRINT TAB(20); "Elapsed time..."; T; "seconds"
1480 IF NOT (A1 = 0) THEN 1510
1490 PRINT TAB(11); "Present angle command... 0 degrees"
1500 GOTO 1550
1510 IF A$ = "CLIMB" THEN 1540
1520 PRINT TAB(11); "Present angle command... Dive"; -A1; "degrees"
1530 GOTO 1550
1540 PRINT TAB(11); "Present angle command... Climb"; A1; "degrees"
1550 IF A < 0 THEN 1590
1560 IF A > 0 THEN 1610
1570 PRINT TAB(17); "Resultant angle... 0 degrees"
1580 GOTO 1620
1590 PRINT TAB(17); "Resultant angle..."; -A1; "degrees diving"
1600 GOTO 1620
1610 PRINT TAB(17); "Resultant angle..."; A; "degrees climbing"
1620 PRINT TAB(16); "Present velocity..."; V; "feet per second"
1630 PRINT TAB(24); "Altitude..."; Y; "feet"
1640 PRINT TAB(14); "Distance from site..."; X; "feet"
1650 PRINT TAB(7); "Estimated time of arrival..."; E; "seconds"
1660 PRINT: COLOR 15
1670 GOTO 540
1680 PRINT "Bomb dropped."
1690 T3 = (SQR((V * SIN(B)) ^ 2 + 64.4 * Y) + V * SIN(B)) / 32.2
1700 PRINT "Time to explosion..."; T3; "seconds"
1710 X = X - V * COS(B) * T3
1720 X = INT(X * 100) / 100
1730 PRINT " "
1740 IF X < -.5 THEN 1780
1750 IF X > .5 THEN 1800
1760 PRINT "Congratulations, you scored a perfect hit."
1770 GOTO 2030
1780 PRINT "The bomb landed"; -X; "feet beyond the target's center."
1790 GOTO 1810
1800 PRINT "The bomb landed"; X; "feet in front of the target's center."
1810 IF R = 1 THEN 1850
1820 IF R = 2 THEN 1870
1830 IF R = 3 THEN 1890
1840 IF R = 4 THEN 1910
1850 Z1 = ABS(X)
1860 GOTO 2400
1870 Z2 = ABS(X)
1880 GOTO 2420
1890 Z3 = ABS(X)
1900 GOTO 2440
1910 Z4 = ABS(X)
1920 Z10(1) = Z1: Z10(2) = Z2: Z10(3) = Z3: Z10(4) = Z4
1921 FOR M = 1 TO 4
1922 FOR M1 = 4 TO 1 STEP -1
1923 IF Z10(M) < Z10(M1) THEN X5 = Z10(M)
1924 IF M = M1 AND M = 1 THEN 1926
1925 NEXT M1
1926 NEXT M
1930 PRINT " "
1940 IF X5 <= 300 THEN 2000
1950 PRINT "During your"; STR$(R); "-pass bombrun, you failed to even threaten the target with"
1960 PRINT "a hit.  Better luck next time."
1970 IF LEFT$(R$, 1) = "N" OR LEFT$(r$, 1) = "n" THEN 2590
1980 GOTO 2040
1990 GOTO 2610
2000 PRINT "During your"; STR$(R); "-pass bombrun, you managed to strike within"; X5; "feet"
2010 PRINT "of the target."
2020 PRINT " "
2030 IF LEFT$(R$, 1) = "N" OR LEFT$(R$, 1) = "n" THEN 2590
2040 COLOR 10: PRINT "Would you like to reload and play again (Y/N)";
2050 INPUT A$: COLOR 15
2060 IF LEFT$(A$, 1) = "N" OR LEFT$(A$, 1) = "n" THEN 2590
2070 IF LEFT$(A$, 1) = "Y" OR LEFT$(A$, 1) = "y" THEN 2100
2080 PRINT "You must be a lousy speller.  Reply 'YES' or 'NO'."
2090 GOTO 2050
2100 R = 0
2110 GOTO 290
2120 PRINT "You tore the wings off of your bomber by exceeding the maximum angle input"
2130 PRINT "of 15 degrees.  Next time, take my advice."
2150 H = 1
2160 GOTO 1920
2170 PRINT "The steep dive angle desired caused an irreversible nosedive, resulting in"
2180 PRINT "the destruction of your bomber."
2190 H = 1
2200 GOTO 1920
2210 PRINT "The engines of your bomber failed while climbing the steep angle input during"
2220 PRINT "your angle command opportunity."
2230 H = 1
2240 GOTO 1920
2250 PRINT "The velocity of your bomber was insufficient to support its weight, and"
2260 PRINT "consequently it crashed."
2270 H = 1
2280 GOTO 1920
2290 PRINT "Your bomber failed to maintain the low altitude you desired and soon crashed."
2310 PRINT "Better luck next time."
2320 H = 1
2330 GOTO 1920
2340 PRINT "Your bomber just passed up the target, and needless to say, you no longer"
2350 PRINT "threaten its existence."
2360 PRINT " "
2370 IF R = 2 THEN 2420
2380 IF R = 3 THEN 2440
2390 IF R = 4 THEN 1920
2400 Q$ = "second"
2410 GOTO 2450
2420 Q$ = "third"
2430 GOTO 2450
2440 Q$ = "fourth and final"
2450 IF R > 1 THEN 2490
2460 PRINT "You have thus far completed 1 run."
2470 COLOR 10: PRINT "Would you like to make another pass (Y/N)";
2480 GOTO 2510
2490 PRINT "You have thus far completed"; R; "runs."
2500 COLOR 10: PRINT "Would you like to make another pass (Y/N)";
2510 INPUT R$: COLOR 15
2520 IF LEFT$(R$, 1) = "Y" OR LEFT$(R$, 1) = "y" THEN 2560
2530 IF LEFT$(R$, 1) = "N" OR LEFT$(R$, 1) = "n" THEN 1920
2540 PRINT "Simply reply 'YES' or 'NO'."
2550 GOTO 2510
2560 PRINT "Your plane has circled, and is now in position to make its "; Q$
2570 PRINT "pass."
2580 GOTO 330
2590 PRINT: PRINT "Look over the physics laws governing falling bodies, and return to play"
2600 PRINT "again soon."
2610 END

