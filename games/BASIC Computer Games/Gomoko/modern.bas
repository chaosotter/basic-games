1 CLS: COLOR 12
2 PRINT TAB(37); "Gomoko"
4 PRINT TAB(31); "Creative Computing"
5 PRINT TAB(29); "Morrison, New Jersey"
6 PRINT: PRINT: PRINT: RANDOMIZE TIMER
8 DIM A(19, 19)
10 COLOR 14: PRINT "Welcome to the oriental game of Gomoko.": PRINT
20 PRINT "The game is played on an N-by-N grid of a size that you specify.  During your"
30 PRINT "play, you may cover one grid intersection with a marker.  The object of the"
40 PRINT "game is to get 5 adjacent markers in a row -- horizontally, vertically, or"
50 PRINT "diagonally.  On the board diagram, your moves are marked with '";: COLOR 11: PRINT CHR$(2);: COLOR 14: PRINT "' and the"
60 PRINT "computer's move with '";: COLOR 13: PRINT CHR$(1);: COLOR 14: PRINT "'."
80 PRINT: PRINT "The computer does not keep track of who has won."
90 PRINT "To end the game, type -1,-1 for your move.": PRINT
110 COLOR 10: PRINT "What is your board size (7-19)";: INPUT N: COLOR 15
115 IF N > 6 THEN 117
116 GOTO 120
117 IF N < 20 THEN 210
120 PRINT "I said, the minimum is 7 and the maximum is 19.": PRINT: GOTO 110
210 FOR I = 1 TO N: FOR J = 1 TO N: A(I, J) = 0: NEXT J: NEXT I
300 PRINT: PRINT "We alternate moves.  You go first...": PRINT
310 COLOR 10: PRINT "Your play (row, column)";: INPUT I, J: COLOR 15
315 PRINT
320 IF I = -1 THEN 980
330 X = I: Y = J: GOSUB 910: IF L = 1 THEN 410
340 PRINT "Illegal move.  Try again...": GOTO 310
410 IF A(I, J) = 0 THEN 440
420 PRINT "Square occupied.  Try again...": GOTO 310
440 A(I, J) = 1
500 REM *** COMPUTER TRIES AN INTELLIGENT MOVE ***
510 FOR E = -1 TO 1: FOR F = -1 TO 1: IF E + F - E * F = 0 THEN 590
540 X = I + F: Y = J + F: GOSUB 910
570 IF L = 0 THEN 590
580 IF A(X, Y) = 1 THEN 710
590 NEXT F: NEXT E
600 REM *** COMPUTER TRIES A RANDOM MOVE ***
610 X = INT(N * RND(1) + 1): Y = INT(N * RND(1) + 1): GOSUB 910: IF L = 0 THEN 610
650 IF A(X, Y) <> 0 THEN 610
660 A(X, Y) = 2: GOSUB 810: GOTO 310
710 X = I - E: Y = J - F: GOSUB 910
750 IF L = 0 THEN 610
760 GOTO 650
800 REM *** PRINT THE BOARD ***
810 PRINT "       ";: FOR J = 1 TO N: PRINT RIGHT$(STR$(J), 2); " ";: NEXT J: PRINT
815 FOR I = 1 TO N: COLOR 15: PRINT "    "; RIGHT$(STR$(I), 2); " ";
820 FOR J = 1 TO N
825 IF A(I, J) = 0 THEN COLOR 9: PRINT " . ";
830 IF A(I, J) = 1 THEN COLOR 11: PRINT " "; CHR$(2); " ";
835 IF A(I, J) = 2 THEN COLOR 13: PRINT " "; CHR$(1); " ";
840 NEXT J: PRINT: NEXT I: PRINT: COLOR 15: RETURN
910 L = 1: IF X < 1 THEN 970
920 IF X > N THEN 970
930 IF Y < 1 THEN 970
940 IF Y > N THEN 970
950 RETURN
970 L = 0: RETURN
980 PRINT: PRINT "Thanks for the game!"
985 COLOR 10: PRINT "Play again (Y/N)";: INPUT Q$
990 IF LEFT$(Q$, 1) = "Y" OR LEFT$(Q$, 1) = "y" THEN 110
999 END

