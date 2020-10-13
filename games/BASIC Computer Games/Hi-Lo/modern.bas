5 CLS: COLOR 12
10 PRINT TAB(37); "Hi Lo"
20 PRINT TAB(31); "Creative Computing": PRINT TAB(29); "Morristown, New Jersey"
30 PRINT: PRINT: PRINT: RANDOMIZE TIMER: COLOR 14
100 PRINT "This is the game of Hi Lo.": PRINT
110 PRINT "You will have 6 tries to guess the amount of money in the Hi Lo jackpot, which"
120 PRINT "is between 1 and 100 dollars.  If you guess the amount, you win all the money"
130 PRINT "in the jackpot!  Then you get another chance to win more moeny.  However, if"
140 PRINT "you do not guess the amount, the game ends.": PRINT: COLOR 15
160 R = 0
170 B = 0: PRINT
180 Y = INT(100 * RND(1))
200 COLOR 10: PRINT "Your guess";
210 INPUT A: COLOR 15
220 B = B + 1
230 IF A = Y THEN 300
240 IF A > Y THEN 270
250 PRINT "Your guess is too low.": GOTO 280
270 PRINT "Your guess is too high."
280 PRINT: IF B < 6 THEN 200
290 COLOR 13: PRINT "You blew it... too bad!  The number was"; STR$(Y); ".": COLOR 15
295 R = 0: GOTO 350
300 COLOR 11: PRINT "Got it!!!  You win"; Y; "dollars.": COLOR 15
310 R = R + Y
320 PRINT "Your total winnings are now"; R; "dollars."
350 PRINT: COLOR 10: PRINT "Play again (Y/N)";
360 INPUT A$: COLOR 15: IF LEFT$(A$, 1) = "Y" OR LEFT$(A$, 1) = "y" THEN 170
380 PRINT: PRINT "So long.  Hope you enjoyed yourself!"
390 END

