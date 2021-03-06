5 CLS: COLOR 12
10 REM  "TWENTY1"
15 PRINT TAB(36); "Twenty1": PRINT
20 REM
25 RANDOMIZE TIMER
30 GOSUB 9000
40 DIM D(13), S(4), S$(4)
50 LET S$(1) = "of Hearts"
60 LET S$(2) = "of Spades"
70 LET S$(3) = "of Diamonds"
80 LET S$(4) = "of Clubs"
90 PRINT
100 COLOR 10: PRINT "Do you want instructions (Y/N)";
110 INPUT Q$: COLOR 15
120 IF LEFT$(Q$, 1) = "Y" OR LEFT$(Q$, 1) = "y" THEN 160
130 IF LEFT$(Q$, 1) = "N" OR LEFT$(Q$, 1) = "n" THEN 180
140 PRINT "Huh?"
150 GOTO 90
160 PRINT
170 GOSUB 1000
180 PRINT
190 LET M = 0
200 LET Y = 0
210 PRINT "New deck."
220 GOSUB 2000
230 GOTO 250
240 Y$ = STR$(Y): IF Y >= 0 THEN Y$ = RIGHT$(Y$, LEN(Y$) - 1)
241 M$ = STR$(M): IF M >= 0 THEN M$ = RIGHT$(M$, LEN(M$) - 1)
245 COLOR 12: PRINT "Scores:  You $"; Y$; "  Me $"; M$
250 PRINT
260 GOSUB 4000
270 IF A1 + B1 = 42 THEN 490
280 IF A1 = 21 THEN 510
290 IF A1 > 21 THEN 470
300 LET Q$ = "Y"
310 COLOR 10: PRINT "Hit (Y/N)";
320 INPUT Q$: COLOR 15
330 IF LEFT$(Q$, 1) = "N" OR LEFT$(Q$, 1) = "n" THEN 360
340 GOSUB 4400: PRINT
350 GOTO 270
360 GOSUB 4800
370 IF B1 < 17 THEN 360
380 IF B1 = A1 THEN 490
390 IF B1 > 21 THEN 530
400 IF B1 = 21 THEN 420
410 IF B1 < A1 THEN 540
415 GOTO 430
420 PRINT TAB(30); "Blackjack!"
430 LET Y = Y - 1
440 PRINT TAB(30); "I win $1.00."
450 LET M = M + 1
460 GOTO 240
470 PRINT "Busted, ha ha!"
480 GOTO 430
490 PRINT TAB(15); "Tie";
500 GOTO 430
510 PRINT "Blackjack!  ";
520 GOTO 360
530 PRINT TAB(30); "Oops."
540 IF A1 <> 21 THEN 590
550 PRINT "You win $2.00."
560 LET Y = Y + 2
570 LET M = M - 2
580 GOTO 240
590 LET Y = Y + 1
600 LET M = M - 1
610 PRINT "You win $1.00."
620 GOTO 240
1000 COLOR 14: PRINT
1010 PRINT "A blackjack is 21 points.  2 through 10 are face value, face cards are ten"
1020 PRINT "points, and aces are one or eleven.  We start with two cards apiece."
1030 PRINT
1040 PRINT "I am the dealer.  I always stand on 17 or more, and I must draw on 16 or less."
1050 PRINT "Bets are $1.  Blackjacks pay double, and a deck has 52 cards."
1060 PRINT
1070 PRINT "The game may be ended when the deck runs out, or you may go on."
1080 COLOR 15: PRINT
1160 RETURN
1999 REM  "NEW DECK"
2000 FOR I = 1 TO 4
2010 LET S(I) = I
2020 NEXT I
2030 FOR I = 1 TO 13
2040 FOR J = 1 TO 4
2050 LET R = INT(10 * RND(1))
2060 IF R < 2 THEN 2050
2070 LET R = INT(R / 2)
2080 LET S = S(R)
2090 LET S(R) = S(1)
2100 LET S(1) = S
2110 NEXT J
2120 LET D(I) = S(1) + S(2) * 10
2130 LET D(I) = D(I) + S(3) * 100
2140 LET D(I) = D(I) + S(4) * 1000
2150 NEXT I
2160 LET D = 0
2170 RETURN
2999 REM  "DEAL A CARD"
3000 IF D < 52 THEN 3090
3010 PRINT "End of deck."
3020 COLOR 10: PRINT "Do you want to stop (Y/N)";
3030 INPUT Q$: COLOR 15
3040 IF LEFT$(Q$, 1) <> "Y" AND LEFT$(Q$, 1) <> "y" THEN 3070
3050 PRINT: PRINT "So long..."
3060 END
3070 PRINT "New deck."
3080 GOSUB 2000
3090 LET D = D + 1
3100 LET C = INT(100 * RND(1)) + 1
3110 IF C < 14 THEN 3140
3120 LET C = C - 13
3130 GOTO 3110
3140 LET S = D(C)
3150 IF S = 0 THEN 3100
3160 LET J = INT(S / 10)
3170 LET D(C) = J
3180 LET S = S - J * 10
3190 LET S$ = S$(S)
3200 DATA Ace,2,3,4,5,6,7,8,9
3210 DATA 10,Jack,Queen,King
3220 FOR I = 1 TO C
3230 READ C$
3240 NEXT I
3250 RESTORE
3260 IF C < 11 THEN 3280
3270 LET C = 10
3280 IF P <> 1 THEN 3330
3300 COLOR 13: PRINT C$; " "; S$;: COLOR 15
3310 RETURN
3330 COLOR 13: PRINT TAB(30); C$; " "; S$: COLOR 15
3340 RETURN
3999 REM  "FIRST 2 CARDS"
4000 LET A1 = 0
4010 LET A2 = 0
4020 LET B1 = 0
4030 LET B2 = 0
4040 GOSUB 4400
4050 GOSUB 4800
4060 GOSUB 4400
4070 GOSUB 4800
4080 RETURN
4399 REM  "HUMAN'S PLAY"
4400 LET P = 1
4405 GOSUB 3000
4410 IF C = 1 THEN 4450
4420 IF A1 + C > 21 THEN 4490
4430 LET A1 = A1 + C
4440 RETURN
4450 IF A1 + 11 > 21 THEN 4490
4460 LET A2 = A2 + 1
4470 LET C = 11
4480 GOTO 4430
4490 IF A2 < 1 THEN 4430
4500 LET A2 = A2 - 1
4510 LET A1 = A1 - 10
4520 GOTO 4420
4799 REM  "COMPUTER'S PLAY"
4800 IF B1 < 17 THEN 4830
4820 RETURN
4830 LET P = 2
4835 GOSUB 3000
4840 IF C = 1 THEN 4880
4850 IF B1 + C > 21 THEN 4920
4860 LET B1 = B1 + C
4870 RETURN
4880 IF B1 + 11 > 21 THEN 4920
4890 LET B2 = B2 + 1
4900 LET C = 11
4910 GOTO 4860
4920 IF B2 < 1 THEN 4860
4930 LET B2 = B2 - 1
4940 LET B1 = B1 - 10
4950 GOTO 4850
9000 REM  "RANDOM NUMBER ROUTINE"
9010 LET Z = RND(1)
9020 RETURN

