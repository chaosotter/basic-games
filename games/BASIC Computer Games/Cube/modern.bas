5 CLS: COLOR 12
10 PRINT TAB(38); "Cube"
20 PRINT TAB(31); "Creative Computing"
25 PRINT TAB(29); "Morristown, New Jersey"
30 PRINT: PRINT: PRINT: RANDOMIZE TIMER: COLOR 15
100 COLOR 10: PRINT "Do you want to see the instructions (Y/N)";
110 INPUT B7$
120 IF LEFT$(B7$, 1) = "N" OR LEFT$(B7$, 1) = "n" THEN 370
130 COLOR 14: PRINT
140 PRINT "This is a game in which you will be playing against the random decisions of the"
150 PRINT "computer.  The field of play is a cube of side 3.  Any of the 27 locations can"
160 PRINT "be designated by inputing three numbers, such as 2,3,1.  At the start, you are"
170 PRINT "automatically at location 1,1,1.  The object of the game is to get to location"
180 PRINT "3,3,3."
190 PRINT
200 PRINT "One minor detail: The computer will pick, at random, 5 locations at which it"
210 PRINT "plant land mines.  If you hit one of these locations, you lose."
220 PRINT
230 PRINT "One other detail: You may move only one space in one direction each move.  For"
240 PRINT "example, from 1,1,2 you may move to 2,1,2 or 1,1,3.  You may not change two of"
250 PRINT "the numbers on the same move.  If you make an illegal move, you lose and the"
260 PRINT "computer takes the money you may have bet on that round."
280 PRINT
320 PRINT "When stating the amount of a wager, enter only the number of dollars (example:"
330 PRINT "250).  You are automatically started with 500 dollars in your account."
350 COLOR 15: PRINT
360 PRINT "Good luck!"
370 LET A1 = 500
380 LET A = INT(3 * (RND(X)))
390 IF A <> 0 THEN 410
400 LET A = 3
410 LET B = INT(3 * (RND(X)))
420 IF B <> 0 THEN 440
430 LET B = 2
440 LET C = INT(3 * (RND(X)))
450 IF C <> 0 THEN 470
460 LET C = 3
470 LET D = INT(3 * (RND(X)))
480 IF D <> 0 THEN 500
490 LET D = 1
500 LET E = INT(3 * (RND(X)))
510 IF E <> 0 THEN 530
520 LET E = 3
530 LET F = INT(3 * (RND(X)))
540 IF F <> 0 THEN 560
550 LET F = 3
560 LET G = INT(3 * (RND(X)))
570 IF G <> 0 THEN 590
580 LET G = 3
590 LET H = INT(3 * (RND(X)))
600 IF H <> 0 THEN 620
610 LET H = 3
620 LET I = INT(3 * (RND(X)))
630 IF I <> 0 THEN 650
640 LET I = 2
650 LET J = INT(3 * (RND(X)))
660 IF J <> 0 THEN 680
670 LET J = 3
680 LET K = INT(3 * (RND(X)))
690 IF K <> 0 THEN 710
700 LET K = 2
710 LET L = INT(3 * (RND(X)))
720 IF L <> 0 THEN 740
730 LET L = 3
740 LET M = INT(3 * (RND(X)))
750 IF M <> 0 THEN 770
760 LET M = 3
770 LET N = INT(3 * (RND(X)))
780 IF N <> 0 THEN 800
790 LET N = 1
800 LET O = INT(3 * (RND(X)))
810 IF O <> 0 THEN 830
820 LET O = 3
830 COLOR 10: PRINT "Want to make a wager (Y/N)";
840 INPUT Z$: COLOR 15
850 IF LEFT$(Z$, 1) = "N" OR LEFT$(Z$, 1) = "n" THEN 920
860 COLOR 10: PRINT "How much";
870 INPUT Z1: COLOR 15
876 IF A1 < Z1 THEN 1522
880 LET W = 1
890 LET X = 1
900 LET Y = 1
910 PRINT
920 COLOR 10: PRINT "What's your move (x,y,z)";
930 INPUT P, Q, R: COLOR 15
940 IF P > W + 1 THEN 1030
950 IF P = W + 1 THEN 1000
960 IF Q > X + 1 THEN 1030
970 IF Q = (X + 1) THEN 1010
980 IF R > (Y + 1) THEN 1030
990 GOTO 1050
1000 IF Q >= X + 1 THEN 1030
1010 IF R >= Y + 1 THEN 1030
1020 GOTO 1050
1030 PRINT: PRINT "Illegal move.  You lose."
1040 GOTO 1440
1050 LET W = P
1060 LET X = Q
1070 LET Y = R
1080 IF P = 3 THEN 1100
1090 GOTO 1130
1100 IF Q = 3 THEN 1120
1110 GOTO 1130
1120 IF R = 3 THEN 1530
1130 IF P = A THEN 1150
1140 GOTO 1180
1150 IF Q = B THEN 1170
1160 GOTO 1180
1170 IF R = C THEN 1400
1180 IF P = D THEN 1200
1190 GOTO 1230
1200 IF Q = E THEN 1220
1210 GOTO 1230
1220 IF R = F THEN 1400
1230 IF P = G THEN 1250
1240 GOTO 1280
1250 IF Q = H THEN 1270
1260 GOTO 1280
1270 IF R = I THEN 1400
1280 IF P = J THEN 1300
1290 GOTO 1330
1300 IF Q = K THEN 1320
1310 GOTO 1330
1320 IF R = L THEN 1440
1330 IF P = M THEN 1350
1340 GOTO 1380
1350 IF Q = N THEN 1370
1360 GOTO 1380
1370 IF R = O THEN 1400
1380 COLOR 10: PRINT "What's your next move (x,y,z)";
1390 GOTO 930
1400 COLOR 12: PRINT "****** KABOOM ******": COLOR 15
1410 PRINT "You lose!"
1420 PRINT
1440 IF LEFT$(Z$, 1) = "N" OR LEFT$(Z$, 1) = "n" THEN 1580
1450 PRINT
1460 LET Z2 = A1 - Z1
1470 IF Z2 > 0 THEN 1500
1480 PRINT "You bust."
1490 GOTO 1610
1500 PRINT "You now have"; Z2; "dollars."
1510 LET A1 = Z2
1520 GOTO 1580
1522 COLOR 10: PRINT "Tried to fool me; bet again (Y/N)";
1525 GOTO 870
1530 PRINT "Congratulations!"
1540 IF LEFT$(Z$, 1) = "N" OR LEFT$(Z$, 1) = "n" THEN 1580
1550 LET Z2 = A1 + Z1
1560 PRINT "You now have"; Z2; "dollars."
1570 LET A1 = Z2
1580 COLOR 10: PRINT: PRINT "Do you want to try again (Y/N)";
1590 INPUT S$: COLOR 15
1600 IF LEFT$(S$, 1) = "Y" OR LEFT$(S$, 1) = "y" THEN 380
1610 PRINT: PRINT "Tough luck!"
1630 PRINT "Goodbye."
1640 END

