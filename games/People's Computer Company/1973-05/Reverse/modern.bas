100 REM *** REVERSE - A GAME OF SKILL
110 REM *** PEOPLE'S COMPUTER COMPANY, MENLO PARK CA
120 RANDOMIZE TIMER
125 CLS: COLOR 15
130 DIM A(20)
140 REM *** N = NUMBER OF NUMBERS (1 THRU N)
150 LET N = 9
160 COLOR 10: PRINT "Do you want the rules (Y/N)";
170 INPUT Z$: COLOR 15
180 IF LEFT$(Z$, 1) <> "Y" AND LEFT$(Z$, 1) <> "y" THEN 270
190 GOSUB 710
200 REM *** MAKE A RANDOM LIST A(1) TO A(N)
210 LET A(1) = INT((N - 1) * RND(1)) + 2
220 FOR K = 2 TO N
230 LET A(K) = INT(N * RND(1)) + 1
240 FOR J = 1 TO K - 1
250 IF A(K) = A(J) THEN 230
260 NEXT J
270 NEXT K
280 REM *** PRINT ORIGINAL LIST AND START GAME
290 PRINT
300 PRINT "Here we go... the list is:"
310 LET T = 0
320 GOSUB 610
330 COLOR 10: PRINT "How many shall I reverse";
340 INPUT R: COLOR 15
350 IF R = 0 THEN 520
360 IF R <= N THEN 390
370 PRINT "Oops! Too many - I can reverse at most"; N
380 GOTO 330
390 LET T = T + 1
400 REM *** REVERSE R NUMBERS AND  PRINT NEW LIST
410 FOR K = 1 TO INT(R / 2)
420 LET Z = A(K)
430 LET A(K) = A(R - K + 1)
440 LET A(R - K + 1) = Z
450 NEXT K
460 GOSUB 610
470 REM *** CHECK FOR A WIN
480 FOR K = 1 TO N
490 IF A(K) <> K THEN 330
500 NEXT K
510 PRINT "You won in"; T; "moves!!!"
520 PRINT
530 COLOR 10: PRINT "Again (Y/N)";
540 INPUT Z$: COLOR 15
550 IF LEFT$(Z$, 1) = "Y" OR LEFT$(Z$, 1) = "y" THEN 210
560 STOP
600 REM *** SUBROUTINE *** PRINT LIST A(1) TO A(N)
610 PRINT: COLOR 13
620 FOR K = 1 TO N
630 PRINT A(K);
640 NEXT K
650 PRINT: COLOR 15
660 PRINT
670 RETURN
700 REM *** SUBROUTINE *** PRINT THE RULES
710 PRINT: COLOR 14
720 PRINT "This is the game of 'Reverse'.  To win, all you have to do is arrange the list"
730 PRINT "of numbers (1 through"; STR$(N); ") in numerical order from left to right.  To move, you"
740 PRINT "tell me how many numbers (counting from the left) to reverse.  For example, if"
750 PRINT "the current list is:"
770 PRINT
780 COLOR 13: PRINT " 2  3  4  5  1  6  7  8  9": COLOR 14
790 PRINT
800 PRINT "And you reverse 4, the result will be:"
810 PRINT
820 COLOR 13: PRINT " 5  4  3  2  1  6  7  8  9": COLOR 14
830 PRINT
840 PRINT "Now, if you reverse 5, you win!"
850 PRINT
860 COLOR 13: PRINT " 1  2  3  4  5  6  7  8  9": COLOR 14
870 PRINT
880 PRINT "No doubt you will like this game of skill, but if you want to quit, reverse 0."
900 PRINT: COLOR 15
910 RETURN
999 END

