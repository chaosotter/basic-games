5 CLS: COLOR 12
10 REM  "DICE"
15 PRINT TAB(38); "Dice": PRINT: PRINT
20 REM
25 RANDOMIZE TIMER
30 DIM D(66), P(2)
35 GOSUB 9000
40 COLOR 10: PRINT "Do you know how to play dice (to skip rules, type Y)";
60 INPUT Q$: COLOR 15
65 PRINT
70 IF LEFT$(Q$, 1) = "Y" OR LEFT$(Q$, 1) = "y" GOTO 300
100 COLOR 14: PRINT
110 PRINT "This is a two-player game and you take turns.  Multiple rolls per turn are"
120 PRINT "permitted.  The score per turn is the sum of all numbers rolled.  You may end"
130 PRINT "your turn with an 'X' and the score adds to your total, but... you lose the"
140 PRINT "score if you match a previous roll."
150 PRINT
160 PRINT "High score wins after 20 turns."
220 PRINT: COLOR 15
300 LET P(1) = 0
310 LET P(2) = 0
315 LET M = 1
320 LET E = 0
325 IF P = 2 THEN 335
330 LET P = 1
335 LET S = 0
340 FOR I = 11 TO 66
350 LET D(I) = 0
360 NEXT I
370 COLOR 13: PRINT "Player"; P; "is up -- round"; M: COLOR 15
390 FOR I = 1 TO 66
395 I$ = STR$(I): I$ = RIGHT$(I$, LEN(I$) - 1)
400 PRINT "Roll #"; I$; ":";
410 GOSUB 600
415 IF E <> 0 THEN 320
416 IF M = 21 THEN 220
420 COLOR 10: PRINT "Okay (X to stop)";
425 LET Q$ = "Z"
430 INPUT Q$: COLOR 15
440 IF Q$ <> "X" AND Q$ <> "x" THEN 450
445 GOSUB 820
446 GOTO 415
450 NEXT I
600 REM  DICE ROLLER SUBROUTINE
610 LET N1 = INT(10 * RND(1))
620 IF N1 < 1 THEN 610
630 IF N1 > 6 THEN 610
640 LET N2 = INT(10 * RND(1))
650 IF N2 < 1 THEN 640
660 IF N2 > 6 THEN 640
670 LET N = N1 * 10 + N2
680 COLOR 11: PRINT N1; N2: COLOR 15
690 LET R = D(N)
700 IF R <> 0 THEN 800
710 LET D(N) = I
720 LET S = S + N1 + N2
730 RETURN
800 R$ = STR$(R): R$ = RIGHT$(R$, LEN(R$) - 1)
805 PRINT "Zap... matched roll #"; R$; "!"
810 GOTO 830
820 LET P(P) = P(P) + S
830 IF P = 1 THEN 840
835 LET M = M + 1
840 LET P = P + 1
850 IF M = 21 THEN 1000
910 PRINT: COLOR 12: PRINT "Scores -- #1:"; P(1);
920 PRINT "  #2:"; P(2)
925 PRINT: COLOR 15
930 LET E = E + 1
940 RETURN
1000 IF P = 1 THEN 930
1005 PRINT
1010 PRINT "End of game!  Final scores:"
1020 PRINT: COLOR 12
1030 PRINT "    Player #1:"; P(1)
1040 PRINT "    Player #2:"; P(2): PRINT
1050 COLOR 10: PRINT "Play again (Y/N)";
1060 INPUT Q$: COLOR 15
1070 IF LEFT$(Q$, 1) = "Y" OR LEFT$(Q$, 1) = "y" THEN 2000
1080 PRINT: PRINT "Goodbye."
1090 END
2000 RETURN
9000 REM  "RANDOM NUMBER ROUTINE"
9010 LET Z = RND(0)
9020 RETURN

