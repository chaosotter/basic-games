10 REM Hyperwar
20 HS = 0
30 GOSUB 1410
40 GOSUB 1150
50 IF L < 0 THEN 670
60 GOSUB 1660
70 L = L - .25
80 TI = TI - 1
90 PRINT "What is your order, captain?"
100 PRINT "   N, S, E, W"
110 PRINT "   A(dvance), R(etreat)"
120 PRINT "   H(yperspace)"
130 PRINT "   L(aser"
140 INPUT Z$
150 IF Z$ = "N" OR Z$ = "n" THEN X = X - 1
160 IF Z$ = "S" OR Z$ = "s" THEN X = X + 1
170 IF Z$ = "E" OR Z$ = "e" THEN Y = Y + 1
180 IF Z$ = "W" OR Z$ = "w" THEN Y = Y - 1
190 IF Z$ = "A" OR Z$ = "a" THEN Z = Z - 1
200 IF Z$ = "R" OR Z$ = "r" THEN Z = Z + 1
210 IF Z$ = "L" OR Z$ = "l" THEN GOSUB 490
220 IF Z$ = "H" OR Z$ = "h" THEN GOSUB 1520
230 IF X < 1 THEN X = 1
240 IF Y < 1 THEN Y = 1
250 IF Z < 1 THEN Z = 1
260 IF X > 10 THEN X = 10
270 IF Y > 10 THEN Y = 10
280 IF Z > 10 THEN Z = 10
290 GOSUB 890
300 IF RND < .7 THEN 40
310 PRINT "***************************"
320 PRINT "*Deep space scanners read:*"
330 PRINT "*   N/S -"; A - X; "              *"
340 PRINT "*   E/W -"; B - Y; "              *"
350 PRINT "*   A/R -"; C - Z; "              *"
360 PRINT "***************************"
370 A = A + INT(RND * 2 - RND * 2)
380 B = B + INT(RND * 2 - RND * 2)
390 C = C + INT(RND * 2 - RND * 2)
400 IF A < 1 THEN A = 1
410 IF A > 10 THEN A = 10
420 IF B < 1 THEN B = 1
430 IF B > 10 THEN B = 10
440 IF C < 1 THEN C = 1
450 IF C > 10 THEN C = 10
460 GOSUB 1650
470 GOTO 40
480 REM *******************************
490 REM Laser option
500 L = L - .75
510 GOSUB 1620
520 IF ABS(A - X) > 3 OR ABS(B - Y) > 3 OR ABS(C - Z) > 3 THEN PRINT "The Dosznti ship is not within range, sir"
530 IF ABS(A - X) > 3 OR ABS(B - Y) > 3 OR ABS(C - Z) > 3 THEN GOSUB 1650: RETURN
540 PRINT "Lasers armed and ready, sir"
550 GOSUB 1650
560 IF RND > .5 THEN 590
570 PRINT "Laser fire was unsuccessful, captain"
580 GOTO 650
590 PRINT "You damaged the Dosznti ship, captain"
600 FOR J = 1 TO 30
610 FOR H = 1 TO 30 - J / 3: PRINT " ";: NEXT H
620 PRINT "Well done!!!";
630 NEXT J
640 T = T + INT(RND * 1000) + 784
650 GOSUB 1620
660 RETURN
670 REM Out of energy
680 GOSUB 1620
690 PRINT "This is ship's master control"
700 GOSUB 1650
710 IF L <= 0 THEN PRINT "Energy reserves depleted"
720 IF TI = 0 THEN PRINT "You have stayed in space too long"
730 PRINT: PRINT "You defeated"; T; "Dosznti": GOSUB 1650
740 PRINT "Life support systems fading..."
750 GOSUB 1650
760 PRINT "   fading..."
770 GOSUB 1650
780 PRINT "       fading..."
790 GOSUB 1650
800 PRINT "Tally was "; T: IF T > HS THEN HS = T
810 PRINT: PRINT "Best so far is"; HS: GOSUB 1650
820 PRINT: PRINT "Stand by for your next mission"
830 GOSUB 1650: GOSUB 1650: GOTO 30
840 REM *******************************
850 GOSUB 1650
860 PRINT "You have collided with the Dosznti ship!!"
870 GOSUB 1650
880 GOTO 690
890 REM Oosznti report
900 IF ABS(A - X) > 5 OR ABS(B - Y) > 5 OR ABS(C - Z) > 5 OR RND < .7 THEN RETURN
910 GOSUB 1620
920 PRINT "Condition red!  Condition red!"
930 GOSUB 1650: IF RND < .25 THEN GOSUB 1620: PRINT "Condition amber!": GOSUB 1650: RETURN
940 PRINT "Dosznti are firing at us, sir"
950 GOSUB 1650
960 PRINT "Condition red!  Condition red!"
970 GOSUB 1650
980 IF RND > .7 THEN 1110
990 PRINT "Dosznti fire has hit our ship, captain"
1000 DA = INT(RND * 9) + 2
1010 GOSUB 1650
1020 PRINT "Master control reports damage rating of"; DA
1030 PRINT "to the ";
1040 IF DA = 2 THEN PRINT "foreward section, sir"
1050 IF DA > 2 AND DA < 4 THEN PRINT "crew section, captain"
1060 IF DA > 3 AND DA < 7 THEN PRINT "main drive, sir"
1070 IF DA > 6 THEN PRINT "power reserve chamber, captain"
1080 L = L - DA
1090 GOSUB 1620
1100 RETURN
1110 GOSUB 1650
1120 PRINT "The Dosznti fire missed our ship, captain"
1130 GOSUB 1650
1140 RETURN
1150 REM Status report
1160 CLS
1170 PRINT "********************************************"
1180 PRINT: PRINT "Status report from master control:"
1190 GOSUB 1650
1200 PRINT "Energy in main and auxiliary banks:"; L
1210 IF L < 3 THEN PRINT: PRINT "Warning...energy level is": PRINT "dangerously low!"
1220 PRINT , "Stardate timer reads"; TI
1230 IF TI < 8 THEN PRINT "!!!!!Warning - Mission time running out!!!!!"
1240 IF TI < 1 THEN 680
1250 PRINT "********************************************"
1260 IF T > 0 THEN PRINT: PRINT "Dosznti destruction tally is"; T
1270 PRINT ">>>Ships galactic co-ordinates are"; X; Y; Z
1280 PRINT: PRINT ">>>>>Dosznti mothership located at"; A; B; C
1290 PRINT: PRINT "The Dosznti is ";
1300 IF A <> X OR B <> Y THEN PRINT "to the";
1310 IF A < X THEN PRINT " north";
1320 IF A > X THEN PRINT " south";
1330 IF B > Y THEN PRINT " east";
1340 IF B < Y THEN PRINT " west";
1350 IF C = Z THEN PRINT " of your ship, sir"
1360 IF C > Z THEN PRINT " behind us, captain"
1370 IF C < Z THEN PRINT " in front of us, sir"
1380 PRINT "********************************************"
1390 RETURN
1400 REM *******************************
1410 REM Initialise
1420 CLS
1430 RANDOMIZE TIMER
1440 L = 35 + INT(RND * 30): T = 0: TI = 50
1450 A = INT(RND * 10) + 1
1460 B = INT(RND * 10) + 1
1470 C = INT(RND * 10) + 1
1480 X = INT(RND * 10) + 1
1490 Y = INT(RND * 10) + 1
1500 Z = INT(RND * 10) + 1
1510 RETURN
1520 REM Hyperspace option
1530 X = INT(RND * 10) + 1
1540 Y = INT(RND * 10) + 1
1550 X = INT(RND * 10) + 1
1560 FOR J = 1 TO 40
1570 PRINT TAB(J); "*": PRINT
1580 FOR H = 1 TO J: NEXT H
1590 NEXT J
1600 CLS
1610 RETURN
1620 XX = 1.0: GOSUB 2000
1630 CLS
1640 GOTO 1660
1650 XX = 1.0: GOSUB 2000
1660 PRINT: PRINT
1670 RETURN
2000 ST = TIMER + XX
2010 IF TIMER < ST THEN 2010
2020 RETURN

