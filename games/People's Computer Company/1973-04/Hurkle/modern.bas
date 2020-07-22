100 REM *** HURKLE - PEOPLE'S COMPUTER COMPANY, MENLO PARK, CA
110 CLS: COLOR 15: RANDOMIZE TIMER
120 REM *** N IS THE NUMBER OF GUESSES ALLOWED
130 LET N = 5
140 COLOR 10: PRINT "Do you want the rules (Y/N)";
150 INPUT Z$: COLOR 15
160 IF LEFT$(Z$, 1) <> "Y" AND LEFT$(Z$, 1) <> "y" THEN 490
170 REM *** HERE ARE THE RULES
175 PRINT: COLOR 14
180 PRINT "A Hurkle is hiding in a grid, like the one below."
190 PRINT
200 PRINT
210 PRINT TAB(26); "North"
220 PRINT
230 FOR K = 9 TO 0 STEP -1
240 IF K <> 4 THEN 270
250 PRINT TAB(8); "West   4"; TAB(20); ". . . . . . . . . .   East"
260 GOTO 280
270 PRINT TAB(14); K; TAB(20); ". . . . . . . . . ."
280 NEXT K
290 PRINT
300 PRINT TAB(20); "0 1 2 3 4 5 6 7 8 9"
310 PRINT
320 PRINT TAB(26); "South"
330 PRINT: COLOR 13: PRINT "Press any key": COLOR 15
335 Z$ = INKEY$: IF Z$ = "" THEN 335
336 CLS: COLOR 14
340 PRINT "Try to guess where the Hurkle is hiding.  You guess by telling me the gridpoint"
350 PRINT "where you think that the Hurkle is hiding.  Home base is point 0,0 in the"
360 PRINT "southwest corner.  Your guess should be a pair of whole numbers, separated by"
370 PRINT "a comma.  The first number tells how far to the right of home base and the"
380 PRINT "second number tells how far above home base you think the Hurkle is hiding."
390 PRINT
400 PRINT "For example, if you think the Hurkle is 7 to the right and 5 above home base,"
410 PRINT "you enter  7,5  as your guess and then press the Return key.  After each guess,"
420 PRINT "I will tell you the approximate direction to go for your next guess."
430 PRINT: PRINT "Good luck!"
470 PRINT: COLOR 15
480 REM *** HURKLE 'PICKS' A GRIDPOINT AND HIDES
490 LET A = INT(10 * RND(1))
500 LET B = INT(10 * RND(1))
510 PRINT
520 PRINT "The Hurkle is hiding - you get"; N; "guesses to find him."
530 PRINT
540 REM *** GET A GUESS AND PRINT INFO FOR PLAYER
550 FOR K = 1 TO N
560 COLOR 10: PRINT "What is your guess";
570 INPUT X, Y: COLOR 15
580 IF ABS(X - A) + ABS(Y - B) = 0 THEN 710
590 REM *** GO TO INFO SUBROUTINE
600 GOSUB 760
610 PRINT
620 NEXT K
630 PRINT
640 REM *** HURKLE WAS NOT FOUND IN N GUESSES
650 PRINT "Sorry, that's"; N; "guesses."
660 PRINT "The Hurkle is at"; STR$(A); ","; B
670 PRINT
680 COLOR 13: PRINT "Let's play again!": COLOR 15: PRINT
690 GOTO 490
700 REM *** HURKLE HAS BEEN FOUND!
710 PRINT
720 PRINT "You found him in"; K; "guesses!!!"
730 COLOR 13: PRINT "Let's play again!": COLOR 15: PRINT
740 GOTO 490
750 REM *** SUBROUTINE: PRINT INFORMATION FOR NEXT GUESS
760 PRINT "Go ";
770 IF Y = B THEN 820
780 IF Y < B THEN 810
790 PRINT "south";
800 GOTO 820
810 PRINT "north";
820 IF X = A THEN 870
830 IF X < A THEN 860
840 PRINT "west";
850 GOTO 870
860 PRINT "east";
870 PRINT "."
880 RETURN
890 END

