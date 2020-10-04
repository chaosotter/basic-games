1 CLS: COLOR 12
2 PRINT TAB(34); "Depth Charge"
4 PRINT TAB(31); "Creative Computing"
5 PRINT TAB(29); "Morristown, New Jersey"
6 PRINT: PRINT: PRINT: RANDOMIZE TIMER
20 COLOR 10: INPUT "Dimension of search area"; G: PRINT
30 N = INT(LOG(G) / LOG(2)) + 1
35 COLOR 14
40 PRINT "You are the captain of the destroyer USS Computer.  An enemy sub has been"
50 PRINT "causing you trouble.  Your mission is to destroy it.  You have"; N; "shots."
60 PRINT "Specify depth charge explosion point with a trio of numbers -- the first two"
70 PRINT "are the surface coordinates; the third is the depth."
100 COLOR 15: PRINT: PRINT "Good luck!": PRINT
110 A = INT(G * RND(1)): B = INT(G * RND(1)): C = INT(G * RND(1))
120 FOR D = 1 TO N
124 D$ = STR$(D): D$ = RIGHT$(D$, LEN(D$) - 1)
125 COLOR 10: PRINT "Trial #"; D$; " (X,Y,Z)";: INPUT X, Y, Z: COLOR 15
130 IF ABS(X - A) + ABS(Y - B) + ABS(Z - C) = 0 THEN 300
140 GOSUB 500: PRINT: NEXT D
200 PRINT: PRINT "You have been torpedoed!  Abandon ship!"
210 COLOR 11: PRINT "The submarine was at"; STR$(A); ","; STR$(B); ","; C: GOTO 400
300 PRINT: PRINT "B O O M ! !  You found it in"; D; "tries!"
400 PRINT: PRINT: COLOR 10: INPUT "Another game (Y/N)"; A$: COLOR 15
410 IF LEFT$(A$, 1) = "Y" OR LEFT$(A$, 1) = "y" THEN 100
420 PRINT "Okay.  Hope you enjoyed yourself.": GOTO 600
500 COLOR 13: PRINT "Sonar reports shot was ";
510 IF Y > B THEN PRINT "north";
520 IF Y < B THEN PRINT "south";
530 IF X > A THEN PRINT "east";
540 IF X < A THEN PRINT "west";
550 IF Y <> B OR X <> A THEN PRINT " and";
560 IF Z > C THEN PRINT " too low."
570 IF Z < C THEN PRINT " too high."
580 IF Z = C THEN PRINT " depth okay."
590 COLOR 15: RETURN
600 END

