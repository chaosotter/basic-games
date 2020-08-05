1 CLS: COLOR 12
5 RANDOMIZE TIMER
10 PRINT TAB(33); "Concentration"
20 PRINT TAB(31); "Creative Computing"
25 PRINT TAB(29); "Morristown, New Jersey"
30 PRINT
40 PRINT
50 PRINT
200 DIM C$(52)
210 FOR X = 1 TO 52
220 READ E$
230 C$(X) = E$
240 NEXT X
250 REM --   SHUFFLE AND DEAL
260 FOR Z = 1 TO 51
270 K$ = C$(Z)
275 L = INT((53 - Z) * RND(1) + 1)
280 C$(Z) = C$(L + Z - 1)
290 C$(L) = K$
300 NEXT Z
340 REM --   START TO PLAY
350 FOR N = 1 TO 26
360 COLOR 10: PRINT "First card (1-52)";
370 INPUT U: COLOR 15
372 IF U > 0 AND U < 53 THEN 380
374 PRINT "There are only 52 cards in the deck, not"; U
376 GOTO 360
380 LET G = 1
390 IF C$(U) = " " THEN 840
400 COLOR 10: PRINT "Second card (1-52)";
410 INPUT W: COLOR 15
412 IF W > 0 AND W < 53 THEN 420
414 PRINT "There are only 52 cards in the deck, not"; W
416 GOTO 400
420 LET G = 2
430 IF C$(W) = " " THEN 840
440 IF U <> W THEN 470
450 PRINT "You can't pick the same card twice!"
460 GOTO 400
470 IF MID$(C$(U), 1, 1) = MID$(C$(W), 1, 1) THEN 580
475 U$ = STR$(U): U$ = RIGHT$(U$, LEN(U$) - 1)
476 W$ = STR$(W): W$ = RIGHT$(W$, LEN(W$) - 1)
480 PRINT "#"; U$; " is "; C$(U), "#"; W$; " is "; C$(W),: PRINT: PRINT
490 GOSUB 1000
570 GOTO 630
580 PRINT "That's a match -- "; C$(U), C$(W)
590 LET C$(U) = " "
600 LET C$(W) = " "
610 LET S = S + 1
620 PRINT: PRINT "Your score is now"; STR$(S); ".  You have had"; N; "picks."
625 PRINT: GOSUB 1000
630 NEXT N
640 REM --   THE RESULTS
650 LET S1 = S / (N / 4)
660 PRINT "You scored"; S; "out of"; STR$(N); ".  That is ";
670 ON S1 + 1.5 GOTO 680, 700, 720, 760
680 PRINT "poor."
690 GOTO 700
700 PRINT "fair."
710 GOTO 770
720 PRINT "good."
730 GOTO 770
740 PRINT "excellent!!!"
750 GOTO 770
760 PRINT "Aaah... Uh... You must have cheated!"
770 PRINT
780 COLOR 10: PRINT "Do you want to play again (Y/N)";
790 INPUT Z$: COLOR 15
800 IF LEFT$(Z$, 1) = "Y" OR LEFT$(Z$, 1) = "y" THEN 260
810 PRINT
820 PRINT "Come back again!!"
830 END
840 PRINT "You have already matched that card."
850 IF G = 1 THEN 360
860 GOTO 400
870 DATA "AS","2S","3S","4S","5S","6S","7S","8S","9S","10S","JS","QS"
875 DATA "KS"
880 DATA "AH","2H","3H","4H","5H","6H","7H","8H","9H","10H","JH","QH"
885 DATA "KH"
890 DATA "AD","2D","3D","4D","5D","6D","7D","8D","9D","10D","JD","QD"
895 DATA "KD"
900 DATA "AC","2C","3C","4C","5C","6C","7C","8C","9C","10C","JC","QC"
905 DATA "KC"
1000 PRINT "         1         2         3         4         5"
1010 PRINT "1234567890123456789012345678901234567890123456789012"
1020 COLOR 11
1030 FOR Z = 1 TO 52
1040 IF C$(Z) = " " THEN PRINT " ";: ELSE PRINT "#";
1050 NEXT Z
1060 PRINT: PRINT: COLOR 15: RETURN

