5 DIM A(9), B(9)
10 REM IDAHO SQUARES
20 GOSUB 240: REM INITIALISE
30 J = J + 1
40 CLS: COLOR 15
50 PRINT: PRINT: PRINT TAB(3);
60 M = 0
65 COLOR 14: FOR Y = 1 TO 3
70 FOR X = 1 TO 3
75 BB = B((Y - 1) * 3 + X)
80 PRINT TAB(30 + X * 5);: IF BB = 0 THEN COLOR 13: PRINT " ?";: COLOR 14: ELSE PRINT BB;
100 IF BB = A((Y - 1) * 3 + X) THEN M = M + 1
110 NEXT X: PRINT: PRINT: NEXT Y
120 PRINT: COLOR 15
130 IF M = 9 THEN PRINT "You've solved it in just"; J - 1; "guesses!": END
140 PRINT: COLOR 12: PRINT "This is guess number"; STR$(J); ".": COLOR 15
150 PRINT: PRINT "You have"; M; "right.": PRINT
160 COLOR 10: INPUT "Enter your guess"; X: COLOR 15
170 FOR Z = 1 TO 9
180 IF B(Z) = 0 AND A(Z) = X THEN B(Z) = X
190 NEXT Z
200 GOTO 30
210 END
220 REM *******************
240 RANDOMIZE TIMER
250 A = INT(RND(1) * 9) + 1
260 B = INT(RND(1) * 9) + 1
270 C = INT(RND(1) * 9) + 1
280 D = INT(RND(1) * 9) + 1
290 IF A = B OR B = C OR A = C OR A = D OR B = D OR C = D THEN 260
300 A(1) = A + B
310 A(2) = A - (B + C)
320 A(3) = A + C
330 A(4) = A - B + C
340 A(5) = A
350 A(6) = A + B - C
360 A(7) = A - C
370 A(8) = A + B + C
380 A(9) = A - B
390 FOR Q = 1 TO 9
400 B(Q) = A(Q)
410 NEXT Q
420 B(A) = 0
430 B(B) = 0
440 B(C) = 0
450 B(D) = 0
460 J = 0
470 RETURN

