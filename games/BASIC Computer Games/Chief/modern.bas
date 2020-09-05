1 CLS: COLOR 12
2 PRINT TAB(37); "Chief"
4 PRINT TAB(31); "Creative Computing"
5 PRINT TAB(29); "Morristown, New Jersey"
6 PRINT: PRINT: PRINT: COLOR 15
10 PRINT "I am Chief Numbers Freak, the great Indian math god."
20 COLOR 10: PRINT "Are you ready to take the test you called me out for (Y/N)";
30 INPUT A$: COLOR 15: PRINT
40 IF LEFT$(A$, 1) = "Y" OR LEFT$(A$, 1) = "y" THEN 60
50 PRINT "Shut up, pale face with wise tongue.": PRINT
60 PRINT "Take a number and add 3.  Divide this number by 5 and multiply by 8."
70 PRINT "Divide by 5 and add the same.  Subtract 1.": PRINT
80 COLOR 10: PRINT "What do you have";
90 INPUT B: COLOR 15
100 LET C = (B + 1 - 5) * 5 / 8 * 5 - 3
110 PRINT: C$ = STR$(C): IF C >= 0 THEN C$ = RIGHT$(C$, LEN(C$) - 1)
115 PRINT "I bet your number was "; C$; "."
116 COLOR 10: PRINT "Am I right (Y/N)";
120 INPUT D$: COLOR 15
130 IF LEFT$(D$, 1) = "Y" OR LEFT$(D$, 1) = "y" THEN 510
140 COLOR 10: PRINT "What was your original number";
150 INPUT K: COLOR 15
155 LET F = K + 3
160 LET G = F / 5
170 LET H = G * 8
180 LET I = H / 5 + 5
190 LET J = I - 1
200 PRINT: PRINT "So you think you're so smart, eh?  Now watch.": PRINT
230 PRINT K; "plus 3 equals"; STR$(F); ".  This divided by 5 equals"; STR$(G); ";"
240 PRINT "This times 8 equals"; STR$(H); ".  If we divide by 5 and add 5,"
250 PRINT "we get"; STR$(I); ", which, minus 1, equals"; STR$(J); ".": PRINT
260 COLOR 10: PRINT "Now do you believe me (Y/N)";
270 INPUT Z$: COLOR 15
290 IF LEFT$(Z$, 1) = "Y" OR LEFT$(Z$, 1) = "y" THEN 510
295 PRINT: PRINT "You have made me mad!!!"
300 PRINT "There must be a great lightning bolt!"
305 PRINT: COLOR 13: PRINT "(Press any key to be blasted.)"
306 Z$ = INKEY$: IF Z$ = "" THEN 306
310 PRINT: PRINT: COLOR 14
330 FOR X = 30 TO 22 STEP -1
340 PRINT TAB(X); "X X"
350 NEXT X
360 PRINT TAB(21); "X XXX"
370 PRINT TAB(20); "X   X"
380 PRINT TAB(19); "XX  X"
390 FOR Y = 20 TO 13 STEP -1
400 PRINT TAB(Y); "X X"
410 NEXT Y
420 PRINT TAB(12); "XX"
430 PRINT TAB(11); "X"
440 PRINT TAB(10); "*"
450 COLOR 13: PRINT TAB(9); CHR$(1): PRINT: COLOR 15
470 PRINT "I hope you believe me now, for your sake!"
480 GOTO 520
510 PRINT: PRINT "Bye!!!"
520 END
