1 CLS: COLOR 12: PRINT TAB(38); "Golf"
2 PRINT TAB(31); "Creative Computing": PRINT TAB(29); "Morristown, New Jersey"
3 PRINT: PRINT: PRINT: RANDOMIZE TIMER: COLOR 14
4 PRINT "Welcome to the Creative Computing Country Club, an eighteen-hole championship"
5 PRINT "layout located a short distance from scenic downtown Morristown.  The"
6 PRINT "commentator will explain the game as you play.  Enjoy your game; see you at the"
7 PRINT "19th hole..."
9 PRINT: PRINT: COLOR 15: DIM L(10)
10 G1 = 18
20 G2 = 0
30 G3 = 0
40 A = 0
50 N = .8
60 S2 = 0
70 F = 1
80 COLOR 10: PRINT "What is your handicap (0-30)";
90 INPUT H: COLOR 15: PRINT
100 IF H > 30 THEN 470
110 IF H < 0 THEN 470
120 PRINT "Difficulties at gold include:": PRINT
130 COLOR 11: PRINT , "0 = Hook", "4 = Trap Shots"
133 PRINT , "1 = Slice", "5 = Putting"
136 PRINT , "2 = Poor Distance": PRINT
140 COLOR 10: PRINT "Which one (only one) is your worst";
150 INPUT T: PRINT: COLOR 15
160 IF T > 5 THEN 120
170 S1 = 0
210 REM
230 L(0) = 0
240 J = 0
245 Q = 0
250 S2 = S2 + 1
260 K = 0
270 IF F = 1 THEN 310
290 COLOR 12: PRINT "Your score on hole"; F - 1; "was"; STR$(S1); ".": COLOR 15
291 GOTO 1750
292 IF S1 > P + 2 THEN 297
293 IF S1 = P THEN 299
294 IF S1 = P - 1 THEN 301
295 IF S1 = P - 2 THEN 303
296 GOTO 310
297 PRINT "Keep your head down."
298 GOTO 310
299 PRINT "A par.  Nice going."
300 GOTO 310
301 PRINT "A birdie."
302 GOTO 310
303 IF P = 3 THEN 306
304 PRINT "A great big eagle."
305 GOTO 310
306 PRINT "A hole in one."
310 IF F = 19 THEN 1710
315 S1 = 0
316 PRINT
320 IF S1 = 0 THEN 1590
330 IF L(0) < 1 THEN 1150
340 X = 0
350 IF L(0) > 5 THEN 1190
360 PRINT "Shot went"; D1; "yards.  It's"; D2; "yards from the cup."
362 PRINT "The ball is"; INT(O); "yards off line... in ";
380 GOSUB 400
390 GOTO 620
400 IF L(X) = 1 THEN 480
410 IF L(X) = 2 THEN 500
420 IF L(X) = 3 THEN 520
430 IF L(X) = 4 THEN 540
440 IF L(X) = 5 THEN 560
450 IF L(X) = 6 THEN 580
460 PRINT "Out of bounds."
465 GOTO 1690
470 PRINT "PGA handicaps range from 0 to 30."
472 GOTO 80
480 PRINT "the fairway."
490 GOTO 1690
500 PRINT "the rough."
510 GOTO 1690
520 PRINT "the trees."
530 GOTO 1690
540 PRINT "the adjacent fairway."
550 GOTO 1690
560 PRINT "a trap."
570 GOTO 1690
580 PRINT "the water."
590 GOTO 1690
620 IF A = 1 THEN 629
621 PRINT: PRINT "Selection of clubs:"
622 COLOR 11: PRINT "Yardage Desired", "Suggested Clubs": COLOR 12
623 PRINT "200 to 280 yards", " 1 to  4"
624 PRINT "100 to 200 yards", "19 to 13"
625 PRINT "  0 to 100 yards", "29 to 23"
626 A = 1
629 COLOR 10: PRINT: PRINT "What club do you choose";
630 INPUT C: COLOR 15
632 PRINT
635 IF C < 1 THEN 690
637 IF C > 29 THEN 690
640 IF C > 4 THEN 710
650 IF L(0) <= 5 THEN 740
660 IF C = 14 THEN 740
665 IF C = 23 THEN 740
670 GOTO 690
680 S1 = S1 - 1
690 PRINT "That club is not in the bag."
693 PRINT
700 GOTO 620
710 IF C < 12 THEN 690
720 C = C - 6
730 GOTO 650
740 S1 = S1 + 1
741 W = 1
742 IF C > 13 THEN 960
746 IF INT(F / 3) = F / 3 THEN 952
752 IF C < 4 THEN 756
754 GOTO 760
756 IF L(0) = 2 THEN 862
760 IF S1 > 7 THEN 867
770 D1 = INT(((30 - H) * 2.5 + 187 - ((30 - H) * .25 + 15) * C / 2) + 25 * RND(1))
780 D1 = INT(D1 * W)
800 IF T = 2 THEN 1170
830 O = (RND(1) / .8) * (2 * H + 16) * ABS(TAN(D1 * .0035))
840 D2 = INT(SQR(O ^ 2 + ABS(D - D1) ^ 2))
850 IF D - D1 < 0 THEN 870
860 GOTO 890
862 PRINT "You dubbed it."
864 D1 = 35
866 GOTO 830
867 IF D < 200 THEN 1300
868 GOTO 770
870 IF D2 < 20 THEN 890
880 PRINT "Too much club.  You're past the hole."
890 B = D
900 D = D2
910 IF D2 > 27 THEN 1020
920 IF D2 > 20 THEN 1100
930 IF D2 > .5 THEN 1120
940 L(0) = 9
950 GOTO 1470
952 IF S2 + Q + (10 * (F - 1) / 18) < (F - 1) * (72 + ((H + 1) / .85)) / 18 THEN 956
954 GOTO 752
956 Q = Q + 1
957 IF S1 / 2 <> INT(S1 / 2) THEN 1011
958 GOTO 862
960 COLOR 10: PRINT "Now gauge your distance by a percentage (1-100) of a full swing";
970 INPUT W: W = W / 100: COLOR 15
972 PRINT
980 IF W > 1 THEN 680
985 IF L(0) = 5 THEN 1280
990 IF C = 14 THEN 760
1000 C = C - 10
1010 GOTO 760
1011 IF D < 95 THEN 862
1012 PRINT "The ball hit a tree and bounced into the rough,"; D - 75; "yards from the hole."
1014 D = D - 75
1018 GOTO 620
1020 IF O < 30 THEN 1150
1022 IF J > 0 THEN 1150
1030 IF T > 0 THEN 1070
1035 S9 = (S2 + 1) / 15
1036 IF INT(S9) = S9 THEN 1075
1040 PRINT "You hooked -- ";
1050 L(0) = L(2)
1055 IF O > 45 THEN 1092
1060 GOTO 320
1070 S9 = (S2 + 1) / 15
1071 IF INT(S9) = S9 THEN 1040
1075 PRINT "You sliced -- ";
1080 L(0) = L(1)
1090 GOTO 1055
1092 PRINT "badly."
1094 GOTO 320
1100 L(0) = 5
1110 GOTO 320
1120 L(0) = 8
1130 D2 = INT(D2 * 3)
1140 GOTO 1380
1150 L(0) = 1
1160 GOTO 320
1170 D1 = INT(.85 * D1)
1180 GOTO 830
1190 IF L(0) > 6 THEN 1260
1200 PRINT "Your shot went into the water."
1210 S1 = S1 + 1
1220 PRINT "Penalty stroke assessed.  Hit from previous location."
1230 J = J + 1
1240 L(0) = 1
1242 D = B
1250 GOTO 620
1260 PRINT "Your shot went out of bounds."
1270 GOTO 1210
1280 IF T = 3 THEN 1320
1300 D2 = 1 + (3 * INT((80 / (40 - H)) * RND(1)))
1310 GOTO 1380
1320 IF RND(1) > N THEN 1360
1330 N = N * .2
1340 PRINT "Shot dubbed, still in trap."
1350 GOTO 620
1360 N = .8
1370 GOTO 1300
1380 PRINT "You are on the green,"; D2; "feet from the pin."
1381 COLOR 10: PRINT "Choose your putt potency (1-13)";
1400 INPUT I: COLOR 15
1410 S1 = S1 + 1
1420 IF S1 + 1 - P > (H * .072) + 2 THEN 1470
1425 IF K > 2 THEN 1470
1428 K = K + 1
1430 IF T = 4 THEN 1530
1440 D2 = D2 - I * (4 + 2 * RND(1)) + 1.5
1450 IF D2 < -2 THEN 1560
1460 IF D2 > 2 THEN 1500
1470 PRINT "You holed it."
1472 PRINT
1480 F = F + 1
1490 GOTO 230
1500 PRINT "Putt short."
1505 D2 = INT(D2)
1510 GOTO 1380
1530 D2 = D2 - I * (4 + 1 * RND(1)) + 1
1550 GOTO 1450
1560 PRINT "Passed by cup."
1570 D2 = -D2
1580 GOTO 1505
1590 READ D, P, L(1), L(2)
1595 PRINT
1600 PRINT "You are at the tee-off.  Hole"; STR$(F); ", Distance"; D; "yards, Par"; P
1605 G3 = G3 + P
1620 PRINT "On your right is ";
1630 X = 1
1640 GOSUB 400
1650 PRINT "On your left is ";
1660 X = 2
1670 GOSUB 400
1680 GOTO 620
1690 RETURN
1700 DATA 361,4,4,2,389,4,3,3,206,3,4,2,500,5,7,2
1702 DATA 408,4,2,4,359,4,6,4,424,4,4,2,388,4,4,4
1704 DATA 196,3,7,2,400,4,7,2,560,5,7,2,132,3,2,2
1706 DATA 357,4,4,4,294,4,2,4,475,5,2,3,375,4,4,2
1708 DATA 180,3,6,2,550,5,6,6
1710 PRINT
1750 G2 = G2 + S1
1760 COLOR 12: PRINT "Total par for"; F - 1; "holes is"; STR$(G3); ".  Your total is"; STR$(G2); ".": COLOR 15
1761 IF G1 = F - 1 THEN 1770
1765 GOTO 292
1770 END

