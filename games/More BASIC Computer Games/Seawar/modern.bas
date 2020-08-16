1 CLS: COLOR 12
5 PRINT TAB(37); "Seawar"
6 PRINT TAB(31); "Creative Computing"
7 PRINT TAB(29); "Morristown, New Jersey"
9 PRINT: PRINT: PRINT: RANDOMIZE TIMER: COLOR 15
10 PRINT "You command a fleet of ships operating in enemy territory!"
20 COLOR 10: PRINT "Do you need any assistance (Y/N)";
40 INPUT Q$
50 IF LEFT$(Q$, 1) = "Y" OR LEFT$(Q$, 1) = "y" THEN 90
60 IF LEFT$(Q$, 1) = "N" OR LEFT$(Q$, 1) = "n" THEN 170
70 PRINT "Input 'yes' or 'no'."
80 GOTO 40
90 COLOR 14: PRINT
100 PRINT "You tell your gun crews the elevation to set their guns.  Elevation is in"
110 PRINT "degrees from 0 to 360.  Your task force consists of 3 destroyers, 2 cruisers,"
130 PRINT "2 battleships, and 2 heavy aircraft carriers.  The enemy has 9 ships for his"
140 PRINT "defense.  If you succeed in sinking all his ships before he sinks yours, you"
150 PRINT "have won.  However, if he sinks all your ships before you have defeated him,"
160 PRINT "you have lost!"
170 COLOR 15: PRINT: PRINT "Let us begin!"
210 PRINT
220 READ Z$
230 A = A + 1
240 GOTO 320
250 RESTORE
260 IF O = 9 OR A = 9 THEN 840
270 FOR X = 1 TO A
280 READ Z$
290 NEXT X
300 READ Z$
310 A = A + 1
320 IF Z$ = "aircraft carrier" THEN 390
330 IF Z$ = "U-boat" THEN 2000
340 IF Z$ = "torpedo boat" THEN 360
350 P = 1
360 GOTO 405
390 RESTORE
405 PRINT: PRINT "Your flagship reports the sighting of an enemy"; Z$; "."
410 T = 43000. - 30000 * RND(1) + (RND(1) * 10) * .987654 + 102
420 IF T < 10000 THEN 410
430 S = 0: P2 = 0
440 T = INT(T)
450 IF Z$ = "U-boat" THEN 2030
460 PRINT "Your instruments read the range to the target as"; T; "meters."
480 IF P = 1 THEN 1480
490 IF S > 4 THEN 510
500 GOTO 540
510 PRINT "Alright, bad shot, the target has moved out of range!  Let's try it again!"
525 S1 = S1 + S
530 GOTO 320
540 COLOR 10: PRINT: PRINT "What elevation";
550 INPUT B: COLOR 15
590 COLOR 12: PRINT "FIRE!": COLOR 15
600 S = S + 1
620 IF B > 360 THEN 1410
630 IF B < 0 THEN 750
640 IF B = 0 THEN 770
650 IF B = 90 THEN 980
660 IF B > 330 THEN 770
670 IF B > 180 THEN 1370
680 IF B > 150 THEN 1300
690 IF B > 90 THEN 1020
700 V1 = 675.285
705 E = INT(T - (V1 ^ 2 / 9.80665 * SIN(2 * B / 57.3)))
710 IF ABS(E) <= 100 THEN 1050
720 IF E > 100 THEN 1200
730 IF E < -100 THEN 1250
750 PRINT "The gun backfired, killing your crew!"
760 GOTO 820
770 PRINT "What are you trying to do?  Kill some fish?  The shell exploded underwater"
780 PRINT "fifty meters from your ship!"
790 GOTO 1590
820 PRINT "Admiral, please!"
830 GOTO 1590
840 PRINT: COLOR 12: PRINT "********  PEACE  ********": COLOR 15
870 PRINT
890 PRINT "You fired"; S1; "rounds.": PRINT "The enemy fired"; S2; "rounds."
900 IF O >= 9 THEN 920
910 IF A >= 9 THEN 950
920 PRINT "All of your ships have been sunk -- so sorry!"
930 PRINT "The battle is over, and the enemy wins!"
940 GOTO 2220
950 PRINT "You have decimated the enemy -- that's nice!"
960 PRINT "The battle is over, and you win!"
970 GOTO 2220
980 PRINT "You idiot!  You shot straight up and the shell landed on your own gun position,"
990 PRINT "destroying it!"
1000 GOTO 1590
1020 PRINT "Hey stupid, you're firing on your own ships!"
1030 GOTO 1590
1050 IF Z$ = "U-boat" THEN 1070
1060 GOTO 1090
1070 PRINT "A depth chanrge exploded right on top of that baby!"
1080 GOTO 1100
1090 PRINT "** BOOM! **"
1100 PRINT
1110 M$ = "Target destroyed! "
1120 N$ = "rounds expended."
1130 PRINT M$; S; N$
1142 PRINT "You have lost"; O; "ships, and the enemy has lost"; A; "."
1150 S1 = S1 + S
1160 PI = 0
1190 GOTO 250
1200 IF Z$ = "U-boat" THEN 2130
1210 PRINT "Shot fell"; ABS(E); "meters short of the target."
1230 GOTO 1590
1250 IF Z$ = "U-boat" THEN 2160
1260 PRINT "Shell overshot target by"; ABS(E); "meters."
1280 GOTO 1590
1300 REM
1310 COLOR 11: PRINT: PRINT "    You shot a projectile, into the air,"
1320 PRINT "    It fell to the water, you know not where.": COLOR 15: PRINT
1330 PRINT "But I do, you idiot, you just sank your own fleet tanker!"
1340 S1 = S1 + 1
1350 IF P = 1 THEN 1590
1360 GOTO 490
1370 PRINT "What are you trying to do?  Drill a new hatch?  The shell exploded in your"
1380 PRINT "ship, destroying it!"
1385 O = O + 1
1386 IF O = 9 THEN 840
1390 IF P = 1 THEN 1590
1400 GOTO 820
1410 PRINT "Where did you learn to type? "; B; "degrees exceeds 360 by";
1420 PRINT B - 360; "degrees."
1430 S1 = S1 + 1
1440 IF P = 1 THEN 1590
1450 GOTO 490
1480 PRINT "The enemy "; Z$; " is firing on your ships!"
1490 P4 = 1234 * RND(RND(1)) + (RND(1) * 10)
1500 IF P4 > 500 THEN 1490
1510 IF P2 = 1 THEN 1600
1520 IF INT(P4) < 100 THEN 1800
1530 IF Z$ = "U-boat" THEN 2100
1540 PRINT "His first round fell"; INT(P4); "meters short."
1560 S2 = S2 + 1
1570 GOTO 490
1590 IF P2 = 1 THEN 1490
1600 P1 = 1250 * RND(RND(1)) + (RND(1) * 10)
1610 IF P1 > P4 THEN 1600
1620 IF P1 < (P4 - 400) THEN 1600
1630 IF P1 < 100 THEN 1710
1640 P4 = P1
1650 S2 = S2 + 1
1660 IF Z$ = "U-boat" THEN 2190
1670 PRINT "The enemy round fell"; INT(P1); "meters short."
1700 GOTO 490
1710 S2 = S2 + 1
1720 P2 = 1
1730 GOSUB 1850
1750 PRINT "The enemy "; Z$; " sank "; D$
1760 O = O + 1
1770 IF O = 9 THEN 840
1780 IF D$ = "your last battleship!" THEN 840
1790 GOTO 490
1800 R2 = 1
1810 GOSUB 1850
1820 PRINT "In fact, he just sank "; D$
1830 O = O + 1
1840 GOTO 1770
1850 RESTORE
1860 FOR C = 1 TO (9 + O)
1870 READ D$
1880 NEXT C
1890 READ D$
1920 DATA "U-boat","210-mm shore gun","70,000-ton cruiser"
1930 DATA "battleship","torpedo boat","heavy frigate"
1940 DATA "E-type destroyer","guided-missile ship","aircraft carrier"
1950 DATA "one of your destroyers!","your heavy cruiser!"
1960 DATA "another of your destroyers!","one of your battleships!"
1970 DATA "your last destroyer!","your aircraft carrier!"
1975 DATA "your light cruiser!","your last aircraft carrier!"
1980 DATA "your last battleship!"
1990 RETURN
2000 PRINT "Your flagship has detected a U-boat approaching at 5 fathoms."
2010 P = 1
2020 GOTO 410
2030 PRINT "Your submarine equipment reads the range to the target";
2040 T = INT(T - 1500)
2050 IF T < 0 THEN 410
2060 PRINT " as"; T; "meters."
2080 PRINT "The U-boat has commenced firing torpedos at your ships."
2090 GOTO 1490
2100 PRINT "His first torpedo exploded"; (INT(P4) - 50); "meters behind your ship."
2120 GOTO 1560
2130 PRINT "Depth change exploded"; ABS(E); "meters short of target."
2150 GOTO 1590
2160 PRINT "Depth change exploded"; ABS(E); "meters short of target."
2180 GOTO 1590
2190 PRINT "The enemy torpedo exploded"; (INT(P1) - 50); "meters in front of your ship."
2210 GOTO 490
2220 END

