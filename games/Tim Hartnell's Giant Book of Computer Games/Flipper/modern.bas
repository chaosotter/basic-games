10 REM FLIPPER
20 DIM A(10), F(4)
30 M = -1: Q = 42: X = 88: P = 0
40 RANDOMIZE TIMER
50 FOR C = 1 TO 9
60 A(C) = Q
70 IF INT(RND + .5) = 0 THEN A(C) = X
80 NEXT C
90 GOSUB 270
100 M = M + 1
110 N = 0
120 FOR C = 1 TO 9
130 IF A(C) = X THEN N = N + 1
140 NEXT C
150 IF N = 1 AND A(5) = X THEN 350
160 IF M > 0 THEN PRINT: PRINT "That was move"; STR$(M); "."
170 PRINT: PRINT: PRINT "Current number of Xs is"; STR$(N); "."
180 PRINT "You only need one -- in the middle square."
190 PRINT: COLOR 10: PRINT "Which one do you want to flip?": COLOR 15
200 IF INKEY$ <> "" THEN 200
210 A$ = INKEY$
220 N = VAL(A$): IF N < 1 OR N > 9 THEN 210
230 P = N
240 GOSUB 380
250 GOTO 90
260 END
270 CLS: PRINT: PRINT
280 IF P <> 0 THEN PRINT "You flipped"; str$(P); "."
290 PRINT: FOR YY = 1 TO 3: PRINT
295 COLOR 11: PRINT TAB(28); (YY - 1) * 3 + 1; (YY - 1) * 3 + 2; YY * 3; TAB(44);
300 FOR XX = 1 TO 3
310 C$ = CHR$(A((YY - 1) * 3 + XX)): IF C$ = "*" THEN COLOR 12 ELSE COLOR 10
320 PRINT C$; "  ";
330 NEXT XX: PRINT: NEXT YY
340 COLOR 15: RETURN
350 PRINT: PRINT
360 PRINT "You solved it in just"; M; "moves."
370 END
380 REM
390 IF N = 1 THEN F(1) = 2: F(2) = 4: F(3) = 5: F(4) = 10
400 IF N = 2 THEN F(1) = 1: F(2) = 3: F(3) = 10: F(4) = 10
410 IF N = 3 THEN F(1) = 2: F(2) = 5: F(3) = 6: F(4) = 10
420 IF N = 4 THEN F(1) = 1: F(2) = 7: F(3) = 10: F(4) = 10
430 IF N = 5 THEN F(1) = 2: F(2) = 4: F(3) = 8: F(4) = 6
440 IF N = 6 THEN F(1) = 3: F(2) = 9: F(3) = 10: F(4) = 10
450 IF N = 7 THEN F(1) = 4: F(2) = 5: F(3) = 8: F(4) = 10
460 IF N = 8 THEN F(1) = 7: F(2) = 9: F(3) = 10: F(4) = 10
470 IF N = 9 THEN F(1) = 8: F(2) = 5: F(3) = 6: F(4) = 10
480 FOR G = 1 TO 4
490 F = 0
500 IF A(F(G)) = X THEN F = 1
510 IF F = 1 THEN A(F(G)) = Q
520 IF F = 0 AND A(F(G)) = Q THEN A(F(G)) = X
530 NEXT G
540 IF A(N) = X THEN A(N) = Q ELSE A(N) = X
550 RETURN

