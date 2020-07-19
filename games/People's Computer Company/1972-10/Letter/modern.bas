100 REM *** LETTER - A LETTER GUESSING GAME
110 RANDOMIZE TIMER
115 CLS: COLOR 15
120 LET A$ = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
200 REM *** PRINT INSTRUCTIONS ON HOW TO PLAY
205 COLOR 14
210 PRINT "I will think of a letter of the alphabet, A to Z.  Try to guess my letter."
220 PRINT "After each guess, I will tell you if you guessed my letter or if your guess is"
230 PRINT "too high or too low.  The lowest letter is 'A' and the highest letter is 'Z'."
240 COLOR 15
300 REM *** COMPUTER THINKS OF A LETTER
310 LET X = INT(26 * RND(1)) + 1
320 LET L$ = MID$(A$, X, 1)
330 PRINT
340 PRINT "Okay, I have a letter.  Start guessing."
400 REM *** HUMAN STARTS GUESSING
410 PRINT
420 COLOR 10: PRINT "What is your guess";
430 INPUT G$: COLOR 15
435 G$ = LEFT$(G$, 1): IF G$ >= "a" AND G$ <= "z" THEN G$ = CHR$(ASC(G$) - 32)
440 IF G$ = L$ THEN 500
450 IF G$ > L$ THEN 480
460 PRINT "Too low.  Try a higher letter."
470 GOTO 410
480 PRINT "Too high.  Try a lower letter."
490 GOTO 410
500 REM *** HUMAN HAS GUESSED THE LETTER
510 PRINT
520 PRINT "You got it!  Let's play again."
530 PRINT
540 GOTO 300
999 END
