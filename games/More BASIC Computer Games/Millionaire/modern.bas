1 CLS: COLOR 12: PRINT TAB(34); "Millionaire"
2 PRINT TAB(31); "Creative Computing"
3 PRINT TAB(29); "Morristown, New Jersey"
4 PRINT: PRINT: PRINT
5 RANDOMIZE TIMER
10 REM    MILLIONAIRE BY CRAIG GUNNETT
15 COLOR 14
20 PRINT "This is the game of 'Millionaire'.  All you must do is type in your name and"
30 PRINT "answer some questions.  The decisions you make will determine how much money"
40 PRINT "you make.  At the time of your death, your life will be rated by the amount of"
50 PRINT "money you made throughout your life.  If you have made $1,000,000, you will be"
60 PRINT "a millionaire and win the game"
70 PRINT
90 COLOR 10: PRINT "Name, please";
100 LET O = -1
110 DIM A$(20), Z$(1), M$(36), S(9), Q(16)
120 FOR I = 1 TO 4
130 LET S(I) = 150
140 NEXT I
150 INPUT A$: COLOR 15
160 PRINT
170 PRINT "Okay, "; A$; ", this is your new life!"
180 LET M$ = "JanFebMarAprMayJunJulAugSepOctNovDec"
190 IF RND(1) > .5 GOTO 220
200 PRINT "On a big farm";
210 GOTO 230
220 PRINT "In a small town";
230 LET T = INT(RND(1) * 12) + 1
240 PRINT ", on "; MID$(M$, 3 * T - 2, 3); "."; STR$(INT(RND(1) * 28) + 1); ", 1980,";
250 PRINT " "; A$; " is born."
260 PRINT "Your parents are very ";
270 IF RND(1) > .5 GOTO 310
280 PRINT "rich.  ";
290 LET M = INT(RND(1) * 5000) + 10000
300 GOTO 330
310 PRINT "poor.  ";
320 LET M = INT((RND(1) + RND(1)) / 2 * 1000)
330 LET T = INT(RND(1) * 12) + 1
340 LET Y = 1996 + INT(RND(1) * 10)
350 PRINT "On "; MID$(M$, T * 3 - 2, 3); "."; STR$(T * 2); ","; STR$(Y); ", you ";
360 Z$ = STR$(M): Z$ = RIGHT$(Z$, LEN(Z$) - 1): PRINT "leave home with $"; Z$; ".": PRINT
370 LET Y = Y + INT(RND(1) * 3) + 1
380 GOSUB 680
390 FOR J = 1 TO 13
400 IF (J / 3) - INT(J / 3) + E = 0 THEN GOSUB 680
410 LET D = INT(28 * RND(1)) + 1
420 LET M1 = (INT(12 * RND(1)) + 1) * 3
430 PRINT
440 COLOR 13: PRINT MID$(M$, M1 - 2, 3); "."; STR$(D); ","; STR$(Y): COLOR 15
450 IF Y - 1980 < 70 GOTO 500
460 IF RND(1) > .5 GOTO 500
470 PRINT "You are dead (couldn't tell, could you?) at the ";
480 PRINT "age of"; STR$(Y - 1980); "."
490 GOTO 2370
500 IF M >= 0 THEN 540
510 LET I = INT(.07 * Y9 * (-M))
520 LET M = M - I
525 I$ = STR$(I): I$ = RIGHT$(I$, LEN(I$) - 1)
526 Z$ = STR$(M): IF M >= 0 THEN Z$ = RIGHT$(Z$, LEN(Z$) - 1)
530 PRINT "The interest on your loan is $"; I$; ".  You have $"; Z$; "."
540 LET Q = INT(13 * RND(1)) + 1
550 IF Q(Q) = 1 GOTO 540
560 LET Q(Q) = 1
570 ON Q GOTO 890, 1010, 1100, 1220, 1280, 1430, 1530
580 ON (Q - 7) GOTO 1850, 1930, 2060, 2120, 2240, 2280
590 Z$ = STR$(M): IF M >= 0 THEN Z$ = RIGHT$(Z$, LEN(Z$) - 1)
595 PRINT "You now have $"; Z$; "."
600 IF O = -2 GOTO 1530
610 IF J = 1 GOTO 640
620 LET M = M + (E - C) * Y9
630 Z$ = STR$(M): IF M >= 0 THEN Z$ = RIGHT$(Z$, LEN(Z$) - 1)
635 PRINT "Your earnings and expenses leave you with $"; Z$; "."
640 LET Y9 = INT(RND(1) * 6) + 5
650 LET Y = Y + Y9
660 NEXT J
670 GOTO 470
680 REM      JOB SUB
690 PRINT "You got a new job as a ";
700 ON INT(RND(1) * 5) + 1 GOTO 740, 770, 800, 830
710 PRINT "teacher";
720 LET E = INT(RND(1) * 4000) + 17000
730 GOTO 850
740 PRINT "lawyer";
750 LET E = INT(RND(1) * 40000) + 80000
760 GOTO 850
770 PRINT "computer programmer";
780 LET E = INT(RND(1) * 5000) + 20000
790 GOTO 850
800 PRINT "bus driver";
810 LET E = INT(RND(1) * 2000) + 16000
820 GOTO 850
830 PRINT "football player";
840 LET E = INT(RND(1) * 100000) + 100000
850 LET C = E - 10000 + INT((RND(1) + RND(1)) * 5000)
860 Z$ = STR$(E): Z$ = RIGHT$(Z$, LEN(Z$) - 1)
865 PRINT ".  You earn $"; Z$; " a year."
870 Z$ = STR$(C): Z$ = RIGHT$(Z$, LEN(Z$) - 1)
875 PRINT "You adjust your expenses to $"; Z$; " a year."
880 RETURN
890 PRINT "You go to Las Vegas to gamble."
900 COLOR 10: PRINT "How much do you bet";: INPUT S: COLOR 15
910 PRINT
920 IF S <= 0 GOTO 1000
930 IF RND(1) > .7 GOTO 970
940 LET S2 = -INT(RND(1) * S)
950 Z$ = STR$(-S2): Z$ = RIGHT$(Z$, LEN(Z$) - 1)
955 PRINT "Ha! Ha!  You lost $"; Z$; "."
960 GOTO 990
970 LET S2 = INT((RND(1) + RND(1)) * S)
980 Z$ = STR$(S2): Z$ = RIGHT$(Z$, LEN(Z$) - 1)
985 PRINT "You won $"; Z$; "."
990 LET M = M + S2
1000 GOTO 590
1010 PRINT "You are offered a coin supposedly worth $100,000."
1020 COLOR 10: PRINT "Do you buy it (Y/N)";
1030 INPUT Z$: COLOR 15
1040 PRINT
1050 LET V7 = INT(RND(1) * 200000) + 1
1060 IF Z$ <> "Y" AND Z$ <> "y" GOTO 1080
1070 LET M = M - 100000 + V7
1080 Z$ = STR$(V7): Z$ = RIGHT$(Z$, LEN(Z$) - 1)
1085 PRINT "The value of the coin is $"; Z$; "."
1090 GOTO 590
1100 PRINT "You are seriously sick.  (Couldn't tell, could you?)"
1110 PRINT "You have ";
1120 ON (INT(RND(1) * 3) + 1) GOTO 1150, 1170
1130 PRINT "the asio-dispepsia regionally hypnotic flu!  (Oh!)"
1140 GOTO 1180
1150 PRINT "computer-itis."
1160 GOTO 1180
1170 PRINT "infectious fatally reoccuring chronic bad breath."
1180 LET U = INT(RND(1) * 1000) + 500
1190 LET M = M - U
1200 Z$ = STR$(U): Z$ = RIGHT$(Z$, LEN(Z$) - 1)
1205 PRINT "Health expenses cost you $"; Z$; "."
1210 GOTO 590
1220 LET F = INT(RND(1) * 100000)
1230 LET C8 = INT(F / 2) - INT(RND(1) * (F / 2))
1235 Z1$ = STR$(F): Z1$ = RIGHT$(Z1$, LEN(Z1$) - 1)
1236 Z2$ = STR$(C8): Z2$ = RIGHT$(Z2$, LEN(Z2$) - 1)
1240 PRINT "Your grandfather grovers just died.  (Oh!)"
1250 PRINT "He left you $"; Z1$; ", but funeral expenses are $"; Z2$; "."
1260 LET M = M - C8 + F
1270 GOTO 590
1280 IF E = 0 GOTO 890
1290 PRINT "News from your boss:"
1300 ON (INT(RND(1) * 3) + 1) GOTO 1350, 1390
1310 LET L = INT(RND(1) * 3000) + 1
1320 LET E = E - L
1330 Z1$ = STR$(L): Z1$ = LEFT$(Z1$, LEN(Z1$) - 1)
1331 Z2$ = STR$(E): Z2$ = LEFT$(Z2$, LEN(Z2$) - 1)
1335 PRINT "You got a $"; Z1$; " decrease in pay.  You now earn $"; Z2$; "."
1340 GOTO 590
1350 PRINT "You're fired!  (Ha!)"
1360 LET E = 0
1370 LET C = INT(C / 4)
1380 GOTO 590
1390 LET R6 = INT(RND(1) * 5000) + 1
1400 LET E = E + R6
1410 Z1$ = STR$(R6): Z1$ = RIGHT$(Z1$, LEN(Z1$) - 1)
1411 Z2$ = STR$(E): Z2$ = RIGHT$(Z2$, LEN(Z2$) - 1)
1415 PRINT "You got a raise of $"; Z1$; ".  You now earn $"; Z2$; "."
1420 GOTO 590
1430 PRINT "The doctor says you need a vacation."
1440 COLOR 10: PRINT "Do you go (Y/N)";: INPUT Z$: COLOR 15
1450 PRINT
1460 LET V = INT(RND(1) * 2000) + 1000
1470 IF Z$ = "N" OR Z$ = "n" GOTO 1500
1480 Z$ = STR$(V): Z$ = RIGHT$(Z$, LEN(Z$) - 1)
1485 PRINT "Good, the vacation costs $"; Z$; "."
1490 GOTO 1510
1500 Z$ = STR$(V): Z$ = RIGHT$(Z$, LEN(Z$) - 1)
1505 PRINT "You just had a nervious breakdown.  Medical costs were $"; Z$; "."
1510 LET M = M - V
1520 GOTO 590
1530 FOR I = 1 TO 4
1540 LET S(I) = INT((INT(RND(1) * 100) + 100 + 2 * S(I)) / 3)
1550 NEXT I
1560 PRINT "#  Stock Name", , , "Price", "Shares Owned"
1565 COLOR 11
1570 PRINT "1  IBM (Incredibly Bad Machines)", S(1), S(5)
1580 PRINT "2  USS (Useless & Stinky Steel)", S(2), S(6)
1590 PRINT "3  NCR (No Cash Return)", , S(3), S(7)
1600 PRINT "4  TWA (Total Wreck Airlines)", S(4), S(8)
1610 IF S(9) = 1 GOTO 2410
1620 COLOR 10: PRINT "Do you buy, sell ($100 fee), or not (B, S, or N)";
1630 INPUT Z$: COLOR 15
1640 PRINT
1650 IF Z$ = "S" OR Z$ = "s" GOTO 1740
1660 IF Z$ = "N" OR Z$ = "n" GOTO 1810
1670 COLOR 10: PRINT "Stock number and quantity";
1680 INPUT S3, S(0): COLOR 15
1690 PRINT
1700 LET S(4 + S3) = S(4 + S3) + S(0)
1710 LET O = -2
1720 LET M = M - S(S3) * S(0) - 100
1730 GOTO 1620
1740 COLOR 10: PRINT "Stock number of quantity";
1750 INPUT S2, S5: COLOR 15
1760 IF RND(1) < .5 GOTO 1880
1770 IF S5 > S(4 + S2) GOTO 1740
1780 LET S(4 + S2) = S(4 + S2) - S5
1790 LET M = M + S(S2) * S5 - 100
1800 GOTO 1620
1810 LET S1 = S(5) + S(6) + S(7) + S(8)
1820 IF S1 > 0 GOTO 610
1830 LET O = -1
1840 GOTO 610
1850 PRINT "News flash!  ";
1860 PRINT "A tornado has just hit the home of "; A$; "."
1870 GOTO 1890
1880 PRINT "An airplane has just crashed into the home of "; A$; "."
1890 LET D8 = INT(RND(1) * 50000) + 1
1900 LET M = M - D8
1910 Z$ = STR$(D8): Z$ = RIGHT$(Z$, LEN(Z$) - 1)
1915 PRINT "Damages have been estimated at $"; Z$; "."
1920 GOTO 590
1930 PRINT "Oh! You just got ";
1940 IF Y - 1980 < 55 GOTO 2000
1950 IF RND(1) > .4 GOTO 1980
1960 PRINT "cancer";
1970 GOTO 2010
1980 PRINT "a heart attack";
1990 GOTO 2010
2000 PRINT "leukemia";
2010 LET M2 = INT(RND(1) * 5000) + 1000
2020 LET M = M - M2
2030 Z$ = STR$(M2): Z$ = RIGHT$(Z$, LEN(Z$) - 1)
2035 PRINT ".  Medical bills are $"; Z$; "."
2040 IF RND(1) < .5 GOTO 470
2050 GOTO 590
2060 PRINT "You just had a car accident!  ";
2070 LET M3 = INT(RND(1) * 3000) + 1000
2080 LET Q7 = INT(RND(1) * 5000) + 100
2085 Z1$ = STR$(M3): Z1$ = RIGHT$(Z1$, LEN(Z1$) - 1)
2086 Z2$ = STR$(Q7): Z2$ = RIGHT$(Z2$, LEN(Z2$) - 1)
2090 PRINT "Medical costs $"; Z1$; ".  Repairs cost $"; Z2$; "."
2100 LET M = M - M3 - Q7
2110 GOTO 590
2120 IF E = 0 GOTO 1010
2130 LET E2 = 10000 + INT(RND(1) * 5000)
2140 Z$ = STR$(E2): Z$ = RIGHT$(Z$, LEN(Z$) - 1)
2145 PRINT "You are offered another job for $"; Z$; " a year."
2150 COLOR 10: PRINT "Would you like to moonlight (Y/N)";
2160 INPUT Z$: COLOR 15
2170 PRINT
2180 IF Z$ = "N" OR Z$ = "n" GOTO 590
2190 ON INT(RND(1) * 3) GOTO 1350, 2220
2200 LET E = E + E2
2210 GOTO 590
2220 PRINT "From overwork you get ";
2230 GOTO 1980
2240 LET R2 = INT(RND(1) * 10000) + 5000
2250 LET M = M - R2
2260 Z$ = STR$(R2): Z$ = RIGHT$(Z$, LEN(Z$) - 1)
2265 PRINT "Your home has been robbed of goods worth $"; Z$; "."
2270 GOTO 590
2280 IF O = -1 GOTO 1430
2290 IF RND(1) > .7 GOTO 1430
2300 LET B4 = INT(RND(1) * 4)
2310 Z1$ = STR$(B4): Z1$ = RIGHT$(Z1$, LEN(Z1$) - 1)
2312 Z2$ = STR$(S1 * B4): Z2$ = RIGHT$(Z2$, LEN(Z2$) - 1)
2315 PRINT "Stock market crash!  Each of your"; S1; "shares of stock is worth $"; Z1$; "."
2320 PRINT "You must sell all of them for a total of $"; Z2$; "."
2340 LET M = M + S1 * B4
2350 LET O = -1
2360 GOTO 590
2370 Z$ = STR$(M): IF M >= 0 THEN Z$ = RIGHT$(Z$, LEN(Z$) - 1)
2375 PRINT "You had $"; Z$; "."
2380 IF O = -1 GOTO 2430
2390 LET S(9) = 1
2400 GOTO 1530
2410 LET M = M + S(1) * S(5) + S(2) * S(6) + S(3) * S(7) + S(4) * S(8)
2420 Z$ = STR$(M): IF M >= 0 THEN Z$ = RIGHT$(Z$, LEN(Z$) - 1)
2425 PRINT "With stock value, you have $"; Z$; "."
2430 IF M < 0 GOTO 2480
2440 IF M < 500000 GOTO 2510
2450 IF M < 1E+06 GOTO 2530
2460 COLOR 12: PRINT A$; " won!!  You are a millionaire!!"
2470 GOTO 2540
2480 COLOR 12: PRINT "You lousy %$!@#!  Now your poor family has to pay off your debts..."
2500 GOTO 2540
2510 COLOR 12: PRINT "Not bad, "; A$; "."
2520 GOTO 2540
2530 COLOR 12: PRINT "Close, "; A$; ".  Maybe next life."
2540 PRINT "Thanks for playing 'Millionaire', "; A$; "!!!"
2550 END

