1 CLS: COLOR 12
5 PRINT TAB(37); "Craps"
10 PRINT TAB(31); "Creative Computing"
11 PRINT TAB(29); "Morristown, New Jersey"
12 PRINT: PRINT: PRINT: RANDOMIZE TIMER: COLOR 15
15 LET R = 0
20 PRINT "2, 3, 12 are losers.": PRINT "4, 5, 6, 8, 9, 10 are points.": PRINT "7 and 11 are natural winners."
21 LET T = 1
24 LET X = RND(1)
25 LET T = T + 1
27 COLOR 10: PRINT: PRINT "Input the amount of your wager";
28 INPUT F: COLOR 15: PRINT
30 PRINT "I will now throw the dice..."
40 LET E = INT(6 * RND(1)) + 1
41 LET S = INT(6 * RND(1)) + 1
42 LET X = E + S: X$ = STR$(X): X$ = RIGHT$(X$, LEN(X$) - 1)
50 IF X = 7 THEN 180
55 IF X = 11 THEN 180
60 IF X = 1 THEN 40
62 IF X = 2 THEN 195
65 IF X = 0 THEN 40
70 IF X = 2 THEN 200
80 IF X = 3 THEN 200
90 IF X = 12 THEN 200
125 IF X = 5 THEN 220
130 IF X = 6 THEN 220
140 IF X = 8 THEN 220
150 IF X = 9 THEN 220
160 IF X = 10 THEN 220
170 IF X = 4 THEN 220
180 PRINT X$; " - natural... a winner!!!"
185 PRINT X$; " pays even money, you win"; F; "dollars."
190 GOTO 210
195 PRINT X$; " - snake eyes... you lose."
196 PRINT "You lose"; F; "dollars."
197 LET F = 0 - F
198 GOTO 210
200 PRINT X$; " - craps... you lose."
205 PRINT "You lose"; F; "dollars."
206 LET F = 0 - F
210 LET R = R + F
211 GOTO 320
220 PRINT X$; " is the point.  I will roll again."
230 LET H = INT(6 * RND(1)) + 1
231 LET Q = INT(6 * RND(1)) + 1
232 LET O = H + Q: O$ = STR$(O): O$ = RIGHT$(O$, LEN(O$) - 1)
240 IF O = 1 THEN 230
250 IF O = 7 THEN 290
255 IF O = 0 THEN 230
260 IF O = X THEN 310
270 PRINT O$; " - no point.  I will roll again."
280 GOTO 230
290 PRINT O$; " - craps.  You lose."
291 PRINT "You lose"; F; "dollars."
292 F = 0 - F
293 GOTO 210
300 GOTO 320
310 PRINT X$; " - a winner... congratulations!!!"
311 PRINT X$; " at 2-to-1 odds pays you... let me see..."; 2 * F; "dollars."
312 LET F = 2 * F
313 GOTO 210
320 PRINT: COLOR 10: PRINT "Do you want to play again (Y/N)";
330 INPUT M$: COLOR 15: R$ = STR$(ABS(R)): R$ = RIGHT$(R$, LEN(R$) - 1)
331 IF R < 0 THEN 334
332 IF R > 0 THEN 336
333 IF R = 0 THEN 338
334 PRINT: PRINT "You are now under $"; R$; "."
335 GOTO 340
336 PRINT: PRINT "You are now ahead $"; R$; "."
337 GOTO 340
338 PRINT: PRINT "You are now even at $0."
340 IF LEFT$(M$, 1) = "Y" OR LEFT$(M$, 1) = "y" THEN 27
341 IF R < 0 THEN 350
342 IF R > 0 THEN 353
343 IF R = 0 THEN 355
350 PRINT "Too bad, you are in the hole.  Come again."
351 GOTO 360
353 PRINT "Congratulations -- you came out a winner.  Come again!"
354 GOTO 360
355 PRINT "Congratulations -- you came out even.  Not bad for an amateur."
360 END

