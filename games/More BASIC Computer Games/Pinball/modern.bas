1 CLS: COLOR 12: PRINT TAB(36); "Pinball"
2 PRINT TAB(31); "Creative Computing"
3 PRINT TAB(29); "Morristown, New Jersey"
4 PRINT: PRINT: PRINT: COLOR 15
5 RANDOMIZE TIMER
8 DIM R$(10), P$(20), L(2)
9 GOSUB 9500
10 A1 = 0: A0 = 0: X9 = 0
20 PRINT "Welcome to Computer Pinball!"
30 COLOR 10: PRINT "Would you like instructions to this fantastic game (Y/N)";
40 INPUT Q$: COLOR 15: IF LEFT$(Q$, 1) = "Y" OR LEFT$(Q$, 1) = "y" THEN GOSUB 1010: GOTO 50
45 COLOR 10: PRINT "How about a picture of the table (Y/N)";
46 INPUT Q$: COLOR 15: IF LEFT$(Q$, 1) = "Y" OR LEFT$(Q$, 1) = "y" THEN GOSUB 6010
50 PRINT: PRINT: B = 5
55 S = 0: P = 0
60 T$ = "ABCDEFGHIJ": PRINT
61 FOR Z = 1 TO 10: R$(Z) = " ": NEXT Z: Z3 = 0
70 A1 = 0
71 A7 = 0
80 IF B <= 0 THEN 290
100 L(1) = 2 + INT(RND(1) * 6): L(2) = INT(RND(1) * 14) + 1
110 C = 1 + INT(RND(1) * 7): A1 = 0
120 L1$ = STR$(L(1)): L1$ = RIGHT$(L1$, LEN(L1$) - 1)
121 L2$ = STR$(L(2)): L2$ = RIGHT$(L2$, LEN(L2$) - 1)
125 PRINT "The ball is now at ("; L1$; ", "; L2$; ")."
130 IF MID$(P$(L(1)), L(2), 1) = " " THEN 150
140 GOSUB 2010
150 IF A7 = 7 THEN 280
160 IF A1 <> 4 THEN 180
170 GOTO 260
180 L(1) = L(1) + 1
190 A1 = 0
200 L(2) = L(2) + INT(1 + RND(1) * 3) - 2
210 IF L(2) < 2 OR L(2) > 15 THEN L(1) = L(1) + INT(1 + RND(1) * 3) - 2
215 IF L(2) < 2 OR L(2) > 15 THEN L(2) = INT(2 + RND(1) * 13)
230 IF L(1) >= 2 AND L(1) <= 20 THEN GOTO 130
240 L(1) = INT(1 + RND(1) * 7)
250 GOTO 130
260 GOSUB 4010
270 IF A0 = 1 THEN 400
280 ON X9 + 1 GOTO 60, 340
285 PRINT "You have played your seventh ball and scored"; P; "points!"
286 PRINT "You're very good!": GOTO 9999
290 PRINT "You have played your five balls, and have scored a total of"; P; "points."
300 IF P < 1600 THEN 9999
305 PRINT: PRINT "*** BONUS BALL ***"
310 B = B + 1
320 X9 = 1
330 GOTO 60
340 PRINT "You played your sixth ball and scored"; P; "points."
341 X9 = 2
350 IF P < 2200 THEN 9999
355 PRINT: PRINT "*** BONUS BALL ***"
360 B = B + 1: S = 3
370 GOTO 60
380 GOTO 2010
390 GOTO 150
400 L(1) = 2 + INT(RND(1) * 7)
405 L(2) = 2 + INT(RND(1) * 13): X = 0: Y = 0
410 GOTO 110
1010 PRINT: COLOR 14
1030 PRINT "The rules of Computer Pinball are fairly simple.  You get a total of five"
1040 PRINT "balls.  If you score more than 1600, you get a sixth ball.  If your six-ball"
1050 PRINT "score is more than 2200, you get a seventh ball."
1055 PRINT
1060 PRINT "This table has three flippers, each of which protect an out chute.  However,"
1070 PRINT "this set differs from other sets, since you may only flip two of the flippers"
1080 PRINT "any time the ball approaches the chute.  Nota bene: You *do not* know for sure"
1090 PRINT "where the ball is!  So, if you flip the wrong two flippers, you lose the ball,"
1095 PRINT "and the next ball in put into play."
1096 PRINT
1097 PRINT "You can get a picture of the table every time the ball hits an object, so that"
1098 PRINT "may help you somewhat.  Also, you are told where the ball is each time it hits"
1099 PRINT "(even if you don't get a picture).  There is some logic to the choice of"
1100 PRINT "flippers, but some luck is involved, too.  The flippers are numbered 1, 2, and"
1110 PRINT "3 from left to right, and are shown on the picture below as '!' marks."
1120 PRINT
1123 PRINT "Since luck plays only a small part in choosing the correct flipper, you will"
1125 PRINT "do poorly if you just guess which flipper the ball is headed toward..."
1126 PRINT: COLOR 13: PRINT "(Press any key.)"
1127 Z$ = INKEY$: IF Z$ = "" THEN 1127
1128 PRINT: COLOR 14: PRINT "The table looks like this:"
1132 COLOR 11: PRINT: PRINT "      ############  "
1133 FOR Z = 2 TO 20: PRINT "    "; P$(Z): NEXT Z
1135 Z$ = INKEY$: IF Z$ = "" THEN 1135
1140 COLOR 14: PRINT
1230 PRINT "The center bumper ($) is the jackpot!  The ball is put into play through the up"
1240 PRINT "arrow (^) and goes up and around, where it is deposited on the upper half of"
1250 PRINT "the table.  The ball may bounce from the side of the  table, and may bounce up"
1260 PRINT "from the lines on the side (=) and from the diagonals (\ and /) at the bottom"
1270 PRINT "of the table.  The bumpers are indicated by stars (*)."
1275 PRINT
1280 PRINT "Flippers are shown as exclamation points (! or !!).  The ball may go out of"
1285 PRINT "play through one of the four holes in the board (0), in which case you will get"
1290 PRINT "a bonus but lose the ball."
1295 PRINT
1300 PRINT "Gates are shown by the numbers 1-9, and knock-down tabs are shown as the"
1310 PRINT "letters A-J.  You get a bonus for these at the end of a ball, and if you knock"
1320 PRINT "all of them down you get a special bonus..."
1325 PRINT
1330 PRINT "Every once in a while, I will show you a picture of the table as it hits"
1340 PRINT "something.  The ball is shown as the #."
1345 COLOR 13: PRINT: PRINT "(Press any key.)"
1346 Z$ = INKEY$: IF Z$ = "" THEN 1346
1350 COLOR 15: PRINT: RETURN
2010 IF MID$(P$(L(1)), L(2), 1) = "0" THEN 2070
2020 IF INT(RND(1) + .5) <> 1 THEN 2022
2021 IF MID$(P$(L(1)), L(2), 1) = "/" OR MID$(P$(L(1)), L(2), 1) = "\" THEN 2160
2022 S8 = INT(RND(1) * 6 + 1)
2023 FOR S7 = 1 TO S8: PRINT CHR$(7);: NEXT S7
2025 IF MID$(P$(L(1)), L(2), 1) <= "J" AND MID$(P$(L(1)), L(2), 1) >= "A" THEN 2190
2040 GOSUB 3010
2050 RETURN
2070 PRINT "Too bad... you have gone straight out a chute hole ('0' on the table)."
2075 PRINT "To console you, you get an extra";
2090 Q = INT(RND(1) * 141)
2100 P = P + Q
2110 PRINT Q; "points, to bring your total to"; STR$(P); "."
2115 PRINT "You now have"; B - 1; "balls left."
2120 B = B - 1
2130 A7 = 7
2140 GOSUB 5010
2150 RETURN
2160 L(1) = L(1) + (1 + INT(RND(1) * 4)) - (1 + INT(RND(1) * 4))
2170 L(2) = 2 + INT(RND(1) * 14)
2180 RETURN
2190 PRINT
2200 FOR Q = 1 TO 10
2203 IF R$(Q) = MID$(P$(L(1)), L(2), 1) THEN 2275
2204 NEXT Q
2205 Z3 = Z3 + 1: R$(Z3) = MID$(P$(L(1)), L(2), 1)
2210 PRINT: PRINT "Tab "; R$(Z3); " down..."
2255 IF Z3 = 10 THEN GOSUB 5010
2260 RETURN
2275 RETURN
3010 IF MID$(P$(L(1)), L(2), 1) = CHR$(8) THEN RETURN
3015 IF MID$(P$(L(1)), L(2), 1) = "]" THEN RETURN
3017 IF MID$(P$(L(1)), L(2), 1) = "[" THEN RETURN
3018 IF MID$(P$(L(1)), L(2), 1) = "^" THEN 3110
3019 A1 = 0
3020 IF MID$(P$(L(1)), L(2), 1) = "=" THEN 3410
3030 C = C - 1
3040 IF C = 0 THEN 3110
3050 IF MID$(P$(L(1)), L(2), 1) = "!" OR MID$(P$(L(1)), L(2), 1) = "\" THEN 3110
3060 IF MID$(P$(L(1)), L(2), 1) = "/" OR MID$(P$(L(1)), L(2), 1) = "-" THEN 3110
3070 IF INT(1 + RND(1) * 25) = 4 THEN GOSUB 6010
3080 IF MID$(P$(L(1)), L(2), 1) = "$" THEN 3230
3090 IF MID$(P$(L(1)), L(2), 1) = "*" THEN 3280
3100 GOTO 3320
3110 A1 = 4
3120 GOTO 3390
3130 IF L(2) < 6 THEN GOTO 3180
3140 IF L(2) < 11 THEN 3200
3150 D = 2: IF INT(1 + RND(1) * 2) = 1 THEN D = D + (1 + INT(RND(1) * 3)) - 2: IF D > 3 THEN D = D - 3
3170 RETURN
3180 D = 1: IF INT(1 + RND(1) * 2) = 1 THEN D = INT(RND(1) * 3) + D
3190 RETURN
3200 D = 2: IF INT(1 + RND(1) * 2) = 1 THEN D = D + INT(RND(1) * 3): IF D > 3 THEN D = D - 3
3210 RETURN
3230 Q = 45 + INT(RND(1) * 146)
3240 PRINT "You have hit the jackpot!  You have just won"; Q; "points!"
3250 P = P + Q
3260 PRINT "You now have"; P; "points!"
3270 GOTO 3360
3280 Q = INT(RND(1) * 64) + 1: P = P + Q
3290 L1$ = STR$(L(1)): L1$ = RIGHT$(L1$, LEN(L1$) - 1)
3291 L2$ = STR$(L(2)): L2$ = RIGHT$(L2$, LEN(L2$) - 1)
3295 PRINT "You receive"; Q; "points from the bumper at "; L1$; ", "; L2$; "."
3300 COLOR 12: PRINT "Score:"; P: COLOR 15
3310 GOTO 3360
3320 Q = 15 * (1 + INT(RND(1) * 6)): P = P + Q
3330 PRINT "You get"; Q; "points from gate "; MID$(P$(L(1)), L(2), 1); "."
3340 COLOR 12: PRINT "Score:"; P: COLOR 15
3360 L(1) = (L(1) - INT(1 + RND(1) * 3)) - INT(1 + RND(1) * 2)
3370 L(2) = L(2) - 3 + INT(RND(1) * 5) + 1
3380 RETURN
3390 GOSUB 7850
3400 GOTO 3130
3410 L(1) = L(1) - (1 + INT(RND(1) * 5))
3420 L(2) = L(2) - 2 + (1 + INT(RND(1) * 4))
3430 RETURN
4010 COLOR 10: PRINT "Ball approaching flippers.  Enter the two flippers you wish to flip (1-3)";
4020 INPUT V, W: COLOR 15
4030 IF V = D OR W = D THEN 4110
4040 PRINT "No, you have chosen to protect the wrong flippers.  You now have"; B - 1; "balls left."
4070 B = B - 1
4080 A0 = 0
4090 GOSUB 5010
4100 RETURN
4110 A0 = 1
4120 C = INT(1 + RND(1) * 5)
4140 RETURN
5010 IF Z3 = 10 THEN 5090
5020 IF Z3 = 0 THEN RETURN
5030 PRINT "Your ball knocked down"; Z3; "tags!"
5040 PRINT "For this stellar performance, you are awarded ";
5050 PRINT "***"; 10 * Z3; "*** points!"
5060 P = P + 10 * Z3
5080 GOTO 5120
5090 P = P + 250
5100 PRINT "*** You knocked down all 10 tags!!! ***"
5110 PRINT "You are awarded 250 points and an extra ball!"
5114 B = B + 1
5120 COLOR 12: PRINT "Score:"; P: COLOR 15: RETURN
6010 PRINT
6020 PRINT: PRINT "     P I C T U R E "
6040 COLOR 11: FOR Q = 1 TO L(1) - 1: PRINT "    "; P$(Q): NEXT Q
6044 PRINT "    "; MID$(P$(L(1)), 1, L(2) - 1); "#"; MID$(P$(L(1)), L(2) + 1, 16 - L(2))
6050 FOR Q = L(1) + 1 TO 20: PRINT "    "; P$(Q): NEXT Q: COLOR 15
6060 PRINT: PRINT "The ball was at the '#'."
6100 RETURN
7850 L(2) = ABS(L(2) - 2 + INT(1 + RND(1) * 4))
7860 IF L(2) <= 15 THEN RETURN
7870 L(2) = 1 + INT(RND(1) * 15): RETURN
9500 P$(1) = "  "
9501 FOR Q = 1 TO 12: P$(1) = P$(1) + "[" + CHR$(8) + "]": NEXT Q
9502 P$(1) = P$(1) + "  "
9510 P$(2) = " O            O "
9520 P$(3) = "O   *  *  *    O"
9530 P$(4) = "O  A  B  C  D  O"
9540 P$(5) = "O    *   *     O"
9550 P$(6) = "O * *  $  *  * O"
9560 P$(7) = "O    *   *     O"
9570 P$(8) = "O* E  F  G  H *O"
9580 P$(9) = "O   *  *  *    O"
9590 P$(10) = "O===        ===O"
9600 P$(11) = "O  1 2 3 4 5   O"
9610 P$(12) = "O * 6 7 8 9  * O"
9620 P$(13) = "O===   0    ===O"
9630 P$(14) = "O  0   0    0  O"
9640 P$(15) = "!!!          !!!"
9650 P$(16) = "O  \        /  O"
9660 P$(17) = "O   \  I J /   O"
9670 P$(18) = "O    \    /    O"
9680 P$(19) = "O     \  /     O"
9690 P$(20) = "\------!!----^-/"
9700 RETURN
9999 PRINT "Come play again sometime!": END

