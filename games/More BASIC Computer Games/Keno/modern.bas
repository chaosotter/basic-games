1 CLS: COLOR 12: PRINT TAB(38); "Keno"
2 PRINT TAB(31); "Creative Computing"
3 PRINT TAB(29); "Morristown, New Jersey"
5 DIM N(80), M(80), A(8)
8 RANDOMIZE TIMER
9 PRINT: PRINT: PRINT: COLOR 14
10 PRINT "Keno is played in many casinos in Las Vegas.  Play Keno by computer.  One"
13 PRINT "variation of the game, utilizes the random number generator."
19 PRINT
20 PRINT "The player chooses 8 different numbers from 1 to 80 inculsive, and bets $1.20."
23 PRINT "The computer will select 20 numbers at random and will eliminate duplicates"
26 PRINT "which may occur.  Another number will be inserted in its place so that the"
29 PRINT "computer will output 20 different numbers."
35 COLOR 15
38 PRINT: PRINT
39 PRINT "Here we go!  The computer will output a ? mark.  Type a number from 1 to 80,"
40 PRINT "inclusive, and press the Return key.  Repeat this process until the ? mark is"
43 PRINT "no longer shown."
48 FOR I = 1 TO 8
50 COLOR 10: INPUT A(I): COLOR 15
51 IF A(I) > 80 THEN 56
53 IF A(I) = 0 THEN 56
54 IF A(I) < 0 THEN 56
55 GOTO 57
56 PRINT "Type a number from 1 to 80 inclusive, please.": GOTO 50
57 NEXT I
58 C = 0: FOR K = 1 TO 7
59 FOR J = K TO 7
60 X = A(K): Y = A(J + 1)
61 IF X <> Y THEN 72
62 C = C + 1
63 PRINT "A duplicate number has been detected in your input."
64 COLOR 10: PRINT "Type another number, please";: INPUT Y: COLOR 15
65 IF Y = 0 THEN 70
66 IF Y > 80 THEN 70
67 IF Y < 0 THEN 70
68 A(J + 1) = Y
69 GOTO 61
70 PRINT "Type a number from 1 to 80 inclusive, please."
71 GOTO 64
72 NEXT J
73 NEXT K: PRINT: PRINT
75 IF C = 0 THEN 88
76 GOTO 58
88 PRINT "The computer will select 20 numbers at random.  The bell tone indicates it is"
91 PRINT "in the process of selecting the numbers."
100 FOR L = 1 TO 80: N(L) = L: NEXT L
110 FOR L = 1 TO 20
120 J = INT(RND(1) * 80 + 1): IF N(J) = 0 THEN 120
130 M(L) = N(J): N(J) = 0
140 NEXT L: PRINT CHR$(7);
147 PRINT: COLOR 15
148 PRINT "Your numbers are:"
149 COLOR 11: PRINT " ";
151 FOR I = 1 TO 8
154 PRINT A(I);
157 NEXT I: PRINT: PRINT: COLOR 15
160 PRINT "The computer has selected the following numbers:"
161 COLOR 11: PRINT " ";
163 FOR L = 1 TO 20
167 PRINT M(L);
170 NEXT L: PRINT: PRINT: COLOR 15
173 PRINT "The program will compare your numbers with the numbers the computer has"
176 PRINT "selected.  Listen for the bell tone -- each ring indicates another correct"
179 PRINT "guess by you."
182 PRINT
188 PRINT "You have guessed the following numbers:"
189 COLOR 11: PRINT " ";
191 G = 0
194 I = 1
197 FOR J = 1 TO 20
200 X = A(I)
203 Y = M(J)
206 IF X = Y THEN 213
209 NEXT J
210 GOTO 225
213 PRINT CHR$(7);
216 FOR V1 = 1 TO 3976: NEXT V1
219 PRINT A(I);
222 G = G + 1
225 I = I + 1: IF I <> 8 THEN 197
226 PRINT: PRINT: COLOR 15
228 IF G < 5 THEN 242
231 IF G = 5 THEN 261
234 IF G = 6 THEN 267
237 IF G = 7 THEN 273
240 IF G = 8 THEN 279
242 PRINT "You caught"; G; "numbers out of 8.  Not enough correct guesses -- so sorry, no"
243 PRINT "payoff."
245 PRINT
246 COLOR 10: PRINT "Do you want to play Keno again (Y/N)";
250 C = 0
251 INPUT X$: COLOR 15
252 IF LEFT$(X$, 1) = "Y" OR LEFT$(X$, 1) = "y" THEN 38
253 IF LEFT$(X$, 1) = "N" OR LEFT$(X$, 1) = "n" THEN 299
254 C = C + 1
255 IF C = 3 THEN 299
256 PRINT "Type 'Y' or 'N'."
257 GOTO 251
258 IF LEFT$(X$, 1) = "N" OR LEFT$(X$, 1) = "n" THEN 299
259 PRINT "Type 'Y' or 'N' please!!"
261 PRINT "You caught"; G; "numbers out of 8.  You win $10.00."
264 PRINT: GOTO 246
267 PRINT "You caught"; G; "numbers out of 8.  You win $100.00."
270 PRINT: GOTO 246
273 PRINT "You caught"; G; "numbers out of 8.  You win $2,200.00!"
276 PRINT: GOTO 246
279 PRINT "You caught"; G; "numbers out of 8.  You win $25,000.00!"
282 PRINT "8 out of 8 does not occur too often -- lucky!"
285 PRINT: PRINT: GOTO 246
299 PRINT "That's all for now.  Play Keno again.  Be seeing you."
300 END

