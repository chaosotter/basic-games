10 REM *** BEYOND BAGELS ***
15 RANDOMIZE TIMER
20 REM *** G CONTROLS THE MAXIMUM NUMBER OF GUESSES
30 G = 20
35 CLS: COLOR 15
40 PRINT "Welcome to  *** BEYOND BAGELS ***"
50 PRINT
60 COLOR 10: PRINT "Rules (Y/N)";
70 INPUT z$: COLOR 15
80 PRINT
90 IF LEFT$(z$, 1) <> "Y" AND LEFT$(z$, 1) <> "y" THEN 310
95 COLOR 14
100 PRINT "I'll think of a three-digit number (like 532) and you have"; G; "tries to guess it."
110 PRINT "After you tell me your guess, I'll print your score for that guess."
130 PRINT
140 PRINT "You get 1 point for each digit that's also in my number, and another point for"
150 PRINT "each correct digit that's also in the correct place."
170 PRINT
180 PRINT "If my number is   532"
190 PRINT "And you guess     421"
200 PRINT "You got 1 point (for the 2)."
210 PRINT
220 PRINT "If my number is   689"
230 PRINT "And you guess     692"
240 PRINT "You get 3 points (2 because of the 6, and the 9 adds the other point)."
260 PRINT
270 PRINT "But be careful!  Some scores (like 3 points) can be made in more than one way!!!"
290 PRINT
300 COLOR 15: PRINT "Here we go..."
310 DIM A(3), B(3)
320 A(1) = INT(RND(1) * 9) + 1
330 A(2) = INT(RND(1) * 10)
340 IF A(2) = A(1) THEN 330
350 A(3) = INT(RND(1) * 10)
360 IF A(3) = A(2) THEN 350
370 IF A(3) = A(1) THEN 350
380 PRINT "I've picked my number."
400 FOR G1 = 1 TO G
410 PRINT
420 G$ = STR$(G1): G$ = RIGHT$(G$, LEN(G$) - 1): COLOR 10: PRINT "Guess #"; G$;
430 INPUT X: COLOR 15
440 IF X >= 100 AND X <= 999 THEN 470
450 PRINT "Hint: My number has three digits."
460 GOTO 410
470 P = 0
480 FOR I = 1 TO 3
490 B(I) = INT(X / 100)
500 X = 10 * (X - 100 * B(I))
510 NEXT I
520 IF P = 6 THEN 750
530 IF B(1) <> B(2) AND B(1) <> B(3) AND B(2) <> B(3) THEN 560
540 PRINT "Hint: In my number, all the digits are different."
550 GOTO 410
560 FOR I = 1 TO 3
570 FOR J = 1 TO 3
580 IF B(I) <> A(J) THEN 620
590 P = P + 1
600 IF I <> J THEN 620
610 P = P + 1
620 NEXT J
630 NEXT I
640 IF P = 6 THEN 750
650 IF P <> 1 THEN 680
660 PRINT P; "point for this one."
670 GOTO 690
680 PRINT P; "points for this one."
690 NEXT G1
700 PRINT
710 PRINT
720 PRINT "Sorry, you didn't guess it."
730 PRINT "My number was"; STR$(A(1) * 100 + A(2) * 10 + A(3)); ".": PRINT
740 GOTO 820
750 PRINT
760 PRINT
770 PRINT "You guessed it in"; G1; "guesses!!!"
780 FOR I = 1 TO G / 2 - G1
790 PRINT "";
800 NEXT I
810 PRINT
820 COLOR 10: PRINT "Play again (Y/N)";
830 INPUT z$: COLOR 15
840 IF LEFT$(z$, 1) = "Y" OR LEFT$(z$, 1) = "y" THEN 290
850 PRINT: PRINT "Bye!"
860 END

