1 PRINT TAB(34); "KENO"
2 PRINT TAB(15); " CREATIVE COMPUTING,MORRISTOWN, NEW JERSEY"
3 DIM N(21), M(23), A(8)
8 RANDOMIZE TIMER
9 PRINT: PRINT: PRINT
10 PRINT "KENO IS PLAYED IN MANY CASINOS IN LAS VEGAS."
13 PRINT "PLAY KENO BY COMPUTER.  ONE VARIATION OF THE GAME, UTILIZES"
16 PRINT "THE RANDOM NUMBER GENERATOR."
19 PRINT
20 PRINT "THE PLAYER CHOOSES 8 DIFFERENT NUMBERS FROM 1 TO 80"
23 PRINT "INCLUSIVE, AND BETS $1.20.  THE COMPUTER WILL SELECT"
26 PRINT "20 NUMBERS AT RANDOM AND WILL ELIMINATE DUPLICATES WHICH"
29 PRINT "MAY OCCUR .  ANOTHER NUMBER  WILL BE INSERTED IN ITS PLACE"
32 PRINT "SO THAT THE COMPUTER WILL OUTPUT 20 DIFFERENT NUMBERS."
35 PRINT: PRINT
38 PRINT: PRINT: PRINT "HERE WE GO!!!"
40 PRINT "THE COMPUTER WILL OUTPUT A ? MARK.  TYPE A NUMBER FROM "
43 PRINT "1 TO 80, INCLUSIVE, AND PRESS THE RETURN KEY. REPEAT THIS"
46 PRINT "PROCESS UNTIL THE ? MARK IS NO LONGER SHOWN."
48 FOR I = 1 TO 8
50 INPUT A(I)
51 IF A(I) > 80 THEN 56
53 IF A(I) = 0 THEN 56
54 IF A(I) < 0 THEN 56
55 GOTO 57
56 PRINT "TYPE A NUMBER FROM 1 TO 80 , INCLUSIVE, PLEASE.": GOTO 50
57 NEXT I
58 C = 0: FOR K = 1 TO 7
59 FOR J = K TO 7
60 X = A(K): Y = A(J + 1)
61 IF X <> Y THEN 72
62 C = C + 1
63 PRINT "A DUPLICATE NUMBER HAS BEEN DETECTED IN YOUR INPUT."
64 PRINT "TYPE ANOTHER NUMBER, PLEASE.": INPUT Y
65 IF Y = 0 THEN 70
66 IF Y > 80 THEN 70
67 IF Y < 0 THEN 70
68 A(J + 1) = Y
69 GOTO 61
70 PRINT "TYPE A NUMBER FROM 1 TO 80, INCLUSIVE, PLEASE."
71 GOTO 64
72 NEXT J
73 NEXT K: PRINT: PRINT
75 IF C = 0 THEN 88
76 GOTO 58
88 PRINT " THE COMPUTER WILL SELECT 20 NUMBERS AT RANDOM.  THE BELL "
91 PRINT "TONE INDICATES IT IS IN THE PROCESS OF SELECTING THE NUMBERS."
100 FOR L = 1 TO 20
103 N(L) = INT(80 * RND(1) + 1)
106 M(L) = N(L)
109 NEXT L
110 L = 21
112 FOR K = 1 TO 20
115 FOR J = K TO L - 1
118 X = M(K)
121 Y = M(J + 1)
124 IF X <> Y THEN 139
130 M(J + 1) = INT(80 * RND(1) + 1)
133 Y = M(J + 1)
136 GOTO 124
139 PRINT CHR$(7);
142 NEXT J
145 NEXT K
147 PRINT: PRINT
148 PRINT "YOUR NUMBERS ARE:"
151 FOR I = 1 TO 8
154 PRINT A(I);
157 NEXT I: PRINT: PRINT: PRINT
160 PRINT " THE COMPUTER HAS SELECTED THE FOLLOWING  NUMBERS:"
163 FOR L = 1 TO 20
167 PRINT M(L);
170 NEXT L: PRINT: PRINT
173 PRINT "THE PROGRAM WILL COMPARE YOUR NUMBERS WITH THE "
176 PRINT "NUMBERS THE COMPUTER HAS SELECTED."
179 PRINT: PRINT
182 PRINT "LISTEN FOR THE BELL TONE--- EACH RING INDICATES ANOTHER"
185 PRINT "CORRECT GUESS BY YOU.":
188 PRINT "YOU HAVE GUESSED THE FOLLOWED NUMBERS:"
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
225 I = I + 1: PRINT: IF I <> 8 THEN 197
228 IF G < 5 THEN 242
231 IF G = 5 THEN 261
234 IF G = 6 THEN 267
237 IF G = 7 THEN 273
240 IF G = 8 THEN 279
242 PRINT "YOU CAUGHT"; G; "NUMBERS OUT OF 8--"
243 PRINT "NOT ENOUGH CORRECT GUESSES-- 'SO SOLLY', NO PAYOFF."
245 PRINT: PRINT
246 PRINT "DO YOU WANT TO PLAY KENO AGAIN?"
249 PRINT "TYPE 'YES' OR 'NO'"
250 C = 0
251 INPUT X$
252 IF X$ = "YES" THEN 38
253 IF X$ = "NO" THEN 299
254 C = C + 1
255 IF C = 3 THEN 299
256 PRINT "TYPE 'YES' OR 'N'"
257 GOTO 251
258 IF X$ = "NO" THEN 299
259 PRINT "TYPE YES OR NO PLEASE!!"
261 PRINT "YOU  CAUGHT"; G; "NUMBERS OUT OF 8--YOU WIN $10.00"
264 PRINT: PRINT: GOTO 246
267 PRINT "YOU CAUGHT"; G; "NUMBERS OUT OF 8--YOU WIN $100.00"
270 PRINT: PRINT: GOTO 246
273 PRINT "YOU CAUGHT "; G; "NUMBERS OUT OF 8--YOU WIN $2200.00"
276 PRINT: PRINT: GOTO 246
279 PRINT "YOU CAUGHT "; G; "NUMBERS OUT OF 8--YOU WIN $25000.00"
282 PRINT "8 OUT OF 8 DOES NOT OCCUR TOO OFTEN, LUCKY."
285 PRINT: PRINT: GOTO 246
299 PRINT "THAT'S ALL FOR NOW.  PLAY KENO AGAIN, BE SEEING YOU."
300 END
