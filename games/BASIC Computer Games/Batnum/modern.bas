5 CLS: COLOR 12
10 PRINT TAB(37); "Batnum"
20 PRINT TAB(31); "Creative Computing"
25 PRINT TAB(29); "Morristown, New Jersey"
30 PRINT: PRINT: PRINT: COLOR 14
110 PRINT "This program is a 'battle of numbers' game, where the computer is your"
120 PRINT "opponent."
130 PRINT
140 PRINT "The game starts with an assumed pile of objects.  You and your opponent"
150 PRINT "alternately remove objects from the pile.  Winning is defined in advance as"
160 PRINT "taking the last object or not.  You can also specify some other beginning"
170 PRINT "conditions.  Don't use zero, however, in playing the game."
180 PRINT
190 PRINT "Enter a negative number for the new pile size to stop playing."
200 PRINT: COLOR 15
210 GOTO 330
220 PRINT
230 COLOR 12: PRINT "----- New game -----": COLOR 15
240 PRINT
330 COLOR 10: INPUT "Enter pile size"; N: COLOR 15
350 IF N >= 1 THEN 370
360 GOTO 330
370 IF N <> INT(N) THEN 220
380 IF N < 1 THEN 220
390 COLOR 10: INPUT "Enter win options (1 = take last, 2 = avoid last)"; M: COLOR 15
410 IF M = 1 THEN 430
420 IF M <> 2 THEN 390
430 COLOR 10: INPUT "Enter minimum and maximum per turn"; A, B: COLOR 15
450 IF A > B THEN 430
460 IF A < 1 THEN 430
470 IF A <> INT(A) THEN 430
480 IF B <> INT(B) THEN 430
490 COLOR 10: INPUT "Enter start option (1 = computer first, 2 = you first)"; S: COLOR 15
500 PRINT: PRINT
510 IF S = 1 THEN 530
520 IF S <> 2 THEN 490
530 C = A + B
540 IF S = 2 THEN 570
550 GOSUB 600
560 IF W = 1 THEN 220
570 GOSUB 810
580 IF W = 1 THEN 220
590 GOTO 550
600 Q = N
610 IF M = 1 THEN 630
620 Q = Q - 1
630 IF M = 1 THEN 680
640 IF N > A THEN 720
650 W = 1
660 PRINT "Computer takes"; N; "and loses."
670 RETURN
680 IF N > B THEN 720
690 W = 1
700 PRINT "Computer takes"; N; "and wins."
710 RETURN
720 P = Q - C * INT(Q / C)
730 IF P >= A THEN 750
740 P = A
750 IF P <= B THEN 770
760 P = B
770 N = N - P
780 PRINT "Computer takes"; P; "and leaves"; STR$(N); "."
790 W = 0
800 RETURN
810 PRINT: A$ = STR$(A): A$ = RIGHT$(A$, LEN(A$) - 1): B$ = STR$(B): B$ = RIGHT$(B$, LEN(B$) - 1)
815 COLOR 10: PRINT "Your move ("; A$; "-"; B$; ")";
820 INPUT P: COLOR 15
830 IF P <> 0 THEN 870
840 PRINT "I told you not to use zero!  The computer wins by forfeit."
850 W = 1
860 RETURN
870 IF P <> INT(P) THEN 920
880 IF P >= A THEN 910
890 IF P = N THEN 960
900 GOTO 920
910 IF P <= B THEN 940
920 PRINT "Illegal move, re-enter it."
930 GOTO 820
940 N = N - P
950 IF N <> 0 THEN 1030
960 IF M = 1 THEN 1000
970 PRINT "Tough luck, you lose."
980 W = 1
990 RETURN
1000 PRINT "Congratulations, you win!"
1010 W = 1
1020 RETURN
1030 IF N >= 0 THEN 1060
1040 N = N + P
1050 GOTO 920
1060 W = 0
1070 RETURN
1080 END

