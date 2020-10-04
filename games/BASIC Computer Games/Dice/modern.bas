1 CLS: COLOR 12
2 PRINT TAB(38); "Dice"
4 PRINT TAB(31); "Creative Computing"
5 PRINT TAB(29); "Morristown, New Jersey"
6 PRINT: PRINT: PRINT: RANDOMIZE TIMER
10 DIM F(12)
20 REM  DANNY FREIDUS
25 COLOR 14
30 PRINT "This program simulates the rolling of a pair of dice.  You enter the number of"
40 PRINT "times you want the computer to 'roll' the dice.  Watch out, very large numbers"
50 PRINT "take a long time.  In particular, numbers over 5000."
60 COLOR 15
80 FOR Q = 1 TO 12
90 F(Q) = 0
100 NEXT Q
110 COLOR 10: PRINT: PRINT "How many rolls";
120 INPUT X: COLOR 15
130 FOR S = 1 TO X
140 A = INT(6 * RND(1) + 1)
150 B = INT(6 * RND(1) + 1)
160 R = A + B
170 F(R) = F(R) + 1
180 NEXT S
185 PRINT
190 COLOR 11: PRINT "Total Spots", "Number of Times": COLOR 13
200 FOR V = 2 TO 12
210 PRINT V, F(V)
220 NEXT V
221 PRINT
222 COLOR 10: PRINT: PRINT "Try again (Y/N)";
223 INPUT Z$: COLOR 15
224 IF LEFT$(Z$, 1) = "Y" OR LEFT$(Z$, 1) = "y" THEN 80
240 END

