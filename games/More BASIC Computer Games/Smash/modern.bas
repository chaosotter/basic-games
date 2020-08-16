5 CLS: COLOR 12
10 PRINT TAB(37); "Smash"
20 PRINT TAB(31); "Creative Computing"
30 PRINT TAB(29); "Morristown, New Jersey"
40 PRINT: PRINT: PRINT: COLOR 15
45 RANDOMIZE TIMER
50 DIM A(7), J(6)
70 COLOR 10: PRINT "Do you need instructions (Y/N)";
80 INPUT Z$: COLOR 15
90 PRINT
100 FOR X = 1 TO 7: READ A(X): NEXT X
105 FOR X = 1 TO 6: READ J(X): NEXT X
120 IF LEFT$(Z$, 1) = "N" OR LEFT$(Z$, 1) = "n" THEN 350
130 COLOR 14: PRINT
140 PRINT "This is Smash, the game that simulates a car race.  You will respond with one"
150 PRINT "of the following maneuvers when a '?' is typed.  The position numbers refer to"
160 PRINT "the point at which you are on the track.  They go as follows:"
170 PRINT: COLOR 11
180 PRINT "    1 - The start line", , "5 - Coming up on a right turn"
190 PRINT "    2 - Mid straightaway", , "6 - Mid right turn"
200 PRINT "    3 - Coming up on a left turn", "7 - The finish line"
210 PRINT "    4 - Mid left turn"
250 PRINT: COLOR 14
260 PRINT "The maneuvers are:": COLOR 11: PRINT
270 PRINT "    1 - Floor it", , "5 - Sharp right"
280 PRINT "    2 - Accelerate (moderate)", "6 - Moderate right"
290 PRINT "    3 - Brake slight", , "7 - Sharp left"
300 PRINT "    4 - Jam on the brakes", , "8 - Moderate left"
350 PRINT: COLOR 15
360 PRINT "Time (sec)", "Miles to go", "MPH", "Position", "Move"
370 LET A = INT(10 + RND(1) * 5): Y = A
380 LET B = 0: T = 0
390 LET C = 1
400 GOTO 420
410 LET C = (INT(2 + RND(1) * 5))
420 COLOR 13: PRINT INT(T * 100) / 100, INT(A * 100) / 100, INT(B * 100) / 100, C,
430 COLOR 10: INPUT D: COLOR 15
440 IF D <> INT(D) THEN 470
450 IF D > 8 THEN 470
460 IF D >= 1 THEN 490
470 PRINT "One through eight only!"
480 GOTO 420
490 IF D <> 1 THEN 510
500 LET B = 3 * B + 20 + INT(10 + RND(1) * 91) / 10
510 IF D <> 2 THEN 530
520 LET B = 3 * B / 2 + 7 + INT(10 + RND(1) * 61) / 10
530 IF D <> 3 THEN 550
540 LET B = 7 * B / 8 - 6 + INT(10 + RND(1) * 41) / 10
550 IF D <> 4 THEN 570
560 LET B = 4 * B / 7 - 26 + INT(10 + RND(1) * 81) / 10
570 IF D = 7 THEN 590
580 IF D <> 5 THEN 600
590 LET B = 9 * B / 10 * (.7 + RND(1) * .6)
600 IF D = 8 THEN 620
610 IF D <> 6 THEN 630
620 LET B = 13 * B / 14 * (.7 + RND(1) * .6)
630 IF B > 0 THEN 650
640 LET B = 0
650 IF A - B / 120 > 0 THEN 730
660 LET T = T + A * 3600 / B
670 PRINT INT(T * 100) / 100, 0, INT(B * 100) / 100, 7
680 PRINT: PRINT "That ends the race, you placed at number"; STR$(INT(T / (20 * Y) + .5)); "."
690 PRINT "Your average speed was"; Y * 3600 / T; "mph."
700 IF INT(T / (20 * Y) + .5) <> 1 THEN 980
710 PRINT: PRINT "That was a perfect race, champ!"
720 GOTO 980
730 IF C <> 2 THEN 760
740 IF D = 7 THEN 960
750 IF D = 5 THEN 960
760 IF C = 3 THEN 780
770 IF C <> 4 THEN 800
780 IF D = 5 THEN 960
790 IF D = 6 THEN 960
800 IF C = 6 THEN 820
810 IF C <> 5 THEN 840
820 IF D = 7 THEN 960
830 IF D = 8 THEN 960
840 IF B > J(C) THEN 970
850 IF INT(1 + RND(1) * 77) <> 40 THEN 880
860 PRINT: PRINT "Smash -- you have been hit by another car!"
870 GOTO 980
880 LET T = T + 30
890 LET A = A - B / 120
900 IF C = 1 THEN 410
910 IF C = 4 THEN 410
920 IF C = 2 THEN 410
930 IF C = 6 THEN 410
940 LET C = C + 1
950 GOTO 420
960 PRINT "Bad move!"
970 PRINT: PRINT "Smash -- you went right into the wall!"
980 COLOR 10: PRINT: PRINT "Do you want to play again (Y/N)";
990 INPUT Z$: COLOR 15
1000 IF LEFT$(Z$, 1) = "Y" OR LEFT$(Z$, 1) = "y" THEN 350
1020 DATA 2,3,5,2,3,5,2,200,240,180,170,180,170
1030 END

