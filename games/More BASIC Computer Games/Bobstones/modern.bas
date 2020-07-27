5 CLS: COLOR 12
10 PRINT TAB(35); "Bobstones"
20 PRINT TAB(31); "Creative Computing"
30 PRINT TAB(29); "Morristown, New Jersey"
40 RANDOMIZE TIMER
130 PRINT: PRINT: PRINT: COLOR 14
140 PRINT "This is a number game called Bobstones.  The object of Bobstones is to guess"
150 PRINT "three things about the roll of a pair of dice.  On each turn, the computer"
160 PRINT "simulates the roll of the dice.  Then, you or the computer (your opponent)"
170 PRINT "guess:"
180 PRINT: COLOR 13
190 PRINT "                                                     Score"
200 PRINT " 1. If the sum of the dice is odd or even           1 Point"
210 PRINT " 2. The sum of the dice                             2 Points"
220 PRINT " 3. The number on each of the two dice              3 Points"
230 PRINT: COLOR 14
240 PRINT "The winner is the first player to score 11 points.  If a tie results, the"
250 PRINT "winner is the first player to break the tie.  Good luck!"
260 COLOR 15
270 DEF FND(X) = INT(6 * RND(1) + 1)
280 DIM A(2)
290 LET A(1) = 0
300 LET A(2) = 0
310 LET Z1 = -1
320 LET Z2 = -1
330 LET Z3 = -1
340 LET Z4 = -1
350 LET Z5 = -1
360 LET J1 = 0
370 PRINT
380 PRINT
390 COLOR 10: PRINT "You first or me";
400 INPUT Z$: COLOR 15
410 IF LEFT$(Z$, 1) = "Y" OR LEFT$(Z$, 1) = "y" THEN 450
420 IF LEFT$(Z$, 1) = "M" OR LEFT$(Z$, 1) = "m" THEN 450
430 PRINT "/// Type the word 'YOU' or the word 'ME'."
440 GOTO 390
450 LET D1 = FND(Z1)
460 IF Z1 = 0 THEN 480
470 LET Z1 = 0
480 LET D2 = FND(0)
490 LET S = D1 + D2
500 IF J1 = 0 THEN 650
510 IF LEFT$(Z$, 1) <> "M" AND LEFT$(Z$, 1) <> "m" THEN 580
520 IF J2 <> 0 THEN 1160
530 PRINT
540 PRINT "The score is me"; A(2); "- you"; STR$(A(1)); "."
550 IF A(1) >= 11 THEN 1900
560 IF A(2) >= 11 THEN 1900
570 GOTO 670
580 IF LEFT$(Z$, 1) <> "Y" AND LEFT$(Z$, 1) <> "y" THEN 2020
590 IF J2 <> 1 THEN 670
600 PRINT
610 PRINT "The score is you"; A(1); "- me"; STR$(A(2)); "."
620 IF A(1) >= 11 THEN 1900
630 IF A(2) >= 11 THEN 1900
650 LET J1 = -1
660 IF LEFT$(Z$, 1) = "Y" OR LEFT$(Z$, 1) = "y" THEN 1160
670 PRINT
680 PRINT "Your turn."
690 LET J2 = 1
700 LET R = S - (INT(S / 2) * 2)
710 COLOR 10: PRINT "Is the sum odd or even";
720 INPUT A$: COLOR 15
730 IF LEFT$(A$, 1) = "O" OR LEFT$(A$, 1) = "o" THEN 770
740 IF LEFT$(A$, 1) = "E" OR LEFT$(A$, 1) = "e" THEN 800
750 PRINT "/// Type the word 'ODD' or the word 'EVEN'."
760 GOTO 710
770 IF R = 1 THEN 820
780 PRINT "Sorry, the sum is"; STR$(S); "."
790 GOTO 450
800 IF R = 0 THEN 820
810 GOTO 780
820 PRINT "You are correct."
830 LET A(1) = A(1) + 1
840 COLOR 10: PRINT "Now, guess the sum";
850 INPUT G1: COLOR 15
860 IF G1 < 2 THEN 890
870 IF G1 > 12 THEN 890
880 GOTO 910
890 PRINT "/// The sum must be between 2 and 12."
900 GOTO 840
910 IF G1 = S THEN 940
920 PRINT "Sorry, the sum is"; STR$(S); "."
930 GOTO 450
940 PRINT "You are correct."
950 LET A(1) = A(1) + 2
960 COLOR 10: PRINT "What are the two numbers which produced"; STR$(S);
970 INPUT N1, N2: COLOR 15
980 IF N1 < 1 THEN 1030
990 IF N2 < 1 THEN 1030
1000 IF N1 > 6 THEN 1030
1010 IF N2 > 6 THEN 1030
1020 GOTO 1050
1030 PRINT "/// The numbers must be between 1 and 6."
1040 GOTO 960
1050 IF N1 = D1 THEN 1090
1060 IF N2 = D1 THEN 1110
1070 PRINT "Sorry, the numbers are"; D1; "and"; STR$(D2); "."
1080 GOTO 450
1090 IF N2 = D2 THEN 1130
1100 GOTO 1070
1110 IF N1 = D2 THEN 1130
1120 GOTO 1070
1130 PRINT "You are correct."
1140 LET A(1) = A(1) + 3
1150 GOTO 450
1160 LET J2 = 0
1170 PRINT
1180 PRINT "My turn."
1190 COLOR 13: PRINT: PRINT "*** On this roll of the dice, the two numbers ";
1195 PRINT "are"; D1; "and"; STR$(D2); "."
1200 PRINT "*** The sum is"; STR$(S); ".": PRINT: COLOR 15
1210 LET A1 = INT(2 * RND(1) + 1)
1220 IF Z2 = 0 THEN 1240
1230 LET Z2 = 0
1240 IF A1 = 1 THEN 1270
1250 PRINT "My guess is that the sum is odd."
1260 GOTO 1280
1270 PRINT "My guess is that the sum is even."
1280 COLOR 10: PRINT "Am I right or wrong";
1290 INPUT D$: COLOR 15
1300 IF LEFT$(D$, 1) = "R" OR LEFT$(D$, 1) = "r" THEN 1340
1310 IF LEFT$(D$, 1) = "W" OR LEFT$(D$, 1) = "w" THEN 450
1320 PRINT "/// Type the word 'RIGHT' or the word 'WRONG'."
1330 GOTO 1280
1340 LET A(2) = A(2) + 1
1350 IF A1 = 1 THEN 1410
1360 LET B1 = INT(5 * RND(1) + 1)
1370 IF Z3 = 0 THEN 1390
1380 LET Z3 = 0
1390 LET B2 = B1 + B1 + 1
1400 GOTO 1430
1410 LET B1 = FND(0)
1420 LET B2 = B1 + B1
1430 PRINT "My guess of the sum is"; STR$(B2); "."
1440 COLOR 10: PRINT "Am I right or wrong";
1450 INPUT D$: COLOR 15
1460 IF LEFT$(D$, 1) = "R" OR LEFT$(D$, 1) = "r" THEN 1500
1470 IF LEFT$(D$, 1) = "W" OR LEFT$(D$, 1) = "w" THEN 450
1480 PRINT "/// Type the word 'RIGHT' or the word 'WRONG'."
1490 GOTO 1440
1500 LET A(2) = A(2) + 2
1510 IF B2 <> 2 THEN 1550
1520 LET C1 = 1
1530 LET C2 = 1
1540 GOTO 1810
1550 IF B2 <> 3 THEN 1590
1560 LET C1 = 1
1570 LET C2 = 2
1580 GOTO 1810
1590 IF B2 <> 11 THEN 1630
1600 LET C1 = 5
1610 LET C2 = 6
1620 GOTO 1810
1630 IF B2 <> 12 THEN 1670
1640 LET C1 = 6
1650 LET C2 = 6
1660 GOTO 1810
1670 IF B2 > 7 THEN 1740
1680 LET K1 = B2 - 1
1690 LET C1 = INT(K1 * RND(1) + 1)
1700 IF Z4 = 0 THEN 1720
1710 LET Z4 = 0
1720 LET C2 = B2 - C1
1730 GOTO 1810
1740 LET K1 = B2 - 6
1750 LET K3 = K1 - 1
1760 LET K2 = 7 - K1
1770 LET C1 = (INT(K2 * RND(1) + 1) + K3)
1780 IF Z5 = 0 THEN 1800
1790 LET Z5 = 0
1800 LET C2 = B2 - C1
1810 PRINT "My guess is that the numbers are"; C1; "and"; STR$(C2); "."
1820 COLOR 10: PRINT "Am I right or wrong";
1830 INPUT D$: COLOR 15
1840 IF LEFT$(D$, 1) = "R" OR LEFT$(D$, 1) = "r" THEN 1880
1850 IF LEFT$(D$, 1) = "W" OR LEFT$(D$, 1) = "w" THEN 450
1860 PRINT "/// Type the word 'RIGHT' or the word 'WRONG'."
1870 GOTO 1820
1880 LET A(2) = A(2) + 3
1890 GOTO 450
1900 IF A(1) <> A(2) THEN 1930
1910 IF J2 <> 0 THEN 1160
1920 GOTO 670
1930 IF A(1) > A(2) THEN 2030
1940 PRINT
1950 PRINT "I win!": COLOR 10: PRINT "Another game";
1960 INPUT C$: COLOR 15
1970 IF LEFT$(C$, 1) = "Y" OR LEFT$(C$, 1) = "y" THEN 290
1980 IF LEFT$(C$, 1) = "N" OR LEFT$(C$, 1) = "n" THEN 2010
1990 PRINT "/// Type the word 'YES' or the word 'NO'."
2000 GOTO 1960
2010 PRINT: PRINT "See you later."
2020 END
2030 PRINT
2040 PRINT "You win!": COLOR 10: PRINT "Another game";
2050 GOTO 1960

