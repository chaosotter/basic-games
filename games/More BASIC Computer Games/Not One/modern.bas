1 CLS: COLOR 12
3 PRINT TAB(37); "Notone"
5 PRINT TAB(31); "Creative Computing"
6 PRINT TAB(29); "Morristown, New Jersey"
7 PRINT: PRINT: PRINT: COLOR 15
8 RANDOMIZE TIMER
10 DIM T(50), R(10), C(10), L(12)
15 COLOR 10: INPUT "Would you like the instructions"; A$: COLOR 15
20 IF LEFT$(A$, 1) = "Y" OR LEFT$(A$, 1) = "y" THEN 35
25 IF LEFT$(A$, 1) = "N" OR LEFT$(A$, 1) = "n" THEN 100
30 PRINT: PRINT "Answer yes or no!": PRINT: GOTO 15
35 COLOR 14: PRINT
40 PRINT "The game of Notone is played with two players and a pair of dice.  There are"
45 PRINT "ten rounds in the game, one round consisting of one turn for each player."
50 PRINT "Players (yourself and the computer) add the score they attain on each round,"
55 PRINT "and the player with the highest score after ten rounds is in the winner."
60 PRINT
65 PRINT "On each turn, the player may roll the two dice from 1 to N times.  If T(i) is"
67 PRINT "the total of the dice on the ith roll, then the player's score for the turn is"
72 PRINT "T(1)+T(2)+...+T(N).  However, and here's the catch, if any T(i) is equal to"
75 PRINT "T(1) then the turn is over and his score for that round is zero.  After each"
77 PRINT "roll that doesn't equal T(1), the player can decide whether to roll again or"
80 PRINT "stop and score the number of points already obtained."
85 COLOR 15: PRINT
100 FOR T = 1 TO 10: PRINT: COLOR 13: PRINT "Round"; T: COLOR 15
110 X = X + 1: R1 = INT(6 * RND(1)) + 1
115 R2 = INT(6 * RND(1)) + 1: PRINT "You rolled"; STR$(R1 + R2); "."
120 IF X > 1 THEN 130
125 T(1) = R1 + R2: GOTO 135
130 T(X) = R1 + R2
131 IF T(1) <> T(X) THEN 135
132 PRINT "You get a zero for this round."
133 X = 0: T1 = 0: GOTO 200
135 T1 = T1 + T(X)
140 COLOR 10: INPUT "Roll again (Y/N)"; B$: COLOR 15
145 IF LEFT$(B$, 1) = "Y" OR LEFT$(B$, 1) = "y" THEN 110
150 IF LEFT$(B$, 1) = "N" OR LEFT$(B$, 1) = "n" THEN R(T) = T1: X = 0: T1 = 0: FOR A = 1 TO 50: T(A) = 0: NEXT: GOTO 200
160 PRINT: PRINT "Answer yes or no!": PRINT: GOTO 140
200 PRINT: COLOR 13: PRINT TAB(15); "Computer's Move": PRINT: COLOR 15
201 RESTORE
202 R1 = INT(6 * RND(1)) + 1: R2 = INT(6 * RND(1)) + 1
204 FOR D = 2 TO R1 + R2: READ L(D): NEXT: D = R1 + R2
205 FOR C = 1 TO L(D): IF C = 1 THEN 215
210 R1 = INT(6 * RND(1)) + 1: R2 = INT(6 * RND(1)) + 1
215 C$ = STR$(C): C$ = RIGHT$(C$, LEN(C$) - 1)
216 COLOR 11: PRINT "Computer's Roll #"; C$; ":"; R1 + R2: COLOR 15
220 IF C > 1 THEN 230
225 T(1) = R1 + R2: GOTO 242
230 T(C) = R1 + R2
235 IF T(C) <> T(1) GOTO 242
236 PRINT "The computer gets a zero for the turn!"
237 T1 = 0: GOTO 245
242 T1 = T1 + T(C): NEXT C
245 C(T) = T1: T1 = 0: X = 0
250 C2 = C2 + C(T): C1 = C1 + R(T)
253 PRINT: FOR B = 1 TO 50: T(B) = 0: NEXT
255 IF T = 10 THEN PRINT "Final score": PRINT
260 IF C2 < C1 THEN 270
263 PRINT "Computer: "; C2, "You: "; C1: GOTO 300
270 PRINT "You: "; C1, "Computer: "; C2
300 NEXT T
305 DATA 18,18,9,9,6,6,6,9,9,18,18
310 PRINT: PRINT "Scoring Summary": PRINT
315 PRINT "Round"; TAB(15); "You"; TAB(25); "Computer": PRINT
320 COLOR 11: FOR E = 1 TO 10: PRINT E; TAB(16); R(E); TAB(26); C(E): NEXT
325 COLOR 12: PRINT: PRINT "Totals: "; TAB(16); C1; TAB(26); C2: PRINT: COLOR 15

