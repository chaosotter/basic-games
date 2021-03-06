5 CLS: COLOR 12
10 REM  "JUSTLUCK"
15 PRINT TAB(36); "Justluck": PRINT: PRINT
20 REM
25 RANDOMIZE TIMER
30 GOSUB 9000
40 DIM D(3), M(3)
50 COLOR 15: PRINT "There are two modes, Chuck-a-Luck and Justluck."
80 PRINT
90 COLOR 10: PRINT "Indicate your choice (C/J)";
110 INPUT M$: COLOR 15
120 IF M$ = "J" OR M$ = "j" THEN 400
130 IF M$ = "C" OR M$ = "c" THEN 160
140 PRINT "You must select a mode."
150 GOTO 80
160 IF C = 0 THEN GOSUB 1000
170 GOSUB 5000
180 GOSUB 2000
190 GOSUB 6000
200 IF LEFT$(Q$, 1) = "N" OR LEFT$(q$, 1) = "n" THEN 170
210 COLOR 10: PRINT "Want to stop (Y/N)";
220 INPUT Q$: COLOR 15
230 IF LEFT$(Q$, 1) = "N" OR LEFT$(Q$, 1) = "n" THEN 50
240 PRINT: PRINT "End of program."
250 END
400 GOSUB 1400
410 IF C = L THEN 460
420 GOSUB 5120
430 IF LEFT$(Q$, 1) = "N" OR LEFT$(Q$, 1) = "n" THEN 450
440 GOSUB 3000
450 GOTO 410
460 IF LEFT$(Q$, 1) <> "N" AND LEFT$(Q$, 1) <> "n" THEN 465
462 GOSUB 3000
465 COLOR 10: PRINT "Another run (Y/N)";
470 INPUT Q$: COLOR 15
480 IF LEFT$(Q$, 1) <> "N" AND LEFT$(Q$, 1) <> "n" THEN 400
490 GOTO 210
999 REM  "INSTRUCTIONS-C"
1000 COLOR 14: PRINT
1010 PRINT ". . . Chuck-a-Luck . . ."
1020 PRINT
1030 PRINT "You bet an amount and pick a number (1-6).  If your number comes up, you win."
1040 PRINT "Pairs pay double and triples pay three times your bet."
1050 PRINT: COLOR 15
1060 LET P = 0
1070 LET H = 0
1080 LET C = 0
1090 FOR I = 1 TO 3
1100 LET D(I) = 0
1110 LET M(I) = 0
1120 NEXT I
1130 LET M = 0
1140 PRINT
1150 RETURN
1399 REM  "INSTRUCTIONS-J"
1400 GOSUB 1060
1410 COLOR 14: PRINT: PRINT ". . . Justluck . . ."
1415 PRINT: COLOR 15
1420 COLOR 10: PRINT "Bet";
1430 INPUT B: COLOR 15
1440 COLOR 10: PRINT "Number (1-6)";
1450 INPUT N: COLOR 15
1460 LET N = ABS(INT(N))
1470 IF N < 1 THEN 1490
1480 IF N < 7 THEN 1510
1490 PRINT "Illegal entry."
1500 GOTO 1440
1510 COLOR 10: PRINT "Limit";
1520 INPUT L: COLOR 15
1530 LET L = ABS(INT(L))
1540 IF L < 2000 THEN 1580
1550 COLOR 10: PRINT "Are you sure (Y/N)";
1560 INPUT Q$: COLOR 15
1570 IF LEFT$(A$, 1) = "N" OR LEFT$(a$, 1) = "n" THEN 1510
1580 COLOR 10: PRINT "Print (Y/N)";
1590 INPUT Q$: COLOR 15
1600 IF LEFT$(Q$, 1) = "N" OR LEFT$(Q$, 1) = "n" THEN 1640
1610 IF LEFT$(Q$, 1) = "Y" OR LEFT$(Q$, 1) = "y" THEN 1640
1620 PRINT "I don't understand..."
1630 GOTO 1580
1640 RETURN
1999 REM  "BALANCES"
2000 IF C = 0 THEN 2070
2010 LET T = INT(C / 10)
2020 IF C <> T * 10 THEN 2070
2030 COLOR 11: PRINT "Roll"; C,
2035 P$ = STR$(P): P$ = RIGHT$(P$, LEN(P$) - 1)
2040 PRINT "You = $"; P$,
2045 H$ = STR$(H): H$ = RIGHT$(H$, LEN(H$) - 1)
2050 PRINT "Me = $"; H$: COLOR 15
2060 PRINT
2070 RETURN
2999 REM  "FREQUENCY COUNTS"
3000 COLOR 11: PRINT "Roll"; C,
3005 P$ = STR$(P): P$ = RIGHT$(P$, LEN(P$) - 1)
3010 PRINT "You = $"; P$,
3015 H$ = STR$(H): H$ = RIGHT$(H$, LEN(H$) - 1)
3020 PRINT "Me = $"; H$
3030 COLOR 13: PRINT "Single:"; M(1),
3040 PRINT "Double:"; M(2),
3050 PRINT "Triple:"; M(3)
3060 PRINT: COLOR 15
3070 RETURN
3999 REM  "DICE ROLLER"
4000 LET M = 0
4010 FOR I = 1 TO 3
4020 GOSUB 4400
4030 LET D(I) = X
4040 IF N <> X THEN 4060
4050 LET M = M + 1
4060 NEXT I
4070 IF M = 0 THEN 4090
4080 LET M(M) = M(M) + 1
4090 LET C = C + 1
4100 RETURN
4399 REM  "SCORES"
4400 LET X = INT(10 * RND(1))
4410 IF X < 1 THEN 4400
4420 IF X < 7 THEN 4500
4430 LET X = INT(X / 2)
4500 RETURN
4999 REM  "PLAYER INPUT"
5000 COLOR 10: PRINT: PRINT "Bet";
5010 INPUT B: COLOR 15
5020 IF B > 0 THEN 5050
5030 PRINT "What?  Illegal entry."
5040 GOTO 5000
5050 COLOR 10: PRINT "Number (1-6)";
5060 INPUT N: COLOR 15
5070 LET N = ABS(INT(N))
5080 IF N > 0 THEN 5110
5090 PRINT "Nix -- illegal entry."
5100 GOTO 5050
5110 IF N > 6 THEN 5090
5120 GOSUB 4000
5122 IF M$ = "C" OR M$ = "c" THEN 5130
5124 IF LEFT$(Q$, 1) = "N" OR LEFT$(Q$, 1) = "n" THEN 5140
5130 PRINT "   "; D(1); " "; D(2); " "; D(3)
5140 IF M = 0 THEN 5170
5150 LET P = P + B * M
5160 GOTO 5180
5170 LET H = H + B
5180 RETURN
5999 REM  "KEEP GOING!"
6000 LET T = C - 20
6010 IF T < 0 THEN 6070
6020 IF T = 0 THEN 6050
6030 LET T = T - 20
6040 GOTO 6010
6050 COLOR 10: PRINT "Stop Chuck-a-Luck (Y/N)";
6060 INPUT Q$: COLOR 15
6070 RETURN
9000 REM  "RANDOM NUMBER ROUTINE"
9010 LET Z = RND(1)
9020 RETURN

