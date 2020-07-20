100 REM *** NUMBER *** A NUMBER GUESSING GAME ***
110 REM *** COPYRIGHT, PEOPLE'S COMPUTER COMPANY ***
120 REM *** 1921 MENALTO AVENUE, MENLO PARK, CA. 94026 ***
130 RANDOMIZE TIMER
140 CLS: COLOR 15
200 REM *** PRINT INSTRUCTIONS ON HOW TO PLAY
205 COLOR 14
210 PRINT "I will think of a whole number between 1 and 100.  Try to guess my number."
220 PRINT "After each guess, I will tell you if you have guessed my number or if your"
230 PRINT "guess is too small or too big."
240 COLOR 15
300 REM *** COMPUTER 'THINKS' OF A NUMBER - CALL IT X
310 LET X = INT(100 * RND(1)) + 1
320 PRINT
330 PRINT "Okay, I have a number.  Start guessing."
400 REM *** HUMAN STARTS GUESSING
410 PRINT
420 COLOR 10: PRINT "What is your guess";
430 INPUT G: COLOR 15
440 IF G = X THEN 500
450 IF G > X THEN 480
460 PRINT "Too small.  Try a larger number."
470 GOTO 410
480 PRINT "Too big.  Try a smaller number."
490 GOTO 410
500 REM *** HUMAN HAS GUESSED THE COMPUTER'S NUMBER
510 PRINT
520 PRINT "You got it!  Let's play again."
530 PRINT
540 GOTO 300
999 END

