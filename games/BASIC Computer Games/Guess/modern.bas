1 CLS: COLOR 12: PRINT TAB(37); "Guess"
2 PRINT TAB(31); "Creative Computing": PRINT TAB(29); "Morristown, New Jersey"
3 PRINT: PRINT: PRINT: RANDOMIZE TIMER: COLOR 14
4 PRINT "This is a number guessing game.  I'll think of a number between 1 and any limit"
5 PRINT "you want.  Then you have to guess what it is."
7 PRINT
8 COLOR 10: PRINT "What limit do you want";
9 INPUT L: COLOR 15
10 PRINT
11 L1 = INT(LOG(L) / LOG(2)) + 1
12 PRINT "I'm thinking of a number between 1 and"; STR$(L); "."
13 G = 1
14 PRINT "Now you try to guess what it is."
15 M = INT(L * RND(1) + 1)
20 PRINT: COLOR 10: INPUT "Your guess"; N: COLOR 15
21 IF N > 0 THEN 25
22 GOSUB 70
23 GOTO 1
25 IF N = M THEN 50
30 G = G + 1
31 IF N > M THEN 40
32 PRINT "Too low.  Try a bigger answer."
33 GOTO 20
40 PRINT "Too high.  Try a smaller answer."
42 GOTO 20
50 COLOR 13: PRINT: PRINT "That's it!  You got it in"; G; "tries.": COLOR 15
52 IF G < L1 THEN 58
54 IF G = L1 THEN 60
56 PRINT "You should have been able to get it in only"; STR$(L1); "."
57 GOTO 65
58 PRINT "Very good!": GOTO 65
60 PRINT "Good."
65 GOSUB 70
66 GOTO 12
70 PRINT
71 PRINT
73 RETURN
99 END

