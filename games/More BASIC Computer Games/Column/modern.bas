10 CLS: COLOR 12
90 RANDOMIZE TIMER
100 PRINT TAB(37); "Column"
110 PRINT TAB(31); "Creative Computing"
120 PRINT TAB(29); "Morristown, New Jersey"
130 PRINT: PRINT: PRINT: COLOR 14
140 PRINT "This program will show you a card trick.  After the first deal pick a card and"
150 PRINT "type the number of the column containing it.  The dealer will then pick up the"
160 PRINT "cards, a column at a time, and will deal them out again horizontally.  When he"
170 PRINT "finishes each time, type the number of the new column containing your card."
180 PRINT "Following the last deal, the dealer will turn over the cards, one at a time,"
190 PRINT "until he reaches the one you picked."
210 PRINT: PRINT: PRINT: COLOR 15
220 DIM A(21), B(21)
230 FOR X = 1 TO 21
240 J = 0
250 T = INT(52 * (RND(1)))
270 FOR Y = 1 TO X - 1
280 IF A(Y) = T THEN 250
290 NEXT Y
300 A(X) = T
310 NEXT X
320 N = 0
330 FOR I = 1 TO 3
340 FOR Z = 1 TO 21
350 IF A(Z) = 4 * (INT(A(Z) / 4)) THEN 470
360 IF A(Z) - 2 = 4 * (INT(A(Z) / 4)) THEN 440
370 IF A(Z) - 3 = 4 * (INT(A(Z) / 4)) THEN 410
380 C$ = "Spades"
390 D$ = ""
400 GOTO 490
410 C$ = "Hearts"
420 D$ = ""
430 GOTO 490
440 C$ = "Clubs"
450 D$ = ""
460 GOTO 490
470 C$ = "Diamon"
480 D$ = "ds"
490 N = N + 1
500 IF N <> 4 THEN 530
510 PRINT
520 N = 1
530 IF A(Z) > 35 THEN 580
535 A$ = STR$(INT(A(Z) / 4) + 2): A$ = RIGHT$(A$, LEN(A$) - 1)
540 PRINT TAB((N - 1) * 25); A$; " of "; C$; D$;
550 IF J = 5 THEN 900
560 IF J = 10 THEN 980
570 GOTO 710
580 IF INT(A(Z) / 4) = 9 THEN 670
590 IF INT(A(Z) / 4) = 10 THEN 650
600 IF INT(A(Z) / 4) = 11 THEN 630
610 A$ = "Jack"
620 GOTO 680
630 A$ = "Queen"
640 GOTO 680
650 A$ = "King"
660 GOTO 680
670 A$ = "Ace"
680 PRINT TAB((N - 1) * 25); A$; " of "; C$; D$;
690 IF J = 5 THEN 900
700 IF J = 10 THEN 980
710 NEXT Z
720 PRINT: PRINT
730 COLOR 10: PRINT "Which column contains your card (1-3)";
740 INPUT K: COLOR 15
750 IF K < 1 OR K > 3 THEN PRINT: PRINT "(1-3)": GOTO 730
760 PRINT: PRINT
770 T = 1
780 S = K + 2 - 3 * INT((K + 1) / 3)
790 GOSUB 940
800 S = K
810 GOSUB 940
820 S = K + 1 - 3 * INT(K / 3)
830 GOSUB 940
840 FOR C = 1 TO 21
850 A(C) = B(C)
860 NEXT C
870 NEXT I
880 J = 5
890 FOR Z = 1 TO 11 + INT(10 * RND(1) + 1): N = 0: GOTO 350
900 PRINT: NEXT Z: PRINT
910 COLOR 11: PRINT "Oops!!!  Your card is the";
920 N = 1
930 J = 10: Z = 11: GOTO 350
940 FOR R = S TO S + 18 STEP 3
950 B(T) = A(R)
960 T = T + 1
970 NEXT R: RETURN
980 PRINT ".": PRINT
990 COLOR 10: PRINT "Do you want to see it again (Y/N)";: INPUT T$: COLOR 15
1000 IF LEFT$(T$, 1) = "Y" OR LEFT$(T$, 1) = "y" THEN PRINT: PRINT: GOTO 230
1010 END

