10 REM  "ELEVATE"
20 REM
25 RANDOMIZE TIMER
30 GOSUB 9000
40 PRINT "WANT A DESCRIPTION (Y OR N)";
50 INPUT Q$
60 IF Q$ = "N" THEN 200
70 PRINT "THIS GAME SIMULATES THE EFFECT"
80 PRINT " OF CHANGING THE ELEVATION OF"
90 PRINT " A CANNON."
95 PRINT "YOU ARE ON DUTY WITH A BOSTON"
100 PRINT " COASTAL DEFENSE BATTERY."
105 PRINT "YOU'RE TRYING TO SINK AN"
110 PRINT " APPROACHING WARSHIP."
115 PRINT "A HIT WITHIN 100 YARDS WILL"
120 PRINT " DO IT."
125 PRINT "FOR MORE RANGE:  ELEVATE."
130 PRINT "IF YOU OVERSHOOT:  LOWER THE"
140 PRINT " ELEVATION."
150 PRINT "ENTRIES ARE IN DEGREES "
180 PRINT ".....EXAMPLE:    45.3"
185 PRINT "OK"
190 INPUT Q$
195 PRINT
200 PRINT "MAXIMUM RANGE IS 46500 YARDS"
210 PRINT " DISTANCE TO THE SHIP IS"
220 LET R = 43000 - 3000 * RND(1)
230 PRINT "     "; R; "YARDS"
240 LET S = 0
250 PRINT
2500 PRINT "ELEVATION";
2510 INPUT E
2520 LET S = S + 1
2530 IF E < 88 THEN 4000
2540 IF E > 92 THEN 2650
2550 PRINT " YOU SHOT NEARLY STRAIGHT UP..."
2560 PRINT "...LET'S GET OUT OF HERE!"
2570 FOR I = 1 TO 10
2580 FOR J = 1 TO 100
2590 NEXT J
2600 PRINT TAB(15); "."
2610 NEXT I
2620 PRINT TAB(13); "BOOM!"
2630 PRINT
2640 GOTO 2500
2650 PRINT "THAT SHOULD MAKE YOU A HERO --"
2660 PRINT " THAT ROUND MAY HIT CAMBRIDGE!"
2670 LET C = 1
2680 GOTO 2630
3000 PRINT TAB(3); "NEWS FLASH!"
3010 PRINT "CAMBRIDGE COW HIT"
3020 PRINT "BY MYSTERY MISSILE"
3030 PRINT
3040 LET C = 0
3050 RETURN
3200 PRINT "ILLEGAL"
3210 GOTO 2630
4000 IF C <> 1 THEN 4020
4010 GOSUB 3000
4020 IF E < 1 THEN 3200
4030 LET E2 = 2 * E / 57.2958
4040 LET J = 46500 * SIN(E2)
4050 LET N = R - J
4060 LET D = INT(N)
4070 IF ABS(D) < 100 THEN 4100
4080 IF R - J < 0 THEN 4200
4090 IF R - J > 0 THEN 4220
4100 PRINT "GOT 'EM";
4110 IF S < 8 THEN 4130
4120 PRINT " FINALLY!!"
4130 PRINT S; "ROUNDS FIRED"
4140 PRINT
4150 PRINT "ANOTHER GAME (Y OR N)";
4160 INPUT Q$
4170 IF Q$ = "Y" THEN 195
4180 PRINT "END"
4190 END
4200 PRINT "SHORT BY"; ABS(D); "YARDS"
4210 GOTO 2500
4220 PRINT "OVER BY"; ABS(D); "YARDS"
4230 GOTO 2500
9000 REM  "RANDOM NUMBER ROUTINE"
9010 LET Z = RND(1)
9020 RETURN

