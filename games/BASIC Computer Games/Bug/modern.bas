5 CLS: COLOR 12
10 PRINT TAB(38); "Bug"
20 PRINT TAB(31); "Creative Computing"
25 PRINT TAB(29); "Morristown, New Jersey"
30 PRINT: PRINT: PRINT: RANDOMIZE TIMER: COLOR 15
40 REM
50 A = 0: B = 0: H = 0: L = 0: N = 0: P = 0: Q = 0: R = 0: S = 0: T = 0: U = 0: V = 0: Y = 0
60 PRINT "The Game of Bug.  I hope you enjoy this game!"
80 PRINT
90 COLOR 10: PRINT "Do you want instructions (Y/N)";
100 INPUT Z$: COLOR 15
110 IF LEFT$(Z$, 1) = "N" OR LEFT$(Z$, 1) = "n" THEN 300
115 COLOR 14: PRINT
120 PRINT "The object of Bug is to finish your bug before I finish mine.  Each number"
130 PRINT "stands for a part of the bug body.  I will roll the die for you, tell you what"
140 PRINT "I rolled for you, and what the number stands for.  If you can get the part, I"
150 PRINT "will give it you.  The same will happen on my turn."
160 PRINT
170 PRINT "If there is a change in either bug, I will give you the option of seeing the"
180 PRINT "pictures of the bugs.  The numbers stand for parts as follows:"
190 PRINT: COLOR 13
210 PRINT , "Number", "Part", "Number Needed": COLOR 11
220 PRINT , "1", "Body", "1"
230 PRINT , "2", "Neck", "1"
240 PRINT , "3", "Head", "1"
250 PRINT , "4", "Feelers", "2"
260 PRINT , "5", "Tail", "1"
270 PRINT , "6", "Legs", "6"
280 PRINT
290 COLOR 13: PRINT "(Press any key to start.)"
295 Z$ = INKEY$: IF Z$ = "" THEN 295 ELSE COLOR 15: PRINT
300 IF Y > 0 THEN 2480
310 Z = INT(6 * RND(1) + 1)
320 C = 1
330 PRINT "You rolled a"; Z;
340 ON Z GOTO 350, 430, 540, 650, 760, 870
350 PRINT "(body)."
360 IF B = 1 THEN 410
370 PRINT "You now have a body."
380 B = 1
390 C = 0
400 GOTO 970
410 PRINT "You do not need a body."
420 GOTO 970
430 PRINT "(neck)."
440 IF N = 1 THEN 500
450 IF B = 0 THEN 520
460 PRINT "You now have a neck."
470 N = 1
480 C = 0
490 GOTO 970
500 PRINT "You do not need a neck."
510 GOTO 970
520 PRINT "You do not have a body."
530 GOTO 970
540 PRINT "(head)."
550 IF N = 0 THEN 610
560 IF H = 1 THEN 630
570 PRINT "You needed a head."
580 H = 1
590 C = 0
600 GOTO 970
610 PRINT "You do not have a neck."
620 GOTO 970
630 PRINT "You have a head."
640 GOTO 970
650 PRINT "(feelers)."
660 IF H = 0 THEN 740
670 IF A = 2 THEN 720
680 PRINT "I now give you a feeler."
690 A = A + 1
700 C = 0
710 GOTO 970
720 PRINT "You have two feelers already."
730 GOTO 970
740 PRINT "You do not have a head."
750 GOTO 970
760 PRINT "(tail)."
770 IF B = 0 THEN 830
780 IF T = 1 THEN 850
790 PRINT "I now give you a tail."
800 T = T + 1
810 C = 0
820 GOTO 970
830 PRINT "You do not have a body."
840 GOTO 970
850 PRINT "You already have a tail."
860 GOTO 970
870 PRINT "(legs)."
880 IF L = 6 THEN 940
890 IF B = 0 THEN 960
900 L = L + 1
910 C = 0
920 PRINT "You now have"; L; "legs."
930 GOTO 970
940 PRINT "You have 6 feel already."
950 GOTO 970
960 PRINT "You do not have a body."
970 X = INT(6 * RND(1) + 1)
971 PRINT
975 FOR DELAY = 1 TO 2000: NEXT DELAY
980 PRINT "I rolled a"; X;
990 ON X GOTO 1000, 1080, 1190, 1300, 1410, 1520
1000 PRINT "(body)."
1010 IF P = 1 THEN 1060
1020 PRINT "I now have a body."
1030 C = 0
1040 P = 1
1050 GOTO 1630
1060 PRINT "I do not need a body."
1070 GOTO 1630
1080 PRINT "(neck)."
1090 IF Q = 1 THEN 1150
1100 IF P = 0 THEN 1170
1110 PRINT "I now have a neck."
1120 Q = 1
1130 C = 0
1140 GOTO 1630
1150 PRINT "I do not need a neck."
1160 GOTO 1630
1170 PRINT "I do not have a body."
1180 GOTO 1630
1190 PRINT "(head)."
1200 IF Q = 0 THEN 1260
1210 IF R = 1 THEN 1280
1220 PRINT "I needed a head."
1230 R = 1
1240 C = 0
1250 GOTO 1630
1260 PRINT "I do not have a neck."
1270 GOTO 1630
1280 PRINT "I do not need a head."
1290 GOTO 1630
1300 PRINT "(feelers)."
1310 IF R = 0 THEN 1390
1320 IF S = 2 THEN 1370
1330 PRINT "I get a feeler."
1340 S = S + 1
1350 C = 0
1360 GOTO 1630
1370 PRINT "I have 2 feelers already."
1380 GOTO 1630
1390 PRINT "I do not have a head."
1400 GOTO 1630
1410 PRINT "(tail)."
1420 IF P = 0 THEN 1480
1430 IF U = 1 THEN 1500
1440 PRINT "I now have a tail."
1450 U = 1
1460 C = 0
1470 GOTO 1630
1480 PRINT "I do not have a body."
1490 GOTO 1630
1500 PRINT "I do not need a tail."
1510 GOTO 1630
1520 PRINT "(legs)."
1530 IF V = 6 THEN 1590
1540 IF P = 0 THEN 1610
1550 V = V + 1
1560 C = 0
1570 PRINT "I now have"; V; "legs."
1580 GOTO 1630
1590 PRINT "I already have 6 feet."
1600 GOTO 1630
1610 PRINT "I do not have a body."
1620 GOTO 1630
1630 IF A = 2 AND T = 1 AND L = 6 THEN 1650
1640 GOTO 1670
1650 COLOR 12: PRINT "Your bug is finished!": COLOR 15
1660 Y = Y + 1
1670 IF S = 2 AND P = 1 AND V = 6 THEN 1690
1680 GOTO 1710
1690 COLOR 12: PRINT "My bug is finished!": COLOR 15
1700 Y = Y + 2
1710 IF C = 1 THEN 300
1720 COLOR 10: PRINT "Do you want the pictures (Y/N)";
1730 INPUT Z$: COLOR 15
1740 IF LEFT$(Z$, 1) = "N" OR LEFT$(Z$, 1) = "n" THEN 300
1750 PRINT: PRINT "***** Your Bug *****"
1760 PRINT: COLOR 11
1780 IF A = 0 THEN 1860
1790 FOR Z = 1 TO 3
1800 PRINT TAB(11);
1810 FOR X = 1 TO A
1820 PRINT CHR$(179); " ";
1830 NEXT X
1840 PRINT
1850 NEXT Z
1860 IF H = 0 THEN 1880
1870 GOSUB 2470
1880 IF N = 0 THEN 1920
1890 FOR Z = 1 TO 2
1900 PRINT "          "; CHR$(179); " "; CHR$(179)
1910 NEXT Z
1920 IF B = 0 THEN 2000
1930 PRINT "     "; CHR$(213); STRING$(4, 205); CHR$(207); CHR$(205); CHR$(207); STRING$(3, 205); CHR$(184)
1940 FOR Z = 1 TO 2
1950 PRINT "     "; CHR$(179); "          "; CHR$(179)
1960 NEXT Z
1970 IF T <> 1 THEN 1990
1980 PRINT STRING$(5, 205); CHR$(181); "          "; CHR$(179)
1990 PRINT "     "; CHR$(198); CHR$(205); CHR$(209); CHR$(205); CHR$(209); CHR$(205); CHR$(209); CHR$(205); CHR$(209); CHR$(205); CHR$(209); CHR$(190)
2000 IF L = 0 THEN 2080
2010 FOR Z = 1 TO 2
2020 PRINT TAB(5);
2030 FOR X = 1 TO L
2040 PRINT " "; CHR$(179);
2050 NEXT X
2060 PRINT
2070 NEXT Z
2080 PRINT: COLOR 13: PRINT "(Press any key.)"
2085 Z$ = INKEY$: IF Z$ = "" THEN 2085
2090 PRINT: COLOR 15
2110 PRINT "***** My Bug *****"
2140 PRINT: COLOR 12
2150 IF S = 0 THEN 2230
2160 FOR Z = 1 TO 3
2170 PRINT TAB(11);
2180 FOR X = 1 TO S
2190 PRINT CHR$(179); " ";
2200 NEXT X
2210 PRINT
2220 NEXT Z
2230 IF R <> 1 THEN 2250
2240 GOSUB 2470
2250 IF Q = 0 THEN 2280
2260 PRINT "          "; CHR$(179); " "; CHR$(179)
2270 PRINT "          "; CHR$(179); " "; CHR$(179)
2280 IF P = 0 THEN 2360
2290 PRINT "     "; CHR$(213); STRING$(4, 205); CHR$(207); CHR$(205); CHR$(207); STRING$(3, 205); CHR$(184)
2300 FOR Z = 1 TO 2
2310 PRINT "     "; CHR$(179); "          "; CHR$(179)
2320 NEXT Z
2330 IF U <> 1 THEN 2350
2340 PRINT STRING$(5, 205); CHR$(181); "          "; CHR$(179)
2350 PRINT "     "; CHR$(198); CHR$(205); CHR$(209); CHR$(205); CHR$(209); CHR$(205); CHR$(209); CHR$(205); CHR$(209); CHR$(205); CHR$(209); CHR$(190)
2360 IF V = 0 THEN 2440
2370 FOR Z = 1 TO 2
2380 PRINT TAB(5);
2390 FOR X = 1 TO V
2400 PRINT " "; CHR$(179);
2410 NEXT X
2420 PRINT
2430 NEXT Z
2440 PRINT: COLOR 13: PRINT "(Press any key.)"
2445 Z$ = INKEY$: IF Z$ = "" THEN 2445
2446 COLOR 15: PRINT
2450 IF Y <> 0 THEN 2540
2460 GOTO 300
2470 PRINT "        "; CHR$(201); CHR$(205); CHR$(207); CHR$(205); CHR$(207); CHR$(205); CHR$(187)
2480 PRINT "        "; CHR$(186); "     "; CHR$(186)
2490 PRINT "        "; CHR$(186); " "; CHR$(153); " "; CHR$(153); " "; CHR$(186)
2500 PRINT "        "; CHR$(186); "     "; CHR$(186)
2510 PRINT "        "; CHR$(186); "  "; CHR$(3); "  "; CHR$(186)
2520 PRINT "        "; CHR$(200); CHR$(205); CHR$(209); CHR$(205); CHR$(209); CHR$(205); CHR$(188)
2530 RETURN
2540 PRINT "I hope you enjoyed the game, play it again soon!"
2550 END

