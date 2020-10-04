1 CLS: COLOR 12: PRINT TAB(31); "Game of Even Wins"
2 PRINT TAB(31); "Creative Computing": PRINT TAB(29); "Morristown, New Jersey"
3 PRINT: PRINT: RANDOMIZE TIMER
4 COLOR 10: INPUT "Do you want instructions (Y/N)"; A$: PRINT: COLOR 15
5 IF LEFT$(A$, 1) = "N" OR LEFT$(A$, 1) = "n" THEN 20
6 PRINT "The game is played as follows:": PRINT: COLOR 14
7 PRINT "At the beginning of the game, a random number of chips are placed on the board."
8 PRINT "The number of chips always starts as an odd number.  On each turn, a player"
9 PRINT "must take own, two, three, or four chips.  The winner is the player who"
10 PRINT "finishes with a total number of chips that is even.  The computer starts out"
11 PRINT "knowing only the rules of the game.  It gradually learns to play well.  It"
12 PRINT "should be difficult to beat the computer after twenty games in a row."
15 PRINT: PRINT "Try it!": PRINT
16 PRINT "To quit at any time, type a '0' as your move.": PRINT: COLOR 15
20 DIM R(1, 5)
25 L = 0: B = 0
30 FOR I = 0 TO 5
40 R(1, I) = 4
50 R(0, I) = 4
60 NEXT I
70 A = 0: B = 0
90 P = INT((13 * RND(1) + 9) / 2) * 2 + 1
100 IF P = 1 THEN 530
110 PRINT: PRINT "There are"; P; "chips on the board."
120 E1 = E
130 L1 = L
140 E = (A / 2 - INT(A / 2)) * 2
150 L = INT((P / 6 - INT(P / 6)) * 6 + .5)
160 IF R(E, L) >= P THEN 320
170 M = R(E, L)
180 IF M <= 0 THEN 370
190 P = P - M
200 IF M = 1 THEN 510
210 PRINT "Computer takes"; M; "chips, leaving"; STR$(P); ".": COLOR 10: PRINT "Your move (1-4 or 0)";
220 B = B + M
230 INPUT M: COLOR 15
240 M = INT(M)
250 IF M < 1 THEN 450
260 IF M > 4 THEN 460
270 IF M > P THEN 460
280 IF M = P THEN 360
290 P = P - M
300 A = A + M
310 GOTO 100
320 IF P = 1 THEN 550
330 PRINT "Computer takes"; P; "chips."
340 R(E, L) = P
350 B = B + P
360 IF B / 2 = INT(B / 2) THEN 420
370 COLOR 11: PRINT: PRINT "Game over... you win!!!": COLOR 15: PRINT
390 IF R(E, L) = 1 THEN 480
400 R(E, L) = R(E, L) - 1
410 GOTO 70
420 COLOR 13: PRINT: PRINT "Game over... I win!!!": COLOR 15: PRINT
430 GOTO 70
450 IF M = 0 THEN 570
460 PRINT M; "is an illegal move.": COLOR 10: PRINT "Your move (1-4 or 0)";
470 GOTO 230
480 IF R(E1, L1) = 1 THEN 70
490 R(E1, L1) = R(E1, L1) - 1
500 GOTO 70
510 PRINT "Computer takes 1 chip, leaving"; STR$(P); ".": COLOR 10: PRINT "Your move (1-4 or 0)";
520 GOTO 220
530 PRINT: PRINT "There is 1 chip on the board."
540 GOTO 120
550 PRINT "Computer takes 1 chip."
560 GOTO 340
570 END

