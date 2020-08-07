1 CLS: COLOR 12: PRINT TAB(38); "Cup"
2 PRINT TAB(31); "Creative Computing"
3 PRINT TAB(29); "Morristown, New Jersey"
4 PRINT: PRINT: PRINT: COLOR 15
5 RANDOMIZE TIMER
10 DIM S(30, 60)
30 LET L = INT(60 * RND(1)) + 1
40 IF L = 60 OR L = 1 THEN 30
50 LET G = INT(10 * RND(1)) + 1
60 PRINT "The cup is 30 lines down and"; L; "spaces over."
70 PRINT "The pull of gravity is"; G; "lines/second/second."
80 PRINT: COLOR 10
85 PRINT "What is the push you would like to give the ball across the paper"
90 PRINT "(in spaces/second)";
100 INPUT T: COLOR 15
110 PRINT "Press any key to advance the simulation when it pauses."
120 FOR S1 = 1 TO 30: FOR S2 = 1 TO 60: S(S1, S2) = 0: NEXT: NEXT
130 S(30, L) = 1: S(30, L - 1) = 1: S(30, L + 1) = 1: S(29, L - 1) = 1: S(29, L + 1) = 1
140 FOR Z = 1 TO SQR(60 * G) / G STEP .01
150 LET Y = T * Z * 2
160 LET X = G / 2 * Z ^ 2
170 IF X > 30.5 OR X < .5 OR Y > 60.5 OR Y < .5 THEN 300
180 IF INT(X) = 29 AND INT(Y) = L THEN 310
190 IF INT(X) + 1 = 29 AND INT(Y) + 1 = L THEN 310
200 IF INT(X) = 29 AND INT(Y) = L - 1 THEN 310
210 IF INT(X) + 1 = 29 AND INT(Y) + 1 = L - 1 THEN 310
220 IF INT(X) = 29 AND INT(Y) = L + 1 THEN 330
230 IF INT(X) + 1 = 29 AND INT(Y) + 1 = L + 1 THEN 330
240 LET S(X, Y) = 2
250 FOR D = 1 TO 5
260 IF Y < 6 THEN 290
270 LET S(X, Y - D) = 0
280 NEXT D
290 NEXT Z
300 GOTO 340
310 LET W = 1
320 GOTO 335
330 LET W = 2
335 LET S(29, L) = 2
337 GOTO 345
340 LET W = 0
345 LET P$ = " *."
360 LET S(30, L) = 1: S(30, L - 1) = 1: S(30, L + 1) = 1:
365 LET S(29, L - 1) = 1: S(29, L + 1) = 1
370 FOR X = 1 TO 30
380 FOR X1 = 1 TO 60
390 IF S(X, X1) <> 0 THEN 420
400 NEXT X1
410 GOTO 500
420 FOR Y = 1 TO 60
430 COLOR 11: PRINT MID$(P$, S(X, Y) + 1, 1);: COLOR 15
440 IF X = 29 OR X = 30 THEN 490
450 IF Y = 60 OR Y = 1 THEN 490
460 IF Y = 1 OR Y = 59 THEN 500
470 IF S(X, Y) = 2 AND S(X, Y + 1) = 0 THEN 500
480 IF S(X, Y) = 1 AND S(X, Y + 1) = 0 AND S(X, Y + 2) = 0 THEN 500
490 NEXT Y
500 PRINT
505 A$ = INKEY$: IF A$ = "" THEN 505
510 NEXT X
520 PRINT
530 IF W = 1 THEN 570
540 IF W = 2 THEN 590
550 PRINT "You missed; try again."
560 GOTO 60
570 PRINT "Right in!!!"
580 GOTO 600
590 PRINT "You almost didn't make it, but it bounced in."
600 COLOR 10: PRINT "Do you want to play again (Y/N)";
610 INPUT A$: COLOR 15
620 IF LEFT$(A$, 1) = "Y" OR LEFT$(A$, 1) = "y" THEN 30
630 END

