10 REM  "ROULETTE"
20 REM
25 RANDOMIZE TIMER
30 GOSUB 9000
35 DIM M(5)
40 PRINT "WANT A DESCRIPTION (Y OR N)";
50 INPUT Q$
60 IF Q$ = "N" THEN 225
70 IF Q$ = "Y" THEN 110
80 PRINT "PAY ATTENTION, I SAID (Y OR N)"
90 PRINT
100 GOTO 40
110 PRINT "ROULETTE GAME"
120 PRINT "  BET ON A NUMBER (0-36)"
130 PRINT "  BET ON A COLOR (RED/BLACK)"
140 PRINT "  BET NUMBER IS ODD OR EVEN"
150 PRINT "  BET NUMBER IS LOW OR HIGH"
160 PRINT "      (0-18, 19-36)"
170 PRINT "RESULTS OF BETTING ARE:"
175 PRINT
180 PRINT "..NUMBER......WIN.....LOSE.."
190 PRINT "  NUMBER    BET X 5   BET"
200 PRINT "  COLOR     BET X 3  BET X 2"
210 PRINT " ODD/EVEN   BET X 2   BET"
220 PRINT " HIGH/LOW     BET     BET"
225 LET M = 0
230 PRINT
232 FOR I = 1 TO 5
234 LET M(I) = 0
236 NEXT I
240 GOSUB 7000
250 GOSUB 8000
260 GOSUB 6000
270 GOTO 230
3000 PRINT "END OF GAME, ";
3010 IF M < 0 THEN 3060
3020 IF M > 0 THEN 3080
3030 PRINT "WE'RE EVEN."
3040 PRINT
3050 END
3060 PRINT "PAY THE HOUSE $"; ABS(M)
3070 GOTO 3040
3080 PRINT "YOU'RE LUCKY, COLLECT $"; ABS(M)
3090 GOTO 3040
5999 REM  "READ THE WHEEL"
6000 IF A = 99 THEN 6040
6005 IF A <> A1 THEN 6030
6010 LET M(1) = X * 5
6020 GOTO 6040
6030 LET M(1) = 0 - X
6040 IF B = 9 THEN 6090
6050 IF B <> B1 THEN 6080
6060 LET M1 = M1 + 3 * X
6070 GOTO 6090
6080 LET M(2) = 0 = 2 * X
6090 IF C = 9 THEN 6140
6100 IF C <> C1 THEN 6130
6110 LET M(3) = 2 * X
6120 GOTO 6140
6130 LET M(3) = 0 - X
6140 IF D = 9 THEN 6190
6150 IF D <> D1 THEN 6180
6160 LET M(4) = X
6170 GOTO 6190
6180 LET M(4) = 0 - X
6190 FOR I = 1 TO 4
6192 LET M(5) = M(5) + M(I)
6194 NEXT I
6196 LET M = M + M(5)
6200 PRINT "THIS TURN $"; M(5); " TOTAL $"; M
6210 RETURN
6999 REM  "PLAYER INPUT"
7000 PRINT "NUMBER (0-36)";
7005 LET A = 99
7010 INPUT A
7020 IF A < 0 THEN 7040
7025 IF A = 99 THEN 7060
7030 IF A < 37 THEN 7060
7040 GOSUB 7700
7050 GOTO 7000
7060 PRINT "BLACK/RED (B OR R)";
7065 LET B$ = " "
7070 IF Q$ = "N" THEN 7090
7075 PRINT
7080 GOSUB 7900
7082 LET Q$ = "N"
7084 GOTO 7060
7090 INPUT B$
7100 IF B$ = " " THEN 7150
7110 IF B$ = "R" THEN 7190
7120 IF B$ = "B" THEN 7170
7130 GOSUB 7700
7140 GOTO 7060
7150 LET B = 9
7160 GOTO 7200
7170 LET B = 1
7180 GOTO 7200
7190 LET B = 0
7200 PRINT "ODD/EVEN (O OR E)";
7205 LET C$ = " "
7210 INPUT C$
7220 IF C$ = " " THEN 7270
7230 IF C$ = "O" THEN 7290
7235 IF C$ = "0" THEN 7290
7240 IF C$ = "E" THEN 7310
7250 GOSUB 7700
7260 GOTO 7200
7270 LET C = 9
7280 GOTO 7320
7290 LET C = 1
7300 GOTO 7320
7310 LET C = 0
7320 PRINT "HIGH/LOW (H OR L)";
7325 LET D$ = " "
7327 INPUT D$
7330 IF D$ = " " THEN 7380
7340 IF D$ = "H" THEN 7400
7350 IF D$ = "L" THEN 7420
7360 GOSUB 7700
7370 GOTO 7320
7380 LET D = 9
7390 GOTO 7430
7400 LET D = 1
7410 GOTO 7430
7420 LET D = 0
7430 PRINT "BET  $";
7440 INPUT X
7450 IF X >= 0 THEN 7480
7460 PRINT "IMPOSSIBLE"
7470 GOTO 7430
7480 IF X <> 0 THEN 7560
7490 PRINT "COWARD...WANT TO QUIT (Y OR N)"
7500 INPUT J$
7510 IF J$ = "N" THEN 7540
7520 PRINT "THANK GOODNESS"
7530 GOTO 3000
7540 PRINT "THEN BET SOME MONEY"
7550 GOTO 7430
7560 IF X < 10000 THEN 7590
7570 PRINT "LET'S BE REASONABLE"
7580 GOTO 7430
7590 RETURN
7699 REM  "ERRORS"
7700 DATA OOPS,CAREFUL,HEY!,PLEASE!!
7710 DATA FUN-N-Y,HEADS-UP,ONCE-MORE
7720 DATA STOP-IT,LAST-CHANCE,*
7730 READ X$
7740 IF X$ <> "*" THEN 7790
7750 PRINT "YOU'VE EXHAUSTED MY PATIENCE.."
7760 PRINT "   NOW PLAY RIGHT!"
7770 RESTORE
7780 RETURN
7790 PRINT X$
7800 RETURN
7899 REM  "FORGOTTEN RULE"
7900 PRINT "I FORGOT TO EXPLAIN: RED NUMBERS"
7910 PRINT "  ARE ANY EVENLY DIVISIBLE BY 3"
7920 PRINT "  AND, TO SKIP ANY ENTRY DON'T"
7930 PRINT "  ENTER ANYTHING"
7940 PRINT
7950 RETURN
7999 REM  "WHEEL SPINNER"
8000 PRINT "SPINNING .";
8010 FOR I = 1 TO 10
8020 FOR J = 1 TO I * 10
8030 NEXT J
8040 PRINT " .";
8050 NEXT I
8055 PRINT
8060 LET A1 = INT(100 * RND(1))
8070 IF A1 > 36 THEN 8060
8080 IF A1 = 0 THEN 8280
8090 PRINT " ."; A1; "  ";
8100 LET C1 = INT(A1 / 2)
8110 IF A1 - C1 * 2 = 0 THEN 8240
8115 LET C1 = 1
8120 LET B1 = INT(A1 / 3)
8130 IF A1 - B1 * 3 = 0 THEN 8260
8140 LET B1 = 0
8150 IF B1 <> 0 THEN 8200
8160 PRINT "  BLACK";
8170 IF C1 <> 0 THEN 8220
8180 PRINT "  EVEN";
8190 GOTO 8330
8200 PRINT "  RED";
8210 GOTO 8170
8220 PRINT "  ODD";
8230 GOTO 8330
8240 LET C1 = 0
8250 GOTO 8120
8260 LET B1 = 1
8270 GOTO 8150
8280 PRINT " . O  BLACK  EVEN  LOW"
8290 LET B1 = 0
8300 LET C1 = 0
8310 LET D1 = 0
8320 RETURN
8330 IF A1 < 19 THEN 8346
8340 LET D1 = 1
8342 PRINT "  HIGH"
8344 RETURN
8346 PRINT "  LOW"
8348 LET D1 = 0
8350 RETURN
9000 REM  "RANDOM NUMBER ROUTINE"
9010 LET Z = RND(1)
9020 RETURN

