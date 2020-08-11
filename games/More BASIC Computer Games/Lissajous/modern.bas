5 CLS: COLOR 12
10 PRINT TAB(35); "Lissajous"
20 PRINT TAB(31); "Creative Computing"
30 PRINT TAB(29); "Morristown, New Jersey"
40 PRINT: PRINT: PRINT
50 DIM Y(20)
100 REM STEP-WISE LISSAJOUS
110 P = 3.1415926
120 COLOR 10: PRINT "Relative frequency for X";: INPUT F1: IF INT(F1) < F1 THEN 120
122 IF F1 < 1 THEN 120
125 F = F1: F1 = 2 * P * F1
130 COLOR 10: PRINT "Relative frequency for Y";: INPUT F2: IF INT(F2) < F2 THEN 130
132 IF F2 < 1 THEN 130
135 COLOR 10: PRINT "Y phase as a multiple of pi";: INPUT P2: P2 = P * P2
136 COLOR 15
140 F2 = 2 * P * F2
150 FOR X1 = -18 TO 18
160 X = X1 / 18: GOSUB 1970: T1 = X: T2 = P - X
162 FOR I = 0 TO F - 1
165 T3 = (T1 + 2 * I * P) / F1: T4 = (T2 + 2 * I * P) / F1
170 Y1 = 30 * SIN(F2 * T3 + P2): Y2 = 30 * SIN(F2 * T4 + P2)
180 Y1 = SGN(Y1) * INT(ABS(Y1) + .5): Y2 = SGN(Y2) * INT(ABS(Y2) + .5)
190 Y(2 * I) = Y1: Y(2 * I + 1) = Y2
200 NEXT I
210 FOR J = 1 TO 2 * F - 1: I = J - 1: T = Y(J)
220 IF T >= Y(I) THEN 240
230 Y(I + 1) = Y(I): I = I - 1: IF I >= 0 THEN 220
240 Y(I + 1) = T: NEXT J
250 FOR I = 0 TO 2 * F - 1
260 IF I = 0 THEN 280
270 IF Y(I) = Y(I - 1) THEN 290
280 PRINT TAB(36 + Y(I)); CHR$(15);
290 NEXT I
300 PRINT
305 A$ = INKEY$: IF A$ = "" THEN 305
310 NEXT X1
1890 INPUT Z$: STOP
1960 REM:-----------------------------------
1970 IF ABS(X) < .1 THEN 2020
1980 X = X / (SQR(1 + X) + SQR(1 - X))
1990 GOSUB 1970
2000 X = 2 * X
2010 RETURN
2020 X = X + X ^ 3 / 6 + .075 * X ^ 5 + X ^ 7 / 22.4
2030 RETURN
2040 END

