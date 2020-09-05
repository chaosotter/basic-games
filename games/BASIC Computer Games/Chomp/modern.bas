5 CLS: COLOR 12
10 PRINT TAB(37); "Chomp"
20 PRINT TAB(31); "Creative Computing"
25 PRINT TAB(29); "Morristown, New Jersey"
30 PRINT: PRINT: PRINT: COLOR 15
40 DIM A(10, 10)
100 REM *** THE GAME OF CHOMP *** COPYRIGHT PCC 1973 ***
110 PRINT
120 PRINT "This is the game of Chomp (Scientific American, Jan. 1973)"
130 COLOR 10: PRINT: PRINT "Do you want the rules (Y/N)";
140 INPUT R$: COLOR 15
150 IF LEFT$(R$, 1) = "N" OR LEFT$(R$, 1) = "n" THEN 340
160 F = 1
170 R = 5
180 C = 7
185 COLOR 14: PRINT
190 PRINT "Chomp is for 1 or more players (humans only)."
200 PRINT
210 PRINT "Here's how a board looks (this one is 5 by 7):"
220 GOSUB 540
230 COLOR 14
240 PRINT "The board is a big cookie, R rows high and C columns wide.  You input R and C"
250 PRINT "at the start.  In the upper left corner of the cookie is a poison square (P)."
260 PRINT "The one who chomps the poison square loses.  To take a chomp, type the row and"
270 PRINT "column of one of the squares on the cookie.  All of the squares below and to"
280 PRINT "the right of that square (including that square, too) disappear -- chomp!"
290 PRINT
300 PRINT "No fair chomping squares that have already been chomped, or that are outside"
310 PRINT "the original dimensions of the cookie.  Here we go!"
340 PRINT: COLOR 15
350 REM
360 F = 0
370 FOR I = 1 TO 10
372 FOR J = 1 TO 10
375 A(I, J) = 0
377 NEXT J
379 NEXT I
380 PRINT
390 COLOR 10: PRINT "How many players";
400 INPUT P: COLOR 15
410 I1 = 0
420 COLOR 10: PRINT "How many rows (1-9)";
430 INPUT R: COLOR 15
440 IF R <= 9 THEN 470
450 PRINT "Too many rows (9 is maximum)."
460 GOTO 420
470 COLOR 10: PRINT "How many columns (1-9)";
480 INPUT C: COLOR 15
490 IF C <= 9 THEN 530
500 PRINT "Too many columns (9 is maximum)."
510 GOTO 470
530 PRINT
540 FOR I = 1 TO R
550 FOR J = 1 TO C
560 A(I, J) = 1
570 NEXT J
580 NEXT I
590 A(1, 1) = -1
600 REM PRINT THE BOARD
610 PRINT
620 COLOR 13: PRINT TAB(7); "1 2 3 4 5 6 7 8 9": COLOR 15
630 FOR I = 1 TO R
640 COLOR 13: PRINT "  "; I; TAB(7);: COLOR 15
650 FOR J = 1 TO C
660 IF A(I, J) = -1 THEN 700
670 IF A(I, J) = 0 THEN 720
680 COLOR 11: PRINT "* ";: COLOR 15
690 GOTO 710
700 COLOR 12: PRINT "P ";: COLOR 15
710 NEXT J
720 PRINT
730 NEXT I
740 PRINT
750 IF F = 0 THEN 770
760 RETURN
770 REM GET CHOMPS FOR EACH PLAYER IN TURN
780 LET I1 = I1 + 1
790 LET P1 = I1 - INT(I1 / P) * P
800 IF P1 <> 0 THEN 820
810 P1 = P
820 PRINT "Player"; P1
830 COLOR 10: PRINT "Coordinates of chomp (row, column)";
840 INPUT R1, C1: COLOR 15
850 IF R1 < 1 THEN 920
860 IF R1 > R THEN 920
870 IF C1 < 1 THEN 920
880 IF C1 > C THEN 920
890 IF A(R1, C1) = 0 THEN 920
900 IF A(R1, C1) = -1 THEN 1010
910 GOTO 940
920 PRINT "No fair.  You're trying to chomp on empty space!"
930 GOTO 820
940 FOR I = R1 TO R
950 FOR J = C1 TO C
960 A(I, J) = 0
970 NEXT J
980 NEXT I
990 GOTO 610
1000 REM END OF GAME DETECTED IN LINE 900
1010 PRINT: COLOR 12: PRINT "You lose, player"; STR$(P1); ".": COLOR 15
1020 PRINT
1030 COLOR 10: PRINT "Play again (Y/N)";
1040 INPUT R$: COLOR 15
1050 IF LEFT$(R$, 1) = "Y" OR LEFT$(R$, 1) = "y" THEN 340
1060 END

