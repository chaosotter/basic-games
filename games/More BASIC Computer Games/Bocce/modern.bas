5 CLS: COLOR 12
10 PRINT TAB(37); "Bocce"
20 PRINT TAB(31); "Creative Computing"
30 PRINT TAB(29); "Morristown, New Jersey"
40 PRINT: PRINT: PRINT: COLOR 15
50 RANDOMIZE TIMER
1000 Q = 5
1010 PRINT "This simulates the game of lawn bowls."
1020 COLOR 10: INPUT "Do you need instructions (Y/N)"; z$: COLOR 15
1030 DIM B(9), B1(9), D(9), V(9), X(9), Y(9)
1040 PRINT: IF LEFT$(z$, 1) = "Y" OR LEFT$(z$, 1) = "y" THEN GOSUB 1770
1045 P1 = 3.14159
1050 S1 = 0: S2 = 0: A = -49.3
1070 X(1) = INT(2000 + 700 * RND(1)): Y(1) = INT(200 - 400 * RND(1))
1080 PRINT "The jack is located at"; X(1); Y(1)
1090 FOR P = 2 TO Q
1100 J = P: GOSUB 1570
1110 NEXT P
1120 FOR J = 2 TO Q
1130 D1 = D1 + D(J)
1140 NEXT J
1150 PRINT: PRINT "The total distance of all balls from the jack is"; D1; "cm."
1160 IF D1 < Q ^ 2 THEN PRINT "Magnificent bowling!  What an eye!!"
1165 IF D1 < Q ^ 2 THEN 1230
1170 IF D1 < 2 * Q ^ 2 THEN PRINT "Excellent but could be better.": GOTO 1230
1180 IF D1 < 3 * Q ^ 2 THEN PRINT "Good but needs some improvement.": GOTO 1230
1190 IF D1 < 6 * Q ^ 2 THEN PRINT "Fair - you need more practice.": GOTO 1230
1200 IF D1 < 10 * Q ^ 2 THEN PRINT "Poor - try to be more consistent.": GOTO 1230
1210 IF D1 < 20 * Q ^ 2 THEN PRINT "Your game needs lots of work.": GOTO 1230
1220 PRINT "Don't play this game for money!!"
1230 FOR J = 1 TO Q
1232 B(J) = 0: B1(J) = 0: D(J) = 0
1240 V(J) = 0: X(J) = 0: Y(J) = 0
1250 NEXT J
1260 PRINT: COLOR 10: INPUT "Care to try again (Y/N)"; Y$: COLOR 15
1270 PRINT: IF LEFT$(Y$, 1) = "Y" OR LEFT$(Y$, 1) = "y" THEN 1050
1280 GOTO 1890
1290 K1 = -20
1295 IF J = 1 THEN K1 = 0
1300 A1 = A * COS(B(J)) + K1 * COS((P1 / 2) + B(J))
1305 A2 = A * SIN(B(J)) + K1 * SIN((P1 / 2) + B(J))
1310 S3 = V(J) * COS(B(J)) * .05 + 1.25E-03 * A1
1315 S4 = V(J) * SIN(B(J)) * .05 + 1.25E-03 * A2
1320 B(J) = ATN((V(J) * SIN(B(J)) + A2 * .05) / (V(J) * COS(B(J)) + A1 * .05))
1330 IF B1(J) < 0 THEN S4 = -S4
1340 S5 = S1 + S3: S6 = S2 + S4
1350 IF J = 1 THEN 1370
1360 IF ABS(S5 - X(1)) < 7 AND ABS(S6 - Y(1)) < 7 THEN K = 1: GOSUB 1550
1370 FOR K = 2 TO Q
1380 IF K = J OR X(K) = 0 THEN 1400
1390 IF ABS(S5 - X(K)) < 10 AND ABS(S6 - Y(K)) < 10 THEN GOSUB 1500
1400 NEXT K
1410 IF V(J) < ABS(A * .05) THEN 1440
1420 V(J) = V(J) + (A * .05): S1 = S5: S2 = S6: GOTO 1290
1430 GOTO 1290
1440 X(J) = X(J) + S5: Y(J) = Y(J) + S6: S1 = 0: S2 = 0: S5 = 0: S6 = 0
1450 FOR L = 1 TO Q
1460 IF V(L) > ABS(A * .05) THEN J = L: GOTO 1290
1470 B(L) = 0: V(L) = 0
1480 NEXT L
1490 GOTO 1630
1500 B(K) = ATN((Y(K) - S2) / (X(K) - S1)): PRINT CHR$(7);
1510 IF J = 1 THEN V(J) = V(J) / 5
1520 V(J) = ABS(V(J) * SIN(B(J) - B(K))): V(K) = ABS(V(J) * COS(B(J) - B(K)))
1530 B(J) = ((P1 / 2) + B(K)): S5 = S1: S6 = S2
1540 IF K = 1 THEN V(K) = 5 * V(K)
1550 IF J = 1 THEN V(J) = 5 * V(J)
1560 RETURN
1570 PRINT: COLOR 13: PRINT "Ball"; (J - 1): COLOR 15
1580 COLOR 10: INPUT "Velocity"; V(J): V(J) = ABS(V(J)): COLOR 15
1590 IF V(J) > 1000 THEN PRINT "Velocity too high.": GOTO 1580
1600 COLOR 10: INPUT "Angle"; B1(J): COLOR 15
1610 IF ABS(B1(J)) > 89 THEN PRINT "Angle too big.": GOTO 1290
1620 PRINT: B(J) = ABS(B1(J) * P1 / 180): GOTO 1290
1630 PRINT "Jack at coordinates"; X(1); Y(1)
1640 FOR M = 2 TO P
1650 D = (SQR((Y(1) - Y(M)) ^ 2 + (X(1) - X(M)) ^ 2)) - 7
1655 D(M) = D
1660 IF D < 0 THEN D(M) = 0
1670 PRINT "Ball"; (M - 1); "at coordinates"; X(M); Y(M); "  It is"; D(M);
1675 PRINT "from the jack."
1680 NEXT M
1690 PRINT
1700 IF D(P) < 10 THEN PRINT TAB(15); "Excellent shot! ";: GOTO 1740
1710 IF D(P) < 20 THEN PRINT TAB(15); "Good shooting! ";: GOTO 1740
1720 IF D(P) < 30 THEN PRINT TAB(15); "Nice try! ";: GOTO 1740
1730 IF D(P) > 500 THEN PRINT TAB(5); "Yechh! Over"; INT(D(P) / 30.48);
1735 IF D(P) > 500 THEN PRINT "feet away!"
1740 IF X(P) > X(1) THEN PRINT "Long and ";
1745 IF X(P) < X(1) THEN PRINT "Short and ";
1750 IF Y(P) > Y(1) THEN PRINT "to the left."
1755 IF Y(P) < Y(1) THEN PRINT "to the right."
1760 PRINT
1765 RETURN
1770 COLOR 14
1775 PRINT "In this game you roll"; Q - 1; "balls successively at the target ball (called a jack)."
1780 PRINT "The object is to get the balls as close to the jack as possible.  The balls"
1790 PRINT "are 10 cm in diameter and are weighted so that they roll in a curve.  You will"
1800 PRINT "have to roll them at an angle to the line from you at coordinates 0,0 to the"
1810 PRINT "jack at coordinates X,Y.  A positive angle will make the ball curve clockwise."
1820 PRINT "A negative angle will make it curve anti-clockwise.  The jack is 4 cm wide and"
1830 PRINT "will roll straight if you hit it.  Balls hit by your thrown ball may curve in"
1840 PRINT "either direction."
1870 PRINT: PRINT "Hint.  Try an initial velocity of 500 and an angle of 10."
1880 PRINT: PRINT: COLOR 15: RETURN
1890 END

