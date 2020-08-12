5 CLS: COLOR 12
10 PRINT TAB(36); "Roadrace"
20 PRINT TAB(31); "Creative Computing"
22 PRINT TAB(29); "Morristown, New Jersey"
25 RANDOMIZE TIMER
30 PRINT
40 PRINT
50 PRINT: COLOR 15
100 PRINT "This is the Pittsfield-Albany Road Rally!"
120 PRINT
130 PRINT "Welcome to the first annual Pittsfield-Albany Road Rally.  You'll be driving"
140 PRINT "Route 20, trying to win the race and stay alive in the bargain.  Good luck!"
160 PRINT
170 PRINT "You have your choice of (1) VW; (2) 283 Nova; (3) Z-28; or (4) Ferrari."
190 PRINT
200 PRINT "Choose the car you want by the number in front of it.  Remember, the better"
210 PRINT "the car, the more gas in uses.": PRINT
220 COLOR 10: PRINT "Which car (1-4)";
230 INPUT C1: COLOR 15
240 LET C1 = INT(C1)
250 IF C1 > 4 THEN 280
260 IF C1 < 1 THEN 280
270 GOTO 300
280 PRINT "Invalid car number."
290 GOTO 230
300 PRINT
310 IF N2 = 1 THEN 345
320 PRINT "Now you choose which course you want to race on.  The easiest course is number"
330 PRINT "1, and is the straightest route.  Number 5 consists mostly of turns and twists."
340 PRINT
345 COLOR 10: PRINT "Which route do you want (1-5)";
350 INPUT C2: COLOR 15
360 LET C2 = INT(C2)
380 IF C2 < 1 THEN 410
390 IF C2 > 5 THEN 410
400 GOTO 430
410 PRINT "Invalid course number."
420 GOTO 350
430 IF N2 = 1 THEN 490
435 PRINT
440 PRINT "You will need to travel 5 miles with .5 gallons of gas.  Your status will be"
450 PRINT "shown each 10 seconds.  After each status check, you will be asked for a new"
460 PRINT "rate of gas.  A rate of +10 is hard acceleration, and -10 is hard braking.  Any"
470 PRINT "number in between is allowable."
490 FOR I = 1 TO C1
500 READ B, M, S
510 LET B = B / 10
520 NEXT I
530 LET A1 = .5
540 LET M1 = 0
550 LET C1 = C1 / 2
560 LET V = 0
570 PRINT
580 LET R1 = 0
590 LET T = 0
600 LET D = 0
610 LET Q1 = 0
620 COLOR 11: PRINT "Present velocity ="; V, "Gallons left ="; A1
630 PRINT " Miles traveled ="; M1, "Time elapsed ="; T; "seconds": COLOR 15
640 IF M1 >= 5 THEN 1460
650 COLOR 10: PRINT "What is your new rate of gas (-10 to 10)";
660 INPUT G: COLOR 15
670 IF G < -10 THEN 700
680 IF G > 10 THEN 700
690 GOTO 720
700 PRINT "Not valid."
710 GOTO 660
720 IF G < 9 THEN 780
730 LET Z = Z + 1
740 IF Z > 4 THEN 760
750 GOTO 790
760 PRINT "Your engine blew.  You got hit by a piston."
770 GOTO 1270
780 LET Z = 0
790 LET V = INT(B * G - M * V + V)
800 LET T = T + 10
810 PRINT
820 PRINT "Road conditions: ";
830 IF V > 0 THEN 850
840 LET V = 0
850 LET M1 = M1 + V / 460
860 IF G < 0 THEN 890
870 LET A1 = A1 - (G * S) / 5000
880 IF A1 < 0 THEN 1380
890 IF R1 = 1 THEN 1050
900 IF Q1 = 1 THEN 980
910 LET Q = INT((C2 + 1) * RND(1))
920 LET R = INT((3.75 - C2) * RND(1))
930 IF R > 0 THEN 1290
940 IF Q > 0 THEN 1340
950 PRINT "Clear and straight"
960 PRINT
970 GOTO 620
980 LET H = INT(15 + 35! * RND(1))
990 LET H = H + 5 * C1
1000 IF V > H THEN 1500
1010 PRINT "Through curve"
1020 PRINT
1030 LET Q1 = 0
1040 GOTO 620
1050 LET E = E - (V - D) * 3!
1060 IF E < 0 THEN 1100
1070 PRINT "Vehicle"; E; "feet ahead"
1080 PRINT
1090 GOTO 620
1100 IF V - D < 5 THEN 1180
1110 PRINT "Vehicle passed by";
1120 LET D = V - D
1130 PRINT D;
1140 PRINT "MPH"
1150 PRINT
1160 LET R1 = 0
1170 GOTO 620
1180 PRINT "Vehicle being passed"
1190 LET D = INT(25 + 40 * RND(1))
1200 PRINT "Greyhound bus in other land ";
1210 PRINT "doing";
1220 PRINT D;
1230 PRINT "MPH";
1240 LET D = V + D
1250 PRINT "Crash velocity ="; D
1270 PRINT "Where is your funeral being held?"
1280 GOTO 1560
1290 PRINT "Vehicle ahead, 1000 feet!"
1300 PRINT
1310 LET D = INT(25 + 35 * RND(1))
1320 LET R1 = 1
1330 GOTO 620
1340 PRINT "WARNING: Curve ahead!"
1350 LET Q1 = 1
1360 PRINT
1370 GOTO 620
1380 PRINT "Excellent -- but wait!"
1390 PRINT
1400 PRINT "You ran out of gas."
1410 GOTO 1550
1420 PRINT "But somehow you made it!"
1430 PRINT
1440 LET R1 = 0
1450 GOTO 620
1460 PRINT
1470 PRINT
1480 PRINT "You made it (lucky)!!!"
1490 GOTO 1560
1500 PRINT "Are terrible"
1510 LET H = H - 5 * C1
1520 PRINT H; "was the speed through the curve."
1530 PRINT V; "was your speed.  By the way: ";
1540 GOTO 1270
1550 PRINT "You lead-footed $%&''%$&$&&((&$&$'$($(($&'%#%##%%%"
1560 COLOR 10: PRINT: PRINT "You want to try again, right (Y/N)";
1580 INPUT V$: COLOR 15
1590 IF LEFT$(V$, 1) = "N" OR LEFT$(V$, 1) = "n" THEN 1620
1600 N2 = 1
1610 GOTO 1640
1620 PRINT: PRINT "CHICKEN!"
1630 GOTO 1700
1640 RESTORE
1650 GOTO 220
1660 DATA 45,.53,10
1665 DATA 60,.5,13
1670 DATA 70,.41,15
1680 DATA 80,.39,18
1700 END

