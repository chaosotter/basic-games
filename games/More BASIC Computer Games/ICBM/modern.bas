5 CLS: COLOR 12
10 PRINT TAB(38); "ICBM"
20 PRINT TAB(31); "Creative Computing"
30 PRINT TAB(29); "Morristown, New Jersey"
40 PRINT: PRINT: PRINT: COLOR 15
100 RANDOMIZE TIMER
110 X1 = 0: Y1 = 0
120 X = INT(RND(1) * 800) + 200: Y = INT(RND(1) * 800) + 200
130 S = INT(RND(1) * 20 + 50): S1 = INT(RND(1) * 20 + 50)
170 PRINT "------Missile------         ";
175 PRINT "--------SAM--------         -----"
180 PRINT "Miles", "Miles", "Miles", "Miles", "Heading"
190 PRINT "North", "East", "North", "East", "?"
200 PRINT "----------------------------------";
205 PRINT "---------------------------"
210 FOR N = 1 TO 50
220 COLOR 11: PRINT Y, X, Y1, X1,: COLOR 15
230 IF X = 0 THEN 550
240 COLOR 10: INPUT T1: COLOR 15
250 T1 = T1 / 57.296
260 H = INT(RND(1) * 200 + 1)
270 IF H > 4 THEN 290
280 ON H GOTO 470, 490, 510, 530
290 X1 = INT(X1 + S1 * SIN(T1)): Y1 = INT(Y1 + S1 * COS(T1))
310 IF SQR(X ^ 2 + Y ^ 2) > S THEN 350
320 X = 0: Y = 0
340 GOTO 430
350 B = SQR(X ^ 2 + Y ^ 2) / 1000
360 T = ATN(Y / X)
370 X = INT(X - S * COS(T) + RND(1) * 20 + R)
380 Y = INT(Y - S * SIN(T) + RND(1) * 20 + R)
390 D = SQR((X - X1) ^ 2 + (Y - Y1) ^ 2)
400 IF D <= 5 THEN 440
410 D = INT(D)
420 COLOR 13: PRINT "ICBM & SAM now"; D; "miles apart.": COLOR 15
430 NEXT N
440 PRINT: PRINT "Congratulations!  Your SAM came within"; D; "miles of the ICBM and destroyed it!"
460 GOTO 560
470 PRINT: PRINT "Too bad.  Your SAM fell to the ground!"
480 GOTO 560
490 PRINT: PRINT "Your SAM exploded in midair!"
500 GOTO 560
510 PRINT: PRINT "Good luck -- the ICBM exploded harmlessly in midair!"
520 GOTO 560
530 PRINT: PRINT "Good luck -- the ICBM turned out to be a friendly aircraft!"
540 GOTO 560
550 PRINT: PRINT "Too bad!  The ICBM just hit your location!"
560 COLOR 10: PRINT "Do you want to play more (Y/N)";
570 INPUT A$: COLOR 15
580 IF LEFT$(A$, 1) = "Y" OR LEFT$(A$, 1) = "y" THEN 130
590 END

