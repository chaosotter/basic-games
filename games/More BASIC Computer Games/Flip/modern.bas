5 RANDOMIZE TIMER: CLS: COLOR 12
10 PRINT TAB(38); "Flip"
20 PRINT TAB(31); "Creative Computing"
30 PRINT TAB(29); "Morristown, New Jersey": PRINT: PRINT: PRINT: COLOR 15
31 B1 = 50
32 COLOR 10: PRINT "Want an explanation (Y/N)";
34 INPUT T$: COLOR 15
36 IF LEFT$(T$, 1) <> "Y" AND LEFT$(T$, 1) <> "y" THEN 180
40 COLOR 14: PRINT
50 PRINT "On each turn, you guess yes ('Y') or no ('N').  Only one is correct, and the"
60 PRINT "program has decided which one, before you make your guess.  At first your odds"
70 PRINT "are 50%, pure chance.  But later the program will try to take advantage of"
80 PRINT "patterns in your guessing."
110 PRINT
120 PRINT "The game ends after"; B1; "turns.  A score of";
125 PRINT INT(B1 / 2 - 1); "or more is good.  The program"
130 PRINT "tells when you win a turn by typing an asterisk ('*') as the first character"
140 PRINT "of the following line."
160 PRINT: COLOR 15
170 REM
180 REM INIALIZE: 16 PROBABILITIES, 4 RESPONSES (X),
190 REM OLD-MEMORY FACTOR (F1), RANDOMNESS FACTOR (F2),
200 REM SCORES (S1,S2) AND RIGHT-ANSWER FLAG.
210 PRINT
230 DIM P(16), X(4)
240 PRINT: PRINT "Begin."
250 FOR I = 1 TO 16
260 P(I) = .5
270 NEXT I
280 FOR I = 1 TO 4
290 X(I) = 0
300 IF RND(1) < .5 THEN 320
310 X(I) = 1
320 NEXT I
330 F1 = .8
340 F2 = .3
350 S1 = 0
360 S2 = 0
370 A$ = " "
380 REM
390 REM TAKE THE ESTIMATED PROBABILITY (Z1)
400 REM OF THE PERSON GUESSING YES.
410 REM USE AN ADJUSTED PROBABILITY (Z2).
420 I9 = 8 * X(4) + 4 * X(3) + 2 * X(2) + X(1) + 1
430 Z1 = P(I9)
440 Z2 = Z1
450 IF Z2 <> .5 THEN 480
460 Z2 = RND(1)
470 GOTO 520
480 IF Z2 > .5 THEN 510
490 Z2 = Z2 * F2 + 0 * (1 - F2)
500 GOTO 520
510 Z2 = Z2 * F2 + 1 * (1 - F2)
520 Z5 = 0
530 IF RND(1) < Z2 THEN 560
540 Z5 = 1
550 REM
560 REM INTERACT WITH PERSON. GET HIS RESPONSE (Z3).
570 REM UPDATE RESPONSE HISTORY (X), APPROPRIATE PROB. (P(I9)).
580 PRINT A$;
590 Z3 = 0
600 COLOR 10: INPUT H$: COLOR 15
610 IF LEFT$(H$, 1) = "Y" OR LEFT$(H$, 1) = "y" THEN 650
620 IF LEFT$(H$, 1) = "N" OR LEFT$(H$, 1) = "n" THEN 660
630 PRINT "Error, must be Y or N."
640 GOTO 600
650 Z3 = 1
660 A$ = " "
670 S2 = S2 + 1
680 IF Z3 <> Z5 THEN 710
690 A$ = "*"
700 S1 = S1 + 1
710 REM UPDATE X - THE LAST 4 CHOISES.
720 X(1) = X(3)
730 X(2) = X(4)
740 X(3) = Z3
750 X(4) = Z5
760 REM UPDATE THE PROBABILITY USING OLD I9.
770 P(I9) = F1 * P(I9) + (1 - F1) * X(3)
780 IF S2 < B1 THEN 380
790 PRINT A$;
800 PRINT
810 PRINT "End of game."
820 PRINT "You got"; S1; "out of"; S2; "correct."
830 PRINT: PRINT
840 COLOR 10: PRINT "Play again (Y/N)";
850 INPUT T$: COLOR 15
860 IF LEFT$(T$, 1) = "Y" OR LEFT$(T$, 1) = "y" THEN 240
870 END

