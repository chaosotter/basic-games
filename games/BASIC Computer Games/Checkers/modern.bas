1 CLS: COLOR 12
5 PRINT TAB(36); "Checkers"
10 PRINT TAB(29); "Creative Computing"
11 PRINT TAB(31); "Morristown, New Jersey"
15 PRINT: PRINT: PRINT: RANDOMIZE TIMER: COLOR 15
20 PRINT "This is the game of Checkers.  The computer is X, and you are O.  The computer"
25 PRINT "will move first.  Squares are referred to by a coordinate system:"
30 COLOR 11: PRINT
35 PRINT "    (0,0) is the lower left corner."
40 PRINT "    (0,7) is the upper left corner."
45 PRINT "    (7,0) is the lower right corner."
50 PRINT "    (7,7) is the upper right corner."
52 COLOR 14: PRINT
55 PRINT "The computer will type '+To?' when it thinks you have another jump.  Type two"
60 PRINT "negative numbers if you cannot jump."
62 PRINT: COLOR 13: PRINT "(Press any key.)"
63 Z$ = INKEY$: IF Z$ = "" THEN 63
65 PRINT: PRINT: PRINT: COLOR 15
80 DIM R(4), S(7, 7): G = -1: R(0) = -99
90 DATA 1,0,1,0,0,0,-1,0,0,1,0,0,0,-1,0,-1,15
120 FOR X = 0 TO 7: FOR Y = 0 TO 7: READ J: IF J = 15 THEN 180
160 S(X, Y) = J: GOTO 200
180 RESTORE: READ S(X, Y)
200 NEXT Y, X
230 FOR X = 0 TO 7: FOR Y = 0 TO 7: IF S(X, Y) > -1 THEN 350
310 IF S(X, Y) = -1 THEN FOR A = -1 TO 1 STEP 2: B = G: GOSUB 650: NEXT A
330 IF S(X, Y) = -2 THEN FOR A = -1 TO 1 STEP 2: FOR B = -1 TO 1 STEP 2: GOSUB 650: NEXT B, A
350 NEXT Y, X: GOTO 1140
650 U = X + A: V = Y + B: IF U < 0 OR U > 7 OR V < 0 OR V > 7 THEN 870
740 IF S(U, V) = 0 THEN GOSUB 910: GOTO 870
770 IF S(U, V) < 0 THEN 870
790 U = U + A: V = V + B: IF U < 0 OR V < 0 OR U > 7 OR V > 7 THEN 870
850 IF S(U, V) = 0 THEN GOSUB 910
870 RETURN
910 IF V = 0 AND S(X, Y) = -1 THEN Q = Q + 2
920 IF ABS(Y - V) = 2 THEN Q = Q + 5
960 IF Y = 7 THEN Q = Q - 2
980 IF U = 0 OR U = 7 THEN Q = Q + 1
1030 FOR C = -1 TO 1 STEP 2: IF U + C < 0 OR U + C > 7 OR V + G < 0 THEN 1080
1035 IF S(U + C, V + G) < 0 THEN Q = Q + 1: GOTO 1080
1040 IF U - C < 0 OR U - C > 7 OR V - G > 7 THEN 1080
1045 IF S(U + C, V + G) > 0 AND (S(U - C, V - G) = 0 OR (U - C = X AND V - G = Y)) THEN Q = Q - 2
1080 NEXT C: IF Q > R(0) THEN R(0) = Q: R(1) = X: R(2) = Y: R(3) = U: R(4) = V
1100 Q = 0: RETURN
1140 IF R(0) = -99 THEN 1880
1230 PRINT "I move from"; STR$(R(1)); ","; STR$(R(2)); " to"; STR$(R(3)); ","; STR$(R(4)); ".": R(0) = -99
1240 IF R(4) = 0 THEN S(R(3), R(4)) = -2: GOTO 1420
1250 S(R(3), R(4)) = S(R(1), R(2))
1310 S(R(1), R(2)) = 0: IF ABS(R(1) - R(3)) <> 2 THEN 1420
1330 S((R(1) + R(3)) / 2, (R(2) + R(4)) / 2) = 0
1340 X = R(3): Y = R(4): IF S(X, Y) = -1 THEN B = -2: FOR A = -2 TO 2 STEP 4: GOSUB 1370: NEXT A
1350 IF S(X, Y) = -2 THEN FOR A = -2 TO 2 STEP 4: FOR B = -2 TO 2 STEP 4: GOSUB 1370: NEXT B: NEXT A
1360 IF R(0) <> -99 THEN PRINT "to"; STR$(R(3)); ","; R(4);: R(0) = -99: GOTO 1240
1365 GOTO 1420
1370 U = X + A: V = Y + B: IF U < 0 OR U > 7 OR V < 0 OR V > 7 THEN 1400
1380 IF S(U, V) = 0 AND S(X + A / 2, Y + B / 2) > 0 THEN GOSUB 910
1400 RETURN
1420 PRINT: COLOR 13: FOR X = 0 TO 7: PRINT TAB(3 + 4 * X); X;: NEXT X: PRINT: PRINT: COLOR 15
1425 FOR Y = 7 TO 0 STEP -1: FOR X = 0 TO 7: PRINT TAB(4 + 4 * X);
1430 IF S(X, Y) = 0 THEN PRINT ".";
1470 IF S(X, Y) = 1 THEN COLOR 11: PRINT "O";: COLOR 15
1490 IF S(X, Y) = -1 THEN COLOR 12: PRINT "X";: COLOR 15
1510 IF S(X, Y) = -2 THEN COLOR 12: PRINT "X*";: COLOR 15
1530 IF S(X, Y) = 2 THEN COLOR 11: PRINT "O*";: COLOR 15
1550 NEXT X: COLOR 13: PRINT TAB(35); Y: COLOR 15: PRINT: NEXT Y
1552 FOR L = 0 TO 7
1554 FOR M = 0 TO 7
1556 IF S(L, M) = 1 OR S(L, M) = 2 THEN Z = 1
1558 IF S(L, M) = -1 OR S(L, M) = -2 THEN T = 1
1560 NEXT M
1562 NEXT L
1564 IF Z <> 1 THEN 1885
1566 IF T <> 1 THEN 1880
1570 Z = 0: T = 0
1590 COLOR 10: INPUT "From"; E, H: COLOR 15: X = E: Y = H: IF S(X, Y) <= 0 THEN 1590
1670 COLOR 10: INPUT "To"; A, B: COLOR 15: X = A: Y = B
1680 IF S(X, Y) = 0 AND ABS(A - E) <= 2 AND ABS(A - E) = ABS(B - H) THEN 1700
1690 PRINT CHR$(7); CHR$(11);: GOTO 1670
1700 I = 46
1750 S(A, B) = S(E, H): S(E, H) = 0: IF ABS(E - A) <> 2 THEN 1810
1800 S((E + A) / 2, (H + B) / 2) = 0
1802 COLOR 10: INPUT "+To"; A1, B1: COLOR 15: IF A1 < 0 THEN 1810
1804 IF S(A1, B1) <> 0 OR ABS(A1 - A) <> 2 OR ABS(B1 - B) <> 2 THEN 1802
1806 E = A: H = B: A = A1: B = B1: I = I + 15: GOTO 1750
1810 IF B = 7 THEN S(A, B) = 2
1830 GOTO 230
1880 PRINT: PRINT "You win!": END
1885 PRINT: PRINT "I win!": END

