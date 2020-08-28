5 CLS: COLOR 12
10 REM  "BANDIT"
15 PRINT TAB(37); "Bandit": PRINT: PRINT
20 REM
25 RANDOMIZE TIMER
30 GOSUB 9000
35 DIM R(3)
40 COLOR 10: PRINT "Want a description (Y/N)";
50 INPUT Q$: COLOR 15
60 IF LEFT$(Q$, 1) = "N" OR LEFT$(Q$, 1) = "n" THEN 120
70 IF LEFT$(Q$, 1) = "Y" OR LEFT$(Q$, 1) = "y" THEN 110
80 PRINT "Please answer 'Y' or yes or 'N' for no.": PRINT
100 GOTO 40
110 GOSUB 1000
120 LET T = 0
130 PRINT
140 COLOR 10: PRINT "Bet";
150 INPUT Q: COLOR 15
160 IF Q > 0 THEN 190
170 PRINT "You have to bet to play!": PRINT
180 GOTO 140
190 IF Q < 201 THEN 220
200 PRINT "Be reasonable, now!": PRINT
210 GOTO 130
220 IF Q > .99 THEN 240
230 PRINT "Cheapskate."
240 GOSUB 3000
250 GOSUB 4000
260 LET T = T + Q
270 IF T < 0 THEN 340
280 IF T > 0 THEN 370
290 COLOR 10: PRINT: PRINT "Ready to quit (Y/N)";
300 INPUT Q$: COLOR 15
310 IF LEFT$(Q$, 1) = "N" OR LEFT$(Q$, 1) = "n" THEN 130
320 PRINT: PRINT "*** So long, chicken! ***"
330 END
340 T$ = STR$(ABS(T)): T$ = RIGHT$(T$, LEN(T$) - 1): PRINT "You owe me $"; T$; "."
350 IF ABS(T) < 200 THEN 130
360 GOTO 290
370 T$ = STR$(T): T$ = RIGHT$(T$, LEN(T$) - 1): PRINT "You've won $"; T$; "."
380 GOTO 350
1000 COLOR 14: PRINT
1010 PRINT "This game simulates a one-armed bandit (that's a slot machine, you know)."
1020 PRINT "Bet on each pull, up to $200:"
1030 COLOR 11: PRINT
1040 PRINT "    3 jackpots pays 20x the bet"
1050 PRINT "    3 bars pays 10x the bet"
1060 PRINT "    3 of anything else pays 5x the bet"
1070 PRINT "    2 of the others pays double"
1080 COLOR 15: PRINT
1090 RETURN
3000 REM  "FETCH THE FRUITS"
3010 DATA Jackpot,Bell,Plum
3020 DATA Orange,Lemon,Grape
3030 DATA Cherry,Apple,Melon
3040 DATA Bar
3050 FOR I = 1 TO 3
3060 LET R = INT(10 * RND(1)) + 1
3070 LET R(I) = R
3080 FOR J = 1 TO R
3090 READ X$
3100 NEXT J
3110 RESTORE
3120 COLOR 13: PRINT TAB(I * 10 - 10); X$;
3130 NEXT I
3140 PRINT: COLOR 15
3150 RETURN
4000 REM  "FIGURE WIN AMOUNT"
4010 IF R(1) + R(2) + R(3) = 3 THEN 4100
4020 IF R(1) + R(2) + R(3) = 30 THEN 4080
4030 FOR I = 1 TO 2
4040 IF R(3) <> R(I) THEN 4120
4050 NEXT I
4060 LET Q = 5 * Q
4070 RETURN
4080 LET Q = 10 * Q
4090 RETURN
4100 LET Q = 20 * Q
4110 RETURN
4120 IF R(3) = R(1) THEN 4170
4130 IF R(3) = R(2) THEN 4170
4140 IF R(1) = R(2) THEN 4170
4150 LET Q = 0 - Q
4160 RETURN
4170 LET Q = Q * 2
4180 RETURN
9000 REM  "RANDOM NUMBER ROUTINE"
9010 LET Z = RND(1)
9020 RETURN

