5 CLS: COLOR 12
10 REM  "ELEVATE"
15 PRINT TAB(36); "Elevate": PRINT: PRINT
20 REM
25 RANDOMIZE TIMER
30 GOSUB 9000
40 COLOR 10: PRINT "Want a description (Y/N)";
50 INPUT Q$: COLOR 15
60 IF LEFT$(Q$, 1) = "N" OR LEFT$(Q$, 1) = "n" THEN 200
70 COLOR 14: PRINT
80 PRINT "This game simulates the effect of changing the elevation of a cannon.  You are"
90 PRINT "on duty with a Boston coastal defense battery.  You're trying to sink an"
100 PRINT "approaching warship.  A hit within 100 yards will do it."
110 PRINT
120 PRINT "For more range, elevate.  If you overshoot, lower the elevation."
130 PRINT
140 PRINT "Entries are in degrees, e.g., 45.3."
195 PRINT: COLOR 15
200 PRINT "Maximum range is 46500 yards."
210 PRINT "Distance to the ship is";
220 LET R = 43000 - 3000 * RND(1)
230 PRINT R; "yards."
240 LET S = 0
250 PRINT
2500 COLOR 10: PRINT "Elevation";
2510 INPUT E: COLOR 15
2520 LET S = S + 1
2530 IF E < 88 THEN 4000
2540 IF E > 92 THEN 2650
2550 PRINT " You shot nearly stright up..."
2560 PRINT "...let's get out of here!": COLOR 12
2570 FOR I = 1 TO 10
2580 FOR J = 1 TO 100
2590 NEXT J
2600 PRINT TAB(15); "."
2610 NEXT I
2620 PRINT TAB(13); "BOOM!": COLOR 15
2630 PRINT
2640 GOTO 2500
2650 PRINT "That should you make a hero -- that round may hit Cambridge!"
2670 LET C = 1
2680 GOTO 2630
3000 PRINT "News Flash!  Cambridge cow hit by mystery missile."
3030 PRINT
3040 LET C = 0
3050 RETURN
3200 PRINT "Illegal entry."
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
4100 PRINT "Got 'em! ";
4110 IF S < 8 THEN 4130
4120 PRINT " (Finally!) ";
4130 PRINT S; "rounds fired."
4140 PRINT
4150 COLOR 10: PRINT "Another game (Y/N)";
4160 INPUT Q$: COLOR 15
4170 IF LEFT$(Q$, 1) = "Y" OR LEFT$(Q$, 1) = "y" THEN 195
4180 PRINT: PRINT "End."
4190 END
4200 PRINT "Short by"; ABS(D); "yards.": PRINT
4210 GOTO 2500
4220 PRINT "Over by"; ABS(D); "yards.": PRINT
4230 GOTO 2500
9000 REM  "RANDOM NUMBER ROUTINE"
9010 LET Z = RND(1)
9020 RETURN

