10 REM Seven Eleven
15 RANDOMIZE TIMER
20 B$ = "In 7/11 you've rolled"
30 G = 0: W = 0: L = 0: M = 105
40 CLS: COLOR 15
50 PRINT: PRINT "The tally so far:"
60 COLOR 13: PRINT "Wins:";: COLOR 11: PRINT W;: COLOR 13: PRINT " Losses:";: COLOR 11: PRINT L: COLOR 15
70 G = G + 1
80 M = M - 5
85 M$ = STR$(M): M$ = RIGHT$(M$, LEN(M$) - 1)
90 PRINT "You have $"; M$; "."
100 PRINT: COLOR 12: PRINT "This is round number"; STR$(G); "."
110 GOSUB 200
120 IF A = 7 OR A = 11 THEN 300
130 IF A = 2 OR A = 3 OR A = 12 THEN PRINT "so that's the end of the round": GOTO 320
140 P = A
150 PRINT "Your target number is"; STR$(P); "."
160 GOSUB 200
170 IF A = P THEN 300
180 IF A = 7 OR A = 11 THEN 310
190 GOSUB 340: GOTO 150
200 N = 0
210 PRINT: COLOR 10: PRINT "Press 'R' to roll": COLOR 15
220 N = N + W: IF INKEY$ = "" THEN 220
225 PRINT
230 C = INT(RND * 6) + 1: PRINT "You rolled"; C;
240 GOSUB 340
250 B = INT(RND * 6) + 1: PRINT "and"; STR$(B); ".  ";
260 A = B + C
270 PRINT B$; STR$(A); "."
280 GOSUB 340
290 RETURN
300 PRINT "And you've won!": W = W + 1: M = M + 20: GOTO 320
310 PRINT "And so you lose.": L = L + 1
320 GOSUB 340
330 GOTO 40
340 XX = 0.5: GOSUB 1000
350 RETURN
1000 ST = TIMER + XX
1010 IF TIMER < ST THEN 1010
1020 RETURN

