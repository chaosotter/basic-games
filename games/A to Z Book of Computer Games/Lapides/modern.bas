5 CLS: COLOR 12
10 REM  "LAPIDES"
15 PRINT TAB(36); "Lapides": PRINT: PRINT
20 REM
24 RANDOMIZE TIMER
25 DIM R(10)
30 COLOR 10: PRINT "Do you know this game (Y/N)";
40 INPUT Q$: COLOR 15
50 IF LEFT$(Q$, 1) = "Y" OR LEFT$(Q$, 1) = "y" THEN 70
60 GOSUB 1000
70 GOSUB 9000
80 PRINT
90 GOSUB 2000
100 GOSUB 3000
110 GOSUB 4000
120 GOSUB 5000
130 GOSUB 6000
140 IF X > 1 THEN 110
150 COLOR 10: PRINT "Do it again (Y/N)";
160 INPUT Q$: COLOR 15
170 IF LEFT$(Q$, 1) = "Y" OR LEFT$(Q$, 1) = "y" THEN 210
180 PRINT: PRINT "So long, gang!  The end..."
200 END
210 COLOR 10: PRINT "Same players (Y/N)";
220 INPUT Q$: COLOR 15
230 IF LEFT$(Q$, 1) = "Y" OR LEFT$(Q$, 1) = "y" THEN 100
240 GOTO 80
1000 COLOR 14: PRINT
1010 PRINT "Two players take rocks from a pile.  The one stuck with the last rock loses."
1040 PRINT "You can't take more rocks in your turn than are left in the top row."
1070 PRINT
1080 PRINT "Here we go..."
1085 PRINT: COLOR 15
1090 RETURN
1999 REM  "TYPE NAMES"
2000 PRINT "Enter two players' names."
2010 COLOR 10: PRINT "#1";
2020 INPUT P1$: COLOR 15
2030 COLOR 10: PRINT "#2";
2040 INPUT P2$: COLOR 15
2050 COLOR 10: PRINT "Okay (Y/N)";
2055 INPUT Q$: COLOR 15
2060 IF LEFT$(Q$, 1) = "Y" OR LEFT$(Q$, 1) = "y" THEN 2080
2070 IF LEFT$(Q$, 1) = "N" OR LEFT$(Q$, 1) = "n" THEN 2000
2080 IF P1$ = " " THEN 2000
2090 IF P2$ = " " THEN 2000
2100 IF P1$ = P2$ THEN 2000
2110 LET P = INT(10 * RND(1))
2120 IF P >= 5 THEN 2150
2130 LET P = 1
2140 RETURN
2150 LET P = 2
2160 RETURN
2999 REM  "PILE UP THE ROCKS"
3000 FOR I = 1 TO 9
3010 LET R(I) = I
3020 NEXT I
3030 RETURN
3999 REM  "PRINT LAPIDES"
4000 PRINT: COLOR 13: FOR I = 1 TO 9
4005 IF R(I) = 0 THEN 4050
4006 PRINT TAB(13 - I);
4010 FOR J = 1 TO R(I)
4020 PRINT "* ";
4030 NEXT J
4040 PRINT
4050 NEXT I: PRINT: COLOR 15
4060 RETURN
4999 REM  "PLAYER INPUT"
5000 IF P = 1 THEN 5040
5010 LET P = 1
5020 COLOR 10: PRINT P1$; "'s turn";
5030 GOTO 5060
5040 COLOR 10: PRINT P2$; "'s turn";
5050 LET P = 2
5060 INPUT Q: COLOR 15
5070 IF Q < 1 THEN 5090
5080 GOTO 5110
5090 PRINT "Play fair!"
5100 GOTO 5060
5110 FOR I = 1 TO 9
5120 IF R(I) <> 0 THEN 5140
5130 NEXT I
5140 IF Q <= R(I) THEN 5170
5150 PRINT "Only"; R(I); "possible."
5160 GOTO 5090
5170 LET R(I) = R(I) - Q
5180 RETURN
5999 REM  "CHECK FOR WIN"
6000 LET X = 0
6010 FOR I = 1 TO 9
6020 LET X = X + R(I)
6030 NEXT I
6040 IF X > 1 THEN 6080
6045 IF X = 0 THEN 6110
6050 PRINT: PRINT "Ha ha, ";
6060 IF P = 1 THEN 6090
6070 PRINT P2$; " wins."
6080 RETURN
6090 PRINT P1$; " wins."
6100 RETURN
6110 PRINT: PRINT "Dummy!  You took the last one."
6130 RETURN
9000 REM  "RANDOM NUMBER ROUTINE"
9010 LET Z = RND(1)
9020 RETURN

