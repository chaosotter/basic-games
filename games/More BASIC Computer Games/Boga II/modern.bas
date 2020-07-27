5 CLS: COLOR 12
10 PRINT TAB(37); "Boga II"
14 PRINT TAB(31); "Creative Computing"
17 PRINT TAB(29); "Morristown, New Jersey"
19 RANDOMIZE TIMER
20 PRINT: PRINT: PRINT: COLOR 15
30 COLOR 10: INPUT "Do you want instructions (Y/N)"; Q$: COLOR 15
35 PRINT: PRINT
40 IF LEFT$(Q$, 1) <> "Y" AND LEFT$(Q$, 1) <> "y" THEN 220
60 COLOR 14
70 PRINT "The Boga is hiding on a grid (you specify the length and width).  Try to guess"
80 PRINT "his position using the hints I give you.  Each guess is two numbers separated"
90 PRINT "by a comma.  Please keep in mind that the Boga is also searching for you!!!"
110 PRINT: PRINT: COLOR 15
220 U = 0
240 K = 1
250 F = 0
260 COLOR 10: INPUT "How big should the grid be (20 maximum)"; G: COLOR 15
275 IF G > 20 OR G < 1 THEN PRINT: GOTO 260
280 S = G
290 REM: PRINTS THE GRID
300 COLOR 10: INPUT "Would you like a sample grid (Y/N)"; Z$
305 IF LEFT$(Z$, 1) = "N" OR LEFT$(Z$, 1) = "n" THEN 380
310 PRINT: COLOR 13
318 A$ = ""
320 IF G < 10 THEN 332
322 FOR X = 10 TO G
324 X1 = INT(X / 10)
326 A$ = A$ + CHR$(X1 + 48) + " "
328 NEXT X
330 PRINT TAB(25); A$
332 A$ = ""
334 FOR X = 0 TO G
336 X1 = X - INT(X / 10) * 10
338 A$ = A$ + CHR$(X1 + 48) + " "
340 NEXT X
342 PRINT TAB(5); A$
344 A$ = ""
346 FOR X = 0 TO G
348 A$ = A$ + "* "
350 NEXT X
352 FOR X = 0 TO G
354 PRINT X; TAB(5); A$
356 NEXT X
380 PRINT: COLOR 15
390 H = 1
400 COLOR 10: INPUT "Choose your position"; X1, Y1: COLOR 15
410 IF X1 > G OR X1 < 0 OR Y1 > G OR Y1 < 0 THEN PRINT: GOTO 400
420 PRINT "The Boga picks his position!"
440 X2 = INT(RND(1) * G)
450 Y2 = INT(RND(1) * G)
460 COLOR 10: K$ = STR$(K): K$ = RIGHT$(K$, LEN(K$) - 1): PRINT: PRINT "Guess #"; K$;
470 INPUT X3, Y3: COLOR 15
471 IF X3 > G OR X3 < 0 OR Y3 > G OR Y3 < 0 THEN PRINT: GOTO 460
480 K = K + 1
490 F = F + 1
500 IF K = 10 THEN 1040
510 IF ABS(X3 - X2) + ABS(Y3 - Y2) = 0 THEN 1010
520 PRINT: PRINT "You guessed"; STR$(X3); ","; Y3
540 PRINT "He's more to the ";
550 IF X2 = X3 THEN 620
560 IF X2 > X3 THEN 600
570 PRINT "north";
590 GOTO 620
600 PRINT "south";
620 IF Y2 = Y3 THEN 700
630 IF Y2 > Y3 THEN 670
640 PRINT "west";
660 GOTO 700
670 PRINT "east";
690 REM: LINE 700-970 AND 1110-1150=BOGAS GUESSING FORMULA
700 PRINT "": IF H = 0 THEN 730
710 X4 = INT(.5 * S)
720 Y4 = INT(.5 * S)
730 PRINT "The Boga guesses"; STR$(X4); ","; Y4
740 U = U + 1
750 PRINT ""
760 Q = ABS(Y1 - Y4) + ABS(X1 - X4)
770 IF Q = 0 THEN 980
780 H = 0
790 IF Y4 = Y1 THEN 880
800 A = 1
810 IF ABS(Y4 - Y1) < 2 THEN 830
820 GOSUB 1140
830 IF Y4 < Y1 THEN 860
840 Y4 = INT(ABS(Y4 - A))
850 GOTO 880
860 Y4 = INT(ABS(Y4 + A))
870 IF Y4 > G THEN 1110
880 IF X4 = X1 THEN 970
890 A = 1
900 IF ABS(X4 - X1) < 2 THEN 920
910 GOSUB 1140
920 IF X4 < X1 THEN 950
930 X4 = INT(ABS(X4 - A))
940 GOTO 970
950 X4 = INT(ABS(X4 + A))
960 IF X4 > G THEN 1130
970 GOTO 460
980 PRINT "The Boga guessed your position in"; U; "guess(es)!"
990 PRINT
1000 GOTO 1050
1010 PRINT "You guessed the Boga's position in"; F; "guess(es)!"
1020 PRINT
1030 GOTO 1050
1040 PRINT "You used up all of your guesses."
1050 PRINT "The Boga was at"; STR$(X2); ","; Y2
1060 PRINT
1070 COLOR 10: INPUT "Do you want to play again"; Q$
1080 IF LEFT$(Q$, 1) = "Y" OR LEFT$(Q$, 1) = "y" THEN 220
1100 GOTO 1160
1110 Y4 = .5 * G
1120 GOTO 880
1130 X4 = .5 * G
1140 A = 2
1150 RETURN
1160 END

