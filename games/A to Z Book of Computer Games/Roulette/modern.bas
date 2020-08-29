5 CLS: COLOR 12
10 REM  "ROULETTE"
15 PRINT TAB(36); "Roulette": PRINT: PRINT
20 REM
30 GOSUB 9000
35 DIM M(5)
40 COLOR 10: PRINT "Do you want a description (Y/N)";
50 INPUT Q$: COLOR 15
60 IF LEFT$(Q$, 1) = "N" OR LEFT$(Q$, 1) = "n" THEN 225
70 IF LEFT$(Q$, 1) = "Y" OR LEFT$(Q$, 1) = "y" THEN 110
80 PRINT "Pay attention, I said 'Y' or 'N'."
90 PRINT
100 GOTO 40
110 COLOR 14: PRINT
120 PRINT "Roulette Game"
130 COLOR 11: PRINT
135 PRINT "  * Bet on a number (0-36)"
140 PRINT "  * Bet on a color (red/black)"
145 PRINT "  * Bet whether the number is odd or even"
150 PRINT "  * Bet whether the number is low (0-18) or high (19-36)"
160 COLOR 14: PRINT
170 PRINT "Results of betting are:"
175 COLOR 15: PRINT
180 PRINT , "Bet Type", "Win", "Lose": COLOR 13
190 PRINT , "Number", "Bet x 5", "Bet"
200 PRINT , "Color", "Bet x 3", "Bet x 2"
210 PRINT , "Odd/Even", "Bet x 2", "Bet"
220 PRINT , "High/Low", "Bet", "Bet"
222 PRINT: COLOR 15
225 LET M = 0
230 PRINT
232 FOR I = 1 TO 5
234 LET M(I) = 0
236 NEXT I
240 GOSUB 7000
250 GOSUB 8000
260 GOSUB 6000
270 GOTO 230
3000 PRINT: PRINT "End of game.  ";
3010 IF M < 0 THEN 3060
3020 IF M > 0 THEN 3080
3030 PRINT "We're even."
3040 PRINT
3050 END
3060 M$ = STR$(ABS(M)): M$ = RIGHT$(M$, LEN(M$) - 1)
3065 PRINT "Pay the house $"; M$; "."
3070 GOTO 3040
3080 M$ = STR$(ABS(M)): M$ = RIGHT$(M$, LEN(M$) - 1)
3085 PRINT "You're lucky, collect $"; M$; "."
3090 GOTO 3040
5999 REM  "READ THE WHEEL"
6000 IF A = 99 THEN 6040
6005 IF A <> A1 THEN 6030
6010 LET M(1) = X * 5
6020 GOTO 6040
6030 LET M(1) = 0 - X
6040 IF B = 9 THEN 6090
6050 IF B <> B1 THEN 6080
6060 LET M1 = M1 + 3 * X
6070 GOTO 6090
6080 LET M(2) = 0 = 2 * X
6090 IF C = 9 THEN 6140
6100 IF C <> C1 THEN 6130
6110 LET M(3) = 2 * X
6120 GOTO 6140
6130 LET M(3) = 0 - X
6140 IF D = 9 THEN 6190
6150 IF D <> D1 THEN 6180
6160 LET M(4) = X
6170 GOTO 6190
6180 LET M(4) = 0 - X
6190 FOR I = 1 TO 4
6192 LET M(5) = M(5) + M(I)
6194 NEXT I
6196 LET M = M + M(5)
6200 M5$ = STR$(M(5)): M5$ = RIGHT$(M5$, LEN(M5$) - 1)
6201 M$ = STR$(M): M$ = RIGHT$(M$, LEN(M$) - 1)
6205 COLOR 12: PRINT "This turn: $"; M5$; ".  Total: $"; M$; ".": COLOR 15
6210 RETURN
6999 REM  "PLAYER INPUT"
7000 COLOR 10: PRINT "Number (0-36)";
7005 LET A = 99
7010 INPUT A: COLOR 15
7020 IF A < 0 THEN 7040
7025 IF A = 99 THEN 7060
7030 IF A < 37 THEN 7060
7040 GOSUB 7700
7050 GOTO 7000
7060 COLOR 10: PRINT "Black or Red (B/R)";
7065 LET B$ = " "
7070 IF LEFT$(Q$, 1) = "N" OR LEFT$(Q$, 1) = "n" THEN 7090
7075 PRINT
7080 GOSUB 7900
7082 LET Q$ = "N"
7084 GOTO 7060
7090 INPUT B$: COLOR 15
7100 IF B$ = " " THEN 7150
7110 IF LEFT$(B$, 1) = "R" OR LEFT$(B$, 1) = "r" THEN 7190
7120 IF LEFT$(B$, 1) = "B" OR LEFT$(B$, 1) = "b" THEN 7170
7130 GOSUB 7700
7140 GOTO 7060
7150 LET B = 9
7160 GOTO 7200
7170 LET B = 1
7180 GOTO 7200
7190 LET B = 0
7200 COLOR 10: PRINT "Odd or Even (O/E)";
7205 LET C$ = " "
7210 INPUT C$: COLOR 15
7220 IF C$ = " " THEN 7270
7230 IF LEFT$(C$, 1) = "O" OR LEFT$(C$, 1) = "o" THEN 7290
7235 IF C$ = "0" THEN 7290
7240 IF LEFT$(C$, 1) = "E" OR LEFT$(C$, 1) = "e" THEN 7310
7250 GOSUB 7700
7260 GOTO 7200
7270 LET C = 9
7280 GOTO 7320
7290 LET C = 1
7300 GOTO 7320
7310 LET C = 0
7320 COLOR 10: PRINT "High or low (H/L)";
7325 LET D$ = " "
7327 INPUT D$: COLOR 15
7330 IF D$ = " " THEN 7380
7340 IF LEFT$(D$, 1) = "H" OR LEFT$(D$, 1) = "h" THEN 7400
7350 IF LEFT$(D$, 1) = "L" OR LEFT$(D$, 1) = "l" THEN 7420
7360 GOSUB 7700
7370 GOTO 7320
7380 LET D = 9
7390 GOTO 7430
7400 LET D = 1
7410 GOTO 7430
7420 LET D = 0
7430 COLOR 10: PRINT "Amount of bet";
7440 INPUT X: COLOR 15
7450 IF X >= 0 THEN 7480
7460 PRINT "Impossible!"
7470 GOTO 7430
7480 IF X <> 0 THEN 7560
7490 COLOR 10: PRINT "Coward... want to quit (Y/N)"
7500 INPUT J$: COLOR 15
7510 IF LEFT$(J$, 1) = "N" OR LEFT$(J$, 1) = "n" THEN 7540
7520 PRINT: PRINT "Thank goodness."
7530 GOTO 3000
7540 PRINT "Then bet some money!"
7550 GOTO 7430
7560 IF X < 10000 THEN 7590
7570 PRINT "Let's be reasonable."
7580 GOTO 7430
7590 RETURN
7699 REM  "ERRORS"
7700 DATA "Oops.","Careful!","Hey!","Please!"
7710 DATA "Fun-n-y.","Heads up!","Once more..."
7720 DATA "Stop it!","Last chance...",*
7730 READ X$
7740 IF X$ <> "*" THEN 7790
7750 PRINT "You've exhausted my patience... now play right!"
7770 RESTORE
7780 RETURN
7790 PRINT X$
7800 RETURN
7899 REM  "FORGOTTEN RULE"
7900 COLOR 14: PRINT
7905 PRINT "(I forgot to explain: Red numbers are any evenly divisible by three."
7910 PRINT "And, to skip any entry, don't enter anything.)"
7940 PRINT: COLOR 15
7950 RETURN
7999 REM  "WHEEL SPINNER"
8000 COLOR 12: PRINT: PRINT "Spinning .";
8010 FOR I = 1 TO 10
8020 FOR J = 1 TO I * 10
8030 NEXT J
8040 PRINT " .";
8050 NEXT I
8055 PRINT: COLOR 15
8060 LET A1 = INT(100 * RND(1))
8070 IF A1 > 36 THEN 8060
8080 IF A1 = 0 THEN 8280
8090 COLOR 11: PRINT "    ->"; A1; "<- ";: COLOR 15
8100 LET C1 = INT(A1 / 2)
8110 IF A1 - C1 * 2 = 0 THEN 8240
8115 LET C1 = 1
8120 LET B1 = INT(A1 / 3)
8130 IF A1 - B1 * 3 = 0 THEN 8260
8140 LET B1 = 0
8150 IF B1 <> 0 THEN 8200
8160 PRINT "  Black";
8170 IF C1 <> 0 THEN 8220
8180 PRINT "  Even";
8190 GOTO 8330
8200 PRINT "  Red";
8210 GOTO 8170
8220 PRINT "  Odd";
8230 GOTO 8330
8240 LET C1 = 0
8250 GOTO 8120
8260 LET B1 = 1
8270 GOTO 8150
8280 COLOR 11: PRINT "    -> 0 <- ";: COLOR 15: PRINT "  Black  Even  Low"
8290 LET B1 = 0
8300 LET C1 = 0
8310 LET D1 = 0
8320 RETURN
8330 IF A1 < 19 THEN 8346
8340 LET D1 = 1
8342 PRINT "  High"
8344 RETURN
8346 PRINT "  Low"
8348 LET D1 = 0
8350 RETURN
9000 REM  "RANDOM NUMBER ROUTINE"
9010 LET Z = RND(1)
9020 RETURN
