10 CLS: COLOR 12
90 RANDOMIZE TIMER
100 PRINT TAB(34); "Chuck-a-Luck"
110 PRINT TAB(31); "Creative Computing"
120 PRINT TAB(29); "Morristown, New Jersey"
130 PRINT: PRINT: PRINT: COLOR 14
140 PRINT "Choose a number from 1 to 6.  I will roll 3 dice.  If your number matches one"
150 PRINT "die, I pay off even money.  Two dice, 2:1.  Three dice, 3:1."
160 COLOR 15
170 PRINT: M = 500
180 M$ = STR$(M): PRINT: PRINT "You have $"; RIGHT$(M$, LEN(M$) - 1); ".  "
185 COLOR 12: PRINT "Make a bet";
190 INPUT B: COLOR 15
200 IF B > M THEN 410
210 IF B > 0 THEN IF B * 100 = INT(B * 100) THEN 230
220 GOTO 420
230 COLOR 12: PRINT "Choose a number";
240 INPUT N: COLOR 15
250 IF INT(N) = N AND N > 0 AND N < 7 THEN 270
260 PRINT "Cheater!!!!!!": GOTO 230
270 PRINT: COLOR 13: A = INT(RND(1) * 6) + 1: PRINT A; "    ";: D = INT(RND(1) * 6) + 1: PRINT D; "    ";
280 C = INT(RND(1) * 6) + 1: PRINT C; "     ": COLOR 15
290 T = 0
300 IF A = N THEN T = T + 1
310 IF D = N THEN T = T + 1
320 IF C = N THEN T = T + 1
330 PRINT "You've matched"; T; "times."
340 ON T GOTO 380, 390, 400
350 B$ = STR$(B): B$ = RIGHT$(B$, LEN(B$) - 1): PRINT "You lose $"; B$
360 M = M - B: IF M <= 0 THEN 430
370 GOTO 180
380 B$ = STR$(B): B$ = RIGHT$(B$, LEN(B$) - 1): PRINT "You've won $"; B: M = M + B: GOTO 180
390 B$ = STR$(B * 2): B$ = RIGHT$(B$, LEN(B$) - 1): PRINT "You've won $"; B$: M = M + 2 * B: GOTO 180
400 B$ = STR$(B * 3): B$ = RIGHT$(B$, LEN(B$) - 1): PRINT "You've won $"; B$: M = M + B * 3: GOTO 180
410 PRINT "I don't take I.O.U.'s!!!!": GOTO 180
420 PRINT "Don't get cute!!!": GOTO 180
430 PRINT
440 PRINT
450 END

