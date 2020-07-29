10 PRINT TAB(24); "BOBSTONES"
20 PRINT TAB(20); "CREATIVE COMPUTING"
30 PRINT TAB(18); "MORRISTOWN, NEW JERSEY"
40 RANDOMIZE TIMER
130 PRINT: PRINT: PRINT
140 PRINT "    THIS IS A NUMBER GAME CALLED BOBSTONES.  THE OBJECT OF"
150 PRINT "BOBSTONES IS TO GUESS THREE THINGS ABOUT THE ROLL OF A PAIR"
160 PRINT "OF DICE.  ON EACH TURN, THE COMPUTER SIMULATES THE ROLL OF"
170 PRINT "THE DICE.  THEN, YOU OR THE COMPUTER (YOUR OPPONENT) GUESS"
180 PRINT
190 PRINT "                                                     SCORE"
200 PRINT " 1. IF THE SUM OF THE DICE IS ODD OR EVEN           1 POINT"
210 PRINT " 2. THE SUM OF THE DICE                             2 POINTS"
220 PRINT " 3. THE NUMBER ON EACH OF THE TWO DICE              3 POINTS"
230 PRINT
240 PRINT "    THE WINNER IS THE FIRST PLAYER TO SCORE 11 POINTS.  IF A"
250 PRINT "TIE RESULTS, THE WINNER IS THE FIRST PLAYER TO BREAK THE TIE."
260 PRINT "    GOOD LUCK!"
270 'DEF FND(X) = INT(6 * RND(1) + 1)
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
390 PRINT "YOU FIRST OR ME";
400 INPUT Z$
410 IF Z$ = "YOU" THEN 450
420 IF Z$ = "ME" THEN 450
430 PRINT "/// TYPE THE WORD 'YOU' OR THE WORD 'ME'."
440 GOTO 390
450 LET D1 = FND(Z1)
460 IF Z1 = 0 THEN 480
470 LET Z1 = 0
480 LET D2 = FND(0)
490 LET S = D1 + D2
500 IF J1 = 0 THEN 650
510 IF Z$ <> "ME" THEN 580
520 IF J2 <> 0 THEN 1160
530 PRINT
540 PRINT "THE SCORE IS ME"; A(2); " - YOU"; A(1); "."
550 IF A(1) >= 11 THEN 1900
560 IF A(2) >= 11 THEN 1900
570 GOTO 670
580 IF Z$ <> "YOU" THEN 2020
590 IF J2 <> 1 THEN 670
600 PRINT
610 PRINT "THE SCORE IS YOU"; A(1); " - ME"; A(2); "."
620 IF A(1) >= 11 THEN 1900
630 IF A(2) >= 11 THEN 1900
650 LET J1 = -1
660 IF Z$ = "YOU" THEN 1160
670 PRINT
680 PRINT "YOUR TURN."
690 LET J2 = 1
700 LET R = S - (INT(S / 2) * 2)
710 PRINT "IS THE SUM ODD OR EVEN";
720 INPUT A$
730 IF A$ = "ODD" THEN 770
740 IF A$ = "EVEN" THEN 800
750 PRINT "/// TYPE THE WORD 'ODD' OR THE WORD 'EVEN'."
760 GOTO 710
770 IF R = 1 THEN 820
780 PRINT "SORRY, THE SUM IS"; S; "."
790 GOTO 450
800 IF R = 0 THEN 820
810 GOTO 780
820 PRINT "YOU ARE CORRECT."
830 LET A(1) = A(1) + 1
840 PRINT "NOW, GUESS THE SUM";
850 INPUT G1
860 IF G1 < 2 THEN 890
870 IF G1 > 12 THEN 890
880 GOTO 910
890 PRINT "/// THE SUM MUST BE BETWEEN 2 AND 12."
900 GOTO 840
910 IF G1 = S THEN 940
920 PRINT "SORRY, THE SUM IS"; S; "."
930 GOTO 450
940 PRINT "YOU ARE CORRECT."
950 LET A(1) = A(1) + 2
960 PRINT "WHAT ARE THE TWO NUMBERS WHICH PRODUCED "; S; " ";
970 INPUT N1, N2
980 IF N1 < 1 THEN 1030
990 IF N2 < 1 THEN 1030
1000 IF N1 > 6 THEN 1030
1010 IF N2 > 6 THEN 1030
1020 GOTO 1050
1030 PRINT "/// THE NUMBERS MUST BE BETWEEN 1 AND 6."
1040 GOTO 960
1050 IF N1 = D1 THEN 1090
1060 IF N2 = D1 THEN 1110
1070 PRINT "SORRY, THE NUMBERS ARE"; D1; " AND"; D2; "."
1080 GOTO 450
1090 IF N2 = D2 THEN 1130
1100 GOTO 1070
1110 IF N1 = D2 THEN 1130
1120 GOTO 1070
1130 PRINT "YOU ARE CORRECT."
1140 LET A(1) = A(1) + 3
1150 GOTO 450
1160 LET J2 = 0
1170 PRINT
1180 PRINT "MY TURN."
1190 PRINT "*** ON THIS ROLL OF THE DICE, THE TWO NUMBERS ";
1195 PRINT "ARE "; D1; " AND "; D2; "."
1200 PRINT "*** THE SUM IS "; S; "."
1210 LET A1 = INT(2 * RND(1) + 1)
1220 IF Z2 = 0 THEN 1240
1230 LET Z2 = 0
1240 IF A1 = 1 THEN 1270
1250 PRINT "MY GUESS IS THAT THE SUM IS ODD."
1260 GOTO 1280
1270 PRINT "MY GUESS IS THAT THE SUM IS EVEN."
1280 PRINT "AM I RIGHT OR WRONG";
1290 INPUT D$
1300 IF D$ = "RIGHT" THEN 1340
1310 IF D$ = "WRONG" THEN 450
1320 PRINT "/// TYPE THE WORD 'RIGHT' OR THE WORD 'WRONG'."
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
1430 PRINT "MY GUESS OF THE SUM IS "; B2
1440 PRINT "AM I RIGHT OR WRONG";
1450 INPUT D$
1460 IF D$ = "RIGHT" THEN 1500
1470 IF D$ = "WRONG" THEN 450
1480 PRINT "/// TYPE THE WORD 'RIGHT' OR THE WORD 'WRONG'."
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
1810 PRINT "MY GUESS IS THAT THE NUMBERS ARE "; C1; " AND "; C2; "."
1820 PRINT "AM I RIGHT OR WRONG";
1830 INPUT D$
1840 IF D$ = "RIGHT" THEN 1880
1850 IF D$ = "WRONG" THEN 450
1860 PRINT "/// TYPE THE WORD 'RIGHT' OR THE WORD 'WRONG'."
1870 GOTO 1820
1880 LET A(2) = A(2) + 3
1890 GOTO 450
1900 IF A(1) <> A(2) THEN 1930
1910 IF J2 <> 0 THEN 1160
1920 GOTO 670
1930 IF A(1) > A(2) THEN 2030
1940 PRINT
1950 PRINT "I WIN! ANOTHER GAME";
1960 INPUT C$
1970 IF C$ = "YES" THEN 290
1980 IF C$ = "NO" THEN 2010
1990 PRINT "/// TYPE THE WORD 'YES' OR THE WORD 'NO'."
2000 GOTO 1960
2010 PRINT "SEE YOU LATER."
2020 END
2030 PRINT
2040 PRINT "YOU WIN! ANOTHER GAME";
2050 GOTO 1960

FUNCTION FND (X)
  FND = INT(6 * RND(1) + 1)
END FUNCTION
