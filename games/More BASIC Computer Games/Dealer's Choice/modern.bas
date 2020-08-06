90 CLS: COLOR 12
100 PRINT TAB(33); "Dealer's Choice"
110 PRINT TAB(31); "Creative Computing"
120 PRINT TAB(29); "Morristown, New Jersey"
130 PRINT: PRINT: PRINT: COLOR 14
135 RANDOMIZE TIMER
140 PRINT "This program will simulate the T.V. show, Dealer's Choice."
150 PRINT "You have $100 to start with.  Enjoy the game.": PRINT: COLOR 15
160 O = 100
170 PRINT "For the first game, we will play on the Wheel of Choice.  The object is simple."
180 PRINT "Guess what suit will appear on the wheel and you will get paid at those odds if"
190 PRINT "you are right.  They are as follows:": PRINT
200 COLOR 11
210 PRINT "  1 = Diamonds at 11 to 1 odds.        2 = Spades at 1 to 1 odds."
220 PRINT "  3 = Hearts at 3 to 1 odds.           4 = Clubs at 3 to 1 odds."
225 PRINT: COLOR 15
230 PRINT "You may bet up to $25.  Good luck!": PRINT
240 COLOR 10: PRINT "What suit do you want";: INPUT A: COLOR 15
250 IF A > 4 OR A < 1 THEN 270
260 IF A <= 4 THEN 280
270 PRINT "*** You picked a wrong suit ***": GOTO 240
280 COLOR 10: PRINT "What is the bet";: INPUT B8: COLOR 15
290 IF B8 > 25 OR B8 <= 0 THEN 310
300 IF B8 <= 25 THEN 320
310 PRINT "*** You bet over the house limit ***": GOTO 280
320 PRINT: PRINT "Okay, now that your bet is in, we will spin the wheel -- good luck!"
330 FOR B1 = 1 TO 10 * 570: NEXT B1
340 PRINT "The wheel is slowing down."
350 FOR B1 = 1 TO 7 * 570: NEXT B1: PRINT "The wheel is stopping."
360 FOR B1 = 1 TO 4 * 570: NEXT B1
370 PRINT "The suit is ";: FOR B1 = 1 TO 4 * 570
380 NEXT B1
390 Z = INT(4 * RND(1) + 1): COLOR 13: PRINT "****"; Z; "****": COLOR 15
400 IF Z = A THEN 420
410 IF Z <> A THEN 470
420 ON Z GOTO 430, 440, 450, 460
430 O = O + (11 * B8): PRINT "You win on Diamonds!": GOTO 480
440 O = O + (1 * B8): PRINT "You win on Spades!": GOTO 480
450 O = O + (3 * B8): PRINT "You win on Hearts!": GOTO 480
460 O = O + (3 * B8): PRINT "You win on Clubs!": GOTO 480
470 O = O - (1 * B8): PRINT "You lose.": GOTO 480
480 PRINT: COLOR 12: PRINT "At the end of part 1, you have $";
485 O$ = STR$(O): O$ = RIGHT$(O$, LEN(O$) - 1): PRINT O$; ".": COLOR 15
490 GOSUB 2000
500 PRINT "This is the game of In Between.  The object is: 5 cards will be dealt out.  If"
510 PRINT "any card is less than a 3 or greater than a 10, the game is over.  You may bet"
520 PRINT "up to $30.  Your money will be doubled each time you are right.  Good luck!"
530 PRINT
540 COLOR 10: PRINT "What is the bet";: INPUT A: COLOR 15
550 IF A > 30 THEN PRINT "*** You bet over the house limit ***": GOTO 540
560 T = T + 1: Z = INT(12 * RND(1) + 1)
570 PRINT "Card number"; T; "is a"; STR$(Z); ".": B = B + (2 * A)
580 IF Z < 3 OR Z > 10 THEN 630
590 IF T = 5 THEN 650
595 B$ = STR$(B): B$ = RIGHT$(B$, LEN(B$) - 1)
600 PRINT "You are still in the game.  You have $"; B$; "."
610 COLOR 10: PRINT "Stop or Go (S/G)";: INPUT A$: COLOR 15: IF LEFT$(A$, 1) = "G" OR LEFT$(A$, 1) = "g" THEN 560
620 IF LEFT$(A$, 1) = "S" OR LEFT$(A$, 1) = "s" THEN 650
630 O = O - A
640 O$ = STR$(O): O$ = RIGHT$(O$, LEN(O$) - 1): COLOR 12: PRINT "You lost.  At the end of part 2, you have $"; O$; ".": COLOR 15: GOTO 660
650 O = O + B: O$ = STR$(O): O$ = RIGHT$(O$, LEN(O$) - 1): COLOR 12: PRINT "You win.  At the end of part 2, you have $"; O$; ".": COLOR 15
660 GOSUB 2000
670 PRINT "This is the game of blackjack (Dealer's Choice style).  The object is to beat"
680 PRINT "the dealer with over 17 or 21 or under.  You may bet up to $50.  You may stop"
690 PRINT "when you wish.  If you make blackjack, your money is doubled.  If the house"
710 PRINT "deals out less than a total of 17 in 6 tries, you will keep the money you bet."
720 PRINT "Good luck!": PRINT
730 Z5 = 0: Z1 = 0: PRINT "The dealer will get his cards first.": PRINT
740 C = 0: C3 = 0
750 PRINT "Here I go."
760 Q = INT(12 * RND(1) + 1)
770 Z5 = Q + Z5
780 PRINT "The card is a"; STR$(Q); ".";: C = C + 1
790 PRINT " So far:"; Z5: IF C = 6 THEN 850
800 IF Z5 < 17 THEN 760
810 IF Z5 > 21 THEN 910
820 IF Z5 = 21 THEN 880
830 IF Z5 < 21 THEN 870
840 IF Z5 >= 17 THEN 870
850 IF Z5 < 17 THEN 890
860 IF Z5 >= 17 THEN 800
870 PRINT "I stop.  The total for me is"; STR$(Z5); ".  Now you go.": PRINT: GOTO 930
880 PRINT "I got blackjack!": PRINT: GOTO 930
890 PRINT "The house dealt out less than 17.  Now you must try to beat me.": PRINT: GOTO 930
910 PRINT "I blew it.  You win the greatest amount allowed to be bet by the house.": GOTO 1160
930 COLOR 10: PRINT "What is the bet";: INPUT A: COLOR 15
940 IF A > O THEN 980
950 IF A > 50 OR A <= 0 THEN 970
960 IF A <= 50 THEN 990
970 PRINT "*** You bet over the house limit ***": GOTO 930
980 PRINT "*** You bet over what you have ***": GOTO 930
990 Q1 = INT(12 * RND(1) + 1): PRINT "Your card is a"; STR$(Q1); ".": C3 = C3 + 1
1000 Z1 = Q1 + Z1: Z1$ = STR$(Z1): Z1$ = RIGHT$(Z1$, LEN(Z1$) - 1): PRINT "So far the total for you is $"; Z1$; ".": IF C3 = 6 THEN 1090
1010 IF Z1 > 21 THEN 1120
1020 COLOR 10: PRINT "Stop or Go (S/G)";: INPUT A$: COLOR 15
1030 IF LEFT$(A$, 1) = "S" OR LEFT$(A$, 1) = "s" THEN 1050
1040 IF LEFT$(A$, 1) = "G" OR LEFT$(A$, 1) = "g" THEN 990
1050 IF Z1 = Z5 THEN 1100
1060 IF Z1 < Z5 THEN 1120
1070 IF Z1 = 21 THEN 1110
1080 IF Z5 < Z1 THEN 1130
1090 IF Z1 < 17 THEN 1140
1100 PRINT "We are the same, so we will play again.": GOTO 730
1110 O = O + (2 * A): PRINT "You beat the dealer with blackjack!!": GOTO 1170
1120 O = O - (1 * A): PRINT "The dealer beat you.  You lose.": GOTO 1170
1130 O = O + (1 * A): PRINT "The deal lost.  You win!": GOTO 1170
1140 O = O + (1 * A): PRINT "The house dealt out less than 17 in 6 tries.  ";
1150 PRINT "You get the money you bet.": GOTO 1170
1160 O = O + 50: PRINT "You keep it with our best wishes.": GOTO 1170
1170 O$ = STR$(O): O$ = RIGHT$(O$, LEN(O$) - 1): COLOR 12: PRINT "At the end of part 3, you have $"; O$; ".": COLOR 15
1180 IF O <= 0 THEN 1580
1190 GOSUB 2000
1200 PRINT "Now we enter the last chance round.  If you make up to $300, you will be able"
1210 PRINT "to go into the bonus round.  The object is to guess into which category the"
1220 PRINT "total of 5 cards will add up to.  These are the categories:": PRINT
1230 COLOR 11
1240 PRINT "  1 = 31-40 at 1 to 1 odds.     2 = 41-50 at 3 to 1 odds."
1250 PRINT "  3 = 21-31 at 3 to 1 odds.     4 = 6-20 at 20 to 1 odds."
1255 PRINT: COLOR 15
1260 PRINT "Good luck!!": PRINT
1270 O$ = STR$(O): O$ = RIGHT$(O$, LEN(O$) - 1): PRINT "At this point in the game you have $"; O$; "."
1280 COLOR 10: PRINT "What category do you want";: INPUT A: COLOR 15
1290 IF A <= 4 THEN 1320
1300 IF A > 4 THEN 1310
1310 PRINT "*** You bet on a wrong category ***": GOTO 1280
1320 COLOR 10: PRINT "What is the bet";: INPUT B: COLOR 15
1330 IF B <= O THEN 1360
1340 IF B > O THEN 1350
1350 PRINT "*** You bet over what you have ***": GOTO 1320
1360 PRINT "The cards are now being added up.  Good luck!": PRINT
1370 Q = INT(12 * RND(1) + 1): C1 = C1 + 1
1380 PRINT "Card number"; C1; "is a"; STR$(Q); ".  ";
1390 Z = Z + Q: PRINT "So far:"; Z
1400 IF C1 = 5 THEN 1420
1410 GOTO 1370
1420 ON A GOTO 1430, 1460, 1490, 1520
1430 IF Z < 31 THEN 1540
1440 IF Z < 40 THEN 1550
1450 IF Z > 40 THEN 1540
1460 IF Z < 41 THEN 1540
1470 IF Z < 50 THEN 1560
1480 IF Z > 50 THEN 1540
1490 IF Z < 21 THEN 1540
1500 IF Z < 31 THEN 1560
1510 IF Z > 31 THEN 1540
1520 IF Z < 6 THEN 1540
1530 IF Z < 20 THEN 1570
1540 O = O - (1 * B): PRINT "You lose.": GOTO 1580
1550 O = O + (1 * B): PRINT "You win.": GOTO 1580
1560 O = O + (3 * B): PRINT "You win!": GOTO 1580
1570 O = O + (20 * B): PRINT "You win!!!": GOTO 1580
1580 O$ = STR$(O): O$ = RIGHT$(O$, LEN(O$) - 1): COLOR 12: PRINT "At the end of the game, you have a grand total of $"; O$; ".": COLOR 15
1590 IF O < 300 THEN 1940
1600 GOSUB 2000
1610 PRINT "You are eligible for the Bonus Round."
1620 COLOR 10: PRINT "Do you want to play it (Y/N)";: INPUT A$: COLOR 15
1630 IF LEFT$(A$, 1) = "N" OR LEFT$(A$, 1) = "n" THEN 1940
1640 PRINT "This is the Bonus Round.  If you get a total of 1,000 without getting a spade"
1650 PRINT "in the rolls, you will get a grand prize of $10,000.00.  You may stop at any"
1660 PRINT "point during the game.  You will keep what you made.  Good luck!"
1680 PRINT
1690 DIM A(5), B(4): A9$ = "Spades"
1700 PRINT "The dice are rolling.  Good luck."
1710 PRINT "The dice are: ";
1720 FOR B1 = 1 TO 570 * 5: NEXT B1
1730 X = INT(5 * RND(1) + 1)
1740 A(1) = 50: A(2) = 100: A(3) = 150: A(4) = 200: A(5) = 0
1750 Y = INT(4 * RND(1) + 1)
1760 B(1) = 50: B(2) = 100: B(3) = 150: B(4) = 200
1770 IF A(X) = 0 THEN 1790
1780 PRINT "****"; A(X); B(Y); "****": PRINT "Total:"; A(X) + B(Y): GOTO 1810
1790 PRINT "**** "; A9$; " "; B(Y); "****"
1800 PRINT "Total:"; B(Y): GOTO 1870
1810 B7 = B7 + (A(X) + B(Y)): PRINT "You now have"; STR$(B7); ".": IF B7 >= 1000 THEN 1890
1820 COLOR 10: PRINT "Stop or Go (S/G)";: INPUT B$
1830 IF LEFT$(B$, 1) = "G" OR LEFT$(B$, 1) = "g" THEN 1700
1840 O$ = STR$(B7 + O): O$ = RIGHT$(O$, LEN(O$) - 1)
1845 PRINT "Smart move.  You get the money from the beginning of the game plus the Bonus"
1850 PRINT "Round.  At the end of the game, you have the grand total of $"; O$; ".": GOTO 1940
1870 O$ = STR$(O): O$ = RIGHT$(O$, LEN(O$) - 1)
1875 PRINT "You lose the money from the Last Chance Round, but you still have a grand"
1880 PRINT "total of $"; O$; ".": GOTO 1940
1890 FOR T = 1 TO 3: PRINT CHR$(7);: FOR B1 = 1 TO 570: NEXT B1: NEXT T
1900 B7 = O + 10000: PRINT TAB(15); "**** CONGRATULATIONS! ****"
1910 PRINT "You won the grand prize.  At the end of the game, you have"
1920 FOR P = 1 TO 3: PRINT: NEXT P
1930 COLOR 12: B7$ = STR$(B7): B7$ = RIGHT$(B7$, LEN(B7$) - 1): PRINT TAB(18); "****** $"; B7$; " ******": COLOR 15
1940 PRINT: PRINT "This is the end of the game.  I hope you enjoyed it."
1950 END
2000 PRINT: COLOR 9: PRINT "(Press Enter.)": LINE INPUT Z$
2010 COLOR 15: PRINT: PRINT
2020 RETURN

