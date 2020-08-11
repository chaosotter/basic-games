1 CLS: COLOR 12
2 RANDOMIZE TIMER
5 PRINT TAB(34); "Magic Square"
10 PRINT TAB(31); "Creative Computing"
11 PRINT TAB(29); "Morristown, New Jersey"
12 DIM A(9), B(9)
15 PRINT
17 PRINT: COLOR 15
20 PRINT "Game of Magic Square"
21 PRINT: COLOR 14
25 PRINT "Players alternately choose an integer (1 to 9) that has not been previously"
30 PRINT "used and place it in any unfilled cell of a tic-tac-toe board.  The goal is to"
35 PRINT "make the sum of each row, column, and diagonal equal to 15."
47 PRINT
50 PRINT "That player loses who first makes the sum of the three figures in any row,"
55 PRINT "column, or diagonal something other than 15.  A tie game draws a magic square!"
67 PRINT
70 PRINT "The computer will ask you on each move which cell you wish to occupy, and the"
75 PRINT "number you wish -- like '3,7' if you wish to put a 7 in cell 3."
85 PRINT
90 PRINT "Here are the cell numbers:"
92 PRINT: COLOR 11
93 PRINT "    1 2 3"
94 PRINT "    4 5 6"
95 PRINT "    7 8 9": COLOR 15
96 FOR I = 1 TO 9
97 A(I) = 0
98 B(I) = 0
99 NEXT I
100 M = 0: W = 0
103 PRINT
104 COLOR 10: PRINT "Input your move -- cell and number";
105 INPUT I, N: COLOR 15
110 IF I < 1 OR I > 9 OR N < 1 OR N > 9 THEN 130
120 IF A(I) = 0 AND B(N) = 0 THEN 150
130 PRINT "Illegal move... try again."
135 GOTO 103
150 A(I) = N: B(N) = 1: M = M + 1
170 GOSUB 960
180 GOSUB 800
200 IF W = 0 THEN 230
210 PRINT "Sorry, you lose -- nice try."
211 GOTO 560
230 IF M < 5 THEN 400
240 PRINT "A tie game -- but we've drawn a magic square!"
250 GOTO 560
400 FOR Q = 1 TO 9
410 IF A(Q) > 0 THEN 480
420 FOR R = 1 TO 9
430 IF B(R) > 0 THEN 470
435 A(Q) = R
440 GOSUB 800
450 IF W = 0 THEN 500
460 Q1 = Q: R1 = R: W = 0: A(Q) = 0
470 NEXT R
480 NEXT Q
490 W = 1: R = R1: Q = Q1: A(Q) = R
500 B(R) = 1
520 PRINT "I move to cell"; Q; "with a"; STR$(R); "."
530 GOSUB 960
540 IF W = 0 THEN 103
550 PRINT "I lose -- you win!"
560 PRINT
561 FOR I = 1 TO 15
562 PRINT CHR$(7);
564 NEXT I
570 PRINT "Let's play again..."
575 GOTO 96
800 FOR X = 1 TO 8
810 ON X GOTO 820, 830, 840, 850, 860, 870, 880, 890
820 J = 1: K = 2: L = 3: GOTO 900
830 K = 4: L = 7: GOTO 900
840 K = 5: L = 9: GOTO 900
850 J = 4: L = 6: GOTO 900
860 J = 2: L = 8: GOTO 900
870 J = 3: L = 7: GOTO 900
880 J = 7: L = 9: GOTO 900
890 J = 7: K = 8
900 IF A(J) = 0 OR A(K) = 0 OR A(L) = 0 THEN 930
920 IF A(J) + A(K) + A(L) <> 15 THEN 940
930 NEXT X
935 GOTO 950
940 W = 1
950 RETURN
960 PRINT: COLOR 11
965 PRINT A(1), A(2), A(3)
970 PRINT A(4), A(5), A(6)
975 PRINT A(7), A(8), A(9)
980 PRINT: COLOR 15
990 RETURN
999 END

