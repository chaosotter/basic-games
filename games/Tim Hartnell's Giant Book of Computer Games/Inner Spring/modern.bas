5 RANDOMIZE TIMER
10 REM INNER SPRING
20 GOSUB 330
30 GOSUB 80
40 IF D < 1 THEN GOTO 420
50 GOSUB 340
60 GOTO 30
70 REM ************************
80 PRINT: PRINT: PRINT
90 PRINT "My first number is";: COLOR 11: PRINT A;: COLOR 15: PRINT "and my second is";
100 COLOR 11: PRINT STR$(B);: COLOR 15: PRINT "."
110 PRINT
115 D$ = STR$(D): D$ = RIGHT$(D$, LEN(D$) - 1)
120 COLOR 12: PRINT "You have $"; D$; ".": COLOR 15
130 PRINT
135 IF A > B THEN X = A: A = B: B = X
140 COLOR 10: PRINT "How much do you bet my next number lies betwen"; A; "and"; STR$(B);
170 INPUT E: COLOR 15
180 IF E > D THEN 170
190 D = D - E
200 GOSUB 500
210 PRINT: PRINT "My number was"; STR$(C); "."
220 GOSUB 500
230 IF NOT (C > A AND C < B OR C < A AND C > B) THEN 290
235 E$ = STR$(2 * E): E$ = RIGHT$(E$, LEN(E$) - 1)
240 PRINT "Well done, you win $"; E$; "."
250 D = D + 3 * E
260 XX = 1.2: GOSUB 1000
270 RETURN
280 REM ************************
290 E$ = STR$(E): E$ = RIGHT$(E$, LEN(E$) - 1)
295 PRINT "Sorry, you lose $"; E$; "."
300 XX = 1.2: GOSUB 1000
310 RETURN
320 REM ************************
330 D = 20
340 CLS: COLOR 15
350 A = INT(RND * 13) + 1
360 B = INT(RND * 13) + 1
370 IF ABS(A - B) < 2 OR ABS(A - B) > 6 THEN 360
380 C = INT(RND * 13) + 1
390 IF A = C OR B = C THEN 380
400 RETURN
410 REM ************************
420 PRINT
430 PRINT "The game is over, and you are broke!  Thanks for the game."
480 END
490 REM ************************
500 XX = 0.7: GOSUB 1000: RETURN
1000 ST = TIMER + XX
1010 IF TIMER < ST THEN 1010
1020 RETURN

