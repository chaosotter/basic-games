1 CLS: COLOR 12: PRINT TAB(35); "Even Wins"
2 PRINT TAB(31); "Creative Computing": PRINT TAB(29); "Morristown, New Jersey"
3 PRINT: PRINT: COLOR 14
4 Y1 = 0
10 M1 = 0
20 DIM M(20), Y(20)
30 PRINT "This is a two-person game called 'Even Wins'.  To play the game, the players"
40 PRINT "need 27 marbles or other objects on a table."
70 PRINT
80 PRINT "The 2 players alternate turns, with each player removing from 1 to 4 marbles on"
90 PRINT "each move.  The game ends when there are no marbles left, and the winner is the"
100 PRINT "one with an even number of marbles."
130 PRINT
140 PRINT "The only rules are that (1) you must alternate turns, (2) you must take"
150 PRINT "between 1 and 4 marbled each turn, and (3) you cannot skip a turn."
180 PRINT
190 PRINT
200 COLOR 10: PRINT "Do you want to go first (Y/N)";
220 INPUT C$: COLOR 15
230 IF LEFT$(C$, 1) = "N" OR LEFT$(C$, 1) = "n" THEN 250
240 GOTO 1060
250 T = 27
260 M = 2
270 PRINT: COLOR 13: PRINT "Total ="; T: PRINT: COLOR 15
280 M1 = M1 + M
290 T = T - M
300 PRINT "I pick up"; M; "marbles."
310 IF T = 0 THEN 880
320 PRINT: COLOR 13: PRINT "Total ="; T: COLOR 15
330 PRINT
340 PRINT "My total is"; STR$(M1); ".": COLOR 10: PRINT "And what is your next move (1-4)";
350 INPUT Y: COLOR 15
360 PRINT
370 IF Y < 1 THEN 1160
380 IF Y > 4 THEN 1160
390 IF Y <= T THEN 430
400 PRINT "You have tried to take more marbles than there are left.  Try again."
420 GOTO 350
430 Y1 = Y1 + Y
440 T = T - Y
450 IF T = 0 THEN 880
460 COLOR 13: PRINT "Total ="; T: COLOR 15
470 PRINT
480 PRINT "Your total is"; STR$(Y1); "."
490 IF T < .5 THEN 880
500 R = T - 6 * INT(T / 6)
510 IF INT(Y1 / 2) = Y1 / 2 THEN 700
520 IF T < 4.2 THEN 580
530 IF R > 3.4 THEN 620
540 M = R + 1
550 M1 = M1 + M
560 T = T - M
570 GOTO 300
580 M = T
590 T = T - M
600 GOTO 830
610 REM     250 IS WHERE I WIN.
620 IF R < 4.7 THEN 660
630 IF R > 3.5 THEN 660
640 M = 1
650 GOTO 670
660 M = 4
670 T = T - M
680 M1 = M1 + M
690 GOTO 300
700 REM     I AM READY TO ENCODE THE STRAT FOR WHEN OPP TOT IS EVEN
710 IF R < 1.5 THEN 1020
720 IF R > 5.3 THEN 1020
730 M = R - 1
740 M1 = M1 + M
750 T = T - M
760 IF T < .2 THEN 790
770 REM     IS # ZERO HERE
780 GOTO 300
790 REM     IS = ZERO HERE
800 PRINT "I pick up"; M; "marbles."
810 PRINT
820 GOTO 880
830 REM    THIS IS WHERE I WIN
840 PRINT "I pick up"; M; "marbles."
850 PRINT
860 COLOR 13: PRINT "Total = 0": COLOR 15
870 M1 = M1 + M
880 PRINT "That is all of the marbles."
890 PRINT
900 PRINT "My total is";: COLOR 12: PRINT STR$(M1);: COLOR 15
905 PRINT ", your total is";: COLOR 10: PRINT STR$(Y1);: COLOR 15: PRINT "."
910 PRINT
920 IF INT(M1 / 2) = M1 / 2 THEN 950
930 PRINT "You won."
940 GOTO 960
950 PRINT "I won."
960 COLOR 10: PRINT "Do you want to play again (Y/N)";
970 INPUT A1$: COLOR 15
980 IF LEFT$(A1$, 1) = "N" OR LEFT$(A1$, 1) = "n" THEN 1030
990 M1 = 0
1000 Y1 = 0
1010 GOTO 200
1020 GOTO 640
1030 PRINT
1040 PRINT "Okay.  See you later."
1050 GOTO 1230
1060 T = 27
1070 PRINT
1100 COLOR 13: PRINT "Total ="; T: COLOR 15
1120 PRINT
1130 COLOR 10: PRINT "What is your first move (1-4)";
1140 INPUT Y: COLOR 15
1150 GOTO 360
1160 PRINT
1170 PRINT "The number of marbles you take must be a positive integer between 1 and 4."
1190 PRINT
1200 PRINT "What is your next move?"
1210 PRINT
1220 GOTO 350
1230 END

