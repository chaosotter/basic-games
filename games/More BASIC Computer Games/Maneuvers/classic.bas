10 PRINT TAB(24); "MANUEVERS"
11 PRINT TAB(20); "CREATIVE COMPUTING"
12 PRINT TAB(18); "MORRISTOWN, NEW JERSEY"
13 PRINT: PRINT: PRINT
20 PRINT "DO YOU NEED INSTRUCTIONS";
30 INPUT X$
40 IF LEFT$(X$, 1) = "N" THEN 500
100 PRINT
110 PRINT "YOU ARE THE PILOT OF THE ENTERPRISE'S SPACE SHUTTLE."
120 PRINT "YOU MUST DELIVER A MESSAGE TO EACH OF FOUR STARBASES,"
130 PRINT "IN THE LEAST TOTAL TIME.  YOUR INITIAL POSITION IS AT"
140 PRINT "ONE CORNER OF A CUBE, TEN PARSECS ON A SIDE.  THE BASES"
150 PRINT "ARE AT THE CORNERS SHOWN BELOW, MARKED A, B, C, AND D IN"
160 PRINT "THE ORDER IN WHICH YOU MUST VISIT THEM."
165 INPUT Z$
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
300 PRINT "               START>>>*---------------:----*---Y"
310 PRINT "                  :   /                :   /"
320 PRINT "                  :  /                 :  /"
330 PRINT "                  : /                  : /"
340 PRINT "                 A:/                   :/"
350 PRINT "                  *--------------------*"
360 PRINT "                 /"
370 PRINT "                X"
375 INPUT Z$
380 PRINT "FOR YOUR SUBSPACE RADIO TO DELIVER THE MESSAGE, YOU"
390 PRINT "MUST PASS WITHIN ONE PARSEC OF EACH STARBASE.  YOUR"
400 PRINT "PROPULSION SYSTEM IS ALWAYS ON, GIVING YOU A CONSTANT"
410 PRINT "ACCELERATION OF 0.2 PARSECS PER STARDATE PER STARDATE."
420 PRINT "YOU CAN ONLY CONTROL THE ORIENTATION OF YOUR SHIP, TO"
430 PRINT "DIRECT YOUR THRUST AND ACCELERATION.  YOU SPECIFY YOUR"
440 PRINT "SHIP'S ATTITUDE BY THE ANGLE THETA (THE CLOCKWISE ANGLE"
450 PRINT "IN THE X-Y PLANE STARTING AT THE X-AXIS) AND THE ANGLE"
460 PRINT "PSI (THE ANGLE OF INCLINATION ABOVE THE X-Y PLANE)."
470 PRINT "YOU INPUT NEW ANGLES EACH STARDATE."
500 PRINT
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
700 PRINT "ELAPSED  POSITION COORDINATES:";
710 PRINT TAB(38); "ORIENTATION"
720 PRINT "TIME     X         Y         Z";
730 PRINT TAB(38); "THETA  ,  PSI"
800 PRINT T0; TAB(8); INT(1000 * X1 + .5) / 1000; TAB(18);
805 PRINT INT(1000 * Y1 + .5) / 1000; TAB(28); INT(1000 * Z1 + .5) / 1000;
806 PRINT TAB(38);
810 FOR K = 0 TO 1 STEP .02
820 LET C(1) = X + K * V1 + A / 2 * K * K * COS(B2 * P) * COS(B1 * P)
830 LET C(2) = Y + K * V2 + A / 2 * K * K * COS(B2 * P) * SIN(B1 * P)
840 LET C(3) = Z + K * V3 + A / 2 * K * K * SIN(B2 * P)
850 LET D = 0
860 FOR L = 1 TO 3
870 LET D = D + (T(J, L) - C(L)) * (T(J, L) - C(L))
880 NEXT L
890 IF SQR(D) > 1 GOTO 950
900 PRINT: PRINT "MESSAGE DELIVER TO BASE #"; J
910 PRINT "AT TIME"; T0 + K; TAB(38);
920 IF J = 4 THEN 1100
930 LET J = J + 1
940 GOTO 960
950 NEXT K
960 LET X = X1
970 LET Y = Y1
980 LET Z = Z1
985 LET T0 = T0 + 1
990 INPUT B1, B2
1030 LET X1 = X + V1 + A / 2 * COS(B2 * P) * COS(B1 * P)
1040 LET Y1 = Y + V2 + A / 2 * COS(B2 * P) * SIN(B1 * P)
1050 LET Z1 = Z + V3 + A / 2 * SIN(B2 * P)
1060 LET V1 = V1 + A * COS(B2 * P) * COS(B1 * P)
1070 LET V2 = V2 + A * COS(B2 * P) * SIN(B1 * P)
1080 LET V3 = V3 + A * SIN(B2 * P)
1090 GOTO 800
1100 PRINT "GOOD JOB.  DO YOU WANT TO"
1110 PRINT "TRY TO IMPROVE YOUR TIME";
1120 INPUT X$
1130 IF LEFT$(X$, 1) = "Y" THEN 500
1140 END

