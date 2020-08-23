3 CLS: COLOR 12
5 PRINT TAB(37); "Bagels"
10 PRINT TAB(31); "Creative Computing"
11 PRINT TAB(29); "Morristown, New Jersey"
15 REM *** BAGLES NUMBER GUESSING GAME
20 REM *** ORIGINAL SOURCE UNKNOWN BUT SUSPECTED TO BE
25 REM *** LAWRENCE HALL OF SCIENCE, U.C. BERKELY
30 DIM A1(6), A(3), B(3)
40 Y = 0: T = 255
50 PRINT: PRINT: PRINT: RANDOMIZE TIMER: COLOR 15
70 COLOR 10: INPUT "Would you like the rules (Y/N)"; A$: COLOR 15
90 IF LEFT$(A$, 1) = "N" OR LEFT$(A$, 1) = "n" THEN 150
100 PRINT: COLOR 14
105 PRINT "I am thinking of a three-digit number.  Try to guess my number, and I will"
110 PRINT "give you clues as follows:"
115 PRINT
120 COLOR 11: PRINT "   Pico   - ";: COLOR 14: PRINT "One digit correct, but in the wrong position."
130 COLOR 11: PRINT "   Fermi  - ";: COLOR 14: PRINT "One digit correct and in the right position."
140 COLOR 11: PRINT "   Bagels - ";: COLOR 14: PRINT "No digits correct.": COLOR 15
150 FOR I = 1 TO 3
160 A(I) = INT(10 * RND(1))
165 IF I - 1 = 0 THEN 200
170 FOR J = 1 TO I - 1
180 IF A(I) = A(J) THEN 160
190 NEXT J
200 NEXT I
210 PRINT: PRINT "Okay, I have a number in mind."
220 FOR I = 1 TO 20
225 I$ = STR$(I): I$ = RIGHT$(I$, LEN(I$) - 1)
230 COLOR 10: PRINT: PRINT "Guess #"; I$;
240 INPUT A$: COLOR 15
245 IF LEN(A$) <> 3 THEN 630
250 FOR Z = 1 TO 3: A1(Z) = ASC(MID$(A$, Z, 1)): NEXT Z
260 FOR J = 1 TO 3
270 IF A1(J) < 48 THEN 300
280 IF A1(J) > 57 THEN 300
285 B(J) = A1(J) - 48
290 NEXT J
295 GOTO 320
300 PRINT "What?"
310 GOTO 230
320 IF B(1) = B(2) THEN 650
330 IF B(2) = B(3) THEN 650
340 IF B(3) = B(1) THEN 650
350 C = 0: D = 0
360 FOR J = 1 TO 2
370 IF A(J) <> B(J + 1) THEN 390
380 C = C + 1
390 IF A(J + 1) <> B(J) THEN 410
400 C = C + 1
410 NEXT J
420 IF A(1) <> B(3) THEN 440
430 C = C + 1
440 IF A(3) <> B(1) THEN 460
450 C = C + 1
460 FOR J = 1 TO 3
470 IF A(J) <> B(J) THEN 490
480 D = D + 1
490 NEXT J
500 IF D = 3 THEN 680
505 IF C = 0 THEN 545
520 FOR J = 1 TO C
530 COLOR 11: PRINT "Pico ";
540 NEXT J
545 IF D = 0 THEN 580
550 FOR J = 1 TO D
560 COLOR 11: PRINT "Fermi ";
570 NEXT J
580 IF C + D <> 0 THEN 600
590 COLOR 11: PRINT "Bagels";
600 PRINT: COLOR 15
605 NEXT I
610 PRINT "Oh, well.  That's twenty guesses.  My number was"; STR$(100 * A(1) + 10 * A(2) + A(3)); "."
620 GOTO 700
630 PRINT "Try guessing a three-digit number.": GOTO 230
650 PRINT "Oh, I forgot to tell you that the number I have in mind has no two digits"
660 PRINT "the same.": GOTO 230
680 PRINT "You got it!": PRINT
690 Y = Y + 1
700 COLOR 10: INPUT "Play again (Y/N)"; A$: COLOR 15
720 IF LEFT$(A$, 1) = "Y" OR LEFT$(A$, 1) = "y" THEN 150
730 IF Y = 0 THEN 750
740 PRINT: PRINT "A"; STR$(Y); "-point Bagels buff!"
750 PRINT "Hope you had fun.  Bye."
999 END

