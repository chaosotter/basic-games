10 PRINT TAB(34); "STARS"
20 PRINT TAB(15); "CREATIVE COMPUTING  MORRISTOWN, NEW JERSEY"
30 PRINT: PRINT: PRINT: RANDOMIZE TIMER
100 REM *** STARS - PEOPLE'S COMPUTER CENTER, MENLO PARK, CA
140 REM *** A IS LIMIT ON NUMBER, M IS NUMBER OF GUESSES
150 A = 100: M = 7
170 INPUT "DO YOU WANT INSTRUCTIONS"; A$
190 IF LEFT$(A$, 1) = "N" THEN 280
200 REM *** INSTRUCTIONS ON HOW TO PLAY
210 PRINT "I AM THINKING OF A WHOLE NUMBER FROM 1 TO"; A
220 PRINT "TRY TO GUESS MY NUMBER.  AFTER YOU GUESS, I"
230 PRINT "WILL TYPE ONE OR MORE STARS (*).  THE MORE"
240 PRINT "STARS I TYPE, THE CLOSER YOU ARE TO MY NUMBER."
250 PRINT "ONE STAR (*) MEANS FAR AWAY, SEVEN STARS (*******)"
260 PRINT "MEANS REALLY CLOSE!  YOU GET"; M; "GUESSES."
270 REM *** COMPUTER THINKS OF A NUMBER
280 PRINT
290 PRINT
300 X = INT(A * RND(1) + 1)
310 PRINT "OK, I AM THINKING OF A NUMBER, START GUESSING."
320 REM *** GUESSING BEGINS, HUMAN GETS M GUESSES
330 FOR K = 1 TO M
340 PRINT
350 PRINT "YOUR GUESS";
360 INPUT G
370 IF G = X THEN 600
380 D = ABS(G - X)
390 IF D >= 64 THEN 510
400 IF D >= 32 THEN 500
410 IF D >= 16 THEN 490
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
540 REM *** DID NOT GUESS IN M GUESSES
550 PRINT
560 PRINT "SORRY, THAT'S"; M; "GUESSES. THE NUMBER WAS"; X
580 GOTO 650
590 REM *** WE HAVE A WINNER
600 PRINT: FOR N = 1 TO 79
610 PRINT "*";
620 NEXT N
630 PRINT: PRINT
640 PRINT "YOU GOT IT IN"; K; "GUESSES!!!  LET'S PLAY AGAIN..."
650 GOTO 280
660 END

