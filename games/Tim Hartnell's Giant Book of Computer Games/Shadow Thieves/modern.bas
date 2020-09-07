5 DIM A(20, 4), R$(4), B$(20), C$(20), D$(20), E$(20), F$(20)
10 REM CAVERN OF THE SHADOW THIEVES
20 RANDOMIZE TIMER
40 CLS
50 GOSUB 1130: REM BUILD CAVERNS
60 GOSUB 1030: REM FILL ARRAYS
70 GOSUB 920: REM ALLOT INHABITANTS/GOODIES
80 Q = 50: REM TIMER
90 Y = 1: X = 0
100 CLS
110 REM ****** MAJOR GAME CYCLE *********
120 GOTO 230
130 COLOR 1: PRINT: PRINT STRING$(79, 247): COLOR 15
140 Q = Q - 1: IF Q < 1 THEN 880
150 PRINT: COLOR 12: PRINT "Time remaining:"; Q: COLOR 15
160 PRINT "You are in cavern"; STR$(Y); ".  ";
170 IF X > 0 THEN PRINT "You have come from cavern"; STR$(X); "." ELSE PRINT
180 IF R$(1) > "" OR R$(2) > "" OR R$(3) > "" OR R$(4) > "" THEN PRINT "You are carrying:"
190 Z = 1
200 IF R$(Z) > "" THEN COLOR 11: PRINT "   "; Z; " - "; R$(Z): COLOR 15
210 IF Z < 4 THEN Z = Z + 1: GOTO 200
220 RETURN
230 GOSUB 130
240 IF LEN(F$(Y)) = 0 THEN 430
250 PRINT: PRINT "The cavern contains a "; F$(Y); "."
260 IF INKEY$ <> "" THEN 260
270 PRINT: COLOR 10: PRINT "Do you want it (Y/N)?": COLOR 15
280 Q$ = INKEY$
290 IF Q$ <> "Y" AND Q$ <> "y" AND Q$ <> "N" AND Q$ <> "n" THEN 280
300 IF Q$ = "N" OR Q$ = "n" THEN 430
310 IF R$(1) = "" OR R$(2) = "" OR R$(3) = "" OR R$(4) = "" THEN 390
320 PRINT "You are carrying too much."
330 COLOR 10: INPUT "Which item do you want to drop (1-4)"; S: COLOR 15
340 IF S < 1 OR S > 4 THEN 330
350 T$ = R$(S)
360 R$(S) = F$(Y)
370 F$(Y) = ""
380 GOTO 420
390 G = 1
400 IF R$(G) = "" THEN R$(G) = F$(Y): F$(Y) = "": GOTO 420
410 IF G < 4 THEN G = G + 1: GOTO 400
420 GOSUB 130
430 IF LEN(D$(Y)) = 0 THEN 600
440 IF ASC(D$(Y)) = 42 THEN 820
450 PRINT: PRINT "There is a "; D$(Y); " here, who"
460 PRINT "wants a "; E$(Y); " to let you pass."
470 XX = 1.5: GOSUB 2000
480 G = 1
490 IF R$(G) = E$(Y) AND E$(Y) <> "" THEN 550
500 IF G < 4 THEN G = G + 1: GOTO 490
510 PRINT: PRINT "You must return to cavern"; STR$(X); "."
520 XX = 2.0: GOSUB 2000
530 P = X: X = Y: Y = P
540 GOTO 230
550 PRINT "And you have it!"
560 XX = 1.5: GOSUB 2000
570 PRINT "The "; D$(Y); " vanishes!": D$(Y) = ""
580 F$(Y) = R$(G)
590 R$(G) = ""
600 PRINT: PRINT "Tunnels lead to"; STR$(A(Y, 1)); ","; STR$(A(Y, 2)); ","; STR$(A(Y, 3)); ", and"; STR$(A(Y, 4)); "."
610 COLOR 10: INPUT "Where do you want go"; M: COLOR 15
620 IF M = 0 THEN Q = Q - 5: M = 1 + INT(RND(1) * 16): GOTO 670
630 G = 1
640 IF A(Y, G) = M THEN 670
650 IF G < 4 THEN G = G + 1: GOTO 640
660 GOTO 610
670 X = Y
680 Y = M
690 IF Y = 20 THEN 710
700 GOTO 230
710 REM ******************
720 REM **** SUCCESS *****
730 CLS
740 FOR I = 1 TO 32: PRINT TAB(I); "*": NEXT I
750 PRINT: PRINT "You have made it!"
760 PRINT: PRINT "Your cavern-master rating is"; STR$(100 * (100 - Q) + 2 * Q); "."
770 IF R$(1) > "" OR R$(2) > "" OR R$(3) > "" OR R$(4) > "" THEN PRINT "You got out with:"
780 FOR T = 1 TO 4
790 COLOR 11: PRINT TAB(4); R$(T): COLOR 15
800 NEXT T
810 END
820 REM *** TELEPORTATION ***
830 FOR I = 1 TO 32: PRINT TAB(I); "*": NEXT I
840 X = Y
850 Y = INT(RND(1) * 9) + 8
860 GOTO 230
870 REM ****************
880 REM *** END 'O THE LINE ***
890 PRINT: PRINT "Sorry, friend, but time is up!"
900 END
910 REM ****************
920 REM *** DISTRIBUTE INHABITANTS/GOODIES ***
930 FOR E = 1 TO 16
940 F = INT(RND(1) * 18) + 2
950 D$(F) = B$(INT(RND(1) * 20) + 1): REM INHABITANTS
960 E$(F) = C$(INT(RND(1) * 20) + 1): REM BRIBES
970 F = INT(RND(1) * 19) + 2
980 F$(F) = C$(INT(RND(1) * 20) + 1): REM CAVERN CONTENTS
990 IF RND(1) > .9 THEN D$(F) = "*": REM TELEPORTATION
1000 NEXT E
1010 RETURN
1020 REM ****************
1030 REM *** CREATE CAVERNS ***
1040 PRINT "PLEASE STAND BY AS I HIDE THE GOODIES..."
1050 FOR D = 1 TO 20
1060 READ B$(D)
1070 NEXT D
1080 FOR D = 1 TO 20
1090 READ C$(D)
1100 NEXT D
1110 RETURN
1120 REM ********************
1130 REM **** CONSTRUCT CAVERN ****
1140 PRINT "PLEASE STAND BY AS I CONSTRUCT THE CAVE..."
1150 FOR B = 1 TO 20
1160 PRINT TAB(B); "*"
1170 FOR C = 1 TO 4
1180 A(B, C) = B + INT(RND(1) * 7 - RND(1) * 6)
1190 IF A(B, C) = B OR A(B, C) < 1 OR A(B, C) > 20 THEN 1180
1200 NEXT C
1210 IF A(B, 1) = A(B, 2) OR A(B, 1) = A(B, 3) OR A(B, 1) = A(B, 4) OR A(B, 2) = A(B, 3) OR A(B, 3) = A(B, 4) OR A(B, 2) = A(B, 4) THEN 1170
1220 IF RND(1) < .19 AND B > 12 THEN A(B, (INT(RND(1) * 4) + 1)) = 20
1230 NEXT B
1240 CLS
1250 RETURN
1260 REM ********************
1270 REM **** INHABITANTS ****
1280 DATA "hairy hobgoblin","bald berserker","skinny skeleton","gruesome gnome","cunning conjurer"
1290 DATA "crazy centipede","demented dwarf","savage shrieker","creepy crawlie","rotten rodent"
1300 DATA "terrible toad","sticky stirge","ghastly ghoul","wicked weasel","lumpy legend"
1310 DATA "zany zombie","crooked crab","wrathful wraith","weird werewolf","giant gargoyle"
1320 REM ********************
1330 REM **** THE LOOT ****
1340 DATA "piece of copper","spunktrum coin","platinum shield","copper headband","magic scroll"
1350 DATA "fabulous potion","wand of healing","sword of fire","sparkling amulet","war hammer"
1360 DATA "piece of copper","spunktrum coin","platinum shield","copper headband","magic scroll"
1370 DATA "fabulous potion","wand of healing","sword of fire","sparkling amulet","war hammer"
2000 ST = TIMER + ZZ
2010 IF TIMER < ST THEN 2010
2020 RETURN

