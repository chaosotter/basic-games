5 CLS: COLOR 12
10 PRINT TAB(37); "Wumpus"
20 PRINT TAB(31); "Creative Computing"
21 PRINT TAB(29); "Morristown, New Jersey"
22 PRINT
24 PRINT
26 PRINT: COLOR 15
28 RANDOMIZE time
30 COLOR 10: PRINT "Instructions (Y/N)";
40 INPUT I$
50 IF LEFT$(I$, 1) = "N" OR LEFT$(I$, 1) = "n" THEN 60
55 GOSUB 1000
60 REM-SET UP CAVE (DODECAHEDRAL NODE LIST)
70 DIM S(20, 3)
80 FOR J = 1 TO 20
90 FOR K = 1 TO 3
100 READ S(J, K)
110 NEXT K
120 NEXT J
130 DATA 2,5,8,1,3,10,2,4,12,3,5,14,1,4,6
140 DATA 5,7,15,6,8,17,1,7,9,8,10,18,2,9,11
150 DATA 10,12,19,3,11,13,12,14,20,4,13,15,6,14,16
160 DATA 15,17,20,7,16,18,9,17,19,11,18,20,13,16,19
170 'DEF FNA(X) = INT(20 * RND(1)) + 1
180 'DEF FNB(X) = INT(3 * RND(1)) + 1
190 'DEF FNC(X) = INT(4 * RND(1)) + 1
200 REM-LOCATE L ARRAY ITEMS
210 REM-1-YOU,2-WUMPUS,3&4-PITS,5&6-BATS
220 DIM L(6), M(6)
230 FOR J = 1 TO 6
240 L(J) = INT(20 * RND(1)) + 1
260 M(J) = L(J)
270 NEXT J
280 REM-CHECK FOR CROSSOVERS (IE L(1)=L(2),ETC)
290 FOR J = 1 TO 6
300 FOR K = J TO 6
310 IF J = K THEN 330
320 IF L(J) = L(K) THEN 240
330 NEXT K
340 NEXT J
350 REM-RUN THE GAME
360 A = 5
365 L = L(1)
370 REM-RUN THE GAME
375 PRINT "Hunt the Wumpus"
380 REM-HAZARD WARNINGS & LOCATION
390 GOSUB 2000
400 REM-MOVE OR SHOOT
410 GOSUB 2500
420 ON O GOTO 440, 480
430 REM-SHOOT
440 GOSUB 3000
450 IF F = 0 THEN 390
460 GOTO 500
470 REM-MOVE
480 GOSUB 4000
490 IF F = 0 THEN 390
500 IF F > 0 THEN 550
510 REM-LOSE
520 PRINT: PRINT "Ha ha ha - You lose!"
530 GOTO 560
540 REM-WIN
550 PRINT: PRINT "Hee hee hee - The Wumpus'll getcha next time!!"
560 FOR J = 1 TO 6
570 L(J) = M(J)
580 NEXT J
590 COLOR 10: PRINT "Same setup (Y/N)";
600 INPUT I$: COLOR 15
610 IF LEFT$(I$, 1) <> "Y" AND LEFT$(I$, 1) <> "y" THEN 230
620 GOTO 360
1000 REM-INSTRUCTIONS
1005 CLS: COLOR 14
1010 PRINT "Welcome to 'Hunt the Wumpus'!"
1015 PRINT
1020 PRINT "The Wumpus lives in a cave of 20 rooms.  Each room has 3 tunnels leading to"
1030 PRINT "other rooms.  (Look at a dodecahedron to see how this works.  If you don't"
1040 PRINT "know what a dodecahedron is, ask someone.)"
1060 PRINT
1070 PRINT "Hazards:"
1075 PRINT
1080 PRINT "Bottomless Pits - Two rooms have bottomless pits in them."
1090 PRINT "     If you go there, you fall into the pit (and lose)!"
1095 PRINT
1100 PRINT "Super Bats - Two other rooms have super bats."
1110 PRINT "     If you go there, a bat grabs you and taken you to some other room at"
1120 PRINT "     random (which might be troublesome)."
1130 PRINT
1150 PRINT "The Wumpus is not bothered by the hazards (he has sucker feet and is too big"
1160 PRINT "for a bat to lift).  Usually he is asleep.  Two things wake him up: your"
1170 PRINT "entering his room or your shooting an arrow."
1180 PRINT
1190 PRINT "If the wumpus wakes, he moves (p=0.75) one room or stays still (p=0.25)."
1200 PRINT "After that, if he is where you are, he eats you up (and you lose)!"
1210 PRINT
1215 COLOR 13: PRINT "Press any key": COLOR 14
1216 Z$ = INKEY$: IF Z$ = "" THEN 1216
1220 CLS
1240 PRINT "Each turn you may move or shoot a crooked arrow."
1245 PRINT
1250 PRINT "Moving: You can go one room (through one tunnel)."
1255 PRINT
1260 PRINT "Arrows: You have 5 arrows.  You lose when you run out.  Each arrow can go from"
1270 PRINT "1 to 5 rooms.  You aim by telling the computer the room numbers you want the"
1280 PRINT "arrow to go to.  If the arrow can't go that way (i.e., no tunnel), it moves at"
1290 PRINT "random to the next room."
1300 PRINT
1310 PRINT "If the arrow hits the wumpus, you win.  If the arrow hits you, you lose."
1330 PRINT
1340 PRINT "When you are one room away from the Wumpus or a hazard, the computer says:"
1350 PRINT
1370 PRINT "     Wumpus: 'I smell a Wumpus!'"
1380 PRINT "     Bat:    'Bats nearby!'"
1390 PRINT "     Pit:    'I feel a draft!"
1400 PRINT
1405 COLOR 13: PRINT "Press any key": COLOR 14
1406 Z$ = INKEY$: IF Z$ = "" THEN 1406
1410 CLS: RETURN
2000 REM-PRINT LOCATION & HAZARD WARNINGS
2010 PRINT
2020 FOR J = 2 TO 6
2030 FOR K = 1 TO 3
2040 IF S(L(1), K) <> L(J) THEN 2110
2050 ON J - 1 GOTO 2060, 2080, 2080, 2100, 2100
2060 PRINT "I smell a wumpus!"
2070 GOTO 2110
2080 PRINT "I feel a draft!"
2090 GOTO 2110
2100 PRINT "Bats nearby!"
2110 NEXT K
2120 NEXT J
2130 PRINT "You are in room"; STR$(L(1)); "."
2140 PRINT "Tunnels lead to: "; S(L, 1); S(L, 2); S(L, 3)
2150 PRINT
2160 RETURN
2500 REM-CHOOSE OPTION
2510 COLOR 10: PRINT "Shoot or Move (S/M)";
2520 INPUT I$: COLOR 15
2530 IF LEFT$(I$, 1) <> "S" AND LEFT$(I$, 1) <> "s" THEN 2560
2540 O = 1
2550 RETURN
2560 IF LEFT$(I$, 1) <> "M" AND LEFT$(I$, 1) <> "m" THEN 2510
2570 O = 2
2580 RETURN
3000 REM-ARROW ROUTINE
3010 F = 0
3020 REM-PATH OF ARROW
3030 DIM P(5)
3040 COLOR 10: PRINT "Number of rooms (1-5)";
3050 INPUT J9: COLOR 15
3060 IF J9 < 1 OR J9 > 5 THEN 3040
3070 FOR K = 1 TO J9
3080 COLOR 10: PRINT "Room number";
3090 INPUT P(K): COLOR 15
3095 IF K <= 2 THEN 3115
3100 IF P(K) <> P(K - 2) THEN 3115
3105 PRINT "Arrows aren't that crooked - try another room."
3110 GOTO 3080
3115 NEXT K
3120 REM-SHOOT ARROW
3130 L = L(1)
3140 FOR K = 1 TO J9
3150 FOR K1 = 1 TO 3
3160 IF S(L, K1) = P(K) THEN 3295
3170 NEXT K1
3180 REM-NO TUNNEL FOR ARROW
3190 L = S(L, INT(3 * RND(1)) + 1)
3200 GOTO 3300
3210 NEXT K
3220 PRINT "Missed!"
3225 L = L(1)
3230 REM-MOVE WUMPUS
3240 GOSUB 3370
3250 REM-AMMO CHECK
3255 A = A - 1
3260 IF A > 0 THEN 3280
3270 F = -1
3280 RETURN
3290 REM-SEE IF ARROW IS AT L(1) OR L(2)
3295 L = P(K)
3300 IF L <> L(2) THEN 3340
3310 PRINT "Aha! You got the Wumpus!"
3320 F = 1
3330 RETURN
3340 IF L <> L(1) THEN 3210
3350 PRINT "Ouch! Arrow got you!"
3360 GOTO 3270
3370 REM-MOVE WUMPUS ROUTINE
3380 K = INT(4 * RND(1)) + 1
3390 IF K = 4 THEN 3410
3400 L(2) = S(L(2), K)
3410 IF L(2) <> L THEN 3440
3420 PRINT "Tsk tsk tsk - The Wumpus got you!"
3430 F = -1
3440 RETURN
4000 REM- MOVE ROUTINE
4010 F = 0
4020 COLOR 10: PRINT "Where to";
4030 INPUT L: COLOR 15
4040 IF L < 1 OR L > 20 THEN 4020
4050 FOR K = 1 TO 3
4060 REM- CHECK IF LEGAL MOVE
4070 IF S(L(1), K) = L THEN 4130
4080 NEXT K
4090 IF L = L(1) THEN 4130
4100 PRINT "Not possible."
4110 GOTO 4020
4120 REM-CHECK FOR HAZARDS"
4130 L(1) = L
4140 REM-WUMPUS
4150 IF L <> L(2) THEN 4220
4160 PRINT "... Oops! Bumped a Wumpus!"
4170 REM-MOVE WUMPUS
4180 GOSUB 3380
4190 IF F = 0 THEN 4220
4200 RETURN
4210 REM-PIT
4220 IF L <> L(3) AND L <> L(4) THEN 4270
4230 PRINT "YYYIIIIEEEE . . . Fell in a pit!"
4240 F = -1
4250 RETURN
4260 REM-BATS
4270 IF L <> L(5) AND L <> L(6) THEN 4310
4280 PRINT "Zap -- Super bat snatch!  Elsewhereville for you!"
4290 L = INT(20 * RND(1)) + 1
4300 GOTO 4130
4310 RETURN
5000 END

