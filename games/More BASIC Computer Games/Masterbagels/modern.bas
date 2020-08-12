1 CLS: COLOR 12
5 PRINT TAB(34); "Masterbagels"
6 PRINT TAB(31); "Creative Computing"
7 PRINT TAB(29); "Morristown, New Jersey"
8 RANDOMIZE TIMER
10 DIM F(9), M(9), T(9), H(18, 3)
20 COLOR 10: PRINT: PRINT: PRINT: INPUT "Teach (Y/N)"; S$: COLOR 15
30 IF LEFT$(S$, 1) = "N" OR LEFT$(S$, 1) = "n" THEN 130
40 COLOR 14: PRINT
50 PRINT "Hi, this is a logic game designed to test your deductive ability.  I will"
60 PRINT "choose a random number and you isolate it.  When prompted, enter a valid"
70 PRINT "number, and I will then respond with the number of digits that are right and in"
80 PRINT "the right position and the number right but in the wrong position.  If I think"
90 PRINT "you are hopelessly lost, I will tell you the answer and we will go on to the"
100 PRINT "next game.  To recap your entries, enter 0; to quit on a game, enter 1; and to"
110 PRINT "stop, enter 2."
130 S = 0
140 PRINT
150 COLOR 10: PRINT "How many games (1-100), digits (2-6), and max values (2-9)";
160 INPUT J, A, B: COLOR 15
180 IF A <= 0 THEN 220
190 IF A > 6 THEN 220
200 IF B < 2 THEN 220
210 IF B < 10 THEN 240
220 PRINT "Illegal range.  Re-enter run parameters."
230 GOTO 160
240 IF J < 100 THEN 260
250 J = 100
260 FOR X = 0 TO J + A + B
270 I = RND(1)
280 NEXT X
290 FOR N = 1 TO J
295 PRINT: COLOR 13: PRINT "Game"; N: COLOR 15
300 FOR X = 0 TO A
310 T(X) = INT(RND(1) * B + 1)
320 NEXT X
330 FOR I = 1 TO A + B + 1
340 FOR X = 1 TO A
350 F(X) = 0
360 NEXT X
370 F1 = 0
380 F2 = 0
390 COLOR 10: INPUT "Your guess"; V: COLOR 15
400 IF V <> 0 THEN 450
410 COLOR 11: FOR X = 1 TO I - 1
420 PRINT "   "; STR$(H(X, 1)); ","; STR$(H(X, 2)); " ="; STR$(H(X, 3))
430 NEXT X: COLOR 15
440 GOTO 390
450 IF V = 1 THEN 750
460 IF V = 2 THEN 920
470 T1 = V
480 FOR X = 1 TO A
490 M(X) = INT(T1 / (10 ^ (A - X)))
500 T1 = T1 - M(X) * (10 ^ (A - X)) + ((SGN(A - (X + 1)) - 1) * -.5)
510 IF M(X) < 1 THEN 530
520 IF M(X) < B + 1 THEN 550
530 PRINT "Bad number in"; STR$(V); "."
540 GOTO 340
550 IF M(X) <> T(X) THEN 580
560 F(X) = 1
570 F1 = F1 + 1
580 NEXT X
590 IF F1 = A THEN 810
600 FOR Y = 1 TO A
610 IF T(Y) = M(Y) THEN 690
620 FOR X = 1 TO A
630 IF M(Y) <> T(X) THEN 680
640 IF F(X) = 1 THEN 680
650 F(X) = 1
660 F2 = F2 + 1
670 GOTO 690
680 NEXT X
690 NEXT Y
700 PRINT F1; ","; F2
710 H(I, 1) = F1
720 H(I, 2) = F2
730 H(I, 3) = V
740 NEXT I
750 I = A - 1 + B + 1
760 V = 0
770 FOR X = 1 TO A
780 V = V + T(X) * (10 ^ (A - X))
790 NEXT X
800 PRINT "The answer is"; STR$(V); "."
810 S = S + I
820 PRINT "You made"; I; "tries for an average of"; S / N; "over"; N; "games."
830 Y = INT(RND(1) * I)
840 Y = INT(H(Y, 2) / 1024 + 4 * RND(1))
850 FOR X = 1 TO Y + 1
860 I = RND(1)
870 NEXT X
880 NEXT N
890 COLOR 10: PRINT: INPUT "Run again (Y/N)"; S$: COLOR 15
900 IF LEFT$(S$, 1) = "Y" OR LEFT$(S$, 1) = "y" THEN 130
920 END

