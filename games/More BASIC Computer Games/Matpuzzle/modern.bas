1 CLS: COLOR 12: PRINT TAB(35); "Matpuzzle"
2 PRINT TAB(31); "Creative Computing"
3 PRINT TAB(29); "Morristown, New Jersey"
4 PRINT: PRINT: COLOR 14
5 RANDOMIZE TIMER
10 DIM A$(6), B$(6, 6), C(6, 6), C$(6, 6)
20 PRINT "This is a puzzle-making game.  You input up to six words, up to six letters"
30 PRINT "each, and equal in length.  The computer will scramble them and print them in"
40 PRINT "a matrix.  The computer will also print a corresponding number board.  When it"
50 PRINT "stops, tear it and give it to a friend."
60 PRINT
100 COLOR 10: PRINT "How many words do you want (up to 6)";
105 INPUT W: COLOR 15
110 COLOR 10: PRINT "How many letter in each word (all words must be same)";
115 INPUT L: COLOR 15
120 PRINT: PRINT "Type one"; STR$(L); "-letter word on each line:"
130 FOR X = 1 TO W
140 COLOR 10: INPUT A$(X): COLOR 15
150 NEXT X
160 FOR X = 1 TO W
170 FOR Y = 1 TO L
180 C$(X, Y) = MID$(A$(X), Y, 1): B$(X, Y) = MID$(A$(X), Y, 1)
190 NEXT Y
200 NEXT X
210 PRINT
215 COLOR 11: PRINT STRING$(27, ASC("-"));
225 PRINT TAB(29); "( TEAR HERE )";
227 PRINT TAB(43); STRING$(27, ASC("-"));
230 PRINT: PRINT: COLOR 15
240 FOR Z = 1 TO 60
250 F = INT(RND(1) * W + 1)
260 D = INT(RND(1) * W + 1)
270 G = INT(RND(1) * L + 1)
280 E = INT(RND(1) * L + 1)
290 J$ = B$(F, G)
300 B$(F, G) = B$(D, E)
310 B$(D, E) = J$
320 NEXT Z
330 PRINT TAB(6);
340 FOR Z1 = 1 TO L
350 PRINT Z1; " ";
360 NEXT Z1
370 PRINT
380 PRINT
390 FOR Z2 = 1 TO W
400 PRINT Z2; "   ";
410 FOR Z3 = 1 TO L
420 PRINT B$(Z2, Z3); "   ";
430 NEXT Z3
440 PRINT
450 PRINT
460 NEXT Z2
490 COLOR 13: PRINT: PRINT "(Press any key.)"
495 Z$ = INKEY$: IF Z$ = "" THEN 495
496 PRINT: COLOR 15
500 FOR P = 1 TO L
510 FOR Q = 1 TO W
520 T = 0
530 FOR R = 1 TO W
540 FOR S = 1 TO L
550 IF T = 1 THEN 600
560 IF B$(R, S) <> C$(Q, P) THEN 600
570 C(Q, P) = R + S
580 T = 1
590 B$(R, S) = " "
600 NEXT S
610 NEXT R
620 NEXT Q
630 NEXT P
640 FOR X = 1 TO W
650 PRINT TAB(3)
660 FOR M = 1 TO L
670 IF C(X, M) > 9 THEN 700
680 PRINT C(X, M); "     ";
690 GOTO 710
700 PRINT C(X, M); "    ";
710 NEXT M
720 PRINT
730 PRINT TAB(2);
740 FOR M1 = 1 TO L
750 PRINT "-----"; "   ";
760 NEXT M1
770 PRINT
780 NEXT X
790 COLOR 13: PRINT: PRINT "(Press any key.)"
795 Z$ = INKEY$: IF Z$ = "" THEN 795
800 PRINT: COLOR 15
810 PRINT "The number above each dash is the sum of two coordinates of the point on the"
820 PRINT "matrix where the correct letter for that spot will appear.  The problem is that"
830 PRINT "the sum of some coordinates are the same, so several letters could fit."
840 PRINT
850 PRINT "So try now to find what words were used and solve the puzzle -- good luck!"
855 PRINT
860 COLOR 10: PRINT "Do you want another run (Y/N)";
861 INPUT Y9$: COLOR 15
870 IF LEFT$(Y9$, 1) = "Y" OR LEFT$(Y9$, 1) = "y" THEN 100
880 END

