1 CLS: COLOR 12: PRINT TAB(31); "Man-Eating Rabbit"
2 PRINT TAB(31); "Creative Computing"
3 PRINT TAB(29); "Morristown, New Jersey"
4 PRINT: PRINT: PRINT: COLOR 14
5 RANDOMIZE TIMER
10 PRINT "You are in a pit with a man-eating rabbit.  The center is (0,0) and it has a"
15 PRINT "radius of 10.  If you can avoid the rabbit for 10 moves you will be released."
20 PRINT "You and the rabbit can move only 1 space each.  However, the rabbit can do"
25 PRINT "multiple jumps.  You can travel at these angles:"
30 PRINT: COLOR 11: PRINT "    0, 45, 90, 135, 180, 225, 270, 315, 360"
35 COLOR 15
40 X = INT(21 * RND(1) - 10)
41 Y = INT(21 * RND(1) - 10)
45 D = SQR(ABS((X - X1) ^ 2 + (Y - Y1) ^ 2))
46 IF D > 10 THEN 40
47 PRINT
48 PRINT
50 COLOR 10: PRINT "Where would you like to be dropped";
51 INPUT X1, Y1: COLOR 15
60 IF SQR(ABS(X1 ^ 2 + Y1 ^ 2)) > 10 THEN 50
65 IF X <> X1 THEN 70
66 IF Y <> Y1 THEN 70
67 PRINT "*** SQUISH ***"
69 PRINT "The rabbit is dead!  You are set free!": GOTO 340
70 FOR G = 1 TO 10
71 D = SQR(ABS((X - X1) ^ 2 + (Y - Y1) ^ 2))
75 X$ = STR$(X): IF X >= 0 THEN X$ = RIGHT$(X$, LEN(X$) - 1)
76 Y$ = STR$(Y): IF Y >= 0 THEN Y$ = RIGHT$(Y$, LEN(Y$) - 1)
80 PRINT "Rabbit at ("; X$; ", "; Y$; ") and distance"; D
90 IF D = 0 THEN 330
92 G$ = STR$(G): G$ = RIGHT$(G$, LEN(G$) - 1)
93 X$ = STR$(X1): IF X1 >= 0 THEN X$ = RIGHT$(X$, LEN(X$) - 1)
94 Y$ = STR$(Y1): IF Y1 >= 0 THEN Y$ = RIGHT$(Y$, LEN(Y$) - 1)
95 PRINT: PRINT "Turn #"; G; "  Human at ("; X$; ", "; Y$; ")"
100 COLOR 10: PRINT "At what angle will you run (multiple of 45)";
101 INPUT A: COLOR 15
110 IF A / 45 <> INT(A / 45) THEN 100
111 PRINT "Running... ";: P1 = 1
112 M = 1: IF ABS((INT(A / 10) * 10) - A) <> 5 THEN 120
113 M = SQR(2)
120 X2 = (M * COS(A * (3.14159 / 180)))
121 Y2 = (M * SIN(A * (3.14159 / 180)))
125 IF SQR(((X1 + X2) ^ 2 + (Y1 + Y2) ^ 2)) <= 10 THEN 130
126 PRINT "You can't go into a wall!"
127 GOTO 100
130 X1 = INT(X1 * 1000) / 1000 + X2
131 Y1 = INT(Y1 * 1000) / 1000 + Y2
132 X1 = INT(X1 + .5): Y1 = INT(Y1 + .5)
133 X$ = STR$(X1): IF X1 >= 0 THEN X$ = RIGHT$(X$, LEN(X$) - 1)
134 Y$ = STR$(Y1): IF Y1 >= 0 THEN Y$ = RIGHT$(Y$, LEN(Y$) - 1)
135 PRINT "Human, you are now at ("; X$; ", "; Y$; ")."
136 IF X <> X1 THEN 140
137 IF Y <> Y1 THEN 140
138 PRINT "You ran right into the rabbit!"
139 GOTO 330
140 PRINT "The rabbit is pouncing at angle";: P1 = P1 + 1
150 X2 = X1 - X: Y2 = Y1 - Y
151 IF X2 = 0 THEN 280
152 IF Y2 = 0 THEN 300
160 B = INT(ATN(ABS((Y2 / X2))) / (3.14159 / 180))
170 ON SGN(X2) + 2 GOTO 190, 10, 180
180 ON SGN(Y2) + 2 GOTO 240, 10, 250
190 ON SGN(Y2) + 2 GOTO 230, 10, 220
220 B = 180 - B: GOTO 250
230 B = B + 180: GOTO 250
240 B = 360 - B
250 B = INT(B / 45 + .5) * 45: PRINT B
255 M = 1
256 IF ABS((INT(B / 10) * 10) - B) <> 5 THEN 260
257 M = 1.5
260 X2 = (M * COS(B * (3.14159 / 180)))
261 Y2 = (M * SIN(B * (3.14159 / 180)))
270 X = INT(X + X2 + .5)
271 Y = INT(Y + Y2 + .5)
272 GOTO 315
280 IF Y2 < 0 THEN 290
281 B = 90: GOTO 315
290 B = 270: GOTO 250
300 IF X2 < 0 THEN 310
301 B = 1: GOTO 250
310 B = 180: GOTO 250
315 IF SQR((X - X1) ^ 2 + (Y - Y1) ^ 2) = 0 THEN 323
320 P = INT(P1 * RND(1) + 1)
321 IF P <> 1 THEN 323
322 GOTO 140
323 NEXT G: COLOR 11: PRINT "You are released!": GOTO 340
330 COLOR 12: PRINT "*** CRUNCH ***";: COLOR 15: PRINT "  Well... R.I.P."
340 END

