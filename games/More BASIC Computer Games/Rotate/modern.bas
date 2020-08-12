3 RANDOMIZE TIMER
4 CLS: COLOR 14
5 PRINT TAB(37); "Rotate"
8 PRINT TAB(31); "Creative Computing"
10 PRINT TAB(29); "Morristown, New Jersey": PRINT: PRINT: PRINT: COLOR 15
11 DIM B(16), B$(16)
12 COLOR 10: INPUT "Instructions (Y/N)"; A$: COLOR 15: PRINT: IF LEFT$(A$, 1) = "N" OR LEFT$(A$, 1) = "n" THEN 140
15 COLOR 14: PRINT "In this game the board is laid out as follows:"
25 FOR I = 1 TO 16: B(I) = I: NEXT
30 COLOR 11: PRINT: FOR I = 1 TO 13 STEP 4
35 PRINT TAB(2); B(I); TAB(6); B(I + 1); TAB(10); B(I + 2); TAB(14); B(I + 3)
40 NEXT I: PRINT: COLOR 14
45 PRINT "Board positions are occupied randomly by the letters A to P.  The object of"
50 PRINT "the game is to order the letters by rotating any four letters clockwise one"
55 PRINT "position.  You specify the upper left position of the four you wish to rotate,"
60 PRINT "i.e., valid moves are 1, 2, 3, 5, 6, 7, 9, 10, and 11."
65 PRINT: COLOR 13: PRINT "(Press any key.)"
66 Z$ = INKEY$: IF Z$ = "" THEN 66
67 PRINT: COLOR 14
70 PRINT "Consequently, if the board looked like:"
75 FOR I = 1 TO 16: B$(I) = CHR$(I + 64): NEXT: B$(2) = "C": B$(3) = "G"
80 B$(6) = "B": B$(7) = "F": GOSUB 400
85 COLOR 14: PRINT "And you rotated position 2, the board would be:"
90 FOR I = 2 TO 7: B$(I) = CHR$(I + 64): NEXT I: GOSUB 400
95 COLOR 14: PRINT "And you would win!"
96 PRINT: COLOR 13: PRINT "(Press any key.)"
97 Z$ = INKEY$: IF Z$ = "" THEN 97
98 PRINT: COLOR 14
100 PRINT "You also get one 'special' move per game which you may or may not need.  The"
105 PRINT "special move allows you to exchange any two adjacent letters in a row.  To make"
110 PRINT "this move, input '-1' as your move and you will be asked for the positions of"
115 PRINT "the two letters to exchange.  Remember, only one special move per game!"
125 PRINT
130 PRINT "To give up at any time, type a '0'.": PRINT: PRINT "Good luck!": PRINT: COLOR 15
140 FOR I = 1 TO 16: B$(I) = "0": NEXT I
150 FOR I = 1 TO 16
160 T$ = CHR$(INT(16 * RND(1) + 65))
165 FOR J = 1 TO I
170 IF B$(J) = T$ THEN 160
175 NEXT J
180 B$(I) = T$: NEXT I
190 M = 0: S = 0: PRINT "Here's the starting board...": GOSUB 400
200 COLOR 10: INPUT "Position to rotate (1-16)"; I: COLOR 15: IF I = 0 THEN PRINT: PRINT: GOTO 140
205 IF I = -1 THEN 510
210 IF I = 4 OR I = 8 OR I >= 12 THEN PRINT "Illegal.  Again...": GOTO 200
220 M = M + 1: T$ = B$(I)
230 B$(I) = B$(I + 4): B$(I + 4) = B$(I + 5): B$(I + 5) = B$(I + 1): B$(I + 1) = T$
240 GOSUB 400
305 FOR I = 1 TO 16
310 IF CHR$(I + 64) <> B$(I) THEN 200
315 NEXT I
320 PRINT: PRINT "You ordered the board in"; M; "moves.": M1 = M1 + M: G = G + 1
325 PRINT CHR$(7)
330 COLOR 10: PRINT: INPUT "Play again (Y/N)"; A$: COLOR 15: IF LEFT$(A$, 1) = "Y" OR LEFT$(A$, 1) = "y" THEN 140
340 PRINT: PRINT "You played"; G; "games and ordered the board in an average"
350 PRINT "of"; M1 / G; "moves per game.": PRINT: GOTO 999
400 COLOR 11: PRINT: FOR I = 1 TO 13 STEP 4
410 PRINT "    "; B$(I); " "; B$(I + 1); " "; B$(I + 2); " "; B$(I + 3)
420 NEXT I: PRINT: COLOR 15: RETURN
510 COLOR 10: INPUT "Exchange which two positions"; X, Y: COLOR 15
520 IF X <> Y + 1 AND X <> Y - 1 THEN PRINT "Illegal.  Again...": GOTO 510
530 S = S + 1: IF S > 1 THEN PRINT "Only one special move per game.": GOTO 200
540 T$ = B$(X): B$(X) = B$(Y): B$(Y) = T$: GOTO 240
999 END

