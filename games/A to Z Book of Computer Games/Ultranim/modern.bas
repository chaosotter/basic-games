5 CLS: COLOR 12
10 REM  "ULTRANIM"
15 PRINT TAB(36); "Ultranim": PRINT
20 REM
25 RANDOMIZE TIMER
30 GOSUB 9000
40 GOSUB 1000
50 DIM B(6, 3), A(5, 3)
60 DIM U$(3), U(3)
70 DIM G(5), P(3)
80 GOSUB 2000
90 GOSUB 3000
100 PRINT
110 GOSUB 3400
120 GOSUB 4000
130 GOSUB 7000
140 IF W = 1 THEN 200
150 PRINT: IF U$ <> "Me" THEN 180
160 GOSUB 6000
170 GOTO 110
180 GOSUB 5000
190 GOTO 110
200 PRINT "That clinches it!"
210 PRINT
220 COLOR 10: PRINT "Another game (Y/N)";
230 INPUT Q$: COLOR 15
240 IF LEFT$(Q$, 1) = "Y" OR LEFT$(Q$, 1) = "y" THEN 90
250 IF LEFT$(Q$, 1) = "N" OR LEFT$(Q$, 1) = "n" THEN 270
260 GOTO 220
270 PRINT: PRINT "Then we're done.  Ultranim!"
280 END
1000 COLOR 14: PRINT
1010 PRINT "A game begins with five groups of five tokens.  In a turn, a player may pick"
1020 PRINT "from one to all of the tokens in any group.  The player that gets the last pick"
1030 PRINT "wins the game."
1090 PRINT: COLOR 15
1100 RETURN
1999 REM  "BINARY NUMBERS"
2000 DATA 0,0,0
2010 DATA 0,0,1
2020 DATA 0,1,0
2030 DATA 0,1,1
2040 DATA 1,0,0
2050 DATA 1,0,1
2060 FOR I = 1 TO 6
2070 FOR J = 1 TO 3
2080 READ B(I, J)
2090 NEXT J
2100 NEXT I
2110 RETURN
2999 REM  "SET UP GAME"
3000 FOR I = 1 TO 5
3010 LET G(I) = 5
3020 NEXT I
3030 PRINT "How many players?": COLOR 11
3040 PRINT "  1 = You and me"
3050 PRINT "  2 = You and a friend"
3060 PRINT "  3 = You, a friend, and me"
3070 LET U$(1) = "You"
3080 LET U$(2) = "Friend"
3090 LET U$(3) = "Me"
3100 LET U(1) = 1
3110 LET U(2) = 2
3120 LET U(3) = 3
3130 FOR I = 1 TO 3
3140 LET T = INT(10 * RND(1)) + 1
3150 IF T > 3 THEN 3140
3160 LET U = U(I)
3170 LET U(I) = U(T)
3180 LET U(T) = U
3190 NEXT I
3200 COLOR 10: PRINT: PRINT "Your choice (1-3)";
3210 INPUT U: COLOR 15
3270 IF U >= 1 AND U <= 3 THEN PRINT: PRINT "The order of play is:"
3220 IF U = 1 THEN 3350
3230 IF U = 2 THEN 3330
3240 IF U = 3 THEN 3280
3250 PRINT "Nix!  Answer with 1, 2, or 3."
3260 GOTO 3200
3280 COLOR 13: PRINT "    ";: GOSUB 3400: COLOR 15
3290 COLOR 13: PRINT "    ";: GOSUB 3400: COLOR 15
3300 COLOR 13: PRINT "    ";: GOSUB 3400: COLOR 15
3320 RETURN
3330 LET U$(3) = " "
3340 GOTO 3290
3350 LET U$(2) = " "
3360 GOTO 3290
3399 REM  "NEXT PLAYER"
3400 LET U = U(1)
3410 LET U$ = U$(U)
3420 LET U(1) = U(2)
3430 LET U(2) = U(3)
3440 LET U(3) = U
3450 IF U$ = " " THEN 3400
3460 PRINT U$
3470 RETURN
3999 REM  "PRINT TOKENS"
4000 COLOR 11: PRINT " ..1..";
4010 PRINT " ..2..";
4020 PRINT " ..3..";
4030 PRINT " ..4..";
4040 PRINT " ..5.."
4050 LET T = 2
4060 FOR I = 1 TO 5
4070 COLOR 13: PRINT TAB(T);
4080 FOR J = 1 TO G(I)
4090 IF G(I) = 0 THEN 4120
4100 PRINT "X";
4110 NEXT J
4120 LET T = T + 6
4130 NEXT I
4140 PRINT: COLOR 15
4150 RETURN
4999 REM  "HUMAN INPUT"
5000 COLOR 10: PRINT "(Group, Count)";
5010 INPUT G, X: COLOR 15
5020 LET G = INT(ABS(G))
5030 LET X = INT(ABS(X))
5040 IF G < 1 THEN 5120
5050 IF X < 1 THEN 5120
5060 IF G > 5 THEN 5120
5070 IF X > 5 THEN 5120
5080 IF G(G) < 1 THEN 5140
5090 IF X > G(G) THEN 5170
5100 LET G(G) = G(G) - X
5110 RETURN
5120 PRINT "I don't understand."
5130 GOTO 5000
5140 PRINT "Group"; G; "is empty";
5150 PRINT " -- try again."
5160 GOTO 5000
5170 PRINT "Group"; G; "has only"; G(G); "left";
5180 GOTO 5150
5999 REM  "COMPUTER'S PLAY"
6000 GOSUB 6200
6010 LET G(G) = G(G) - 1
6020 IF G(G) <> 0 THEN 6040
6030 RETURN
6040 GOSUB 6400
6050 IF P(1) + P(2) + P(3) <> 0 THEN 6010
6060 RETURN
6199 REM  "LARGEST GROUP"
6200 LET M = G(1)
6210 FOR I = 2 TO 5
6220 IF M > G(I) THEN 6240
6230 LET M = G(I)
6240 NEXT I
6250 FOR G = 1 TO 5
6260 IF G(G) = M THEN 6280
6270 NEXT G
6280 RETURN
6399 REM  "ANALYZER"
6400 FOR I = 1 TO 5
6410 FOR J = 1 TO 3
6420 LET A(I, J) = B(G(I), J)
6430 NEXT J
6440 NEXT I
6450 FOR I = 1 TO 3
6460 LET P(I) = 0
6470 FOR J = 1 TO 5
6480 LET P(I) = P(I) + A(J, I)
6490 NEXT J
6500 IF P(I) = 0 THEN 6540
6510 LET T = INT(P(I) / 2)
6520 IF T * 2 = P(I) THEN 6560
6530 LET P(I) = 1
6540 NEXT I
6550 RETURN
6560 LET P(I) = 0
6570 GOTO 6540
6999 REM  "WIN CHECKER"
7000 LET W = 0
7010 FOR I = 1 TO 5
7020 IF G(I) = 0 THEN 7040
7030 LET W = W + 1
7040 NEXT I
7050 RETURN
9000 REM  "RANDOM NUMBER ROUTINE"
9010 LET Z = RND(1)
9020 RETURN

