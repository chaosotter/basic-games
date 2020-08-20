5 CLS: COLOR 12: RANDOMIZE TIMER
10 PRINT TAB(35); "Two to Ten"
20 PRINT TAB(31); "Creative Computing"
25 PRINT TAB(29); "Morristown, New Jersey"
30 PRINT
40 PRINT
50 PRINT: COLOR 14
60 PRINT "Welcome to the game of Two to Ten.  That name comes from the special deck of"
70 PRINT "cards used.  There are no face cards, only the cards 2-10.  This game is easy"
80 PRINT "and fun to play if you understand what you are doing, so read the instructions"
90 PRINT "carefully."
100 PRINT
110 PRINT "At the start of the game, you bet on winning.  Type in any number between 0 and"
120 PRINT "200.  I then pick a random number you are to reach by the sum total of the"
130 PRINT "cards chosen.  Because of the rare chance of your getting to that number"
140 PRINT "exactly, you are given an allowance card.  The object of the game is to get the"
150 PRINT "total of cards within the mystery number without going over."
160 PRINT
180 PRINT "You are given a hint as to what the number is.  This is not the exact number,"
190 PRINT "only one close to it.  All you do in this game is decide when to stop.  At this"
200 PRINT "point, your total is compared with the number and your winnings are determined."
210 PRINT: COLOR 15
220 M = 200
223 D = 0
225 T = 0
227 O = INT(10 * RND(1)) + 25
229 N = INT(O * RND(1)) + O
230 R = (INT(15 * RND(1)) + 1) / 100
250 S = INT(2 * RND(1) + 1)
260 IF S <> 1 THEN 270
262 E = INT(N - (N * R))
265 GOTO 280
270 E = INT(N + (N * R))
280 A = INT(9 * RND(11) + 2)
283 PRINT
285 M$ = STR$(M): M$ = RIGHT$(M$, LEN(M$) - 1): COLOR 10: PRINT "You have $"; M$; " to bet.  Place your bet";
287 INPUT B: COLOR 15
288 PRINT
289 IF B < 0 THEN 297
290 IF M >= B THEN 300
293 PRINT "You can't bet more than you've got!"
295 GOTO 285
297 PRINT "You may not bet against yourself."
298 GOTO 285
300 PRINT "Your 'lucky limit' card is a"; STR$(A); "."
310 PRINT "You must come within"; A; "of the real target without going over to win."
315 PRINT
320 PRINT "Here we go!"
322 PRINT
340 D = D + 1
350 C = INT(9 * RND(1) + 2)
355 D$ = STR$(D): D$ = RIGHT$(D$, LEN(D$) - 1)
360 PRINT "Card #"; D$; " is a"; STR$(C); ".  You are trying to come near"; STR$(E); "."
365 T = T + C
370 IF T <= N THEN 380
375 PRINT "Your total is over the number"; N; "-- an automatic loss!"
377 GOTO 570
380 COLOR 10: PRINT "Your total is"; STR$(T); ".  Do you want to continue (Y/N)";
385 INPUT Q$: COLOR 15
387 PRINT
390 IF LEFT$(Q$, 1) = "Y" OR LEFT$(Q$, 1) = "y" THEN 322
410 IF T < N - A OR T > N THEN 550
500 PRINT "You win!  The number was"; STR$(N); ", and your guess total was"; STR$(T); ", which is"
510 PRINT "within your limit card."
520 M = M + B
540 GOTO 600
550 PRINT "You blew it!  The number was"; STR$(N); ", outside your limit by"; STR$((N - A) - T); "."
565 PRINT
570 M = M - B
600 PRINT
601 M$ = STR$(M): M$ = RIGHT$(M$, LEN(M$) - 1)
602 COLOR 11: PRINT "You now have $"; M$; " in cash to bet in the next game!": COLOR 15
605 IF M <= 0 THEN 655
610 COLOR 10: PRINT "Would you like to play the next game (Y/N)";
615 INPUT Q$: COLOR 15
620 IF LEFT$(Q$, 1) = "Y" OR LEFT$(Q$, 1) = "y" THEN PRINT: GOTO 223
630 PRINT: PRINT "Hope you had fun."
640 GOTO 999
650 PRINT
655 PRINT CHR$(7);
660 PRINT "You are broke!  You may not play anymore!"
999 END

