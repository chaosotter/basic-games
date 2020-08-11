1 CLS: COLOR 12
5 RANDOMIZE TIMER
10 PRINT TAB(33); "Jumping Balls"
20 PRINT TAB(31); "Creative Computing"
30 PRINT TAB(29); "Morristown, New Jersey"
40 PRINT: PRINT: PRINT
1040 DIM Q(9, 1)
1050 COLOR 10: PRINT "Instructions (Y/N)";
1060 INPUT A$: COLOR 15
1070 IF LEFT$(A$, 1) = "N" OR LEFT$(A$, 1) = "n" THEN 1150
1075 COLOR 11: PRINT
1080 PRINT "In this game you are given 8 balls on a 9-hole board.  The object is to reverse"
1090 PRINT "the order of the balls.  The ";: COLOR 15: PRINT CHR$(1);: COLOR 11
1100 PRINT " are silver balls and the ";: COLOR 14: PRINT CHR$(2);: COLOR 11
1105 PRINT " are gold.  You must"
1110 PRINT "get the silver to where the gold are and the gold to where the silver are.  The"
1120 PRINT "space is a period on the board."
1130 PRINT: PRINT "Good luck!  Here is the board:"
1140 S = 0
1150 FOR X = 1 TO 4
1160 LET Q(X, 1) = 1
1170 NEXT X
1180 LET Q(5, 1) = 0
1190 FOR X = 6 TO 9
1200 LET Q(X, 1) = 2
1210 NEXT X
1220 LET A$ = "." + CHR$(1) + CHR$(2)
1225 PRINT
1230 COLOR 15: FOR X = 1 TO 9
1235 IF Q(X, 1) = 2 THEN COLOR 14
1240 PRINT MID$(A$, Q(X, 1) + 1, 1);
1245 IF Q(X, 1) = 2 THEN COLOR 15
1250 PRINT " ";
1260 NEXT X
1265 S = S + 1
1270 COLOR 10: PRINT "  Move";
1280 INPUT M, M1: COLOR 11
1290 IF M <= 9 AND M >= 1 AND M1 <= 9 AND M1 >= 1 THEN 1320
1300 PRINT "Illegal move!"
1310 GOTO 1270
1320 REM:      CHECK FOR LEGAL MOVE
1330 IF M + 1 = M1 OR M - 1 = M1 THEN 1430
1340 REM:     SUBROUTINE FOR CHECKING JUMPS
1350 IF M = 9 THEN 1390
1360 IF M = 1 THEN 1410
1370 IF Q(M + 1, 1) = 0 OR Q(M - 1, 1) = 0 THEN 1300
1380 GOTO 1420
1390 IF Q(M - 1, 1) = 0 THEN 1300
1400 GOTO 1420
1410 IF Q(M + 1, 1) = 0 THEN 1300
1420 IF M + 2 <> M1 AND M - 2 <> M1 THEN 1300
1430 IF Q(M, 1) <> 0 THEN 1460
1440 PRINT "Nothing at space"; STR$(M); "."
1450 GOTO 1270
1460 IF Q(M1, 1) = 0 THEN 1490
1470 PRINT "Space"; M1; "is occupied."
1480 GOTO 1270
1490 LET Q(M1, 1) = Q(M, 1)
1500 LET Q(M, 1) = 0
1510 X9 = Q(1, 1) + Q(2, 1) + Q(3, 1) + Q(4, 1)
1512 Y9 = Q(6, 1) + Q(7, 1) + Q(8, 1) + Q(9, 1)
1514 IF X9 = 8 AND Y9 = 4 THEN 1530
1520 GOTO 1230
1530 COLOR 11: PRINT: PRINT "You win!"
1535 PRINT "You completed the game in"; S; "moves!!!"
1540 PRINT "Again (Y/N)";
1550 INPUT A$
1560 IF LEFT$(A$, 1) = "Y" OR LEFT$(A$, 1) = "y" THEN 1130
1570 END

