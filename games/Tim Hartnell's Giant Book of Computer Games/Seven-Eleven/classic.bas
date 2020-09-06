10 REM Seven Eleven
20 B$ = "In 7/11 you've rolled"
30 G = 0: W = 0: L = 0: M = 105
40 CLS
50 PRINT: PRINT "The tally so far:"
60 PRINT "Wins:"; W; " Losses:"; L
70 G = G + 1
80 M = M - 5
90 PRINT "You have $"; M
100 PRINT: PRINT "This is round number"; G
110 GOSUB 200
120 IF A = 7 OR A = 11 THEN 300
130 IF A = 2 OR A = 3 OR A = 12 THEN PRINT "so that's the end of the round": GOTO 320
140 P = A
150 PRINT: PRINT "Your target number is"; P
160 GOSUB 200
170 IF A = P THEN 300
180 IF A = 7 OR A = 11 THEN 310
190 GOSUB 340: GOTO 150
200 N = 0
210 PRINT: PRINT "Press 'R' to roll"
220 N = N + W: IF INKEY$ = "" THEN 220
230 C = INT(RND * 6) + 1: PRINT "You rolled"; C
240 GOSUB 340
250 B = INT(RND * 6) + 1: PRINT "and"; B
260 A = B + C
270 PRINT: PRINT B$; A
280 GOSUB 340
290 RETURN
300 PRINT "And you've won": W = W + 1: M = M + 20: GOTO 320
310 PRINT "And so you lose": L = L + 1
320 GOSUB 340
330 GOTO 40
340 FOR T = 1 TO 500: NEXT T
350 RETURN

