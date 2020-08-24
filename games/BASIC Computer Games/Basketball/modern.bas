3 CLS: COLOR 12
5 PRINT TAB(35); "Basketball"
7 PRINT TAB(31); "Creative Computing"
8 PRINT TAB(29); "Morristown, New Jersey"
9 PRINT: PRINT: PRINT: RANDOMIZE TIMER: COLOR 14
10 PRINT "This is Dartmouth College basketball.  You will be Dartmouth captain and"
20 PRINT "playmaker.  Call shots as follows:"
30 PRINT: COLOR 11
35 PRINT "  1 - Long jump shot (30 ft.)"
40 PRINT "  2 - Short jump shot (15 ft.)"
45 PRINT "  3 - Lay up"
50 PRINT "  4 - Set shot"
55 PRINT: COLOR 14
60 PRINT "Both teams will use the same defense.  Call defense as follows:"
65 PRINT: COLOR 11
70 PRINT "  6 - Press", , "6.5 - Man-to-Man"
72 PRINT "  7 - Zone", , "7.5 - None"
74 PRINT: COLOR 14
75 PRINT "To change defense, just type 0 as your next shot.": PRINT
76 COLOR 10: INPUT "Your starting defense will be (6, 6.5, 7, 7.5)"; D: COLOR 15: IF D < 6 THEN 2010
80 COLOR 10: INPUT "Choose your opponent"; O$: COLOR 15
370 PRINT: PRINT "Center jump."
390 IF RND(1) > 3 / 5 THEN 420
400 PRINT O$; " controls the tap."
410 GOTO 3000
420 PRINT "Dartmouth controls the tap."
425 REM
430 COLOR 10: PRINT: INPUT "Your shot (0-4)"; Z: COLOR 15
440 P = 0
445 IF Z <> INT(Z) THEN 455
446 IF Z < 0 OR Z > 4 THEN 455
447 GOTO 460
455 PRINT "Incorrect answer.  Retype it.": GOTO 430
460 IF RND(1) < .5 THEN 1000
480 IF T < 100 THEN 1000
490 PRINT
491 IF S(1) <> S(0) THEN 510
492 PRINT: COLOR 12: PRINT "***** End of second half *****": PRINT: COLOR 15
493 PRINT "Score at end of regulation time:"
494 COLOR 13: PRINT , "Dartmouth "; S(1), O$; " "; S(0): COLOR 15
495 PRINT
496 PRINT "Begin two-minute overtime period."
499 T = 93
500 GOTO 370
510 COLOR 12: PRINT "***** End of game *****": PRINT: COLOR 15
515 PRINT "Final score:"
516 COLOR 13: PRINT , "Dartmouth "; S(1), O$; " "; S(0): COLOR 15
520 END
600 PRINT
610 COLOR 12: PRINT "***** Two minutes left in the game *****": COLOR 15
620 PRINT
630 RETURN
1000 ON Z GOTO 1040, 1040
1030 GOTO 1300
1040 T = T + 1
1041 IF T = 50 THEN 8000
1042 IF T = 92 THEN 1046
1043 GOTO 1050
1046 GOSUB 600
1050 PRINT "Jump shot!"
1060 IF RND(1) > .341 * D / 8 THEN 1090
1070 PRINT "Shot is good."
1075 GOSUB 7000
1085 GOTO 3000
1090 IF RND(1) > .682 * D / 8 THEN 1200
1100 PRINT "Shot is off-target."
1105 IF D / 6 * RND(1) > .45 THEN 1130
1110 PRINT "Dartmouth controls the rebound."
1120 GOTO 1145
1130 PRINT "Rebound to "; O$; "."
1140 GOTO 3000
1145 IF RND(1) > .4 THEN 1158
1150 GOTO 1300
1158 IF D = 6 THEN 5100
1160 PRINT "Ball passed back to you."
1170 GOTO 430
1180 IF RND(1) > .9 THEN 1190
1185 PRINT "Player fouled, two shots."
1187 GOSUB 4000
1188 GOTO 3000
1190 PRINT "Ball stolen.  "; O$; "'s ball."
1195 GOTO 3000
1200 IF RND(1) > .782 * D / 8 THEN 1250
1210 PRINT "Shot is blocked.  Ball controlled by ";
1230 IF RND(1) > .5 THEN 1242
1235 PRINT "Dartmouth."
1240 GOTO 430
1242 PRINT O$; "."
1245 GOTO 3000
1250 IF RND(1) > .843 * D / 8 THEN 1270
1255 PRINT "Shooter is fouled.  Two shots."
1260 GOSUB 4000
1265 GOTO 3000
1270 PRINT "Charging foul.  Dartmouth loses the ball."
1280 GOTO 3000
1300 T = T + 1
1301 IF T = 50 THEN 8000
1302 IF T = 92 THEN 1304
1303 GOTO 1305
1304 GOSUB 600
1305 IF Z = 0 THEN 2010
1310 IF Z > 3 THEN 1700
1320 PRINT "Lay up."
1330 IF 7 / D * RND(1) > .4 THEN 1360
1340 PRINT "Shot is good.  Two points."
1345 GOSUB 7000
1355 GOTO 3000
1360 IF 7 / D * RND(1) > .7 THEN 1500
1370 PRINT "Shot is off the rim."
1380 IF RND(1) > 2 / 3 THEN 1415
1390 PRINT O$; " controls the rebound."
1400 GOTO 3000
1415 PRINT "Dartmouth controls the rebound."
1420 IF RND(1) > .4 THEN 1440
1430 GOTO 1300
1440 PRINT "Ball passed back to you."
1450 GOTO 430
1500 IF 7 / D * RND(1) > .875 THEN 1600
1510 PRINT "Shooter fouled.  Two shots."
1520 GOSUB 4000
1530 GOTO 3000
1600 IF 7 / D * RND(1) > .925 THEN 1630
1610 PRINT "Shot blocked.  "; O$; "'s ball."
1620 GOTO 3000
1630 PRINT "Charging foul.  Dartmouth loses the ball."
1640 GOTO 3000
1700 PRINT "Set shot."
1710 GOTO 1330
2010 COLOR 10: INPUT "Your new defensive alignment is (6, 6.5, 7, 7.5)"; D: COLOR 15
2030 IF D < 6 THEN 2010
2040 GOTO 425
3000 P = 1
3005 T = T + 1
3008 IF T = 50 THEN 8000
3012 GOTO 3018
3015 GOSUB 600
3018 PRINT
3020 Z1 = 10 / 4 * RND(1) + 1
3030 IF Z1 > 2 THEN 3500
3040 PRINT "Jump shot."
3050 IF 8 / D * RND(1) > .35 THEN 3100
3060 PRINT "Shot is good."
3080 GOSUB 6000
3090 GOTO 425
3100 IF 8 / D * RND(1) > .75 THEN 3200
3105 PRINT "Shot is off rim."
3110 IF D / 6 * RND(1) > .5 THEN 3150
3120 PRINT "Dartmouth controls the rebound."
3130 GOTO 425
3150 PRINT O$; " controls the rebound."
3160 IF D = 6 THEN 5000
3165 IF RND(1) > .5 THEN 3175
3168 PRINT "Pass back to "; O$; " guard."
3170 GOTO 3000
3175 GOTO 3500
3200 IF 8 / D * RND(1) > .9 THEN 3310
3210 PRINT "Player fouled.  Two shots."
3220 GOSUB 4000
3230 GOTO 425
3310 PRINT "Offensive foul.  Dartmouth's ball."
3320 GOTO 425
3500 IF Z1 > 3 THEN 3800
3510 PRINT "Lay up."
3520 IF 7 / D * RND(1) > .413 THEN 3600
3530 PRINT "Shot is good."
3540 GOSUB 6000
3550 GOTO 425
3600 PRINT "Shot is missed."
3610 GOTO 3110
3800 PRINT "Set shot."
3810 GOTO 3520
4000 REM FOUL SHOOTING
4010 IF RND(1) > .49 THEN 4050
4020 PRINT "Shooter makes both shots."
4030 S(1 - P) = S(1 - P) + 2
4040 GOSUB 6010
4041 RETURN
4050 IF RND(1) > .75 THEN 4100
4060 PRINT "Shooter makes one shot and misses one."
4070 S(1 - P) = S(1 - P) + 1
4080 GOTO 4040
4100 PRINT "Both shots missed."
4110 GOTO 4040
5000 IF RND(1) > .75 THEN 5010
5005 GOTO 3165
5010 PRINT "Ball stolen.  Easy lay up for Dartmouth."
5015 GOSUB 7000
5030 GOTO 3000
5100 IF RND(1) > .6 THEN 5120
5110 GOTO 1160
5120 PRINT "Pass stoledn by "; O$; "!  Easy lay up."
5130 GOSUB 6000
5140 GOTO 425
6000 S(0) = S(0) + 2
6010 COLOR 13: PRINT "Score: "; S(1); "to"; S(0): COLOR 15
6020 RETURN
7000 S(1) = S(1) + 2
7010 GOSUB 6010
7020 RETURN
8000 PRINT: COLOR 12: PRINT "***** End of first half *****": PRINT: COLOR 15
8010 PRINT "Halftime:"
8011 COLOR 13: PRINT , "Dartmouth "; S(1), O$; " "; S(0): COLOR 15
8015 PRINT
8016 PRINT
8020 GOTO 370
9999 END

