1 CLS: COLOR 12: PRINT TAB(36); "Guess-It"
2 PRINT TAB(31); "Creative Computing"
3 PRINT TAB(29); "Morristown, New Jersey"
4 PRINT
5 PRINT
10 PRINT: COLOR 15
15 RANDOMIZE TIMER
20 G1 = 0: C1 = 0
50 A1 = RND(1)
70 H = 5
80 DIM P(10, 10)
90 FOR K = 1 TO H
100 P(K, 0) = 1
110 P(0, K) = 1 / (K + 1)
120 NEXT K
130 FOR I = 1 TO H
140 FOR J = 1 TO H
150 P(I, J) = (1 + J * P(J, I - 1) * (1 - P(J - 1, I))) / (1 + (J + 2) * P(J, I - 1))
160 P(J, I) = (1 + I * P(I, J - 1) * (1 - P(I - 1, J))) / (1 + (I + 1) * P(I, J - 1))
170 NEXT J
180 NEXT I
190 Z = 11
200 DIM U(Z), N(Z)
210 COLOR 10: PRINT "Do you want instructions (Y/N)";
220 INPUT A$: COLOR 15
230 IF LEFT$(A$, 1) = "Y" OR LEFT$(A$, 1) = "y" THEN 1730
240 IF LEFT$(A$, 1) <> "N" AND LEFT$(A$, 1) <> "n" THEN 210
250 PRINT
260 G1 = G1 + 1
270 FOR J = 2 TO Z
280 U(J) = 0
290 NEXT J
300 E = 0: T = 0: C = 0: P = 0: L = 0
310 GOSUB 1630
320 REM N(1) TO N(H)= COMP HAND N(H+1)=TO N(Z)= OTHER HAND
330 D = N(Z)
340 PRINT "Your hand is: ";
360 FOR I = H + 1 TO Z - 1
370 PRINT N(I);
380 NEXT I
390 PRINT
400 PRINT
410 COLOR 10: PRINT "Do you want to go first (Y/N)";
420 INPUT A$
430 IF LEFT$(A$, 1) = "Y" OR LEFT$(A$, 1) = "y" THEN 470
440 IF LEFT$(A$, 1) <> "N" AND LEFT$(A$, 1) <> "n" THEN 390
450 K = 1
460 GOTO 480
470 K = 0
480 K = K + 1
490 M = H - C
500 N = H - P
510 PRINT
520 IF K = (INT(K / 2)) * 2 THEN 860
530 REM
540 COLOR 10: PRINT "Do you want to guess the down number";
550 INPUT A$: COLOR 15
560 IF LEFT$(A$, 1) = "Y" OR LEFT$(A$, 1) = "y" THEN 1250
570 IF LEFT$(A$, 1) <> "N" AND LEFT$(A$, 1) <> "n" THEN 530
580 REM
590 COLOR 10: PRINT "What number do you want to ask about";
600 INPUT E: COLOR 15
610 FOR I = 1 TO Z
620 IF E = U(I) THEN 650
630 NEXT I
640 GOTO 670
650 PRINT E; "was asked before -- try again."
660 GOTO 580
670 FOR J = 1 TO H
680 IF N(J) = E THEN 800
690 NEXT J
700 PRINT
710 PRINT E; "is not in my hand."
720 IF M = 0 THEN 1460
730 IF N = 0 THEN 1440
740 Y = ((M + 1) * P(M, N - 1) - M * P(M - 1, N)) / (1 + (M + 1) * P(M, N - 1))
750 IF RND(1) < Y THEN 1380
760 GOSUB 1220
770 IF (H - P) = 1 THEN 1460
780 P = P + 1
790 GOTO 480
800 PRINT
810 PRINT E; "is in my hand."
820 C = C + 1
830 GOSUB 1220
840 GOTO 480
850 REM COMP SEQ STARTS
860 IF T <> 0 THEN 1410
870 IF H - C <> 0 THEN 890
880 GOTO 1460
890 IF H - P <> 0 THEN 910
900 GOTO 1460
910 IF (2 * H - 2) - (P + C) <> 0 THEN 930
920 GOTO 1460
930 REM RND DECISION TO BLUFF OR NOT ON ASKING FOR CARD
940 IF RND(1) > 1 / (1 + (N + 1) * P(N, M - 1)) THEN 1060
950 PRINT
960 A = INT(H * RND(1)) + 1
970 FOR J = 1 TO Z
980 IF N(A) = U(J) THEN 960
990 NEXT J
1000 COLOR 10: PRINT "Do you have"; STR$(N(A));
1010 C = C + 1
1020 INPUT A$: COLOR 15
1030 E = N(A)
1040 GOSUB 1220
1050 GOTO 480
1060 GOSUB 1170
1070 REM
1080 COLOR 10: PRINT "Do you have"; STR$(N(A));
1090 INPUT A$: COLOR 15
1100 IF LEFT$(A$, 1) = "Y" OR LEFT$(A$, 1) = "y" THEN 1130
1110 T = 1
1120 GOTO 480
1130 E = N(A)
1140 P = P + 1
1150 GOSUB 1220
1160 GOTO 480
1170 A = INT((H + 1) * RND(1)) + (H + 1)
1180 FOR J = 1 TO Z
1190 IF N(A) = U(J) THEN GOTO 1170
1200 NEXT J
1210 RETURN
1220 L = L + 1
1230 U(L) = E
1240 RETURN
1250 PRINT
1260 COLOR 10: PRINT "What do you think the down number is";
1270 INPUT B: COLOR 15
1280 PRINT
1290 PRINT "The down number is"; STR$(N(Z)); "."
1300 IF B = N(Z) THEN 1360
1310 PRINT
1320 PRINT "Your guess of"; B; "is not correct -- you lose."
1330 C1 = C1 + 1
1340 GOTO 1520
1350 PRINT
1360 PRINT "Your guess of"; B; "is correct -- you win!"
1370 GOTO 1520
1380 PRINT "I think you were not bluffing when you asked about"; E; "."
1390 G = E
1400 GOTO 1480
1410 PRINT N(A); "was not a bluff."
1420 G = N(A)
1430 GOTO 1480
1440 G = N(Z)
1450 GOTO 1480
1460 GOSUB 1170
1470 G = N(A)
1480 PRINT "I guess the down number is"; STR$(G); "."
1490 IF G = N(Z) THEN 1590
1500 PRINT
1510 PRINT "The down number is"; STR$(N(Z)); ".  I was wrong... you win!"
1520 COLOR 10: PRINT "Do you want to play again (Y/N)";
1530 INPUT A$: COLOR 15
1540 IF LEFT$(A$, 1) = "Y" OR LEFT$(A$, 1) = "y" THEN 250
1550 IF LEFT$(A$, 1) <> "N" AND LEFT$(A$, 1) <> "n" THEN 1520
1560 PRINT
1570 PRINT "You played"; G1; "games.  You lost"; C1; "and you won"; STR$(G1 - C1); "."
1580 END
1590 PRINT
1600 PRINT "The down number is"; STR$(N(Z)); ".  I was correct... you lose."
1610 C1 = C1 + 1
1620 GOTO 1520
1630 FOR I = 1 TO Z
1640 N(I) = I
1650 NEXT I
1660 FOR I = 1 TO Z
1670 R = INT(RND(1) * ((Z + 1) - I)) + I
1680 W = N(R)
1690 N(R) = N(I)
1700 N(I) = W
1710 NEXT I
1720 RETURN
1730 COLOR 14: PRINT
1740 PRINT "The object of this game is to guess an unknown number called the 'down number'."
1750 PRINT "The game is played with the numbers 1 to"; STR$(Z); ".  You will be given a hand of"; H
1770 PRINT "randomly selected numbers between 1 and"; STR$(Z); ".  The computer will have a similar"
1780 PRINT "hand.  The down number will always be the number not in either player's hands."
1790 PRINT
1800 PRINT "You alterate moves with the computer.  On any move there are two options: guess"
1810 PRINT "the down number or ask about some number."
1830 PRINT
1840 PRINT "When a player guesses the down number, the game stops.  If the guess is correct,"
1850 PRINT "that player wins.  If the guess is not correct, that player loses."
1870 PRINT
1880 PRINT "All questions about numbers in the other player's hand must be answered truth-"
1890 PRINT "fully.  A player may 'bluff' by asking about a number in his own hand.  The"
1900 PRINT "computer will sometimes do this."
1920 PRINT
1930 PRINT "A number may be asked about only once.  Good luck!"
1950 PRINT: COLOR 15
1960 GOTO 250
1970 END

