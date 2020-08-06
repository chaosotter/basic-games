1 CLS: COLOR 12: PRINT TAB(37); "Doors"
2 PRINT TAB(31); "Creative Computing"
3 PRINT TAB(29); "Morristown, New Jersey"
4 PRINT
5 PRINT
6 PRINT: COLOR 15
10 RANDOMIZE TIMER
25 DIM K(20)
32 FOR X = 0 TO 6: READ R$(X): NEXT X
33 FOR X = 0 TO 6: READ S$(X): NEXT X
35 D = 1: T = 10 + INT(21 * RND(1)): N = 3 + INT(3 * RND(1)): K3 = 8 + INT(5 * RND(1))
40 COLOR 14: PRINT "There are"; N; "locked doors and there are"; K3; "keys (0 -"; STR$(K3 - 1); ")."
41 PRINT "You will have"; T - 1; "tries to open them all."
42 PRINT "Some keys may open more than one door.": COLOR 15: PRINT
65 FOR X = 2 TO N: K(X) = INT(K3 * RND(1)): NEXT X
70 T = T - 1: IF T = 0 THEN 150
75 D$ = STR$(D): D$ = RIGHT$(D$, LEN(D$) - 1)
80 PRINT "Tries left:"; T;: COLOR 10: PRINT "           Door #"; D$; " key";
90 INPUT K2: COLOR 15
100 IF K2 <> K(D) THEN 70
110 PRINT S$(INT(7 * RND(1))): D = D + 1
120 IF D < N + 1 THEN 70
125 PRINT
126 N$ = STR$(N): N$ = RIGHT$(N$, LEN(N$) - 1)
130 PRINT "You did it, behind door #"; N$; " is............................."
140 PRINT R$(INT(7 * RND(1))); "!!": GOTO 170
150 PRINT "You lose, the rest of the keys are:": PRINT: COLOR 11
160 FOR X = D TO N: PRINT "Door"; X, "Key"; K(X): NEXT X
170 PRINT: COLOR 10: PRINT "Do you want to play again (Y/N)";
171 INPUT Q$: COLOR 15
180 IF LEFT$(Q$, 1) = "Y" OR LEFT$(Q$, 1) = "y" THEN 35
181 IF LEFT$(Q$, 1) = "N" OR LEFT$(Q$, 1) = "n" THEN 999
190 PRINT "Hey, I didn't just fall off a turnip truck, ya know!!!"
200 GOTO 170
500 DATA "A pot of gold","A beautiful maiden","A man-eating tiger"
505 DATA "Nothing","$22.59","A Rolls Royce","The keys to the world"
600 DATA "Open sesame!","C-R-E-E-E-E-E-A-A-K!","Voila!","Ta-dah!"
605 DATA "Abracadabra!","CLICK!!!!!!!!?!??????!!!!!!!!","Surprise!"
999 END

