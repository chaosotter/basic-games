5 CLS: COLOR 12
10 REM  "GUNNERS"
15 PRINT TAB(36); "Gunners": PRINT: PRINT
20 REM
25 RANDOMIZE TIMER
30 GOSUB 9000
40 COLOR 10: PRINT "Want instructions (Y/N)";
50 INPUT Q$: COLOR 15
60 IF LEFT$(Q$, 1) = "N" OR LEFT$(Q$, 1) = "n" THEN 90
70 PRINT
80 GOSUB 1000
90 LET P = 0
100 COLOR 10: PRINT "Want a gunner's grid (Y/N)";
110 INPUT Q$: COLOR 15
120 IF LEFT$(Q$, 1) = "N" OR LEFT$(Q$, 1) = "n" THEN 200
130 GOSUB 2000
140 GOTO 200
150 PRINT "No they're not!"
200 PRINT "Type two players' names:"
210 COLOR 10: PRINT "Gunner #1";
220 INPUT P1$: COLOR 15
230 COLOR 10: PRINT "Gunner #2";
240 INPUT P2$: COLOR 15
250 COLOR 10: PRINT "Are these names okay (Y/N)";
260 INPUT Q$: COLOR 15
270 IF LEFT$(Q$, 1) = "N" OR LEFT$(Q$, 1) = "n" THEN 200
272 IF P1$ < "A" THEN 150
274 IF P2$ < "A" THEN 150
276 IF P1$ = P2$ THEN 150
280 GOSUB 3000
290 PRINT: PRINT "Player"; P; "gets the first shot."
300 S$ = STR$(S): S$ = RIGHT$(S$, LEN(S$) - 1)
310 PRINT: COLOR 13: PRINT "Round #"; S$: COLOR 15
320 IF P = 1 THEN 360
330 COLOR 12: PRINT P2$;: COLOR 15
340 LET P = 1
350 GOSUB 4000
352 LET S = S + 1
354 IF LEFT$(Q$, 1) = "Y" OR LEFT$(Q$, 1) = "y" THEN 100
356 GOTO 300
360 COLOR 12: PRINT P1$;: COLOR 15
370 LET P = 2
380 GOSUB 5000
385 IF LEFT$(Q$, 1) = "Y" OR LEFT$(Q$, 1) = "y" THEN 100
390 GOTO 320
999 REM  "DESCRIPTION"
1000 COLOR 14: PRINT
1010 PRINT "Two players shoot from a tank at each other over a hill.  (They can't see each"
1020 PRINT "other.)  I'll act as spotter for both.  Input is a row/column value like this:"
1030 PRINT
1040 COLOR 10: PRINT "    Aim (row, column)? 3,4"
1050 COLOR 14: PRINT
1060 PRINT "The grid is 10 x 10, so neither the row nor the column may be over 10 or less"
1070 PRINT "than 1."
1090 PRINT: PRINT: COLOR 15
1100 RETURN
1999 REM  "GUNNER'S GRID"
2000 PRINT: PRINT TAB(13); "Columns"
2020 PRINT TAB(7); "1 2 3 4 5 6 7 8 9 10"
2060 LET A$ = "* * * * * * * * * *"
2070 FOR I = 1 TO 3
2080 PRINT TAB(7);: COLOR 13: PRINT A$;: COLOR 15: PRINT I
2090 NEXT I
2100 PRINT "    R ";: COLOR 13: PRINT A$;: COLOR 15: PRINT " 4"
2110 PRINT "    o ";: COLOR 13: PRINT A$;: COLOR 15: PRINT " 5"
2120 PRINT "    w ";: COLOR 13: PRINT A$;: COLOR 15: PRINT " 6"
2130 PRINT "    s ";: COLOR 13: PRINT A$;: COLOR 15: PRINT " 7"
2140 FOR I = 1 TO 3
2150 PRINT TAB(7);: COLOR 13: PRINT A$;: COLOR 15: PRINT I + 7
2160 NEXT I
2170 PRINT
2180 RETURN
2999 REM  "RANDOM GRID LOCATIONS"
3000 LET P1 = INT(100 * RND(1))
3020 LET P2 = INT(100 * RND(1))
3040 IF P <> 0 THEN 3060
3050 LET P = 1
3060 LET S = 1
3070 LET Q$ = "X"
3080 RETURN
3499 REM  "PLAYER INPUT"
3500 COLOR 10: PRINT ", your aim (row, column)";
3502 LET C = 0
3504 LET R = 0
3506 INPUT C, R: COLOR 15
3510 IF C < 1 THEN 3560
3520 IF C > 10 THEN 3560
3530 IF R < 1 THEN 3560
3540 IF R > 10 THEN 3560
3542 LET C = C - 1
3544 LET R = R - 1
3550 RETURN
3560 PRINT "Illegal value."
3570 GOTO 3500
3999 REM  "QUALIFY #1'S SHOT"
4000 GOSUB 3500
4010 IF C * 10 + R = P2 THEN 8000
4020 LET T = P2
4030 GOSUB 6000
4040 GOSUB 7000
4050 RETURN
4999 REM  "QUALIFY #2'S SHOT"
5000 GOSUB 3500
5010 IF C * 10 + R = P1 THEN 8090
5020 LET T = P1
5030 GOSUB 6000
5040 GOSUB 7000
5050 RETURN
5999 REM  "PLACE SHOT"
6000 LET X = INT(T / 10)
6010 LET Y = T - INT(X * 10)
6020 RETURN
6999 REM  "SPOTTER'S REPORT"
7000 PRINT "Missed: Shot hit ";
7010 IF C <= X THEN 7030
7020 PRINT "low ";
7030 IF C >= X THEN 7050
7040 PRINT "high ";
7050 IF R <= Y THEN 7070
7060 PRINT "right";
7070 IF R >= Y THEN 7090
7080 PRINT "left";
7090 PRINT
7100 RETURN
7999 REM  "WRAP IT UP"
8000 PRINT P1$; " is hot.  ";
8010 PRINT P2$;
8020 PRINT " is the best gunner!"
8030 PRINT
8040 COLOR 10: PRINT "Another game (Y/N)";
8050 INPUT Q$: COLOR 15
8060 IF LEFT$(Q$, 1) = "Y" OR LEFT$(Q$, 1) = "y" THEN 7100
8070 PRINT: PRINT "The End"
8080 END
8090 PRINT P2$; " is hit.  ";
8100 PRINT P1$;
8110 GOTO 8020
9000 REM  "RANDOM NUMBER ROUTINE"
9010 LET Z = RND(1)
9020 RETURN
