1 CLS: COLOR 12: PRINT TAB(36); "Hexapawn"
2 PRINT TAB(31); "Creative Computing": PRINT TAB(29); "Morristown, New Jersey"
3 PRINT: PRINT: PRINT: RANDOMIZE TIMER: COLOR 15
4 REM  HEXAPAWN:  INTERPRETATION OF HEXAPAWN GAME AS PRESENTED IN
5 REM  MARTIN GARDNER'S "THE UNEXPECTED HANGING AND OTHER MATHEMATIC-
6 REM  AL DIVERSIONS", CHAPTER EIGHT:  A MATCHBOX GAME-LEARNING MACHINE
7 REM  ORIGINAL VERSION FOR H-P TIMESHARE SYSTEM BY R.A. KAAPKE 5/5/76
8 REM  INSTRUCTIONS BY JEFF DALTON
9 REM  CONVERSION TO MITS BASIC BY STEVE NORTH
10 DIM B(19, 9), M(19, 4), S(9), P$(3)
15 W = 0: L = 0
20 DEF FNR(X)=-3*(X=1)-(X=3)-4*(X=6)-6*(X=4)-7*(X=9)-9*(X=7)+FNS(X)
25 DEF FNS(X)=-X*(X=2 OR X=5 OR X=8)
30 DEF FNM(Y)=Y-INT(Y/10)*10
35 P$ = "X.O"
40 FOR I = 1 TO 19: FOR J = 1 TO 9: READ B(I, J): NEXT J: NEXT I
45 FOR I = 1 TO 19: FOR J = 1 TO 4: READ M(I, J): NEXT J: NEXT I
50 COLOR 10: PRINT "Do you want instructions (Y/N)";
60 INPUT A$: COLOR 15
70 A$ = LEFT$(A$, 1)
80 IF A$ = "Y" OR A$ = "y" THEN 2000
90 IF A$ <> "N" AND A$ <> "n" THEN 50
100 X = 0: Y = 0
111 S(4) = 0: S(5) = 0: S(6) = 0
112 S(1) = -1: S(2) = -1: S(3) = -1
113 S(7) = 1: S(8) = 1: S(9) = 1
115 GOSUB 1000
120 COLOR 10: PRINT "Your move (from, to)";
121 INPUT M1, M2: COLOR 15
122 IF M1 = INT(M1) AND M2 = INT(M2) AND M1 > 0 AND M1 < 10 AND M2 > 0 AND M2 < 10 THEN 130
123 PRINT "Illegal coordinates.": PRINT
124 GOTO 120
130 IF S(M1) = 1 THEN 150
140 PRINT "Illegal move.": PRINT: GOTO 120
150 IF S(M2) = 1 THEN 140
160 IF M2 - M1 <> -3 AND S(M2) <> -1 THEN 140
170 IF M2 > M1 THEN 140
180 IF M2 - M1 = -3 AND (S(M2) <> 0) THEN 140
185 IF M2 - M1 < -4 THEN 140
186 IF M1 = 7 AND M2 = 3 THEN 140
190 S(M1) = 0
200 S(M2) = 1
205 GOSUB 1000
210 IF S(1) = 1 OR S(2) = 1 OR S(3) = 1 THEN 820
220 FOR I = 1 TO 9
221 IF S(I) = -1 THEN 230
222 NEXT I
223 GOTO 820
230 FOR I = 1 TO 9
240 IF S(I) <> -1 THEN 330
250 IF S(I + 3) = 0 THEN 350
260 IF FNR(I) = I THEN 320
270 IF I > 3 THEN 300
280 IF S(5) = 1 THEN 350
290 GOTO 330
300 IF S(8) = 1 THEN 350
310 GOTO 330
320 IF S(I + 2) = 1 OR S(I + 4) = 1 THEN 350
330 NEXT I
340 GOTO 820
350 FOR I = 1 TO 19
360 FOR J = 1 TO 3
370 FOR K = 3 TO 1 STEP -1
380 T((J - 1) * 3 + K) = B(I, (J - 1) * 3 + 4 - K)
390 NEXT K
400 NEXT J
410 FOR J = 1 TO 9
420 IF S(J) <> B(I, J) THEN 460
430 NEXT J
440 R = 0
450 GOTO 540
460 FOR J = 1 TO 9
470 IF S(J) <> T(J) THEN 510
480 NEXT J
490 R = 1
500 GOTO 540
510 NEXT I
511 REM EMBER THE TERMINATION OF THIS LOOP IS IMPOSSIBLE
512 PRINT "Illegal board pattern."
530 END
540 X = I
550 FOR I = 1 TO 4
560 IF M(X, I) <> 0 THEN 600
570 NEXT I
580 COLOR 11: PRINT "I resign.": COLOR 15
590 GOTO 820
600 Y = INT(RND(1) * 4 + 1)
601 IF M(X, Y) = 0 THEN 600
610 IF R <> 0 THEN 630
620 COLOR 11: PRINT "I move from"; STR$(INT(M(X, Y) / 10)); " to"; STR$(FNM(M(X, Y))); ".": COLOR 15
622 S(INT(M(X, Y) / 10)) = 0
623 S(FNM(M(X, Y))) = -1
624 GOTO 640
630 COLOR 11: PRINT "I move from"; STR$(FNR(INT(M(X, Y) / 10))); " to";
631 PRINT STR$(FNR(FNM(M(X, Y)))); ".": COLOR 15
632 S(FNR(INT(M(X, Y) / 10))) = 0
633 S(FNR(FNM(M(X, Y)))) = -1
640 GOSUB 1000
641 IF S(7) = -1 OR S(8) = -1 OR S(9) = -1 THEN 870
650 FOR I = 1 TO 9
660 IF S(I) = 1 THEN 690
670 NEXT I
680 GOTO 870
690 FOR I = 1 TO 9
700 IF S(I) <> 1 THEN 790
710 IF S(I - 3) = 0 THEN 120
720 IF FNR(I) = I THEN 780
730 IF I < 7 THEN 760
740 IF S(5) = -1 THEN 120
750 GOTO 790
760 IF S(2) = -1 THEN 120
770 GOTO 790
780 IF S(I - 2) = -1 OR S(I - 4) = -1 THEN 120
790 NEXT I
800 PRINT "You can't move, so ";
810 GOTO 870
820 PRINT "You win."
830 M(X, Y) = 0
840 L = L + 1
850 COLOR 12: PRINT "I have won"; W; "and you"; L; "out of"; L + W; "games.": COLOR 15
851 PRINT
860 GOTO 100
870 PRINT "I win."
880 W = W + 1
890 GOTO 850
900 DATA -1,-1,-1,1,0,0,0,1,1,-1,-1,-1,0,1,0,1,0,1
905 DATA -1,0,-1,-1,1,0,0,0,1,0,-1,-1,1,-1,0,0,0,1
910 DATA -1,0,-1,1,1,0,0,1,0,-1,-1,0,1,0,1,0,0,1
915 DATA 0,-1,-1,0,-1,1,1,0,0,0,-1,-1,-1,1,1,1,0,0
920 DATA -1,0,-1,-1,0,1,0,1,0,0,-1,-1,0,1,0,0,0,1
925 DATA 0,-1,-1,0,1,0,1,0,0,-1,0,-1,1,0,0,0,0,1
930 DATA 0,0,-1,-1,-1,1,0,0,0,-1,0,0,1,1,1,0,0,0
935 DATA 0,-1,0,-1,1,1,0,0,0,-1,0,0,-1,-1,1,0,0,0
940 DATA 0,0,-1,-1,1,0,0,0,0,0,-1,0,1,-1,0,0,0,0
945 DATA -1,0,0,-1,1,0,0,0,0
950 DATA 24,25,36,0,14,15,36,0,15,35,36,47,36,58,59,0
955 DATA 15,35,36,0,24,25,26,0,26,57,58,0
960 DATA 26,35,0,0,47,48,0,0,35,36,0,0,35,36,0,0
965 DATA 36,0,0,0,47,58,0,0,15,0,0,0
970 DATA 26,47,0,0,47,58,0,0,35,36,47,0,28,58,0,0,15,47,0,0
1000 PRINT
1010 FOR I = 1 TO 3
1020 FOR J = 1 TO 3
1030 PRINT TAB(9 + J); MID$(P$, S((I - 1) * 3 + J) + 2, 1);
1040 NEXT J
1050 PRINT
1060 NEXT I
1070 PRINT
1080 RETURN
2000 COLOR 14: PRINT:
2010 PRINT "This program plays the game of Hexapawn."
2015 PRINT
2020 PRINT "Hexapawn is played with chess pawns on a 3-by-3 board.  The pawns are moved as"
2030 PRINT "in chess -- one space forward to an empty space, or one space forward and"
2040 PRINT "diagonally to capture an opposing piece.  On the board, your pawns are 'O', the"
2050 PRINT "computer's pawns are 'X', and empty squares are '.'.  To enter a move, type the"
2060 PRINT "number of the square you are moving from, followed by the number of the square"
2070 PRINT "you will move to.  The numbers must be separated by a comma.": PRINT
2100 PRINT "The computer starts a series of games knowing only when the game is won (a draw"
2105 PRINT "is impossible) and how to move.  It has no strategy at first and just moves"
2110 PRINT "randomly.  However, it learns from each game.  Thus, winning becomes more and"
2120 PRINT "more difficult.  Also, to help offset your initial advantage, you will not be"
2130 PRINT "told how to win the game, but must learn this by playing."
2160 PRINT: PRINT "The numbers of the board are as follows:"
2170 COLOR 11: PRINT TAB(10); "123": PRINT TAB(10); "456": PRINT TAB(10); "789": COLOR 14: PRINT
2180 PRINT "For example, to move your rightmost pawn forward, you would type '9,6' in"
2190 PRINT "response to the prompt.  Since I'm a good sport, you'll always go first.": PRINT
2215 COLOR 13: PRINT "(Press any key.)";: COLOR 15
2216 Z$ = INKEY$: IF Z$ = "" THEN 2216
2220 PRINT: GOTO 100
9999 END
