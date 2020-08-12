5 RANDOMIZE TIMER
8 CLS: COLOR 12
10 PRINT TAB(37); "L-Game"
11 PRINT TAB(31); "Creative Computing"
12 PRINT TAB(29); "Morristown, New Jersey"
13 PRINT: PRINT: PRINT
20 DIM C(4), O(4), T(4), B(16), N(16), M(100)
25 COLOR 10: PRINT "Instructions (Y/N)";
30 INPUT A$: COLOR 14
35 IF LEFT$(A$, 1) = "Y" OR LEFT$(A$, 1) = "y" THEN 3000
40 COLOR 10: PRINT "Board printout (Y/N)";
45 INPUT A$: COLOR 15
50 IF LEFT$(A$, 1) = "N" OR LEFT$(A$, 1) = "n" THEN 65
55 LET F2 = 0
60 GOTO 70
65 LET F2 = 1
70 GOSUB 100
80 GOTO 210
100 REM INITIALIZE DATA
101 REM B1,B2 = POSITIONS OF BOXES
102 REM C(1,2,3,4) = COMPUTER'S POSITION (L)
103 REM O(1,2,3,4) = OPPONENT'S POSITION (L)
104 REM T(1,2,3,4) = 6,7,10,11 = CENTER POSITIONS
105 REM B(1,...16) = BOARD:
106 REM     B(X)=0   EMPTY
107 REM     B(X)=1   OPPONENT'S L
108 REM     B(X)=2   COMPUTER'S L
109 REM     B(X)=3   BOX
115 RESTORE
120 DATA 1,16,2,7,6,6,11,7,10,15,10,3,14,11
130 DATA 3,2,2,0,0,2,1,0,0,2,1,0,0,1,1,3
140 READ B1, B2
150 FOR X = 1 TO 4
160 READ C(X), O(X), T(X)
170 NEXT X
180 FOR X = 1 TO 16
190 READ B(X)
200 NEXT X
205 RETURN
210 COLOR 10: PRINT "Do you wish to start (Y/N)";
215 INPUT A$: COLOR 15
220 IF LEFT$(A$, 1) = "N" OR LEFT$(A$, 1) = "n" THEN 500
230 REM OPPONENT'S MOVE
235 GOSUB 2270
240 PRINT
245 COLOR 10: PRINT "Your move for L";
250 INPUT D(1), D(2), D(3), D(4): COLOR 15
255 IF ABS(D(1)) + ABS(D(2)) + ABS(D(3)) + ABS(D(4)) = 0 THEN 1280
260 REM BUBBLE SORT
265 FOR X = 1 TO 4
270 FOR Y = 2 TO 4
275 IF D(Y) > D(Y - 1) THEN 295
280 LET Z = D(Y)
285 LET D(Y) = D(Y - 1)
290 LET D(Y - 1) = Z
295 NEXT Y
300 NEXT X
305 REM CHECK LEGALITY
310 FOR X = 1 TO 4
315 LET N(X) = D(X)
320 NEXT X
325 LET N1 = 4
330 LET F1 = 0
335 GOSUB 1800
340 IF M1 <> 4 THEN 1220
345 FOR X = 1 TO 4
350 IF B(M(X)) > 1 THEN 1220
355 NEXT X
360 FOR X = 1 TO 4
365 LET B(O(X)) = 0
370 NEXT X
375 FOR X = 1 TO 4
380 LET B(M(X)) = 1
385 LET O(X) = M(X)
390 NEXT X
395 LET B(B1) = 0
400 LET B(B2) = 0
405 COLOR 10: PRINT "Your move for the boxes";
410 INPUT X, Y: COLOR 15
415 IF ABS(X) + ABS(Y) <> X + Y THEN 1250
416 IF X = Y THEN 1250
420 IF B(X) + B(Y) > 0 THEN 1250
430 LET B1 = X
440 LET B2 = Y
450 LET B(B1) = 3
460 LET B(B2) = 3
470 PRINT "O.K."
475 GOSUB 2270
480 REM COMPUTER'S MOVE
490 REM REMOVE C(1-4) FROM BOARD
500 FOR X = 1 TO 4
510 LET B(C(X)) = 0
520 NEXT X
530 GOSUB 1420
540 LET F1 = 1
550 LET N1 = Z
560 GOSUB 1800
570 IF M1 = 0 THEN 1300
580 REM FIND MOVE WITH BEST CENTER COVERAGE
585 GOSUB 1370
590 FOR E = 0 TO M1 - 4 STEP 4
600 FOR F = 1 TO 4
610 FOR G = 1 TO 4
620 IF M(E + F) <> T(G) THEN 640
630 LET N(E / 4 + 1) = N(E / 4 + 1) + 1
640 NEXT G
650 NEXT F
660 NEXT E
670 GOSUB 1500
680 REM PUT MOVE IN C(1-4)
690 LET Y = (Z - 1) * 4
700 FOR X = 1 TO 4
710 LET C(X) = M(X + Y)
720 LET B(C(X)) = 2
730 NEXT X
740 PRINT
750 PRINT "Computer moves to ["; C(1); C(2); C(3); C(4); "]"
760 REM FIND MOVES FOR BOXES
765 REM REMOVE BOXES FROM BOARD
770 LET B(B1) = 0
780 LET B(B2) = 0
790 REM IS OPPONENT IN CORNER?
800 FOR I = 1 TO 4
810 FOR J = 1 TO 4
820 IF O(I) = T(J) THEN 870
830 NEXT J
840 NEXT I
845 REM OPPONENT IN CORNER, IGNORE CENTER
850 GOTO 1020
860 REM OPPONENT NOT IN CORNER, FILL CENTER WITH BOXES
870 FOR X = 1 TO 4
880 IF B(T(X)) > 0 THEN 920
890 LET B1 = T(X)
900 LET B(B1) = 3
910 GOTO 950
920 NEXT X
930 REM NO SPACES IN CENTER
940 GOTO 1020
950 FOR X = 1 TO 4
960 IF B(T(X)) > 0 THEN 1000
970 LET B2 = T(X)
980 LET B(B2) = 3
990 GOTO 1080
1000 NEXT X
1005 REM CENTER FILED
1010 GOTO 1050
1015 REM BOTH BOXES TO BE POSITIONED
1020 GOSUB 1610
1030 LET B1 = B3
1040 LET B(B1) = 3
1045 REM ONE BOX TO BE POSITIONED
1050 GOSUB 1610
1060 LET B2 = B3
1070 LET B(B2) = 3
1080 PRINT TAB(10); "moves boxes to"; B1; "and"; B2
1081 FOR X = 1 TO 4
1082 LET B(O(X)) = 1
1083 NEXT X
1085 GOSUB 2270
1090 REM CHECK FOR WIN
1100 FOR X = 1 TO 4
1110 LET B(O(X)) = 0
1120 NEXT X
1130 GOSUB 1420
1140 LET F1 = 2
1150 LET N1 = Z
1160 GOSUB 1800
1170 IF M1 = 0 THEN 1280
1180 FOR X = 1 TO 4
1190 LET B(O(X)) = 1
1200 NEXT X
1210 GOTO 240
1220 PRINT "Illegal move for L."
1230 PRINT
1240 GOTO 240
1250 PRINT "Illegal move for box."
1260 PRINT
1270 GOTO 405
1280 PRINT "Computer wins!"
1290 GOTO 1310
1300 PRINT "Congratulations!  You have won."
1310 PRINT
1320 COLOR 10: PRINT "Play again (Y/N)";
1325 INPUT A$
1330 IF LEFT$(A$, 1) = "Y" OR LEFT$(A$, 1) = "y" THEN 70
1340 GOTO 4000
1350 REM *** SUBROUTINES ***
1360 REM ERASE N(X)
1370 FOR X = 1 TO 16
1380 LET N(X) = 0
1390 NEXT X
1400 RETURN
1410 REM STORE LOCATIONS OF UNOCCUPIED POSITIONS IN N(X)
1420 LET Z = 0
1430 FOR X = 1 TO 16
1440 IF B(X) > 0 THEN 1470
1450 LET Z = Z + 1
1460 LET N(Z) = X
1470 NEXT X
1480 RETURN
1490 REM THIS SUBROTUINE RETURNS THE LOCATION OF THE LARGEST
1495 REM VALUE IN N(X).  IF A TIE EXISTS A RANDOM CHOICE IS MADE.
1500 LET Y = 0
1510 LET Z = 1
1520 FOR X = 1 TO M1 / 4
1530 IF N(X) < Y THEN 1580
1540 IF N(X) > Y THEN 1560
1550 IF RND(1) > .5 THEN 1580
1560 LET Y = N(X)
1570 LET Z = X
1580 NEXT X
1590 RETURN
1600 REM BOX-FIND
1601 REM THIS SUBROUTINE FINDS THE MOVE FOR A BOX THAT WILL
1602 REM MOST RESTRICT THE OPPONENT'S L IN TERMS OF MOVES POSSIBLE.
1610 FOR X = 1 TO 4
1620 LET B(O(X)) = 0
1630 NEXT X
1640 GOSUB 1420
1650 LET F1 = 2
1660 LET N1 = Z
1670 GOSUB 1800
1680 GOSUB 1370
1690 FOR X = 1 TO M1
1700 LET N(M(X)) = N(M(X)) + 1
1710 NEXT X
1720 FOR X = 1 TO 4
1730 LET N(O(X)) = 0
1740 NEXT X
1750 LET M1 = 64
1760 GOSUB 1500
1770 LET B3 = Z
1780 RETURN
1790 REM L-FIND
1791 REM THIS SUBROUTINE CALCULATES ALL POSSIBLE MOVES FOR AN L GIVEN ALL
1792 REM EMPTY POSITIONS IN N(X).  IF F1=1, THE CURRENT POSITION OF THE
1793 REM COMPUTER'S L IS OMITTED.  OTHERWISE, THE CURRENT POSITION OF THE
1794 REM OPPONENT'S L IS OMITTED.  MOVES ARE RETURNED IN M(X), AND
1795 REM M1 IS THE LENGTH OF M(X).  (M1 = NUMBER OF MOVES * 4)
1800 LET M1 = 0
1810 LET J = 4
1820 LET K = 1
1830 GOSUB 1880
1840 LET J = 1
1850 LET K = 4
1860 GOSUB 1880
1870 RETURN
1880 LET P = 0
1890 LET P = P + 1
1900 LET A(1) = N(P)
1910 LET X = P
1920 LET X = X + 1
1930 IF X > N1 THEN 2050
1940 IF N(X) - A(1) <> J THEN 1920
1950 LET A(2) = N(X)
1960 LET X = X + 1
1970 IF X > N1 THEN 2050
1980 IF N(X) - A(2) <> J THEN 1960
1990 LET A(3) = N(X)
2000 FOR E = 1 TO N1
2010 IF ABS(N(E) - A(1)) = K THEN 2060
2020 IF ABS(N(E) - A(3)) = K THEN 2060
2030 NEXT E
2040 GOTO 1890
2050 IF P < N1 - 2 THEN 1890
2055 RETURN
2060 LET A(4) = N(E)
2070 FOR F = 1 TO 4
2080 IF A(F) / 4 <> INT(A(F) / 4) THEN 2130
2090 FOR G = 1 TO 4
2110 IF A(G) = A(F) + 1 THEN 2030
2120 NEXT G
2130 NEXT F
2140 FOR Y = 1 TO 4
2150 IF F1 = 1 THEN 2190
2160 IF A(Y) <> O(Y) THEN 2210
2170 NEXT Y
2180 GOTO 2030
2190 IF A(Y) <> C(Y) THEN 2210
2200 GOTO 2170
2210 FOR Y = 1 TO 4
2220 LET M(M1 + Y) = A(Y)
2230 NEXT Y
2240 LET M1 = M1 + 4
2250 GOTO 2030
2260 REM BOARD PRINTOUT SUBROUTINE
2270 PRINT
2275 IF F2 = 1 THEN 2530
2280 FOR E = 1 TO 13 STEP 4
2290 FOR F = 1 TO 3: PRINT "    ";
2300 FOR G = E TO E + 3
2310 ON B(G) + 1 GOTO 2320, 2410, 2430, 2450
2320 IF F = 2 THEN 2350
2330 IF F = 1 THEN COLOR 15: PRINT CHR$(218); STRING$(4, 196); CHR$(191);
2335 IF F = 3 THEN COLOR 15: PRINT CHR$(192); STRING$(4, 196); CHR$(217);
2340 GOTO 2490
2350 COLOR 15: PRINT CHR$(179); " ";
2360 IF G > 9 THEN 2390
2370 PRINT " "; CHR$(48 + G); " "; CHR$(179);
2380 GOTO 2490
2390 PRINT "1"; CHR$(38 + G); " "; CHR$(179);
2400 GOTO 2490
2410 COLOR 12: PRINT STRING$(6, 177);
2420 GOTO 2490
2430 COLOR 9: PRINT STRING$(6, 178);
2440 GOTO 2490
2450 IF F = 2 THEN 2480
2460 IF F = 1 THEN COLOR 11: PRINT CHR$(201); STRING$(4, 205); CHR$(187);
2465 IF F = 3 THEN COLOR 11: PRINT CHR$(200); STRING$(4, 205); CHR$(188);
2470 GOTO 2490
2480 COLOR 11: PRINT CHR$(186); " "; CHR$(174); CHR$(175); " "; CHR$(186);
2490 NEXT G
2500 PRINT
2510 NEXT F
2520 NEXT E
2530 PRINT: COLOR 15
2540 RETURN
3000 REM INSTRUCTIONS
3010 COLOR 14: PRINT
3020 PRINT "L-game is a simple strategic game played on a 4x4 grid by two opposing players,"
3030 PRINT "in this case between you and the computer.  The grid is numbered as follows:"
3050 LET F2 = 0
3060 FOR X = 1 TO 16
3070 LET B(X) = 0
3080 NEXT X
3090 GOSUB 2270
3100 COLOR 13: PRINT "(Press any key.)"
3105 Z$ = INKEY$: IF Z$ = "" THEN 3105
3106 COLOR 14: PRINT
3110 PRINT "The game is played with four pieces; both you and the computer have one 'L',"
3120 PRINT "and there are two BOXES which are used by both players.  Play always begins"
3130 PRINT "with the pieces on the board in the following position:"
3150 GOSUB 100
3160 GOSUB 2270: COLOR 14
3165 PRINT "(Computer is ";: COLOR 9: PRINT CHR$(178);: COLOR 14
3166 PRINT " and you are ";: COLOR 12: PRINT CHR$(177);: COLOR 14: PRINT ")"
3167 PRINT: COLOR 13: PRINT "(Press any key.)"
3168 Z$ = INKEY$: IF Z$ = "" THEN 3168
3169 COLOR 14: PRINT
3170 PRINT "The object of the game is to position your own L and the boxes to prevent the"
3180 PRINT "computer from moving its L.  Of course, it is trying to do the same to you!"
3190 PRINT "To move, you must simply enter the four coordinates where you want to place"
3200 PRINT "your L.  It must remain on the board and must not cover any other pieces.  You"
3210 PRINT "must move your L!  If you cannot find a new position for your L, then the"
3220 PRINT "computer has effectively pinned your L and it wins the game."
3230 PRINT
3260 PRINT "Assuming you have successfully moved your L, you now have the option of moving"
3270 PRINT "the boxes.  You may move one, two, or none of the boxes by simply entering the"
3280 PRINT "coordinates where you want to put them.  To leave a box where it is, enter its"
3290 PRINT "present position."
3300 PRINT
3310 PRINT "After you move the boxes, it is up to the computer to find a move for its L and"
3320 PRINT "play continues in the same manner.  Remember that you must not only try to pin"
3330 PRINT "the computer's L but also keep your own L from being pinned.  Also, it is"
3340 PRINT "easier to play the game with your own board than the computer printout.  To"
3350 PRINT "resign, enter 0,0,0,0 in place of your move.  GOOD LUCK!"
3380 PRINT
3450 GOTO 40
4000 END
