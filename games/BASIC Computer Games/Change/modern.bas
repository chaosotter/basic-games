1 CLS: COLOR 12
2 PRINT TAB(37); "Change"
4 PRINT TAB(31); "Creative Computing"
5 PRINT TAB(29); "Morristown, New Jersey": PRINT: PRINT: PRINT: COLOR 14
6 PRINT "I, your friendly microcomputer, will determine the correct change for items"
8 PRINT "costing up to $100."
9 PRINT: PRINT
10 COLOR 10: PRINT "Cost of item";: INPUT A: PRINT "Amount of payment";: INPUT P: COLOR 15
20 C = P - A: M = C: IF C <> 0 THEN 90
25 PRINT "Correct amount, thank you."
30 GOTO 400
90 IF C > 0 THEN 120
94 C$ = STR$(A - P): C$ = RIGHT$(C$, LEN(C$) - 1)
95 PRINT "Sorry, you have short-changed me $"; C$; "."
100 GOTO 400
120 C$ = STR$(C): C$ = RIGHT$(C$, LEN(C$) - 1)
125 PRINT: PRINT "Your change is $"; C$; ":": COLOR 11
130 D = INT(C / 10)
140 IF D = 0 THEN 155
150 PRINT "   "; D; "ten-dollar bill(s)"
155 C = M - (D * 10)
160 E = INT(C / 5)
170 IF E = 0 THEN 185
180 PRINT "   "; E; "five-dollar bill(s)"
185 C = M - (D * 10 + E * 5)
190 F = INT(C)
200 IF F = 0 THEN 215
210 PRINT "   "; F; "one-dollar bill(s)"
215 C = M - (D * 10 + E * 5 + F)
220 C = C * 100
225 N = C
230 G = INT(C / 50)
240 IF G = 0 THEN 255
250 PRINT "   "; G; "half-dollar(s)"
255 C = N - (G * 50)
260 H = INT(C / 25)
270 IF H = 0 THEN 285
280 PRINT "   "; H; "quarter(s)"
285 C = N - (G * 50 + H * 25)
290 I = INT(C / 10)
300 IF I = 0 THEN 315
310 PRINT "   "; I; "dime(s)"
315 C = N - (G * 50 + H * 25 + I * 10)
320 J = INT(C / 5)
330 IF J = 0 THEN 345
340 PRINT "   "; J; "nickel(s)"
345 C = N - (G * 50 + H * 25 + I * 10 + J * 5)
350 K = INT(C + .5)
360 IF K = 0 THEN 380
370 PRINT "   "; K; "penny(s)"
380 COLOR 15: PRINT: PRINT "Thank you, come again."
400 PRINT: PRINT: GOTO 10
410 END
