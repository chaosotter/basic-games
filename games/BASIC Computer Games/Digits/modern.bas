5 CLS: COLOR 12
10 PRINT TAB(37); "Digits"
20 PRINT TAB(31); "Creative Computing"
25 PRINT TAB(29); "Morristown, New Jersey"
30 PRINT: PRINT: PRINT: RANDOMIZE TIMER
210 COLOR 15: PRINT "This is a game of guessing.": PRINT
220 COLOR 10: PRINT "Do you want instructions (Y/N)";
230 INPUT E$
240 IF LEFT$(E$, 1) = "N" OR LEFT$(E$, 1) = "n" THEN 360
250 PRINT: COLOR 14
260 PRINT "Please take a piece of paper and write down the digits '0', '1', or '2' thirty"
270 PRINT "times at random.  Arrange them in three lines of ten digits each.  I will ask"
280 PRINT "for them ten at a time.  I will always guess them first and then look at your"
290 PRINT "next number to see if I was right.  By pure luck, I ought to be right ten"
300 PRINT "times."
310 PRINT: PRINT "But I hope to do better than that..."
340 PRINT: COLOR 15
360 READ A, B, C
370 DATA 0,1,3
380 DIM M(26, 2), K(2, 2), L(8, 2)
400 FOR I = 0 TO 26: FOR J = 0 TO 2: M(I, J) = 1: NEXT J: NEXT I
410 FOR I = 0 TO 2: FOR J = 0 TO 2: K(I, J) = 9: NEXT J: NEXT I
420 FOR I = 0 TO 8: FOR J = 0 TO 2: L(I, J) = 3: NEXT J: NEXT I
450 L(0, 0) = 2: L(4, 1) = 2: L(8, 2) = 2
480 Z = 26: Z1 = 8: Z2 = 2
510 X = 0
520 FOR T = 1 TO 3
530 PRINT
540 COLOR 10: PRINT "Ten numbers, please (separated by commas)";
550 INPUT N(1), N(2), N(3), N(4), N(5), N(6), N(7), N(8), N(9), N(10): COLOR 15
560 FOR I = 1 TO 10
570 W = N(I) - 1
580 IF W = SGN(W) THEN 620
590 PRINT "Only use the digits '0', '1', or '2'.  Let's try again."
600 GOTO 530
620 NEXT I
630 PRINT: COLOR 11: PRINT "My Guess", "Your No.", "Result", "No. Right"
660 FOR U = 1 TO 10
670 N = N(U): S = 0
690 FOR J = 0 TO 2
700 S1 = A * K(Z2, J) + B * L(Z1, J) + C * M(Z, J)
710 IF S > S1 THEN 760
720 IF S < S1 THEN 740
730 IF RND(1) < .5 THEN 760
740 S = S1: G = J
760 NEXT J
770 COLOR 13: PRINT "  "; G, "   "; N(U),
780 IF G = N(U) THEN 810
790 COLOR 12: PRINT " WRONG",: COLOR 13: PRINT X
800 GOTO 880
810 X = X + 1
820 COLOR 10: PRINT " RIGHT",: COLOR 13: PRINT X
830 M(Z, N) = M(Z, N) + 1
840 L(Z1, N) = L(Z1, N) + 1
850 K(Z2, N) = K(Z2, N) + 1
860 Z = Z - INT(Z / 9) * 9
870 Z = 3 * Z + N(U)
880 Z1 = Z - INT(Z / 9) * 9
890 Z2 = N(U)
900 NEXT U
910 NEXT T
920 PRINT: COLOR 15
930 IF X > 10 THEN 980
940 IF X < 10 THEN 1010
950 PRINT "I guessed exactly 1/3 of your numbers.  It's a tie game."
970 GOTO 1030
980 PRINT "I guessed more than 1/3 of your numbers.  I win."
990 FOR Q = 1 TO 10: PRINT CHR$(7);: NEXT Q
1000 GOTO 1030
1010 PRINT "I guessed less than 1/3 of your numbers.  You beat me.  Congratulations!!!"
1030 PRINT
1040 COLOR 10: PRINT "Do you want to try again (Y/N)";
1060 INPUT X$: COLOR 15
1070 IF LEFT$(X$, 1) = "Y" OR LEFT$(X$, 1) = "y" THEN 400
1080 PRINT: PRINT "Thanks for the game."
1090 END

