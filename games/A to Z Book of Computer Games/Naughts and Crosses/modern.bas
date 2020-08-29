5 CLS: COLOR 12
10 REM  "NAUGHTS"
15 PRINT TAB(30); "Naughts and Crosses": PRINT: PRINT
20 REM
25 RANDOMIZE TIMER
30 DIM R(8, 4)
40 DIM H(9), C(9), B(9)
50 GOSUB 2000
60 COLOR 10: PRINT "Do you know how to play (Y/N)";
70 INPUT Q$: COLOR 15
80 IF LEFT$(Q$, 1) = "Y" OR LEFT$(Q$, 1) = "y" THEN 100
90 GOSUB 1000
100 REM "INITIALIZE PLAYING BOARDS"
110 FOR I = 1 TO 9
120 LET H(I) = 0
130 LET C(I) = 0
140 LET B(I) = 0
150 NEXT I
160 LET Q = 0
170 LET W = 0
200 REM  "SEQUENCE CONTROL"
210 IF P = 1 THEN 300
220 IF P = 2 THEN 500
230 LET P = 1
240 GOTO 210
300 REM  "HUMAN'S PLAY"
310 LET P = 2
320 LET Q = 1
330 GOSUB 6000
340 GOSUB 4000
350 IF Q = 0 THEN 600
360 LET Q = 0
370 LET W = 0
380 GOSUB 2200
390 IF W = 3 THEN 700
400 GOTO 200
500 REM  "COMPUTER'S PLAY"
510 LET P = 1
520 GOSUB 5000
530 GOSUB 3200
540 GOSUB 2400
550 IF W = 30 THEN 800
560 IF Q = 0 THEN 600
570 GOTO 200
600 REM  "TIE GAME"
610 PRINT
620 PRINT "Oh, well."
630 IF P = 2 THEN 660
640 LET P = 2
650 GOTO 900
660 LET P = 1
670 GOTO 900
700 REM  "HUMAN WON"
710 GOSUB 5000
720 PRINT: PRINT "Oops -- got me!"
730 GOTO 900
800 REM  "COMPUTER WIN"
810 GOSUB 5000
820 PRINT: PRINT "Ha ha, I won!"
900 REM  "END OF GAME"
910 COLOR 10: PRINT "Play again (Y/N)";
920 INPUT Q$: COLOR 15
930 IF LEFT$(Q$, 1) = "Y" OR LEFT$(Q$, 1) = "y" THEN 100
940 PRINT
950 PRINT "Thanks for playing Naughts and Crosses with me.  Good-bye."
980 END
1000 REM  "DESCRIPTION OF GAME"
1010 COLOR 14: PRINT
1020 PRINT "This is Tac-Tac-Toe.  You are first to play.  Thereafter, we take turns."
1030 PRINT "Your symbol is always 'X' and mine is 'O'.  Enter the number of the board"
1040 PRINT "position for 'Your move?'.  Position numbers are printed on the left and the"
1050 PRINT "board is to the right.  Three in a row for either of us wins the game."
1060 PRINT
1150 PRINT "Then here we go..."
1160 COLOR 15: PRINT
1170 RETURN
2000 REM  "SET UP ROCK CHECKER"
2010 DATA 1,2,3,4,5,6,7,8,9
2020 DATA 1,4,7,2,5,8,3,6,9
2030 DATA 3,5,7,1,5,9
2040 FOR I = 1 TO 8
2050 READ R(I, 1), R(I, 2), R(I, 3)
2060 LET R(I, 4) = R(I, 1) + R(I, 2) + R(I, 3)
2070 NEXT I
2080 RETURN
2200 REM  "HUMAN INPUT"
2210 PRINT: COLOR 10: PRINT "Your move (1-9)";
2220 INPUT Q: COLOR 15
2230 IF Q < 1 THEN 2250
2240 IF Q < 10 THEN 2270
2250 PRINT "Illegal entry."
2260 GOTO 2220
2270 IF H(Q) <> 0 THEN 2250
2280 IF C(Q) <> 0 THEN 2250
2290 LET H(Q) = Q
2300 LET B(Q) = 1
2400 REM  "CHECK FOR WINNER"
2410 FOR I = 1 TO 8
2420 LET W = B(R(I, 1)) + B(R(I, 2)) + B(R(I, 3))
2430 IF W = 3 THEN 2460
2440 IF W = 30 THEN 2460
2450 NEXT I
2460 RETURN
3000 REM  "CHECK FOR DEFENSE"
3010 FOR I = 1 TO 8
3020 LET W = B(R(I, 1)) + B(R(I, 2)) + B(R(I, 3))
3030 IF W = 2 THEN 3060
3040 NEXT I
3050 GOTO 3300
3060 LET Q = R(I, 4) - (H(R(I, 1)) + H(R(I, 2)) + H(R(I, 3)))
3070 LET C(Q) = Q
3080 LET B(Q) = 10
3090 RETURN
3200 REM  "CHECK FOR WIN MOVE"
3210 FOR I = 1 TO 8
3220 LET W = B(R(I, 1)) + B(R(I, 2)) + B(R(I, 3))
3230 IF W = 20 THEN 3260
3240 NEXT I
3250 GOTO 3000
3260 LET Q = R(I, 4) - (C(R(I, 1)) + C(R(1, 2)) + C(R(I, 3)))
3270 LET C(Q) = Q
3280 LET B(Q) = 10
3290 RETURN
3300 REM  "MAKE OFFENSE PLAY"
3310 IF B(5) <> 0 THEN 3340
3320 LET Q = 5
3330 GOTO 3270
3340 FOR I = 1 TO 9
3350 IF B(I) = 0 THEN 3390
3360 NEXT I
3370 LET Q = 0
3380 RETURN
3390 LET Q = I
3400 GOTO 3270
3500 RETURN
4000 REM  "EMPTY SPACE TEST"
4010 FOR I = 1 TO 9
4020 IF B(I) = 0 THEN 4060
4030 NEXT I
4040 LET Q = 0
4050 RETURN
4060 LET Q = I
4070 RETURN
5000 REM  "COMPUTER'S BOARD"
5010 GOSUB 6000
5020 COLOR 12: PRINT: PRINT "My move.": COLOR 15
5030 RETURN
6000 REM  "DISPLAY BOARD"
6010 PRINT
6020 COLOR 11: PRINT "1  2  3";: COLOR 15
6030 GOSUB 7000
6040 COLOR 11: PRINT "4  5  6";: COLOR 15
6050 GOSUB 7020
6060 COLOR 11: PRINT "7  8  9";: COLOR 15
6070 GOSUB 7020
6080 RETURN
7000 LET F = 1
7010 LET L = 3
7020 PRINT TAB(12);: COLOR 13
7030 FOR I = F TO L
7050 IF C(I) <> I THEN 7070
7060 PRINT "O  ";
7070 IF H(I) <> I THEN 7090
7080 PRINT "X  ";
7090 IF B(I) <> 0 THEN 7110
7100 PRINT ".  ";
7110 NEXT I
7120 PRINT: COLOR 15
7130 LET F = L + 1
7140 LET L = L + 3
7150 RETURN
