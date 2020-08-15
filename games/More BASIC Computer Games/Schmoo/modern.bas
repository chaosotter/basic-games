5 CLS: COLOR 12
10 PRINT TAB(37); "Schmoo"
20 PRINT TAB(31); "Creative Computing"
21 PRINT TAB(29); "Morristown, New Jersey"
23 PRINT: PRINT: PRINT: COLOR 14: RANDOMIZE TIMER
30 PRINT "This is a new schmoo game.  Schmoos are imaginary creatures who love being"
32 PRINT "splatted with juicy mud balls.  You, being a schmoo lover, try to make schmoos"
34 PRINT "happy by tossing mud balls at them.  You have a mechanical mud slinger that"
36 PRINT "will sling mud to a maximum distance of 46,500 inches.  Your job is to set the"
38 PRINT "mud slinger at the correct elevation (0 to 90) and the correct directional"
40 PRINT "angle (0 to 360) to splat the schmoo.  A hit within 100 inches of the schmoo"
42 PRINT "will splatter him."
75 PRINT
90 PRINT: COLOR 15
100 K1 = 0
110 Z = INT(1 + RND(1) * 4 - 1E-08)
120 ON Z GOTO 130, 140, 150, 160
130 P = -1
135 Q = -1
138 GOTO 200
140 P = -1
145 Q = 1
148 GOTO 200
150 P = 1
155 Q = -1
158 GOTO 200
160 P = 1
165 Q = 1
200 X = (INT(26000 * RND(1) + 5000)) * P
210 Y = (INT(26000 * RND(1) + 5000)) * Q
220 S = 0
230 K1 = K1 + 1
240 IF K1 < 2 THEN 400
250 R = INT(7 * RND(1) + 5)
260 GOTO 400
300 PRINT "The elevation must be between 1 and 90."
310 GOTO 500
320 PRINT "Directional angle must be from 0 to 360."
340 GOTO 500
350 PRINT "*Schmoo splatted!* "; S; "mud balls tossed."
351 PRINT
352 PRINT "I see another schmoo.  To splat him, type 'mud'.  To quit, type 'quit'."
358 COLOR 10: INPUT "Your choice (M/Q)"; C$
369 IF LEFT$(C$, 1) = "M" OR LEFT$(C$, 1) = "m" THEN 110
361 STOP
362 X$ = STR$(X): IF X >= 0 THEN X$ = RIGHT$(X$, LEN(X$) - 1)
363 Y$ = STR$(Y): IF Y >= 0 THEN Y$ = RIGHT$(Y$, LEN(Y$) - 1)
364 X1$ = STR$(INT(X1)): IF INT(X1) >= 0 THEN X1$ = RIGHT$(X1$, LEN(X1$) - 1)
365 Y1$ = STR$(INT(Y1)): IF INT(Y1) >= 0 THEN Y1$ = RIGHT$(Y1$, LEN(Y1$) - 1)
366 PRINT "You missed the schmoo at ("; X$; ", "; Y$; ")."
367 PRINT "Your mud hit ("; X1$; ", "; Y1$; ")."
368 PRINT
370 IF K1 < 2 THEN 500
380 IF S >= R THEN 800
390 PRINT "Schmoo mud hit"; R2; "inches from you."
395 GOTO 500
400 PRINT
410 X$ = STR$(X): IF X >= 0 THEN X$ = RIGHT$(X$, LEN(X$) - 1)
411 Y$ = STR$(Y): IF Y >= 0 THEN Y$ = RIGHT$(Y$, LEN(Y$) - 1)
412 PRINT "Coordinates of the schmoo are ("; X$; ", "; Y$; ")."
415 IF K1 < 2 THEN 420
417 PRINT "The schmoo is happy to be splatted."
418 PRINT "To make you happy too, he will throw mud at you."
420 PRINT
500 COLOR 10: PRINT "Mud slinger elevation (0-90)";
502 INPUT B: COLOR 15
504 COLOR 10: PRINT "Directional angle of mud slinger (0-360)";
506 INPUT C: COLOR 15
520 IF B = 90 THEN 700
530 IF B > 90 THEN 300
540 IF B < 1 THEN 300
550 IF C < 0 THEN 320
560 IF C > (360 - (1E-08)) THEN 320
570 S = S + 1
580 IF K1 < 2 THEN 595
590 R2 = INT(ABS(300 * RND(1) * (11 - 2 * S)) + 90)
595 J = 3.1415926535# / 180
596 D = ABS(INT(93000! * SIN(B * J) * COS(B * J)))
610 X1 = D * COS(C * 3.1415926535# / 180)
620 Y1 = D * SIN(C * 3.1415926535# / 180)
630 D1 = SQR((X - X1) ^ 2 + (Y - Y1) ^ 2)
640 IF 100 >= D1 THEN 350
650 GOTO 362
700 PRINT "You dope!  You splatted yourself."
710 GOTO 900
800 PRINT "The schmoo has splatted you!  Clean up and goodbye!"
900 END

