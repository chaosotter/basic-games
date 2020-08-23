5 CLS: COLOR 12
10 PRINT TAB(30); "Acey Ducey Card Game"
20 PRINT TAB(31); "Creative Computing"
21 PRINT TAB(29); "Morristown, New Jersey"
22 PRINT: PRINT: PRINT: RANDOMIZE TIMER: COLOR 14
30 PRINT "Acey-Ducey is played in the following manner.  The dealer (computer) deals two"
40 PRINT "cards face up.  You have an option to bet or not bet, depending on whether or"
50 PRINT "not you feel the card will have a value between the first two."
60 PRINT
70 PRINT "If you do not want to bet, input a 0."
80 COLOR 15
100 N = 100
110 Q = 100
120 PRINT: PRINT "You now have"; Q; "dollars."
140 GOTO 260
210 Q = Q + M
220 GOTO 120
240 Q = Q - M
250 GOTO 120
260 PRINT "Here are your next two cards: ";: COLOR 13
270 A = INT(14 * RND(1)) + 2
280 IF A < 2 THEN 270
290 IF A > 14 THEN 270
300 B = INT(14 * RND(1)) + 2
310 IF B < 2 THEN 300
320 IF B > 14 THEN 300
330 IF A >= B THEN 270
350 IF A < 11 THEN 400
360 IF A = 11 THEN 420
370 IF A = 12 THEN 440
380 IF A = 13 THEN 460
390 IF A = 14 THEN 480
400 PRINT A;
410 GOTO 500
420 PRINT " Jack ";
430 GOTO 500
440 PRINT " Queen ";
450 GOTO 500
460 PRINT " King ";
470 GOTO 500
480 PRINT " Ace ";
500 IF B < 11 THEN 550
510 IF B = 11 THEN 570
520 IF B = 12 THEN 590
530 IF B = 13 THEN 610
540 IF B = 14 THEN 630
550 PRINT B
560 GOTO 650
570 PRINT " Jack"
580 GOTO 650
590 PRINT " Queen"
600 GOTO 650
610 PRINT " King"
620 GOTO 650
630 PRINT " Ace"
640 COLOR 15
650 PRINT
660 COLOR 10: INPUT "What is your bet"; M: COLOR 15
670 IF M <> 0 THEN 680
675 PRINT "Chicken!"
676 PRINT
677 GOTO 260
680 IF M <= Q THEN 720
690 PRINT "Sorry, my friend, but you bet too much.  You have only"; Q; "dollars to bet."
710 GOTO 650
720 PRINT "The card drawn is: ";: COLOR 13
730 C = INT(14 * RND(1)) + 2
740 IF C < 2 THEN 730
750 IF C > 14 THEN 730
760 IF C < 11 THEN 810
770 IF C = 11 THEN 830
780 IF C = 12 THEN 850
790 IF C = 13 THEN 870
800 IF C = 14 THEN 890
810 PRINT C
820 GOTO 910
830 PRINT " Jack"
840 GOTO 910
850 PRINT " Queen"
860 GOTO 910
870 PRINT " King"
880 GOTO 910
890 PRINT " Ace"
910 COLOR 15: IF C > A THEN 930
920 GOTO 970
930 IF C >= B THEN 970
950 PRINT "You win!"
960 GOTO 210
970 PRINT "Sorry, you lose."
980 IF M < Q THEN 240
990 PRINT
1010 PRINT "Sorry, friend, but you blew your wad."
1015 PRINT
1020 COLOR 10: INPUT "Try again (Y/N)"; A$: COLOR 15
1025 PRINT: PRINT
1030 IF LEFT$(A$, 1) = "Y" OR LEFT$(A$, 1) = "y" THEN 110
1040 PRINT "Okay, hope you had fun!"
1050 END

