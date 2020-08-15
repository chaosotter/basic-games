1 CLS: COLOR 12: PRINT TAB(38); "Safe"
2 PRINT TAB(31); "Creative Computing"
3 PRINT TAB(29); "Morristown, New Jersey"
4 PRINT
5 PRINT
6 PRINT
8 RANDOMIZE TIMER
10 DIM A1(4)
20 COLOR 10: PRINT "Do you want directions (Y/N)";
30 INPUT A$: COLOR 15
40 IF LEFT$(A$, 1) = "Y" OR LEFT$(A$, 1) = "y" THEN 80
50 IF LEFT$(A$, 1) = "N" OR LEFT$(A$, 1) = "n" THEN 230
60 PRINT "Answer yes or no."
70 GOTO 20
80 COLOR 14
90 PRINT
100 PRINT "You are a burglar and have encountered a safe.  You must open the safe to get"
110 PRINT "the secret plans that you came for.  To do this, you must enter the number of"
120 PRINT "what you want the dial turned to.  The computer will act as the safe and will"
130 PRINT "help you by giving a sort of clue: that is, you will 'hear' a click at evenly"
140 PRINT "spaced notches as you move to the proper number.  There are four of them before"
150 PRINT "the final click is 'heard'.  After the final one is heard, you will go on to"
160 PRINT "the next number.  The computer will say 'CLICK' for each notch that you pass"
170 PRINT "and '***CLICK***' when you reach the proper number.  If you pass it or take"
180 PRINT "longer than ten tries on any one number, you will activate the alarm."
190 PRINT
200 PRINT "Remember than when you turn the dial to the left, the numbers go from 1-99, and"
210 PRINT "when you go to the right, the numbers go from 99-1."
220 PRINT
230 COLOR 15: PRINT "Okay, start to the right -- shhhhhh!!!"
260 A = INT(RND(1) * 81) + 10
270 B = INT(RND(1) * 81) + 10
280 C = INT(RND(1) * 81) + 10
290 COLOR 10: PRINT: PRINT "Are you ready (Y/N)";
300 INPUT A$: COLOR 15
310 IF LEFT$(A$, 1) = "Y" OR LEFT$(A$, 1) = "y" THEN 340
320 IF A$ <> "WHAT" AND A$ <> "what" THEN 990
330 PRINT A; B; C
340 L = 100 - A
350 FOR M = 1 TO 4
360 A1(M) = (5 - M) * L / 5 + A
370 NEXT M
380 J = 1
390 PRINT
400 COLOR 10: INPUT "Turn to"; M: COLOR 15
410 ON SGN(M - A) + 2 GOTO 500, 570, 420
420 FOR K = 1 TO 4
430 IF M > A1(K) THEN 460
440 PRINT "CLICK"
460 NEXT K
470 IF J >= 10 THEN 500
480 J = J + 1
490 GOTO 400
500 PRINT "The sensor has been triggered!  Leave while you can before the police get here."
510 COLOR 10: PRINT: PRINT "Want to try the same safe (Y/N)";
540 INPUT A$: COLOR 15
550 IF LEFT$(A$, 1) = "Y" OR LEFT$(A$, 1) = "y" THEN 280
560 GOTO 230
570 PRINT "***CLICK***"
580 L = L + B
590 FOR K = 1 TO 4
600 A1(K) = K * L / 5 + B
610 NEXT K
620 PRINT "And now to the left..."
630 J = 1
640 COLOR 10: INPUT "Turn to"; M: COLOR 15
650 ON SGN(M - A) + 2 GOTO 660, 500, 680
660 ON SGN(M - B) + 2 GOTO 670, 760, 500
670 M = M + 100
680 FOR K = 1 TO 4
690 IF M < A1(K) THEN 720
700 PRINT "CLICK"
710 A1(K) = 200
720 NEXT K
730 IF J >= 10 THEN 500
740 J = J + 1
750 GOTO 640
760 PRINT "***CLICK***"
770 L = (100 - C) + B
780 FOR K = 1 TO 4
790 A1(K) = B + 100 - K * L / 5
800 NEXT K
810 PRINT "And now to the right again..."
820 J = 1
830 COLOR 10: INPUT "Turn to"; M: COLOR 15
840 ON SGN(M - B) + 2 GOTO 860, 500, 850
850 ON SGN(M - C) + 2 GOTO 500, 950, 870
860 M = M + 100
870 FOR K = 1 TO 4
880 IF M > A1(K) THEN 910
890 PRINT "CLICK"
900 A1(K) = -200
910 NEXT K
920 IF J >= 10 THEN 500
930 J = J + 1
940 GOTO 830
950 PRINT "***CLICK***... You opened it!"
960 PRINT "But, uh-oh, he must have moved it!  Try the one over there..."
980 GOTO 230
990 END

