1 CLS: COLOR 12: PRINT TAB(36); "Diamond"
2 PRINT TAB(31); "Creative Computing": PRINT TAB(29); "Morristown, New Jersey"
3 PRINT: PRINT: PRINT
4 COLOR 10: PRINT "For a pretty diamond pattern, enter an odd number (5-21)";
5 INPUT R: PRINT: COLOR 15
6 Q = INT(80 / R): A$ = STRING$(2, 178)
8 FOR L = 1 TO Q
10 X = 1: Y = R: Z = 2
20 FOR N = X TO Y STEP Z
25 PRINT TAB((R - N) / 2 + 1);
28 FOR M = 1 TO Q
29 C = 1
30 FOR A = 1 TO N
32 IF C > LEN(A$) THEN PRINT CHR$(176);: GOTO 50
34 PRINT MID$(A$, C, 1);
36 C = C + 1
50 NEXT A
53 IF M = Q THEN 60
55 PRINT TAB(R * M + (R - N) / 2 + 1);
56 NEXT M
60 PRINT
70 NEXT N
83 IF X <> 1 THEN 95
85 X = R - 2: Y = 1: Z = -2
90 GOTO 20
95 NEXT L
99 END

