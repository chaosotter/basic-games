5 CLS: COLOR 12
10 REM  "WAMPUS"
15 PRINT TAB(37); "Wampus": PRINT
20 REM
25 RANDOMIZE TIMER
30 GOSUB 9000
40 PRINT
50 COLOR 10: PRINT "Do you want the story (Y/N)";
60 INPUT Q$
70 IF LEFT$(Q$, 1) = "Y" OR LEFT$(Q$, 1) = "y" THEN 110
80 IF LEFT$(Q$, 1) = "N" OR LEFT$(Q$, 1) = "n" THEN 120
90 PRINT "Don't you know?"
100 GOTO 40
110 GOSUB 1000
120 REM
130 GOSUB 2000
140 GOSUB 3000
150 IF X <> 0 THEN 140
160 IF Y <> E THEN 200
170 PRINT: PRINT "You got out, but Wampus will get you next time.  ";
190 GOTO 220
200 IF Y <> P THEN 230
210 PRINT: PRINT "You fell into the pit!  ";
220 PRINT "So long..."
230 PRINT
240 COLOR 10: PRINT "Another game (Y/N)";
250 INPUT Q$: COLOR 15
260 IF LEFT$(Q$, 1) = "Y" OR LEFT$(Q$, 1) = "y" THEN 120
270 PRINT: PRINT "Bye."
280 END
1000 COLOR 14: PRINT
1010 PRINT "You are lost in a cave that has 20 chambers.  All chambers have tunnels to"
1020 PRINT "three others.  One of the tunnels goes to the mouth of the cave.  If you find"
1030 PRINT "it, you get home free!"
1060 PRINT
1070 PRINT "Wampus lives in the cave.  He's a big hairy creature that will gobble you if"
1080 PRINT "he gets you.  He will run to another chamber if you shoot at him.  Your gun"
1090 PRINT "only has six shots, however, so use them wisely."
1100 PRINT
1160 PRINT "Some chambers have bats in them.  They scare you so badly that you simply run"
1170 PRINT "through the nearest tunnel.  One chamber has a deep pit -- don't fall in or"
1180 PRINT "you'll never get home."
1220 PRINT: COLOR 15
1230 RETURN
1999 REM  "SET UP CAVE"
2000 LET S = 6
2010 DATA 2,3,10,1,4,5,1,4,14,2,3,7,2,7,8
2020 DATA 12,18,19,4,5,12,5,12,18,13,18,19,1,14,16
2030 DATA 14,15,16,6,7,8,9,17,20,3,10,11,11,17,20
2040 DATA 10,11,20,13,15,19,6,8,9,6,9,17,15,16,13
2050 GOSUB 2400
2060 LET E = R3
2070 LET B1 = R1
2080 GOSUB 2400
2090 LET P = R1
2100 LET B2 = R3
2110 IF P = E THEN 2080
2120 IF P = B1 THEN 2080
2130 IF P = B2 THEN 2080
2140 IF B1 = B2 THEN 2080
2150 GOSUB 2400
2160 LET B3 = R2
2170 IF B3 = E THEN 2150
2180 IF B3 = P THEN 2150
2190 IF B3 = B1 THEN 2150
2200 IF B3 = B2 THEN 2150
2210 GOSUB 2400
2220 LET W = R1
2230 LET Y = R3
2240 IF Y = P THEN 2210
2250 IF Y = E THEN 2210
2260 LET X = 1
2270 RETURN
2399 REM  "RANDOM ROOMS"
2400 LET R = INT(100 * RND(1)) + 1
2410 FOR I = 1 TO R
2420 READ R1, R2, R3
2430 IF R2 <> 16 THEN 2450
2440 RESTORE
2450 NEXT I
2460 RETURN
2999 REM  "RUN THROUGH CAVE"
3000 IF Y = E THEN 3230
3010 IF Y = P THEN 3230
3020 IF Y = W THEN 3270
3030 IF Y = B1 THEN 3250
3040 IF Y = B2 THEN 3250
3050 IF Y = B3 THEN 3250
3060 Y$ = STR$(Y): Y$ = RIGHT$(Y$, LEN(Y$) - 1)
3065 PRINT: PRINT "You are in room #"; Y$; "."
3070 RESTORE
3080 FOR I = 1 TO Y
3090 READ R1, R2, R3
3100 NEXT I
3110 PRINT "Exits are: ";: COLOR 13: PRINT R1; R2; R3: COLOR 15
3115 IF R1 = E THEN 3150
3120 IF R2 = E THEN 3150
3130 IF R3 = E THEN 3150
3140 GOTO 3160
3150 PRINT "You can feel a draft."
3160 COLOR 10: PRINT "Move to";
3170 INPUT Y: COLOR 15
3180 IF Y = R1 THEN 3240
3190 IF Y = R2 THEN 3240
3200 IF Y = R3 THEN 3240
3210 PRINT "Try again."
3220 GOTO 3160
3230 LET X = 0
3240 RETURN
3250 GOSUB 4000
3260 GOTO 3000
3270 IF S > 0 THEN 3310
3280 PRINT "You're out of shots, and Wampus has you."
3300 GOTO 3230
3310 GOSUB 5000
3320 IF LEFT$(Q$, 1) = "R" OR LEFT$(Q$, 1) = "r" THEN 3070
3330 GOTO 3240
3999 REM  "BATS"
4000 N = INT(RND(1) * 3) + 1
4005 IF N = 1 THEN NR = R1
4010 IF N = 2 THEN NR = R2
4015 IF N = 3 THEN NR = R3
4020 PRINT "There are bats in here, so you run to room ";
4030 NR$ = STR$(NR): NR$ = RIGHT$(NR$, LEN(NR$) - 1): PRINT NR$; "!"
4040 LET Y = NR
4050 RETURN
4999 REM  "SHOOT OR RUN"
5000 PRINT "Wampus is in this room!"
5010 COLOR 10: PRINT "Want to shoot him or run (S/R)";
5020 INPUT Q$: COLOR 15
5030 IF LEFT$(Q$, 1) = "S" OR LEFT$(Q$, 1) = "s" THEN 5080
5040 IF LEFT$(Q$, 1) = "R" OR LEFT$(Q$, 1) = "r" THEN 5070
5050 PRINT "Answer quickly!"
5060 GOTO 5010
5070 RETURN
5080 PRINT "Bang!  He ran out."
5090 LET S = S - 1
5100 LET W = R2
5110 IF R2 <> E THEN 5130
5120 LET W = R1
5130 RETURN
9000 REM  "RANDOM NUMBER ROUTINE"
9010 LET Z = RND(1)
9020 RETURN

