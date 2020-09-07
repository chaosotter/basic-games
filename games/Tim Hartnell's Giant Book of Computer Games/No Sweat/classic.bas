10 REM No Sweat
20 RANDOMIZE VAL(RIGHT$(TIME$, 2))
30 M = 30
40 CLS: GOSUB 240
50 INPUT "How much would you like to bet"; A
60 IF A > M THEN 50
70 M = M - A: PRINT: PRINT
80 INPUT "Which number are you betting on"; B
90 IF B < 1 OR B > 6 THEN 80
100 FOR C = 1 TO 3
110 W = 0
120 GOSUB 280
130 D = INT(RND * 6) + 1
140 PRINT: PRINT "Die"; C; "fell"; D
150 IF D = B THEN W = A: PRINT "so you win $"; W
160 M = M + W
170 GOSUB 240
180 NEXT C
190 GOSUB 280: GOSUB 280
200 IF M > 250 THEN 310
210 IF M > 0 THEN INPUT ZZ$: GOTO 40
220 PRINT "The game is over, 'cos you're broke!"
230 GOTO 220
240 PRINT "***************************"
250 PRINT "   Your stake is now $"; M
260 PRINT "***************************"
270 RETURN
280 FOR P = 1 TO 1000
290 NEXT P
300 RETURN
310 FOR J = 1 TO 30
320 PRINT "You've topped $250!"
330 PRINT TAB(J); "Well done!!"
340 NEXT J

