1 CLS: COLOR 12: PRINT TAB(37); "H-I-Q"
2 PRINT TAB(31); "Creative Computing": PRINT TAB(29); "Morristown, New Jersey"
3 PRINT: PRINT: PRINT: COLOR 15
4 DIM B(70), T(9, 9)
5 PRINT "Here is the board:": PRINT
6 COLOR 11: PRINT "          !    !    !"
7 COLOR 13: PRINT "          13   14   15"
8 COLOR 11: PRINT "          !    !    !"
9 COLOR 13: PRINT "          22   23   24"
10 COLOR 11: PRINT "!    !    !    !    !    !    !"
11 COLOR 13: PRINT "29   30   31   32   33   34   35"
12 COLOR 11: PRINT "!    !    !    !    !    !    !"
13 COLOR 13: PRINT "38   39   40   41   42   43   44"
14 COLOR 11: PRINT "!    !    !    !    !    !    !"
15 COLOR 13: PRINT "47   48   49   50   51   52   53"
16 COLOR 11: PRINT "          !    !    !"
17 COLOR 13: PRINT "          58   59   60"
18 COLOR 11: PRINT "          !    !    !"
19 COLOR 13: PRINT "          67   68   69": PRINT: COLOR 14
20 PRINT "To save typing time, a compressed version of the game board will be used during"
22 PRINT "play.  Refer to the above one for peg numbers.  Okay, let's begin."
24 PRINT: COLOR 12: PRINT "(Press any key.)": COLOR 15
26 Z$ = INKEY$: IF Z$ = "" THEN 26
28 REM *** SET UP BOARD
29 FOR R = 1 TO 9
30 FOR C = 1 TO 9
31 IF (R - 4) * (R - 5) * (R - 6) = 0 THEN 40
32 IF (C - 4) * (C - 5) * (C - 6) = 0 THEN 40
35 T(R, C) = -5
36 GOTO 50
40 IF (R - 1) * (C - 1) * (R - 9) * (C - 9) = 0 THEN 35
42 T(R, C) = 5
50 NEXT C
60 NEXT R
65 T(5, 5) = 0: GOSUB 500
70 REM *** INPUT MOVE AND CHECK ON LEGALITY
75 FOR W = 1 TO 33
77 READ M
79 DATA 13,14,15,22,23,24,29,30,31,32,33,34,35,38,39,40,41
81 DATA 42,43,44,47,48,49,50,51,52,53,58,59,60,67,68,69
83 B(M) = -7: NEXT W
86 B(41) = -3
100 COLOR 10: INPUT "Move which piece"; Z: COLOR 15
110 IF B(Z) = -7 THEN 140
120 PRINT "Illegal move, try again...": GOTO 100
140 COLOR 10: INPUT "To where"; P: COLOR 15
150 IF B(P) = 0 THEN 120
153 IF B(P) = -7 THEN 120
156 IF Z = P THEN 100
160 IF ((Z + P) / 2) = INT((Z + P) / 2) THEN 180
170 GOTO 120
180 IF (ABS(Z - P) - 2) * (ABS(Z - P) - 18) <> 0 THEN 120
190 GOSUB 1000
200 GOSUB 500
210 GOSUB 1500
220 GOTO 100
500 REM *** PRINT BOARD
510 FOR X = 1 TO 9
520 FOR Y = 1 TO 9
525 IF (X - 1) * (X - 9) * (Y - 1) * (Y - 9) = 0 THEN 550
530 IF (X - 4) * (X - 5) * (X - 6) = 0 THEN 570
540 IF (Y - 4) * (Y - 5) * (Y - 6) = 0 THEN 570
550 REM
560 GOTO 610
570 IF T(X, Y) <> 5 THEN 600
580 COLOR 11: PRINT TAB(Y * 2); "!";: COLOR 15
590 GOTO 610
600 COLOR 9: PRINT TAB(Y * 2); CHR$(248);: COLOR 15
610 REM
615 NEXT Y
620 PRINT
630 NEXT X
640 RETURN
1000 REM *** UPDATE BOARD
1005 C = 1: FOR X = 1 TO 9
1020 FOR Y = 1 TO 9
1030 IF C <> Z THEN 1220
1040 IF C + 2 <> P THEN 1080
1045 IF T(X, Y + 1) = 0 THEN 120
1050 T(X, Y + 2) = 5
1060 T(X, Y + 1) = 0: B(C + 1) = -3
1070 GOTO 1200
1080 IF C + 18 <> P THEN 1130
1085 IF T(X + 1, Y) = 0 THEN 120
1090 T(X + 2, Y) = 5: T(X + 1, Y) = 0: B(C + 9) = -3
1120 GOTO 1200
1130 IF C - 2 <> P THEN 1170
1135 IF T(X, Y - 1) = 0 THEN 120
1140 T(X, Y - 2) = 5: T(X, Y - 1) = 0: B(C - 1) = -3
1160 GOTO 1200
1170 IF C - 18 <> P THEN 1220
1175 IF T(X - 1, Y) = 0 THEN 120
1180 T(X - 2, Y) = 5: T(X - 1, Y) = 0: B(C - 9) = -3
1200 B(Z) = -3: B(P) = -7
1210 T(X, Y) = 0: GOTO 1240
1220 C = C + 1
1225 NEXT Y
1230 NEXT X
1240 RETURN
1500 REM*** CHECK IF GAME IS OVER
1505 F = 0
1510 FOR R = 2 TO 8
1520 FOR C = 2 TO 8
1530 IF T(R, C) <> 5 THEN 1580
1535 F = F + 1
1540 FOR A = R - 1 TO R + 1
1545 T = 0
1550 FOR B = C - 1 TO C + 1
1560 T = T + T(A, B)
1561 NEXT B
1564 IF T <> 10 THEN 1567
1565 IF T(A, C) <> 0 THEN 1630
1567 NEXT A
1568 FOR X = C - 1 TO C + 1
1569 T = 0
1570 FOR Y = R - 1 TO R + 1
1571 T = T + T(Y, X)
1572 NEXT Y
1573 IF T <> 10 THEN 1575
1574 IF T(R, X) <> 0 THEN 1630
1575 NEXT X
1580 NEXT C
1590 NEXT R
1600 REM *** GAME IS OVER
1605 COLOR 13: PRINT "The game is over.  You had"; F; "pieces remaining.": COLOR 15
1611 IF F <> 1 THEN 1615
1612 PRINT "Bravo!  You made a perfect score!"
1613 PRINT "Take a screen shot as a record of your accomplishment!"
1615 PRINT: COLOR 10: INPUT "Play again (Y/N)"; A$: COLOR 15
1617 IF LEFT$(A$, 1) = "N" OR LEFT$(A$, 1) = "n" THEN 2000
1618 RESTORE: GOTO 28
1620 END
1630 RETURN
2000 PRINT: PRINT "So long for now.": PRINT
2010 END

