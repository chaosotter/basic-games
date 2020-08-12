1 CLS: COLOR 12: PRINT TAB(37); "Octrix"
2 PRINT TAB(31); "Creative Computing"
3 PRINT TAB(29); "Morristown, New Jersey"
5 PRINT
6 PRINT
7 PRINT: COLOR 15
10 DIM A(32), P(4, 9), C$(255), Q(4, 11), T$(72)
11 DIM N$(72), Y(72)
40 RESTORE
50 FOR X = 0 TO 7
60 READ Y$(X)
70 NEXT X
80 FOR X = 0 TO 3
90 READ X$(X)
100 NEXT X
110 DATA "Ace","Two","Three","Four","Five","Six","Seven","Eight"
120 DATA "Clubs","Diamonds","Hearts","Spades"
130 FOR X = 0 TO 9
140 READ T$(X)
150 DATA "A","2","3","4","5","6","7","8","low","high"
160 NEXT X
170 COLOR 10: PRINT "Teach the game (Y/N)";
180 INPUT Z$: COLOR 15
190 IF LEFT$(Z$, 1) <> "Y" AND LEFT$(Z$, 1) <> "y" THEN 380
195 COLOR 14: PRINT
200 PRINT "This is a game called Octrix.  Each player is dealt 8 cards ranging from Ace"
210 PRINT "through Eight.  The cards are ranked according to Bridge suits, with the Ace of"
220 PRINT "Clubs the lowest and the Eight of Spades highest.  The object is to win as many"
230 PRINT "of the eight tricks as possible.  Each trick played determines the play of the"
240 PRINT "next trick.  If the high and low cards played match color, the next trick will"
250 PRINT "be high, and if they do not match, it will be low.  It is important to set"
260 PRINT "strategy to win consecutive tricks, in that scoring is 1 point per trick, 4 for"
270 PRINT "two in a row, 9 for 3, up to 64 for all eight."
305 PRINT
310 PRINT "Respond to the input prompt with the card you want to play in a two-character"
320 PRINT "format with the value (A-8) as the first character, and suit (C,D,H,S) as the"
330 PRINT "second character.  To see the remaining cards, enter a 'P' in response to the"
340 PRINT "'what card' query."
360 PRINT
370 PRINT "That's it, good luck!"
375 PRINT: COLOR 15
380 REM
390 FOR X = 1 TO 15
400 READ Z
410 M$ = M$ + CHR$(Z)
420 NEXT X
430 DATA 35,35,35,35,13,72,72,72,72,13,73,73,73,73,13
440 Z9 = 88
450 COLOR 10: PRINT "How many points (0 entry gives standard of 88)";
460 INPUT Z: COLOR 15
470 IF Z = 0 THEN 490
480 Z9 = Z
490 FOR X = 0 TO 31
500 A(X) = X
510 NEXT X
520 COLOR 10: PRINT "How many players (1-4)";
530 INPUT N: COLOR 15
540 N = INT(N)
550 IF N > 4 THEN 570
560 IF N > 0 THEN 590
570 PRINT "Only one to four players allowed, re-enter."
580 GOTO 520
590 FOR X = 0 TO N - 1
600 Q(X, 0) = 0
610 COLOR 10: PRINT "Enter player"; STR$(X + 1); "'s name";
620 INPUT N$(X): COLOR 15
630 Y = LEN(N$(X))
640 FOR Z = 1 TO Y
650 T$ = MID$(N$(X), 1, Z - 1)
660 IF T$ = " " THEN 680
670 NEXT Z
680 IF Z > 1 THEN 710
690 PRINT "Don't start a name with a space."
700 GOTO 610
710 S$(X) = MID$(N$(X), 1, Z - 1)
720 NEXT X
730 FOR J = 0 TO 127
740 C$(J) = " "
750 NEXT J
760 IF N = 4 THEN 850
770 IF N = 1 THEN 810
780 COLOR 10: PRINT "Should I play too (Y/N)";
790 INPUT Z$: COLOR 15
800 IF LEFT$(Z$, 1) <> "Y" AND LEFT$(Z$, 1) <> "y" THEN 850
810 S$(N) = "Computer"
820 N$(N) = "I"
830 Q(N, 0) = 0
840 N = N + 1
850 FOR I = 0 TO 31
860 X = A(I)
870 Y = INT(RND(1) * (32 - I) + I)
880 A(I) = A(Y)
890 A(Y) = X
900 NEXT I
910 FOR Y = 0 TO 7
920 FOR X = 0 TO N - 1
930 P(X, Y) = A(Y * 4 + X)
940 C$(X * 32 + P(X, Y)) = "*"
950 NEXT X
960 NEXT Y
970 H = 1
980 GOSUB 1680
990 FOR R = 1 TO 7
1000 R$ = STR$(R): R$ = RIGHT$(R$, LEN(R$) - 1)
1005 COLOR 13: PRINT: PRINT "Trick #"; R$; " ("; T$(8 + H); " card wins)": COLOR 15
1010 FOR X = 0 TO N - 1
1020 IF S$(X) = "Computer" THEN 2090
1030 Z = Z * Z
1040 COLOR 10: PRINT "What card, "; S$(X);
1060 INPUT E$: COLOR 15
1070 IF E$ <> "P" AND E$ <> "p" THEN 1100
1080 GOSUB 1680
1090 GOTO 1040
1100 Y = LEN(E$)
1110 IF Y = 2 THEN 1140
1120 PRINT "Bad input, re-enter."
1130 GOTO 1040
1140 Y$ = MID$(E$, 1, 1)
1150 Z$ = MID$(E$, 2, 1)
1160 IF VAL(Y$) > 0 THEN 1190
1170 IF Y$ <> "A" AND Y$ <> "a" THEN 1120
1180 Y$ = "1"
1190 Y = VAL(Y$)
1200 IF Y = 0 THEN 1120
1210 IF Y > 8 THEN 1120
1220 Z = 0
1230 Q(X, 10) = 0
1240 IF Z$ = "C" OR Z$ = "c" THEN 1320
1250 Z = 3
1260 IF Z$ = "S" OR Z$ = "s" THEN 1320
1270 Q(X, 10) = 1
1280 Z = 1
1290 IF Z$ = "D" OR Z$ = "d" THEN 1320
1300 Z = 2
1310 IF Z$ <> "H" AND Z$ <> "h" THEN 1120
1320 Y = (Y - 1) * 4 + Z
1330 IF C$(X * 32 + Y) <> "*" THEN 1120
1340 Q(X, 9) = Y
1350 NEXT X
1360 GOSUB 1880
1370 NEXT R
1380 FOR X = 0 TO N - 1
1390 FOR Z = 0 TO 31
1400 IF C$(32 * X + Z) = "*" THEN 1430
1410 NEXT Z
1420 PRINT "Bad scan."
1430 C$(32 * X + Z) = " "
1440 Q(X, 9) = Z
1450 NEXT X
1460 R = 8
1470 GOSUB 1880
1480 H1 = 0
1490 PRINT "That hand, ";
1500 FOR X = 0 TO N - 1
1510 Q(X, 9) = 0
1520 Y = 0
1530 Z = 0
1540 FOR R = 1 TO 8
1550 Z = Z + Q(X, R)
1560 Q(X, R) = 0
1570 IF Q(X, R + 1) <> 0 THEN 1600
1580 Y = Y + Z * Z
1590 Z = 0
1600 NEXT R
1610 Q(X, 0) = Q(X, 0) + Y
1620 PRINT N$(X); " scored"; Y; "points for a total of"; STR$(Q(X, 0)); "."
1630 IF Q(H1, 0) > Q(X, 0) THEN 1650
1640 H1 = X
1650 NEXT X
1660 IF Q(H1, 0) >= Z9 THEN 2450
1670 GOTO 850
1680 COLOR 11: PRINT: FOR S = 0 TO N - 1
1681 S8 = 0
1682 S9 = 22 - (LEN(S$(S)) + 7)
1684 IF INT(S9 / 2) * 2 <> S9 THEN S8 = 1
1686 S9 = INT(S9 / 2)
1690 PRINT SPC(S9); S$(S); "'s hand"; SPC(S9 + S8);
1700 NEXT S
1710 PRINT
1720 FOR S = 0 TO N - 1
1730 PRINT "    CLB DIA HRT SPD  ";
1740 NEXT S
1750 PRINT
1760 FOR S = 0 TO 7
1770 FOR Y = 0 TO N - 1
1780 Z = Y * 32 + S * 4
1790 PRINT CHR$(186); T$(S); " "; CHR$(179); " "; C$(Z); " "; CHR$(179); " "; C$(Z + 1); " "; CHR$(179); " "; C$(Z + 2);
1791 PRINT " "; CHR$(179); " "; C$(Z + 3); " "; CHR$(186); " ";
1800 NEXT Y
1810 PRINT T$(S)
1820 NEXT S
1830 COLOR 15
1840 RETURN
1880 L1 = 0: H1 = 0
1890 FOR X = 0 TO N - 1
1900 Y = INT(Q(X, 9) / 4)
1910 Z = Q(X, 9) - Y * 4
1920 PRINT N$(X); " played the "; Y$(Y); " of "; X$(Z); "."
1930 C$(X * 32 + Q(X, 9)) = " "
1940 IF Q(X, 9) > Q(L1, 9) THEN 1960
1950 L1 = X
1960 IF Q(X, 9) < Q(H1, 9) THEN 1980
1970 H1 = X
1980 NEXT X
1990 IF H = 1 THEN 2030
2000 Q(L1, R) = 1
2010 R$ = STR$(R): R$ = RIGHT$(R$, LEN(R$) - 1)
2015 PRINT N$(L1); " won trick #"; R$; "."
2020 GOTO 2050
2030 Q(H1, R) = 1
2040 R$ = STR$(R): R$ = RIGHT$(R$, LEN(R$) - 1)
2045 PRINT N$(H1); " won trick #"; R$; "."
2050 H = 0
2060 IF Q(L1, 10) <> Q(H1, 10) THEN 2080
2070 H = 1
2080 RETURN
2090 L1 = 0: L2 = 0: H1 = 0: H2 = 0
2100 FOR S = 0 TO N - 2
2110 FOR S1 = 0 TO 7
2120 IF P(S, S1) > P(L1, L2) THEN 2160
2130 IF C$(S * 43 + P(S, S1)) = " " THEN 2160
2140 L1 = S
2150 L2 = S1
2160 IF P(S, S1) < P(H1, H2) THEN 2200
2170 IF C$(S * 32 + P(S, S1)) = " " THEN 2200
2180 H1 = S
2190 H2 = S1
2200 NEXT S1
2210 NEXT S
2220 FOR S = R - 1 TO 7
2230 IF H = 1 THEN 2280
2240 IF P(N - 1, S) < P(L1, L2) THEN 2260
2250 GOTO 2290
2260 IF RND(1) > .3 THEN 2380
2270 GOTO 2300
2280 IF P(N - 1, S) > P(H1, H2) THEN 2260
2290 NEXT S
2300 H1 = 32
2310 Y = INT(RND(1) * 16 + H * 16)
2320 FOR S1 = R - 1 TO 7
2330 L1 = ABS(P(N - 1, S1) - Y)
2340 IF H1 < L1 THEN 2370
2350 H1 = L1
2360 S = S1
2370 NEXT S1
2380 Q(X, 9) = P(N - 1, S)
2390 P(N - 1, S) = P(N - 1, R - 1)
2400 Z = Q(X, 9) - (INT(Q(X, 9) / 4) * 4)
2410 IF Z < 2 THEN 2430
2420 Z = ABS(Z - 3)
2430 Q(X, 10) = Z
2440 GOTO 1360
2450 IF H1 > N - 2 THEN 2510
2460 FOR X = H1 + 1 TO N - 1
2470 IF Q(H1, 0) > Q(X, 0) THEN 2500
2480 PRINT "Game tied after regulation, entering sudden death."
2490 GOTO 850
2500 NEXT X
2510 PRINT N$(H1); " won the game!  Congratulations, "; S$(H1); "!"
2520 END

