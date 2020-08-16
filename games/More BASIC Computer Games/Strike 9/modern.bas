5 CLS: COLOR 12
10 PRINT TAB(36); "Strike 9"
20 PRINT TAB(31); "Creative Computing"
30 PRINT TAB(29); "Morristown, New Jersey"
90 DIM A(9), D(4)
110 PRINT: PRINT: PRINT: RANDOMIZE TIMER: COLOR 15
170 COLOR 10: PRINT "Do you need instructions (Y/N)";
180 INPUT R$: COLOR 15
190 IF LEFT$(R$, 1) = "N" OR LEFT$(R$, 1) = "n" THEN 340
200 IF LEFT$(R$, 1) <> "Y" AND LEFT$(R$, 1) <> "y" THEN 170
210 COLOR 14: PRINT
220 PRINT "Strike Nine is played with a pair of dice and a board with nine numbers.  You"
230 PRINT "are given a roll and can knock off up to 4 numbers.  If you input that you want"
240 PRINT "to remove 5 numbers, you will be given a chart of the numbers you have left to"
250 PRINT "remove.  Next you input how many numbers you want to remove, and then input the"
260 PRINT "numbers you to take off, one at a time.  The numbers you take off must add up"
270 PRINT "to the roll.  You win by removing every number from the board.  You lose if you"
280 PRINT "cannot remove all numbers with the roll you have."
320 PRINT: COLOR 15
340 PRINT "Ready to play?"
350 PRINT
355 PRINT "Here is the board: ";: COLOR 11
360 REM SET UP THE BOARD
370 FOR B = 1 TO 9
380 PRINT B;
390 A(B) = B
400 NEXT B
405 PRINT: COLOR 15
410 C = INT(RND(1) * 6 + 1) + INT(RND(1) * 6 + 1)
420 PRINT: PRINT "Your roll is"; STR$(C); "."
430 T = 0
440 FOR X = 1 TO 9
450 T = T + A(X)
460 NEXT X
465 REM CHECK FOR LOSS
470 IF C > T THEN 950
480 IF C = T THEN 1120
490 FOR K = 1 TO 9
500 FOR L = 1 TO 9
510 FOR M = 1 TO 9
520 FOR N = 1 TO 9
530 IF N = K THEN 630
540 IF N = L THEN 630
550 IF N = M THEN 630
560 IF M = K THEN 640
570 IF M = L THEN 640
580 IF L = K THEN 650
590 IF C - A(K) = 0 THEN 680
600 IF C - A(K) = A(N) THEN 680
610 IF C - A(K) - A(L) = A(N) THEN 680
620 IF C - A(K) - A(M) = A(N) THEN 680
630 NEXT N
640 NEXT M
650 NEXT L
660 NEXT K
670 GOTO 950
680 FOR X = 1 TO 4
690 D(X) = 0
700 NEXT X
710 COLOR 10: PRINT "How many numbers to remove (5 for the board)";
720 INPUT E: COLOR 15
730 IF INT(E) <> E THEN 760
740 IF E < 1 THEN 760
750 IF E > 4 THEN 880
755 GOTO 770
760 PRINT "Answer 1, 2, 3, or 4 (5 for the board)."
765 GOTO 710
770 REM
780 FOR F = 1 TO E
790 COLOR 10: PRINT "Number"; F; "to remove";: INPUT D(F): COLOR 15
800 IF A(D(F)) <> 0 THEN 825
810 PRINT "You removed it before, try again."
820 GOTO 710
825 NEXT F
830 IF C <> D(1) + D(2) + D(3) + D(4) THEN 870
835 FOR F = 1 TO E
840 A(D(F)) = 0
850 NEXT F
860 GOTO 410
870 PRINT "Those numbers don't add up to your roll, try again."
875 GOTO 710
880 PRINT "The numbers you have left to remove are: ";: COLOR 11
890 FOR B = 1 TO 9
900 IF A(B) = 0 THEN 920
910 PRINT A(B);
920 NEXT B
930 PRINT: PRINT: COLOR 15
940 GOTO 710
950 PRINT "Sorry, you lost this time."
960 T = 0
970 FOR B = 1 TO 9
980 IF A(B) = 0 THEN 1000
990 T = T + 1
1000 NEXT B
1010 PRINT "There are"; T; "numbers left on the board: ";: COLOR 11
1020 FOR X = 1 TO 9
1030 IF A(X) = 0 THEN 1050
1040 PRINT A(X);
1050 NEXT X
1060 PRINT: COLOR 15
1070 COLOR 10: PRINT: PRINT "Want to try again (Y/N)";
1080 INPUT G$
1090 IF LEFT$(G$, 1) = "Y" OR LEFT$(G$, 1) = "y" THEN 170
1100 IF LEFT$(G$, 1) <> "N" AND LEFT$(G$, 1) <> "n" THEN 1070
1110 END
1120 PRINT "* * * Congratulations! * * *"
1130 PRINT "You won!"
1150 PRINT
1160 COLOR 10: PRINT "Play another game (Y/N)";
1170 INPUT H$: COLOR 15
1180 IF LEFT$(H$, 1) = "Y" OR LEFT$(H$, 1) = "y" THEN 170
1190 IF LEFT$(H$, 1) <> "N" AND LEFT$(H$, 1) <> "n" THEN 1160
1200 END

