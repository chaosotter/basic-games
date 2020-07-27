1 CLS: COLOR 12
5 PRINT TAB(35); "Bible Quiz"
6 PRINT TAB(31); "Creative Computing"
7 PRINT TAB(29); "Morristown, New Jersey"
9 PRINT: PRINT: PRINT: COLOR 14
10 PRINT "This game is a quiz which tests your knowledge of biblical events, places, and"
20 PRINT "and persons."
40 PRINT
50 PRINT "I will ask you a question and then wait for your answer.  If your answer is"
60 PRINT "correct, I will proceed to the next question.  If your answer is incorrect,"
70 PRINT "I will give you the correct answer and then proceed to the next question."
110 PRINT
118 PRINT "All answers are one word.  All answers must be correctly spelled.  There are"
119 PRINT "a total of 25 questions."
120 PRINT
122 COLOR 10: PRINT "How many questions do you wish to try";
124 INPUT N: COLOR 15
125 RANDOMIZE TIMER
130 PRINT
135 DIM S(25)
140 C = 0
142 N1 = 0
145 RESTORE
150 IF C = N THEN 290
160 C = C + 1
162 PRINT
170 C$ = STR$(C): C$ = RIGHT$(C$, LEN(C$) - 1): COLOR 13: PRINT "Question #"; C$: COLOR 15
180 PRINT
183 X = INT(RND(1) * 25 + 1)
184 IF S(X) = 1 THEN 183
185 S(X) = 1
186 FOR Q = 1 TO X: READ Q$, A$, V$: NEXT Q
210 COLOR 10: PRINT Q$;
220 INPUT R$: COLOR 15
225 Z1$ = A$: GOSUB 350: A2$ = Z2$
226 Z1$ = R$: GOSUB 350: R2$ = Z2$
230 IF R2$ = A2$ THEN 270
240 PRINT "Incorrect answer."
250 PRINT "The correct answer is "; A$; ".  ("; V$; ")"
260 GOTO 145
270 PRINT "Correct answer -- very good!  ("; V$; ")"
272 N1 = N1 + 1
280 GOTO 145
290 PRINT
292 PRINT "Out of"; N; "questions you answered"; N1; "correctly."
294 P = INT((N1 / N) * 100 + .5)
296 PRINT "Your percentage for correct answer is"; STR$(P); "%"
300 GOTO 400
301 DATA "Who set fire to three hundred foxes' tails","Samson","1 Judges 15:4-5"
303 DATA "What Hebrew sered a quick lunch under a tree","Abraham","Gen. 18:6-8"
305 DATA "What hungry man cursed a fruitless fig tree","Jesus","Mark 11:12-14"
307 DATA "Who killed his brother for humbling his sister","Absalom","2 Sam. 13"
309 DATA "Who had three hundred concubines","Solomon","1 Kings 11:1-3"
310 DATA "What boy had a variegated coat","Joseph","Gen. 37:3"
311 DATA "Who had a seamless coat","Jesus","John 19:23"
312 DATA "Who took off his shoe to bind a contract","Boaz","Ruth 4:7-9"
313 DATA "Who slept on an iron bedstead over thirteen feet log","Og","Deut. 3:11"
315 DATA "Who was the first city-builder","Cain","Gen. 4:17"
316 DATA "What physician was an author","Luke","Col. 4:14"
317 DATA "What song-composer is credited with 1005 songs","Solomon","1 Kings 4:32"
319 DATA "Who was the first person killed","Abel","Gen. 4:8"
320 DATA "Who was buried in a cave with his wife","Abraham","Gen. 25:9-10"
322 DATA "Who accidentally hanged himself in a tree","Absalom","2 Sam. 18:9"
324 DATA "What blind man killed three thousand at a religious feast","Samson","Judges 16:23-30"
326 DATA "What was the name of the first city ever built","Enoch","Gen. 4:17"
328 DATA "Who was a mighty hunter","Nimrod","Gen. 10:9-12"
329 DATA "Who drove furiously","Jehu","2 Kings 9:20"
330 DATA "Who was the first Christian martyr","Stephen","Acts 7"
331 DATA "Who feel asleep during a long sermon","Eutychus","Acts 20:9"
333 DATA "What city is called the city of palm trees","Jericho","Deut. 34:3"
335 DATA "Who climbed a tree to see Jesus","Zacchaeus","Luke 19:4"
336 DATA "Who killed Goliath","David","1 Sam. 17:59"
337 DATA "Who was cast into a den of lions","Daniel","Dan. 6:16"
350 Z2$ = ""
355 FOR Z = 1 TO LEN(Z1$)
360 Z3$ = MID$(Z1$, Z, 1)
365 IF Z3$ >= "a" AND Z3$ <= "z" THEN Z2$ = Z2$ + CHR$(ASC(Z3$) - 32) ELSE Z2$ = Z2$ + Z3$
370 NEXT Z
375 RETURN
400 END

