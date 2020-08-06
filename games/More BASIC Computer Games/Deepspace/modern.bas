90 CLS: COLOR 12
100 PRINT TAB(35); "Deepspace"
110 PRINT TAB(31); "Creative Computing"
120 PRINT TAB(29); "Morristown, New Jersey"
130 PRINT: PRINT: PRINT: COLOR 15
140 RANDOMIZE TIMER
150 PRINT "This is Deepspace, a tactical simulation of ship-to-ship combat in deep space."
170 COLOR 10: PRINT: PRINT "Do you wish instructions (Y/N)";: INPUT I$: COLOR 15
180 IF LEFT$(I$, 1) = "N" OR LEFT$(I$, 1) = "n" THEN 610
190 COLOR 14: PRINT
200 PRINT "You are one of a group of captains assigned to patrol a section of your Star"
210 PRINT "Empire's border against hostile aliens.  All your encounters here will be"
220 PRINT "against hostile vessels.  You will first be required to select a vessel from"
230 PRINT "one of three types, each with its own characteristics:"
260 COLOR 11: PRINT: PRINT "Type", "Speed", "Cargo Space", "Protection"
270 PRINT "1 Scout", "10X", "16", "1"
280 PRINT "2 Cruiser", "4X", "24", "2"
290 PRINT "3 Battleship", "2X", "30", "5"
300 COLOR 14: PRINT
310 PRINT "Speed is given relative to the other ships.  Cargo space is in units of space"
320 PRINT "aboard ship which can be filled with weapons.  Protection is the relative"
330 PRINT "strength of the ship's armor and force fields."
350 PRINT: COLOR 13: PRINT "(Press any key.)"
355 A$ = INKEY$: IF A$ = "" THEN 355
360 COLOR 14: PRINT
370 PRINT "Once a ship has been selected, you will be instructed to arm it with weaponry"
380 PRINT "from the following list:"
390 PRINT: COLOR 11
400 PRINT "Type                         Cargo Space    Rel. Strength"
410 PRINT "1 Phaser banks                   12                4"
420 PRINT "2 Anti-matter missile             4               20"
430 PRINT "3 Hyperspace lance                4               16"
440 PRINT "4 Photon torpedo                  2               10"
450 PRINT "5 Hyperon neutralization field   20                6"
460 COLOR 14: PRINT
470 PRINT "Weapons #1 & #5 can be fired 100 times each; all others can be fired once for"
480 PRINT "each aboard.  A typical load for a cruiser might consist of:"
490 PRINT: COLOR 11
500 PRINT "        1 - #1 Phaser bank          = 12"
510 PRINT "        2 - #3 Hyperspace lances    =  8"
520 PRINT "        2 - #4 Photon torpedoes     =  4"
530 PRINT "                                  ---------"
540 PRINT "                                      24 units of cargo"
542 PRINT: COLOR 13: PRINT "(Press any key.)"
543 A$ = INKEY$: IF A$ = "" THEN 543
545 PRINT: COLOR 14
550 PRINT "A word of caution: Firing high yield weapon at close (< 100) range can be"
560 PRINT "dangerous to your ship, and minimal damage can occur as far out as 200 in some"
570 PRINT "circumstances.  Range is given in thousands of kilometers."
600 GOTO 640
610 COLOR 10: PRINT "Do you wish a manuever chart (Y/N)";: INPUT M$: COLOR 15
620 IF LEFT$(M$, 1) = "N" OR LEFT$(M$, 1) = "n" THEN 770
640 COLOR 12
650 PRINT: PRINT "     Manuever Chart": PRINT
670 PRINT "  1     Fire phasers"
680 PRINT "  2     Fire anti-matter missile"
690 PRINT "  3     Fire hyperspace lance"
700 PRINT "  4     Fire photon torpedo"
710 PRINT "  5     Activate hyperon neutralization field"
720 PRINT "  6     Self-destruct"
730 PRINT "  7     Change velocity"
740 PRINT "  8     Disengage"
750 PRINT "  9     Proceed"
770 COLOR 15: PRINT: PRINT "You have a choice of three systems to patrol."
780 COLOR 11: PRINT "(1) Orion, (2) Deneb, (3) Arcturus"
810 COLOR 10: PRINT "Select a system (1-3)";: INPUT S9: COLOR 15
820 IF S9 = 1 THEN 2380
830 IF S9 = 2 THEN 2430
840 GOTO 2480
850 D0 = 0
860 D1 = 0
870 N1 = 0
880 N2 = 0
890 N3 = 0
900 N4 = 0
910 D = 0
920 COLOR 10: PRINT "Which spacecraft would you like (1-3)";: INPUT S: COLOR 15
930 ON S GOTO 1790, 1830, 1870
960 GOTO 920
970 C = C0
980 PRINT "You have"; C; "units of cargo space to fill with weaponry."
990 COLOR 10: PRINT "Choose a weapon and the amount you wish";: INPUT W, N: COLOR 15
1000 ON W GOTO 1910, 2010, 2100, 2190, 2280
1050 GOTO 980
1060 IF N * C1 > C THEN 2530
1070 C = C - N * C1
1080 ON W GOTO 1990, 2080, 2170, 2260
1120 GOTO 2360
1130 IF C > 1 THEN 980
1140 REM
1150 S1 = S0 * RND(1)
1160 R = (3 * RND(1) + 5) * 100
1180 PRINT: PRINT "Range to target:"; R
1190 PRINT "Relative velocity:"; S1
1200 COLOR 10: PRINT "Action";: INPUT M: COLOR 15
1210 ON M GOTO 1940, 2030, 2120, 2210, 2310, 1660, 1390, 2760
1290 IF R < 500 THEN 1500
1300 IF S1 > 0 THEN 1330
1310 R = R + (S1 * 8.3) ^ 1.25
1320 GOTO 1340
1330 R = R - (S1 * 8.3) ^ 1.25
1340 IF R > 1500 THEN 2590
1350 IF R > 0 THEN 1370
1360 R = -R
1370 PRINT
1380 GOTO 1180
1390 COLOR 10: PRINT "Change to be effected";: INPUT S2: COLOR 15
1400 IF (S1 + S2) > S0 THEN 2550
1410 S1 = S1 + S2
1420 GOTO 1180
1430 F0 = P1 * (Z / R) ^ 1.5
1440 REM
1450 D0 = (2 * F0 + 3 * F0 * RND(1)) / 5
1460 D = D + D0
1470 PRINT "Scanners report enemy damage now:"; D
1480 IF D > 99 THEN 2720
1490 GOTO 1510
1500 D0 = 0
1510 REM
1520 K = E1 + E2 * RND(1)
1530 REM
1540 E = E3 + E4 * RND(1) + 5 / P0 * RND(1)
1550 REM
1560 F3 = E * (K / R) ^ 1.85
1570 D2 = (3 * F3 + 3 * F3 * RND(1)) / 5.5
1580 D1 = D1 + D2
1590 IF (Z * D0) / (R * 500) > 2.2 THEN 1620
1600 D3 = D0 * 2 / (R ^ 2 * P0)
1610 D1 = D1 + D3
1620 PRINT "Damage control reports your vessel damage at:"; D1
1630 IF D1 > 99 THEN 2740
1640 IF D > 99 THEN 2760
1650 GOTO 1300
1660 PRINT "Self destruct failsafe activated!!"
1670 COLOR 10: PRINT "Input 1 to release failsafe";: INPUT U: COLOR 15
1680 IF U = 1 THEN 1700
1690 GOTO 1290
1700 PRINT "Self-destruct accomplished."
1710 IF R > 60 THEN 1740
1720 PRINT "Enemy vessel also destroyed."
1730 GOTO 2760
1740 D4 = 3200 / R
1750 D = D + D4
1760 IF D > 99 THEN 1720
1770 PRINT "Enemy vessel survives with"; D; "damage."
1780 GOTO 2760
1790 S0 = 10
1800 C0 = 16
1810 P0 = 1
1820 GOTO 970
1830 S0 = 4
1840 C0 = 24
1850 P0 = 2
1860 GOTO 970
1870 S0 = 2
1880 C0 = 30
1890 P0 = 5
1900 GOTO 970
1910 C1 = 12
1930 GOTO 1060
1940 P1 = 4
1950 IF N1 = 0 THEN 2160
1960 N1 = N1 - 1
1970 Z = 200
1980 GOTO 1430
1990 N1 = N1 + N
2000 GOTO 1130
2010 C1 = 4
2020 GOTO 1060
2030 P1 = 20
2040 IF N2 = 0 THEN 2640
2050 N2 = N2 - 1
2060 Z = 500
2070 GOTO 1430
2080 N2 = N2 + N
2090 GOTO 1130
2100 C1 = 4
2110 GOTO 1060
2120 P1 = 16
2130 IF N3 = 0 THEN 2660
2140 N3 = N3 - 1
2150 Z = 550
2160 GOTO 1430
2170 N3 = N3 + N
2180 GOTO 1130
2190 C1 = 2
2200 GOTO 1060
2210 P1 = 10
2220 IF N4 = 0 THEN 2680
2230 N4 = N4 - 1
2240 Z = 400
2250 GOTO 1430
2260 N4 = N4 + N
2270 GOTO 1130
2280 C1 = .20
2290 N = 100
2300 GOTO 1060
2310 P1 = 6
2320 IF N5 = 0 THEN 2700
2330 N5 = N5 - 1
2340 Z = 250
2350 GOTO 1430
2360 N5 = N5 + N
2370 GOTO 1130
2380 E1 = 150
2390 E2 = 500
2400 E3 = 3
2410 E4 = 4
2420 GOTO 850
2430 E1 = 200
2440 E2 = 350
2450 E3 = 4
2460 E4 = 3
2470 GOTO 850
2480 E1 = 150
2490 E2 = 400
2500 E3 = 5
2510 E4 = 2
2520 GOTO 850
2530 PRINT "Not enough space.  Reselect."
2540 GOTO 980
2550 PRINT "Change beyond maximum possible."
2560 PRINT "Increasing to maximum."
2570 S1 = S0
2580 GOTO 1300
2590 PRINT "Out of sensor range.  Automatic disengage."
2600 GOTO 2760
2610 PRINT "Phaser banks drained."
2620 PRINT "Select another course of action."
2630 GOTO 1200
2640 PRINT "All anti-matter missiles expended."
2650 GOTO 2620
2660 PRINT "All hyperspace lances expended."
2670 GOTO 2620
2680 PRINT "All photon torpedo tubes empty."
2690 GOTO 2620
2700 PRINT "Hyperon neutralization field drained."
2710 GOTO 2620
2720 PRINT "Enemy vessel destroyed."
2730 GOTO 1510
2740 PRINT "Your vessel has been destroyed."
2760 COLOR 10: PRINT "Another battle (Y/N)";: INPUT R$: COLOR 15
2770 IF LEFT$(R$, 1) = "Y" OR LEFT$(R$, 1) = "y" THEN 810
2780 PRINT "Try again later!"
2790 END

