90 CLS: COLOR 12
100 PRINT TAB(33); "Under or Over"
110 PRINT TAB(31); "Creative Computing"
120 PRINT TAB(29); "Morristown, New Jersey"
130 PRINT: PRINT: PRINT: COLOR 14
140 PRINT "This is a game of Under and Over.  If you pick under or over seven, you will"
150 PRINT "win even money.  If you pick seven, you will win money at four to one odds."
160 PRINT "You have $100 to start with.  Good luck!"
170 PRINT: COLOR 15
175 RANDOMIZE TIMER
180 A = 100
190 RESTORE
200 REM
210 READ A$, B$, C$
220 DATA "Under","Over","Even"
230 COLOR 10: PRINT "What number do you wish to play (2-12)";: INPUT B
240 PRINT "How much do you want to bet on the number";: INPUT C: COLOR 15
250 PRINT: PRINT "The dice have now been thrown.  The results are as follows:": PRINT
270 Q = INT(6 * RND(1) + 1): R = INT(6 * RND(1) + 1)
280 PRINT "Die #1", "Die #2", "Sum", "Your #", "Toss"
290 IF Q + R > 7 THEN 310
295 IF Q + R = 7 THEN 320
300 COLOR 11: PRINT Q, R, Q + R, B, A$: PRINT: COLOR 15
303 IF B = Q + R THEN 350
305 IF B < 7 THEN 380
307 GOTO 410
310 COLOR 11: PRINT Q, R, Q + R, B, B$: PRINT: COLOR 15
313 IF B = Q + R THEN 350
315 IF B > 7 THEN 380
317 GOTO 410
320 COLOR 11: PRINT Q, R, Q + R, B, C$: PRINT: COLOR 15
330 IF B = Q + R THEN 350
340 GOTO 420
350 A = A + (4 * C)
360 PRINT "You win 4 to 1!"
365 A$ = STR$(A): A$ = RIGHT$(A$, LEN(A$) - 1)
370 PRINT "The amount you now have is $"; A$; ".": PRINT: GOTO 440
380 A = A + C
390 PRINT "You win even money!"
395 A$ = STR$(A): A$ = RIGHT$(A$, LEN(A$) - 1)
400 PRINT "The amount you now have is $"; A$; ".": PRINT: GOTO 440
410 A = A - C
420 PRINT "You lose!"
425 A$ = STR$(A): IF A >= 0 THEN A$ = RIGHT$(A$, LEN(A$) - 1)
430 PRINT "The amount you now have is $"; A$; ".": PRINT
440 IF A > 0 THEN 190
450 COLOR 12: PRINT "The game is over, and you are flat broke."
460 COLOR 15: PRINT "Sorry, Charlie.  This proves that it is not good to gamble!": PRINT
470 COLOR 10: PRINT "Do you want to play again";: INPUT W$: COLOR 15
480 IF LEFT$(W$, 1) = "Y" OR LEFT$(W$, 1) = "y" THEN PRINT: PRINT: GOTO 180
490 END

