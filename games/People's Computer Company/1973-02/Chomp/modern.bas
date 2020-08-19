100 REM *** THE GAME OF CHOMP *** COPYRIGHT PCC 1973 ***
110 CLS: COLOR 15: PRINT
120 PRINT "This is the Game of Chomp (Scientific American, Jan. 1973)"
130 COLOR 10: PRINT "Want the rules (Y/N)";
140 INPUT Z$: COLOR 15
150 IF LEFT$(Z$, 1) <> "Y" AND LEFT$(Z$, 1) <> "y" THEN 340
160 F = 1
170 R = 5
180 C = 7
185 PRINT: COLOR 14
190 PRINT "Chomp is for 1 or more players (humans only)."
200 PRINT
210 PRINT "Here's how a board looks (this one is 5 by 7):"
220 GOSUB 540
240 PRINT "The board is a big cookie - R rows high and C columns wide.  You input R and C"
250 PRINT "at the start.  In the upper left corner of the cookie is a poison square (P)."
260 PRINT "The one who chomps the poison square loses.  To take a chomp, type the row and"
270 PRINT "column of one of the squares on the cookie.  All of the square below and to the"
280 PRINT "right of that square (including that square, too) disappear -- Chomp!!  No fair"
290 PRINT "chomping squares that have already been chomped, or that are outside the"
300 PRINT "original dimensions of the cookie."
330 PRINT: COLOR 15
340 PRINT "Here we go..."
350 DIM A(10, 10)
360 F = 0
370 FOR I = 1 TO 10
372 FOR J = 1 TO 10
375 LET A(I, J) = 0
377 NEXT J
379 NEXT I
380 PRINT
390 COLOR 10: PRINT "How many players";
400 INPUT P: COLOR 15
405 IF P < 1 THEN PRINT "You must have at least one player.": GOTO 390
410 I1 = 0
420 COLOR 10: PRINT "How many rows (1-9)";
430 INPUT R: COLOR 15
440 IF R < 1 THEN PRINT "Too few rows.": GOTO 420
445 IF R <= 9 THEN 470
450 PRINT "Too many rows (9 is maximum)."
460 GOTO 420
470 COLOR 10: PRINT "How many columns (1-9)";
480 INPUT C: COLOR 15
485 IF C < 1 THEN PRINT "Too few columns.": GOTO 470
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
610 COLOR 12: PRINT
620 PRINT TAB(7); "1 2 3 4 5 6 7 8 9"
630 FOR I = 1 TO R
640 PRINT I; TAB(7);
650 FOR J = 1 TO C
660 IF A(I, J) = -1 THEN 700
670 IF A(I, J) = 0 THEN 720
680 PRINT "* ";
690 GOTO 710
700 PRINT "P ";
710 NEXT J
720 PRINT
730 NEXT I
740 PRINT: COLOR 15
750 IF F = 0 THEN 770
760 RETURN
770 REM GET CHOMP FOR EACH PLAYER IN TURN
780 LET I1 = I1 + 1
790 LET P1 = I1 - INT(I1 / P) * P
800 IF P1 <> 0 THEN 820
810 P1 = P
820 PRINT "Player"; P1
830 PRINT "Coordinates of chomp (row, column)";
840 INPUT R1, C1
850 IF R1 < 1 THEN 920
860 IF R1 > R THEN 920
870 IF C1 < 1 THEN 920
880 IF C1 > C THEN 920
890 IF A(R1, C1) = 0 THEN 920
900 IF A(R1, C1) = -1 THEN 1010
910 GOTO 940
920 PRINT "No fair, you're trying to chomp on empty space!": PRINT
930 GOTO 820
940 FOR I = R1 TO R
950 FOR J = C1 TO C
960 A(I, J) = 0
970 NEXT J
980 NEXT I
990 GOTO 610
1000 REM END OF GAME DETECTED IN LINE 900
1010 PRINT: PRINT "You lose, Player"; P1
1020 PRINT
1030 COLOR 10: PRINT "Again (Y/N)";
1040 INPUT Z$: COLOR 15
1050 IF LEFT$(Z$, 1) = "y" OR LEFT$(Z$, 1) = "Y" THEN 340
1060 END

