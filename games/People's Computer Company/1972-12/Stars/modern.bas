100 REM *** STARS - PEOPLE'S COMPUTER CENTER, MENLO PARK, CA
110 CLS: COLOR 15: PRINT "Stars - A Number Guessing Game"
120 PRINT
130 RANDOMIZE TIMER
140 REM *** A IS LIMIT ON NUMBER, M IS NUMBER OF GUESSES
150 LET A = 100
160 LET M = 7
170 COLOR 10: PRINT "Do you want instructions (Y/N)";
180 INPUT Z$: COLOR 15
190 IF LEFT$(Z$, 1) <> "Y" AND LEFT$(Z$, 1) <> "y" THEN 280
200 REM *** INSTRUCTIONS ON HOW TO PLAY
205 PRINT: COLOR 14
210 PRINT "I am thinking of a whole number from 1 to"; STR$(A); ".  Try to guess my number."
220 PRINT "After you guess, I will type one or more stars (*).  The more stars I type,"
230 PRINT "the closer you are to my number."
240 PRINT: PRINT "One star (*) means far away."
250 PRINT "Seven stars (*******) means really close!"
260 PRINT: PRINT "You get"; M; "guesses.": COLOR 15
270 REM *** COMPUTER 'THINKS' OF A NUMBER
280 PRINT
290 PRINT
300 LET X = INT(A * RND(1)) + 1
310 PRINT "Okay, I am thinking of a number.  Start guessing."
320 REM *** GUESSING BEGINS. HUMAN GETS M GUESSES.
330 FOR K = 1 TO M
340 PRINT
350 COLOR 10: PRINT "Your guess";
360 INPUT G: COLOR 15
370 IF G = X THEN 600
380 LET D = ABS(X - G)
390 IF D >= 64 THEN 510
400 IF D >= 32 THEN 500
410 IF D >= 16 THEN 480
420 IF D >= 8 THEN 480
430 IF D >= 4 THEN 470
440 IF D >= 2 THEN 460
450 PRINT "*";
460 PRINT "*";
470 PRINT "*";
480 PRINT "*";
490 PRINT "*";
500 PRINT "*";
510 PRINT "*";
520 PRINT
530 NEXT K
540 REM *** DID NOT GUESS NUMBER IN M GUESSES
550 PRINT
560 PRINT "Sorry, that's"; M; "guesses.  The number was"; STR$(X); "."
570 PRINT "Let's play again."
580 GOTO 280
590 REM *** WE HAVE A WINNER
600 FOR N = 1 TO 50
610 PRINT "*";
620 NEXT N
630 PRINT "!!!"
640 PRINT "You got it in"; K; "guesses!!  Let's play again."
650 GOTO 280
660 END

