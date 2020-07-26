100 REM *** SNARK ... CATCH HIM WITH A WELL PLACED CIRCLE
110 REM *** PEOPLE'S COMPUTER COMPANY, MENLO PARK CA
120 REM *** SOME COMPUTERS NEED 'RANDOM' HERE
130 RANDOMIZE TIMER
140 CLS: COLOR 15
150 COLOR 10: PRINT "Want the rules (Y/N)";
160 INPUT Z$: COLOR 15
170 IF LEFT$(Z$, 1) <> "Y" AND LEFT$(Z$, 1) <> "y" THEN 510
200 REM *** HERE ARE THE RULES
210 PRINT: COLOR 14
220 PRINT "A Snark is hiding in a 10-by-10 grid like the one shown below:"
240 PRINT: COLOR 12
245 PRINT " Y"
250 FOR Y = 9 TO 0 STEP -1
260 PRINT Y; " . . . . . . . . . ."
270 NEXT Y
280 PRINT
290 PRINT TAB(4); " 0 1 2 3 4 5 6 7 8 9 X"
300 PRINT: COLOR 13: PRINT "Press any key"
305 Z$ = INKEY$: IF Z$ = "" THEN 305
306 COLOR 14: PRINT
310 PRINT "Try to catch him.  Here's how... when I ask, you type the X,Y coordinates of a"
320 PRINT "grid point (if you don't know what that means, ask somebody!) and press the"
330 PRINT "Return key.  Then, when I ask for 'radius', you type the radius of a circle"
340 PRINT "centered on the grid point whose X,Y coordinates you just entered.  I will then"
350 PRINT "tell you whether the Snark is 'inside' your circle, 'outside' your circle, or"
360 PRINT "'on' your circle."
390 PRINT
400 PRINT "IMPORTANT: If you think you know where he is hiding, enter 0 (zero) as the"
410 PRINT "radius.  Good hunting!": COLOR 15
500 REM *** HIDE THE SNARK
510 LET X = INT(10 * RND(1))
520 LET Y = INT(10 * RND(1))
530 PRINT
540 PRINT "The Snark is hiding... start guessing!"
600 REM *** GUESSING BEGINS
610 K = 1
620 PRINT
630 COLOR 10: PRINT "Coordinates";
640 INPUT A, B: COLOR 15
650 LET D2 = (X - A) * (X - A) + (Y - B) * (Y - B)
660 COLOR 10: PRINT "Radius";
670 INPUT R: COLOR 15
680 IF R <> 0 THEN 700
690 IF D2 = 0 THEN 910
700 IF D2 < R * R THEN 730
710 IF D2 > R * R THEN 750
720 IF D2 = R * R THEN 770
730 PRINT "The Snark is inside your circle."
740 GOTO 780
750 PRINT "The Snark is outside your circle."
760 GOTO 780
770 PRINT "The Snark is on your circle."
780 K = K + 1
790 GOTO 620
900 REM *** WE GOT A WINNER
910 PRINT
920 PRINT "You caught him in"; K; "guesses!!!"
930 PRINT "Good show!"
940 PRINT
950 COLOR 10: PRINT "Do you want to play again (Y/N)";
960 INPUT Z$: COLOR 15
970 IF LEFT$(Z$, 1) = "Y" OR LEFT$(Z$, 1) = "y" THEN 510
999 END

