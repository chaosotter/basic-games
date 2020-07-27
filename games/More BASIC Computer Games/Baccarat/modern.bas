5 CLS: COLOR 12: RANDOMIZE TIMER
10 PRINT TAB(37); "Bacrat"
20 PRINT TAB(31); "Creative Computing"
30 PRINT TAB(29); "Morristown, New Jersey": COLOR 15: PRINT: PRINT: PRINT
40 PRINT "Baccarat -- Chemin de Fer"
50 PRINT
60 COLOR 10: PRINT "Do you need instructions (Y/N)";
70 INPUT Q$
80 IF LEFT$(Q$, 1) <> "Y" AND LEFT$(Q$, 1) <> "y" THEN 210
85 COLOR 14: PRINT
90 PRINT "Baccarat is a very popular game in Las Vegas.  The player and banker each"
100 PRINT "receive two cards from a 'shoe' containing 8 decks of cards.  All card"
110 PRINT "combinations totaling ten are not counted.  The one that ends up closer to nine"
120 PRINT "wins.  The stakes are high; all of the players start with ten thousand dollars."
130 PRINT "You can bet on the dealer or the player.  A third card is given only under"
140 PRINT "certain conditions, as you will see.  Let us begin."
150 PRINT
160 PRINT "Good luck!": COLOR 15
200 PRINT
210 DIM M(20), F1(20), F(20), B$(13), V(13), G$(20)
220 DIM Z(9, 10), Q(4, 13)
240 FOR X = 3 TO 6
250 FOR Y = 1 TO 10
260 READ Z(X, Y)
270 NEXT Y, X
280 FOR S1 = 1 TO 10: READ W(S1): NEXT
283 FOR S1 = 1 TO 4: READ A$(S1): NEXT
285 FOR S1 = 1 TO 13: READ B$(S1): NEXT
287 FOR S1 = 1 TO 13: READ V(S1): NEXT
290 PRINT
300 COLOR 10: PRINT "How many players";
310 INPUT P1: COLOR 15
320 FOR J = 1 TO P1
330 COLOR 10: PRINT "What is the name of player"; STR$(J);
340 INPUT G$(J): COLOR 15
350 M(J) = 10000
360 NEXT J: PRINT
370 FOR S1 = 1 TO 4
373 FOR S2 = 1 TO 13
375 Q(S1, S2) = 0
377 NEXT S2
379 NEXT S1
380 FOR J = 1 TO 6
390 C = INT(1 + RND(1) * 4)
400 D = INT(1 + RND(1) * 13)
410 Q(C, D) = Q(C, D) + 1
420 IF Q(C, D) >= 32 THEN 390
430 B(J) = V(D)
440 C$(J) = B$(D) + " of " + A$(C)
450 NEXT J
460 W1 = 2
470 FOR J = 1 TO P1
480 IF M(J) < 1 THEN 580
490 M$ = STR$(M(J)): M$ = RIGHT$(M$, LEN(M$) - 1): PRINT G$(J); " has $"; M$; ".  ";: COLOR 10: PRINT "Bet";
500 INPUT F(J): COLOR 15
510 IF F(J) > M(J) THEN 490
520 IF F(J) <> INT(F(J)) THEN 490
530 IF F(J) < 1 THEN 490
540 COLOR 10: PRINT "(1) Banker or (2) Player";
550 INPUT F1(J): COLOR 15: PRINT
560 IF F1(J) >= 1000 THEN 490
570 IF (F1(J) - 1) * (F1(J) - 2) <> 0 THEN 540
580 NEXT J
590 J = 0
600 T1 = B(1) + B(2)
610 T2 = B(3) + B(4)
620 PRINT
630 PRINT "Banker"; TAB(20); "Player"
640 PRINT C$(3); TAB(20); C$(1)
650 PRINT C$(4); TAB(20); C$(2): PRINT
660 IF T1 < 10 THEN 680
670 T1 = T1 - 10
680 IF T2 < 10 THEN 700
690 T2 = T2 - 10
700 IF W(T1 + 1) = 0 THEN 770
710 PRINT "Player must draw."
720 PRINT C$(5)
730 T1 = T1 + B(5)
740 IF T1 < 10 THEN 770
750 T1 = T1 - 10
760 GOTO 790
770 PRINT "Player cannot draw."
780 J = 11
790 PRINT "Player's total:"; T1
800 PRINT
810 IF T2 < 3 THEN 870
820 IF T2 > 6 THEN 930
830 IF J <> 11 THEN 860
840 IF T2 = 6 THEN 930
850 GOTO 870
860 IF Z(T2, B(5) + 1) = 0 THEN 930
870 PRINT "Banker must draw."
880 PRINT C$(6)
890 T2 = T2 + B(6)
900 IF T2 < 10 THEN 920
910 T2 = T2 - 10
920 GOTO 940
930 PRINT "Banker cannot draw."
940 PRINT "Banker's total:"; T2
950 PRINT
960 IF T2 <> T1 THEN 990
970 PRINT "It's a tie.  The hand is played over."
980 GOTO 380
990 IF T2 < T1 THEN 1030
1000 W1 = 1
1010 PRINT "Banker wins!!"
1020 GOTO 1040
1030 PRINT "Player wins!!"
1040 COLOR 13: FOR J = 1 TO P1
1050 IF M(J) <= 0 THEN 1130
1060 PRINT G$(J); " ";
1070 IF F1(J) = W1 THEN 1110
1080 M(J) = M(J) - F(J)
1085 M$ = STR$(M(J)): M$ = RIGHT$(M$, LEN(M$) - 1)
1086 F$ = STR$(F(J)): F$ = RIGHT$(F$, LEN(F$) - 1)
1090 PRINT "loses $"; F$; ", for a total of $"; M$; "."
1100 GOTO 1130
1110 M(J) = M(J) + F(J)
1115 M$ = STR$(M(J)): M$ = RIGHT$(M$, LEN(M$) - 1)
1116 F$ = STR$(F(J)): F$ = RIGHT$(F$, LEN(F$) - 1)
1120 PRINT "wins $"; F$; ", for a total of $"; M$; "."
1130 NEXT J: COLOR 15
1140 FOR J = 1 TO P1
1150 IF M(J) <> 0 THEN 1190
1160 NEXT J
1170 PRINT "Thank you for your money, and ";
1180 GOTO 1320
1190 PRINT
1200 PRINT "---------- NEW GAME ----------"
1210 PRINT
1220 FOR X = 1 TO 4
1230 FOR Y = 1 TO 13
1240 IF Q(X, Y) <> 8 THEN 380
1250 NEXT Y, X
1260 GOTO 370
1270 DATA 1,1,1,1,1,1,1,1,0,1,0,0,1,1,1,1,1,1,0,0
1280 DATA 0,0,0,0,1,1,1,1,0,0,0,0,0,0,0,0,1,1,0,0
1290 DATA 1,1,1,1,1,1,0,0,0,0,Spades,Hearts,Diamonds
1300 DATA Clubs,Ace,Two,Three,Four,Five,Six,Seven,Eight
1310 DATA Nine,Ten,Jack,Queen,King,1,2,3,4,5,6,7,8,9,0,0,0,0
1320 PRINT "thank you for playing."
1330 END

