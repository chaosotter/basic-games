1 CLS: COLOR 12
2 PRINT TAB(36); "Flipflop"
4 PRINT TAB(31); "Creative Computing"
5 PRINT TAB(29); "Morristown, New Jersey"
6 PRINT: RANDOMIZE TIMER
10 REM *** CREATED BY MICHAEL CASS
15 DIM A$(20)
20 COLOR 14: PRINT "The object of this puzzle is to change this:"
30 PRINT: COLOR 13
40 PRINT "    X X X X X X X X X X"
50 PRINT: COLOR 14
60 PRINT "To this:"
70 PRINT: COLOR 11
80 PRINT "    O O O O O O O O O O"
90 PRINT: COLOR 14
100 PRINT "by typing the number corresponding to the position of the letter.  On some"
110 PRINT "numbers, one position will change; on others, two will change.  To reset the"
120 PRINT "line to all Xs, type 0 (zero), and to start over in the middle of a game, type"
130 PRINT "11 (eleven)."
170 PRINT: COLOR 15
180 REM
190 Q = RND(1)
200 PRINT: PRINT "Here is the starting line of Xs:"
210 PRINT
220 C = 0
230 PRINT "    1 2 3 4 5 6 7 8 9 10"
240 COLOR 13: PRINT "    X X X X X X X X X X"
250 PRINT: COLOR 15
260 REM
270 FOR X = 1 TO 10
280 A$(X) = "X"
290 NEXT X
300 GOTO 320
310 PRINT "Illegal entry -- try again."
320 COLOR 10: PRINT "Input the number (1-10, 0=reset, 11=quit)";
330 INPUT N: COLOR 15
340 IF N <> INT(N) THEN 310
350 IF N = 11 THEN 180
360 IF N > 11 THEN 310
370 IF N = 0 THEN 230
380 IF M = N THEN 510
390 M = N
400 IF A$(N) = "O" THEN 480
410 A$(N) = "O"
420 R = TAN(Q + N / Q - N) - SIN(Q / N) + 336 * SIN(8 * N)
430 N = R - INT(R)
440 N = INT(10 * N)
450 IF A$(N) = "O" THEN 480
460 A$(N) = "O"
470 GOTO 610
480 A$(N) = "X"
490 IF M = N THEN 420
500 GOTO 610
510 IF A$(N) = "O" THEN 590
520 A$(N) = "O"
530 R = .592 * (1 / TAN(Q / N + Q)) / SIN(N * 2 + Q) - COS(N)
540 N = R - INT(R)
550 N = INT(10 * N)
560 IF A$(N) = "O" THEN 590
570 A$(N) = "O"
580 GOTO 610
590 A$(N) = "X"
600 IF M = N THEN 530
610 PRINT: PRINT "    1 2 3 4 5 6 7 8 9 10": PRINT "    ";
620 FOR Z = 1 TO 10
624 IF A$(Z) = "O" THEN COLOR 11: ELSE COLOR 13
626 PRINT A$(Z); " ";: NEXT Z: PRINT: COLOR 15
630 C = C + 1
640 PRINT
650 FOR Z = 1 TO 10
660 IF A$(Z) <> "O" THEN 320
670 NEXT Z
680 IF C > 12 THEN 710
690 PRINT "Very good.  You guessed it in only"; C; "guesses."
700 GOTO 720
710 PRINT "Try harder next time.  It took you"; C; "guesses."
720 COLOR 10: PRINT "Do you want to try another puzzle (Y/N)";
730 INPUT X$
740 IF LEFT$(X$, 1) = "N" OR LEFT$(X$, 1) = "n" THEN 780
760 PRINT
770 GOTO 180
780 END

