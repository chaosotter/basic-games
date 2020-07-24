100 REM *** MUGWUMP - A HIDE AND SEEK GAME
110 REM *** PEOPLE'S COMPUTER COMPANY, MENLO PARK CA
120 RANDOMIZE TIMER
125 CLS: COLOR 15
130 REM *** G=GRID SIZE  N=NUMBER OF GUESSES ALLOWED
140 LET G = 10
150 LET N = 5
160 COLOR 10: PRINT "Do you want the rules (Y/N)";
170 INPUT Z$: COLOR 15
180 IF LEFT$(Z$, 1) <> "Y" AND LEFT$(Z$, 1) <> "y" THEN 350
190 REM *** RULES IN LINES 200 THRU 330
195 PRINT: COLOR 14
200 PRINT "A Mugwump is hiding in a"; G; "by"; G; "grid.  Try to find him by guessing his"
210 PRINT "gridpoint.  Homebase is gridpoint (0,0) and a guess is a pair of whole numbers"
220 PRINT "(0 to "; STR$(G - 1); ") separated by a comma.  The first number is the distance to the"
230 PRINT "right of homebase and the  second number is the distance above the homebase."
240 PRINT "For example, if you think the Mugwump is hiding 8 units to the right of"
250 PRINT "homebase and 3 units above homebase, then enter  8,3  as your guess and press"
260 PRINT "the 'Return' key."
300 PRINT
310 PRINT "You get"; N; "guesses.  After each guess, I will tell you how far (in a direct"
320 PRINT "line) you are from the Mugwump."
330 COLOR 15
340 REM *** HIDE MUGWUMP AT RANDOM GRIDPOINT  A,B
350 LET A = INT(G * RND(1))
360 LET B = INT(G * RND(1))
370 PRINT
380 PRINT "Mugwump is hiding.  You get"; N; "guesses."
390 REM *** N GUESSES ALLOWED - LINES 400 THRU 560
400 FOR T = 1 TO N
410 PRINT
420 COLOR 10: PRINT "What is your guess";
430 INPUT X, Y: COLOR 15
440 REM *** IF MUGWUMP NOT FOUND GO TO LINE 500
450 IF X <> A THEN 520
460 IF Y <> B THEN 520
470 PRINT "You found him in"; T; "guesses!!!"
480 PRINT "Let's play again."
490 PRINT
500 GOTO 350
510 REM *** D=STRAIGHTLINE DISTANCE TO MUGWUMP
520 LET D = SQR((X - A) ^ 2 + (Y - B) ^ 2)
530 REM *** THEN WE ROUND D TO ONE DECIMAL PLACE
540 LET D = INT(10 * D) / 10
550 PRINT "You are"; D; "units from the Mugwump."
560 NEXT T
570 REM *** MUGWUMP NOT FOUND IN N GUESSES
580 PRINT
590 PRINT "Sorry, that's"; N; "tries."
600 PRINT "Mugwump is at gridpoint"; STR$(A); ","; B
610 PRINT "Let's play again."
620 PRINT
630 GOTO 350
640 END

