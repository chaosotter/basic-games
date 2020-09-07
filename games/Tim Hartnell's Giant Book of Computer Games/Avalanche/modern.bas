10 REM AVALANCHE!
20 RANDOMIZE TIMER
30 M = INT(RND(1) * 5000 + 9087)
40 P = INT(RND(1) * 1000 + 2278)
50 S = 0: D = 0: N = 0
60 FOR Y = 1 TO 20
70 CLS: COLOR 15
80 IF Y = 20 THEN 240
90 COLOR 12: PRINT "Year"; Y: COLOR 15
100 PRINT: PRINT "The chance of an avalanche is";: COLOR 11: PRINT 20 - Y; "to 1";: COLOR 15: PRINT "."
110 PRINT: PRINT "The village has";: COLOR 11: PRINT P;: COLOR 15: PRINT "people."
120 IF S <> 0 THEN PRINT: PRINT "You have";: COLOR 11: PRINT S;: COLOR 15: PRINT "shelter."
125 M$ = STR$(M): M$ = RIGHT$(M$, LEN(M$) - 1)
130 PRINT: PRINT "The village treasury holds ";: COLOR 11: PRINT "$"; M$;: COLOR 15: PRINT "."
140 IF D <> 0 THEN PRINT: PRINT "There are";: COLOR 11: PRINT D;: COLOR 15: PRINT "villagers dead."
150 IF N <> 0 THEN PRINT: PRINT "There have been";: COLOR 11: PRINT N;: COLOR 15: PRINT "avalanches."
160 COLOR 10: PRINT: INPUT "How much will you spend on shelter"; A: COLOR 15
170 IF M - A < 0 OR S + A < 0 THEN 160
180 M = M - A
190 S = S + INT(2.7 * A)
200 M = M + INT(M / 10 + .5)
210 IF INT(RND(1) * (20 - Y)) + 1 = 1 THEN GOSUB 320
220 P = INT(P + .05 * P)
230 NEXT Y
240 PRINT: PRINT "Well done, Mayor Glugenheimer!"
250 PRINT: PRINT "You managed to survive 20 years in office, and end your term with:"
260 M$ = STR$(M): M$ = RIGHT$(M$, LEN(M$) - 1): PRINT
270 COLOR 11: PRINT TAB(4); "$"; M$;: COLOR 15: PRINT " in the treasury"
280 COLOR 11: PRINT TAB(3); P;: COLOR 15: PRINT "people surviving"
290 COLOR 11: PRINT TAB(3); S;: COLOR 15: PRINT "cubic yards of shelter"
300 PRINT: PRINT "Your mayoral rating is:";: COLOR 10: PRINT 10 * M + 20 * P + P + S - 12 * D: COLOR 15
310 END
320 REM *** AVALANCHE ***
330 FOR J = 1 TO 32
340 PRINT TAB(J / 2); "*** AVALANCHE ***"
350 XX = (32 - J) / 64: GOSUB 1000
360 NEXT J
370 Q = INT(S / 10 + .5)
380 PRINT: COLOR 11: PRINT Q;: COLOR 15: PRINT "people are safe..."
390 X = P - Q
400 IF X < 1 THEN 500
410 PRINT: PRINT "But";: COLOR 11: PRINT X;: COLOR 15: PRINT "people were killed..."
420 D = D + X
430 P = Q
440 S = S - INT(S / 10 + .5)
450 PRINT: PRINT "There are";: COLOR 11: PRINT S;: COLOR 15: PRINT "cubic yards of shelter left."
460 XX = 2.0: GOSUB 1000
470 IF X > P THEN 490
480 RETURN
490 PRINT: PRINT
500 PRINT "The loss of human life was catastrophic..."
510 PRINT "You have been forced to step down from the office of mayor."
540 END
1000 ST = TIMER + XX
1010 IF TIMER < ST THEN 1010
1020 RETURN

