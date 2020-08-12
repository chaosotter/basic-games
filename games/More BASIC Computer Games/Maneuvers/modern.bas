5 CLS: COLOR 12
10 PRINT TAB(35); "Maneuvers"
11 PRINT TAB(31); "Creative Computing"
12 PRINT TAB(29); "Morristown, New Jersey"
13 PRINT: PRINT: PRINT
20 COLOR 10: PRINT "Do you need instructions (Y/N)";
30 INPUT X$: COLOR 15
40 IF LEFT$(X$, 1) = "N" OR LEFT$(X$, 1) = "n" THEN 500
100 PRINT: COLOR 14
110 PRINT "You are the pilot of the Enterprise's space shuttle.  You must deliver a"
120 PRINT "message to each of four starbases, in the least total time.  Your initial"
130 PRINT "position is at one corner of a cube, ten parsecs on a side.  The bases are at"
140 PRINT "the corners shown below, marked A, B, C, and D in the order in which you must"
150 PRINT "visit them."
160 PRINT: COLOR 13: PRINT "(Press any key.)"
165 Z$ = INKEY$: IF Z$ = "" THEN 165
166 COLOR 11: PRINT
170 PRINT "                       Z"
180 PRINT "                       :"
190 PRINT "                       :C"
200 PRINT "                       *--------------------* D"
210 PRINT "                      /:                   /:"
220 PRINT "                     / :                  / :"
230 PRINT "                    /  :                 /  :"
240 PRINT "                   /   :                /   :"
250 PRINT "                  *--------------------*B   :"
260 PRINT "                  :    :               :    :"
270 PRINT "                  :    :               :    :"
275 PRINT "                  :    :               :    :"
280 PRINT "                  :    :               :    :"
285 PRINT "                  :    :               :    :"
290 PRINT "                  :    :               :    :"
300 PRINT "               Start>>>*---------------:----*---Y"
310 PRINT "                  :   /                :   /"
320 PRINT "                  :  /                 :  /"
330 PRINT "                  : /                  : /"
340 PRINT "                 A:/                   :/"
350 PRINT "                  *--------------------*"
360 PRINT "                 /"
370 PRINT "                X";
375 Z$ = INKEY$: IF Z$ = "" THEN 375
376 COLOR 14: PRINT: PRINT
380 PRINT "For your subspace radio to deliver the message, you must pass within one parsec"
390 PRINT "of each starbase.  Your propulsion system is always on, giving you a constant"
400 PRINT "acceleration of 0.2 parsecs per stardate per stardate.  You can only control"
410 PRINT "the orientation of your ship, to direct your thrust and acceleration.  You"
420 PRINT "specify your ship's attitude by the angle theta (the clockwise angle in the X-Y"
430 PRINT "plane starting at the X-axis) and the angle psi (the angle of inclination above"
440 PRINT "the X-Y plane).  You input new angles each stardate."
500 PRINT: COLOR 15
505 LET P = 3.14159 / 180
510 LET J = 1
520 DIM T(4, 3), C(3)
530 FOR X = 1 TO 4
540 FOR Y = 1 TO 3
550 READ T(X, Y)
560 NEXT Y
570 NEXT X
580 DATA 10,0,0,10,10,10,0,0,10,0,10,10
590 LET A = .2
600 LET X1 = 0
610 LET Y1 = 0
620 LET Z1 = 0
630 LET V1 = 0
640 LET V2 = 0
650 LET V3 = 0
660 LET T0 = 0
670 LET B1 = 1E-03
680 LET B2 = 1E-03
700 PRINT "Elapsed"; TAB(10); "Position Coordinates"; TAB(40); "Orientation"
720 PRINT "Time"; TAB(10); "X"; TAB(20); "Y"; TAB(30); "Z"; TAB(40); "Theta"; TAB(50); "Psi"
800 COLOR 11: PRINT T0; TAB(10); INT(1000 * X1 + .5) / 1000; TAB(20);
805 PRINT INT(1000 * Y1 + .5) / 1000; TAB(30); INT(1000 * Z1 + .5) / 1000;
806 PRINT TAB(40);
810 FOR K = 0 TO 1 STEP .02
820 LET C(1) = X + K * V1 + A / 2 * K * K * COS(B2 * P) * COS(B1 * P)
830 LET C(2) = Y + K * V2 + A / 2 * K * K * COS(B2 * P) * SIN(B1 * P)
840 LET C(3) = Z + K * V3 + A / 2 * K * K * SIN(B2 * P)
850 LET D = 0
860 FOR L = 1 TO 3
870 LET D = D + (T(J, L) - C(L)) * (T(J, L) - C(L))
880 NEXT L
890 IF SQR(D) > 1 GOTO 950
900 COLOR 15: PRINT: PRINT "Message delivered to base #";
905 J$ = STR$(J): J$ = RIGHT$(J$, LEN(J$) - 1): PRINT J
910 COLOR 11: PRINT "At time"; T0 + K; TAB(40);
920 IF J = 4 THEN 1100
930 LET J = J + 1
940 GOTO 960
950 NEXT K
960 LET X = X1
970 LET Y = Y1
980 LET Z = Z1
985 LET T0 = T0 + 1
990 COLOR 10: INPUT B1, B2: COLOR 15
1030 LET X1 = X + V1 + A / 2 * COS(B2 * P) * COS(B1 * P)
1040 LET Y1 = Y + V2 + A / 2 * COS(B2 * P) * SIN(B1 * P)
1050 LET Z1 = Z + V3 + A / 2 * SIN(B2 * P)
1060 LET V1 = V1 + A * COS(B2 * P) * COS(B1 * P)
1070 LET V2 = V2 + A * COS(B2 * P) * SIN(B1 * P)
1080 LET V3 = V3 + A * SIN(B2 * P)
1090 GOTO 800
1100 PRINT: PRINT "Good job!"
1110 COLOR 10: PRINT "Do you want to try to improve your time (Y/N)";
1120 INPUT X$: COLOR 15
1130 IF LEFT$(X$, 1) = "Y" OR LEFT$(X$, 1) = "y" THEN 500
1140 END

