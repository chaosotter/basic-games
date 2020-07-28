5 CLS: COLOR 12
10 PRINT TAB(37); "Camel"
20 PRINT TAB(31); "Creative Computing"
30 PRINT TAB(29); "Morristown, New Jersey"
35 PRINT: PRINT: PRINT: COLOR 15
40 RANDOMIZE TIMER
110 COLOR 10: PRINT "Would you like instructions (Y/N)";
120 INPUT D$: COLOR 15
130 IF LEFT$(D$, 1) = "N" OR LEFT$(D$, 1) = "n" THEN 320
140 PRINT: COLOR 14
145 PRINT "Welcome to Camel.  The object is to travel 200 miles across the great Gobi"
150 PRINT "desert.  A tribe of knock-kneed pygmies will be chasing you.  You will be"
160 PRINT "asked for commands every so often."
200 PRINT: COLOR 13
210 PRINT "C O M M A N D S :"
220 PRINT "  #1: Drink from your canteen"
230 PRINT "  #2: Ahead moderate speed"
240 PRINT "  #3: Ahead full speed"
250 PRINT "  #4: Stop for the night"
260 PRINT "  #5: Status check"
270 PRINT "  #6: Hope for help"
275 PRINT: COLOR 14
280 PRINT "You have one quart of water which will last you six drinks.  You may renew"
290 PRINT "your water supply completely at an oasis.  You get half a quart if found by"
300 PRINT "help.  If help does not find you after command six, you lose.  Good luck and"
310 PRINT "good cameling!"
320 PRINT: COLOR 15
330 PRINT "You are in the middle of the desert at an oasis."
335 GOSUB 2000
340 IF C > 199 THEN 1210
350 Z = Z - 1
355 IF Z = 1 THEN PRINT "----------W A R N I N G---------- Get a drink!"
360 IF Z < 0 THEN 1630
370 P = P + 1
380 X2 = INT(10 * RND(1) + 2.5)
390 IF Q > 0 THEN 940
400 IF P < 4 THEN 470
410 C1 = C1 + X2
420 IF C1 < C THEN 460
430 PRINT "The pygmies have captured you.  Camel and people soup is their favorite dish!"
450 GOTO 1560
460 PRINT "The pygmies are"; C - C1; "miles behind you."
470 PRINT "You have traveled"; C; "miles altogether."
480 COLOR 10: PRINT "What is your command";
490 INPUT Y: COLOR 15: PRINT
500 ON Y GOTO 830, 610, 680, 760, 790
550 T = INT(10 * RND(1))
560 IF T <> 1 THEN 1200
570 PRINT "Help has found you in a state of unconsciousness."
580 S = 3
590 Z = 4
600 GOTO 340
610 F = F + 1
620 IF F = 8 THEN 1190
630 GOSUB 880
640 X1 = INT(10 * RND(1))
650 C = C + X1
660 PRINT "Your camel likes this pace."
670 GOTO 340
680 F = F + 3
690 IF F > 7 THEN 1190
700 GOSUB 880
710 X1 = 2 * INT(10 * RND(1))
720 C = C + X1
730 PRINT "Your camel is burning across the desert sands."
740 PRINT
750 GOTO 340
760 PRINT "Your camel thanks you!"
770 F = 0
780 GOTO 350
790 PRINT "Your camel has"; 7 - F; "good days left."
800 PRINT "You have"; S; "drinks left in your canteen."
810 PRINT "You can go"; Z; "commands without drinking."
830 S = S - 1
840 IF S < 0 THEN 1200
850 PRINT "Better watch for an oasis!"
860 Z = 4
870 GOTO 480
880 A = INT(100 * RND(1))
890 IF A > 5 THEN 1120
900 PRINT "Wild Berbers hidden in the sand have captured you.  Luckily, the local sheik"
910 PRINT "has agreed to their ransom demands... but... watch for the pygmies!  You have"
920 PRINT "a new choice of subcommands:"
930 PRINT: COLOR 13
940 PRINT "  #7: Attempt an escape"
950 PRINT "  #8: Wait for payment"
960 PRINT: COLOR 10: PRINT "Your subcommand";
970 INPUT X: COLOR 15
980 IF X = 8 THEN 1060
990 X1 = INT(10 * RND(1))
1000 IF X1 < 5 THEN 1040
1010 PRINT "Congratulations, you successfully escaped!!!"
1020 Q = 0
1030 GOTO 340
1040 PRINT "You were mortally wounded by a pig stabber while escaping."
1050 GOTO 1410
1060 X1 = INT(100 * RND(1))
1070 REM
1080 IF X1 > 24 THEN 1100
1090 PRINT "Your ransom has been paid and you are free to go."
1095 Q = 0
1096 GOTO 340
1100 PRINT "The local sultan is collecting... just wait..."
1110 GOTO 340
1120 A = INT(10 * RND(1))
1130 IF A > 2 THEN 1240
1140 PRINT "You have arrived at an oasis."
1150 PRINT "Your camel is filling your canteen and eating figs."
1160 Z = 4
1170 S = 6
1180 RETURN
1190 PRINT "You dirty rapscallion!  You ran your poor camel to death!!"
1200 GOTO 1410
1210 PRINT "You win, a party is being given in your honor..."
1220 PRINT "The pygmies are planning to attend..."
1230 GOTO 1560
1240 X1 = INT(100 * RND(1))
1250 IF X1 > 5 THEN 1350
1260 PRINT "You have been caught in a sandstorm... good luck!"
1270 X5 = INT(10 * RND(1))
1280 X6 = INT(10 * RND(1))
1290 IF X6 < 5 THEN 1320
1300 C = C + X5
1310 GOTO 1330
1320 C = C - X5
1330 PRINT "Your new position is"; C; "miles so far!"
1340 RETURN
1350 X1 = INT(100 * RND(1))
1360 IF X1 > 5 THEN RETURN
1370 C1 = C1 + 1
1380 PRINT "Your camel hurt his hump.  Luckily, the pygmies were footweary!!!"
1400 RETURN
1410 U = INT(10 * RND(1))
1420 PRINT "You died in the desert."
1430 IF U > 1 THEN 1460
1440 PRINT "The National Camel's Union is not attending your funeral!!!"
1450 GOTO 1560
1460 IF U > 3 THEN 1490
1470 PRINT "Your body was eaten by vultures and imported cannibals!!!"
1480 GOTO 1560
1490 IF U > 5 THEN 1520
1500 PRINT "The local sheik now uses your skull for a change purse!!!"
1510 GOTO 1560
1520 IF U > 7 THEN 1550
1530 PRINT "People with little intelligence should stay out of the desert!"
1540 GOTO 1560
1550 PRINT "Turkeys should fly, not ride camels!!!"
1560 PRINT
1570 PRINT
1580 COLOR 10: PRINT "Want a new camel and a new game (Y/N)";
1590 INPUT D$: COLOR 15
1600 IF LEFT$(D$, 1) = "Y" OR LEFT$(D$, 1) = "y" THEN 320
1620 GOTO 1650
1630 PRINT "You ran out of water... Sorry, chum!!!"
1640 GOTO 1410
1650 PRINT "-----------------"
1655 PRINT "     CHICKEN"
1657 PRINT "-----------------"
1660 END
2000 Z = 4
2010 S = 6
2020 C = 0
2030 C1 = 0
2040 Q = 0
2050 F = 0
2060 P = 0
2070 RETURN

