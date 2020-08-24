5 CLS: COLOR 12
10 PRINT TAB(34); "Bombardment"
20 PRINT TAB(31); "Creative Computing"
25 PRINT TAB(29); "Morristown, New Jersey"
30 PRINT: PRINT: RANDOMIZE TIMER: COLOR 14
100 PRINT "You are on a battlefield with 4 platoons, and you have 25 outposts available"
110 PRINT "where they may be placed.  You can only place one platoon at any one outpost."
120 PRINT "The computer does the same with its four platoons."
135 PRINT
140 PRINT "The object of the game is to fire missiles at the outputs of the computer."
150 PRINT "It will do the same to you.  The one who destroys all four of the enemy's"
160 PRINT "platoons first is the winner."
180 PRINT
190 PRINT "Good luck... and tell us where you want the bodies sent!"
200 PRINT
210 PRINT "[Tear off matrix and use it to check off the numbers.]"
220 PRINT
260 DIM M(100)
270 COLOR 13: FOR R = 1 TO 5
280 I = (R - 1) * 5 + 1
290 PRINT TAB(6); I; TAB(12); I + 1; TAB(18); I + 2; TAB(24); I + 3; TAB(30); I + 4
300 NEXT R
350 PRINT: COLOR 15
380 C = INT(RND(1) * 25) + 1
390 D = INT(RND(1) * 25) + 1
400 E = INT(RND(1) * 25) + 1
410 F = INT(RND(1) * 25) + 1
420 IF C = D THEN 390
430 IF C = E THEN 400
440 IF C = F THEN 410
450 IF D = E THEN 400
460 IF D = F THEN 410
470 IF E = F THEN 410
480 COLOR 10: PRINT "What are your four positions";
490 INPUT G, H, K, L: COLOR 15
495 PRINT
500 COLOR 10: PRINT "Where do you wish to fire your missile";
510 INPUT Y: COLOR 15
520 IF Y = C THEN 710
530 IF Y = D THEN 710
540 IF Y = E THEN 710
550 IF Y = F THEN 710
560 GOTO 630
570 M = INT(RND(1) * 25) + 1
575 GOTO 1160
580 IF X = G THEN 920
590 IF X = H THEN 920
600 IF X = L THEN 920
610 IF X = K THEN 920
620 GOTO 670
630 PRINT "Ha ha, you missed.  My turn now!"
640 PRINT: GOTO 570
670 PRINT "I missed you, you dirty rat.  I picked"; STR$(M); ".  Your turn."
680 PRINT: GOTO 500
710 Q = Q + 1
720 IF Q = 4 THEN 890
730 PRINT "You got one of my outposts!"
740 IF Q = 1 THEN 770
750 IF Q = 2 THEN 810
760 IF Q = 3 THEN 850
770 PRINT "One down, three to go."
780 PRINT: GOTO 570
810 PRINT "Two down, two to go."
820 PRINT: GOTO 570
850 PRINT "Three down, one to go."
860 PRINT: GOTO 570
890 PRINT "You got me, I'm going fast.  But I'll get you when my transisto&s recuip%ra*e!"
910 GOTO 1235
920 Z = Z + 1
930 IF Z = 4 THEN 1110
940 PRINT "I got you.  It won't be long now.  Post"; X; "was hit."
950 IF Z = 1 THEN 990
960 IF Z = 2 THEN 1030
970 IF Z = 3 THEN 1070
990 PRINT "You have only three outposts left."
1000 PRINT: GOTO 500
1030 PRINT "You have only two outputs left."
1040 PRINT: GOTO 500
1070 PRINT "You have only one outpost left."
1080 PRINT: GOTO 500
1110 PRINT "You're dead.  Your last outpost was at"; STR$(X); ".  Ha, ha, ha!"
1120 PRINT "Better luck next time."
1150 GOTO 1235
1160 P = P + 1
1170 N = P - 1
1180 FOR T = 1 TO N
1190 IF M = M(T) THEN 570
1200 NEXT T
1210 X = M
1220 M(P) = M
1230 GOTO 580
1235 END

