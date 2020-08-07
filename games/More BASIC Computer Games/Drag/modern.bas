1 CLS: COLOR 12
3 PRINT TAB(38); "Drag"
5 PRINT TAB(31); "Creative Computing"
7 PRINT TAB(29); "Morristown, New Jersey"
8 RANDOMIZE TIMER
10 DIM P(2), E(2), W(2), S(2), X(2), M(2), C(2), B(2), Y(2)
20 DIM Q(2)
30 PRINT: PRINT: PRINT: COLOR 15
35 PRINT "Welcome to Drag Strip."
40 COLOR 10: PRINT "Would you like the instructions (Y/N)";
50 INPUT I$
60 IF LEFT$(I$, 1) = "N" OR LEFT$(I$, 1) = "n" THEN 110
65 COLOR 14: PRINT
70 PRINT "You may race against one of your friends or you may race against my dragster."
80 PRINT "You will be asked to design your own machine, specifying horsepower, rear end"
90 PRINT "ratio (X:1), tire width in inches, and tire diameter in feet."
100 PRINT: COLOR 15
110 COLOR 10: PRINT "Do you want to race against me (Y/N)";
120 INPUT I$: COLOR 15
130 IF LEFT$(I$, 1) = "N" OR LEFT$(I$, 1) = "n" THEN 200
140 PRINT "I will have car #1."
150 P(1) = 600
160 E(1) = 5.9
170 W(1) = 22
180 D(1) = 3.9
190 GOTO 290
200 PRINT: PRINT "Design car #1:"
210 COLOR 10: PRINT "Horsepower";
220 INPUT P(1)
230 PRINT "Rear end ratio";
240 INPUT E(1)
250 PRINT "Tire width (inches)";
260 INPUT W(1)
270 PRINT "Tire diameter (feet)";
280 INPUT D(1): PRINT: COLOR 15
290 PRINT: PRINT "Design car #2:"
300 COLOR 10: PRINT "Horsepower";
310 INPUT P(2)
320 PRINT "Rear end ratio";
330 INPUT E(2)
340 PRINT "Tire width (inches)";
350 INPUT W(2)
360 PRINT "Tire diameter (feet)";
370 INPUT D(2)
380 PRINT: COLOR 15
390 PRINT "GO!"
400 K1 = 500
410 K2 = 1.6
420 K3 = 2
430 K4 = 6E-04
440 K5 = 6E-05
450 K6 = .2
460 K7 = 4
470 K8 = 1.5E-04
480 Q(1) = 0: Q(2) = 0
490 S(1) = 0: S(2) = 0
500 X(1) = 0: X(2) = 0
510 REM: M IS MASS
520 FOR J = 1 TO 2
530 M(J) = (K1 + K2 * P(J) + K3 * W(J) * D(J) + K7 * D(J) ^ 2) / 32.2
540 REM: C IS DRAG FROM WIND.
550 C(J) = K4 * M(J) ^ (2 / 3) + K8 * W(J) * D(J)
560 REM: B IS THE MAX ACCELERATION WITHOUT BURNING
570 B(J) = 15 + 28 * W(J) * D(J) / ((W(J) + 6) * (D(J) + 1))
580 REM: Y IS THE SCALE FACTOR FOR RPM VS POWER.
590 Y(J) = 3.7 - 3.3E-03 * P(J)
600 NEXT J
610 PRINT: COLOR 13
630 PRINT "Elapsed", "Car #1", , "Car #2"
640 PRINT "Time", "Speed", "Distance", "Speed", "Distance"
650 PRINT "(sec)", "(mph)", "(ft)", "(mph)", "(ft)"
660 COLOR 11: PRINT
670 FOR T = 0 TO 100
680 FOR T1 = 1 TO 100
690 FOR J = 1 TO 2
700 REM: R IS RPM.
710 R = 60 * S(J) * E(J) / (3.1415926# * D(J))
720 REM: L0 IS ENGINE TORQUE.
730 L0 = (P(J) / 42.5) * (50 + 7.8E-03 * (R / Y(J)) - 4E-10 * (R / Y(J)) ^ 3)
740 REM: L1 IS TORQUE FROM FRICTION.
750 L1 = P(J) * (K5 * R + K6)
760 REM: R2 IS REAR AXLE TORQUE.
770 L2 = E(J) * (L0 - L1)
780 REM: F IS FORCE ON ROAD FROM TIRES.
790 F = 2 * L2 / D(J)
800 REM: TEST FOR BURN.
810 IF F > M(J) * B(J) THEN 880
820 REM: A=ACCELERATION
830 IF Q(J) <> 0 THEN 860
835 J$ = STR$(J): J$ = RIGHT$(J$, LEN(J$) - 1)
840 COLOR 12: PRINT "Car #"; J$; " stops burning rubber.": COLOR 11
850 Q(J) = 1
860 A = (F - C(J) * S(J) ^ 2) / M(J)
870 GOTO 900
880 A = B(J) - C(J) * S(J) ^ 2 / M(J)
890 REM: S IS FEET IN FT/SEC.
900 S(J) = S(J) + A * .01
910 REM: X IS DISTANCE IN FT.
920 X(J) = X(J) + S(J) * .01
930 NEXT J
940 REM: TEST FOR FINISH.
950 IF X(1) < 5280 / 4 AND X(2) < 5280 / 4 THEN 1160
960 IF X(1) > X(2) THEN 1080
970 T3 = (X(2) - 5280 / 4) / S(2)
980 T = T + T1 / 100 - T3
990 X(2) = 5280 / 4
1000 X(1) = X(1) - S(1) * T3
1010 PRINT T, S(1) * 3600 / 5280, X(1)
1020 COLOR 12: PRINT "", , , "WINNER!"
1030 PRINT
1040 COLOR 10: PRINT "Do you want to try again (Y/N)";
1050 INPUT I$: COLOR 15
1060 IF LEFT$(I$, 1) = "Y" OR LEFT$(I$, 1) = "y" THEN 110
1070 END
1080 T3 = (X(1) - 5280 / 4) / S(1)
1090 T = T + T1 / 100 - T3
1100 X(1) = 5280 / 4
1110 X(2) = X(2) - S(2) * T3
1120 PRINT INT(T * 10) / 10, INT(S(1) * 3600 / 5280 * 10) / 10, INT(X(1) * 10) / 10,
1125 PRINT INT(S(2) * 3600 / 5280 * 10) / 10, INT(X(2) * 10) / 10
1130 COLOR 12: PRINT "", "WINNER!"
1140 PRINT: COLOR 15
1150 GOTO 1040
1160 NEXT T1
1170 PRINT INT((T + 1) * 10) / 10, INT(S(1) * 3600 / 5280 * 10) / 10, INT(X(1) * 10) / 10,
1175 PRINT INT(S(2) * 3600 / 5280 * 10) / 10, INT(X(2) * 10) / 10
1180 NEXT T
1200 END

