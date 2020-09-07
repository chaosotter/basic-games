5 DIM A(100)
10 REM THE DUKE OF DRAGONFEAR
20 GOSUB 1280
30 CLS: PRINT: PRINT: PRINT
40 GOSUB 1200: XX = 2.0: GOSUB 2000
50 Q = INT(RND * 7)
60 IF Q = 0 AND E <> 55 THEN GOSUB 1200
70 CLS: PRINT: PRINT: PRINT "DUKE "; A$; ", YOU ARE IN CAVE"; E
80 IF G > 0 THEN PRINT "YOU ARE CARRYING $"; G; "WORTH OF GOLD"
90 GOSUB 760
100 PRINT: PRINT "YOU HAVE"; 25 - H; "UNITS OF CHARISNA LEFT"
110 PRINT: PRINT "What do you want to do?"
120 PRINT "N - move north, S - move south"
130 PRINT "E - move east,  W - move west"
140 PRINT "F - fight a dragon, Q - quit": PRINT
150 INPUT Z$: U = 0: IF Z$ <> "N" AND Z$ <> "S" AND Z$ <> "E" AND Z$ <> "W" AND Z$ <> "F" AND Z$ <> "Q" THEN 150
160 IF Z$ = "N" AND A(E - 10) = 88 OR Z$ = "S" AND A(E + 10) = 88 OR Z$ = "E" AND A(E + 1) = 88 OR Z$ = "W" AND A(E - 1) = 88 THEN PRINT "You cannot move that way!": GOTO 150
170 IF Z$ = "Q" THEN Q = 9: GOTO 1170
180 A(E) = 46: IF Z$ = "N" THEN E = E - 10
190 IF Z$ = "S" THEN E = E + 10
200 IF Z$ = "E" THEN E = E + 1
210 IF Z$ = "W" THEN E = E - 1
220 IF Z$ = "F" THEN GOSUB 930
230 IF A(E) = 63 THEN GOSUB 310: REM MAGIC
240 IF A(E) = 68 THEN GOSUB 400: REM DRAGON
250 IF A(E) = 81 THEN GOSUB 550: REM QUICKSAND
260 IF A(E) = 36 THEN GOSUB 630: REM GOLD
270 H = H + 1: IF H = 25 THEN Q = 9: GOTO 1160
280 GOSUB 1610
290 GOTO 50
300 REM ********************************
310 REM MAGIC
320 PRINT: PRINT "Duke "; A$; ", you've stumbled"
330 PRINT "into a magic cave, and now you'll"
340 PRINT "be whisked to another cave ...."
350 GOSUB 1610
360 A(E) = 46
370 E = INT(RND * 76) + 12: IF A(E) = 88 THEN 370
380 RETURN
390 REM ********************************
400 REM DRAGON
410 PRINT "You have wandered into a dragon's"
420 PRINT "lair...start saying your prayers"
430 GOSUB 1610
440 H = RND: IF H < .2 THEN PRINT "It has flown away": RETURN
450 PRINT "It awakens...and it has seen you"
460 GOSUB 1610
470 IF M > .8499999 THEN PRINT "but it has recently eaten": PRINT "and so goes back to sleep": RETURN
480 PRINT "And now it attacks..."
490 GOSUB 1610
500 IF M > .95 THEN PRINT "But you fight back...and win": RETURN
510 PRINT "Goodbye Duke "; A$
520 GOSUB 1610
530 Q = 9: GOTO 1160
540 REM ********************************
550 REM QUICKSAND
560 FOR J = 1 TO 12
570 FOR K = 1 TO J: PRINT " ";: NEXT
580 PRINT "Horrors...quicksand!"
590 XX = 0.5: GOSUB 2000
600 NEXT
610 Q = 9: H = 0: GOTO 1160
620 REM ********************************
630 REM TREASURE
640 K = INT(RND * 100) + 100
650 FOR J = 1 TO 12
660 FOR Z = 1 TO J: PRINT " ";: NEXT
670 PRINT "Treasure ! ! !"
680 XX = 0.5: GOSUB 2000
690 NEXT
700 GOSUB 1610
710 PRINT: PRINT "You've found a hoard of"
720 PRINT "dragon-gold, worth $"; K
730 G = G + K
740 RETURN
750 REM ********************************
760 REM AMULET DETAILS
770 Y = 1
780 L = A(E + P(Y))
790 IF L <> 46 THEN 820
800 IF Y < 8 THEN Y = Y + 1: GOTO 780
810 IF L = 46 THEN RETURN
820 PRINT "Your amulet signals that"
830 PRINT "there is ";
840 IF L = 88 THEN PRINT "a solid wall"
850 IF L = 63 THEN PRINT "a magic cave"
860 IF L = 68 THEN PRINT "a dragon"
870 IF L = 81 THEN PRINT "quicksand"
880 IF L = 36 THEN PRINT "gold"
890 PRINT "nearby"
900 GOSUB 1610
910 RETURN
920 REM ********************************
930 REM ATTACK DRAGON
940 PRINT
950 AR = AR - 1: IF AR = 0 THEN PRINT "You have used up all": PRINT "your arrows....": GOSUB 1610: RETURN
960 PRINT "You have"; AR; "arrows in your quiver"
970 SS = 0
980 PRINT "Which direction do you want"
990 INPUT "to shoot in (N,S,E or W)"; S$
1000 IF S$ = "N" AND A(E - 10) = 68 THEN SS = 1: YT = E - 10
1010 IF S$ = "S" AND A(E + 10) = 68 THEN SS = 1: YT = E + 10
1020 IF S$ = "E" AND A(E + 1) = 68 THEN SS = 1: YT = E + 1
1030 IF S$ = "W" AND A(E - 1) = 68 THEN SS = 1: YT = E - 1
1040 PRINT
1050 IF SS = 0 THEN PRINT "There was no dragon there...": PRINT "You have wasted an arrow": GOTO 1150
1060 PRINT "Well done, Duke "; A$
1070 PRINT "You have hit"
1080 PRINT "a ferocious dragon"
1090 GOSUB 1610
1100 IF RND > .3 THEN 1140
1110 PRINT "You killed it!": A(YT) = 46: K = INT(RND * 100) + 100
1120 PRINT
1130 PRINT "You are rewarded with $"; K: G = G + K: GOTO 1150
1140 PRINT "But you only wounded it..."
1150 GOSUB 1610: RETURN
1160 IF H < 1 THEN PRINT "All your charisma is": PRINT "....exhausted...": GOSUB 1610: GOTO 1180
1170 PRINT "You have"; 25 - H; "units of charisma left"
1180 IF G > 0 THEN PRINT "You amassed $"; G; "worth of gold"
1190 PRINT: PRINT
1200 A(E) = 72
1210 FOR J = 1 TO 100
1220 PRINT CHR$(A(J)); " ";
1230 IF 10 * INT(J / 10) = J THEN PRINT
1240 NEXT
1250 GOSUB 1610
1260 IF Q = 9 THEN END
1270 RETURN
1280 CLS: PRINT: PRINT: PRINT
1290 PRINT "Welcome to the world of Dragonfear"
1300 PRINT: PRINT "Your mission is to explore the"
1310 PRINT "caves of Dragonworld, looking for"
1320 PRINT "treasure, and attempting to slay the"
1330 PRINT "fearsome dragons who live in the"
1340 PRINT "caves.  What is your name";
1350 INPUT A$
1360 CLS: PRINT: PRINT "All hail, Duke "; A$
1370 PRINT: PRINT "You start this exploration"
1380 PRINT "with 25 units of charisma, and"
1390 PRINT "you must complete your task before"
1400 PRINT "the charisma is worn out. You lose"
1410 PRINT "one unit for every move you make"
1420 N = 1: PRINT: PRINT "PRESS ANY KEY TO BEGIN"
1430 N = N + 1: IF INKEY$ = "" THEN 1430
1440 RANDOMIZE N: CLS
1450 PRINT "Please stand by, Duke "; A$
1460 H = 0: Q = 0: L = 0: G = 0: AR = 6
1470 FOR B = 1 TO 100: A(B) = 46
1480 IF B < 12 OR B > 90 OR 10 * INT(B / 10) = B OR 10 * INT(B / 10) = B - 1 THEN A(B) = 88
1490 NEXT
1500 FOR B = 1 TO 5: RESTORE: FOR D = 1 TO 5
1510 Z = INT(RND * 76) + 12: IF A(Z) = 88 THEN 1510
1520 READ C: A(Z) = C
1530 NEXT: NEXT
1540 DATA 88,63,68,81,36
1550 FOR B = 1 TO 8: READ Z: P(B) = Z: NEXT
1560 DATA -11,-10,-9,-1,1,9,10,11
1570 E = 55
1580 RETURN
1590 REM ENGAGE CAPS LOCK
1600 REM BEFORE PLAYING
1610 XX = 1.0: GOSUB 2000: RETURN
2000 ST = TIMER + XX
2010 IF TIMER < ST THEN 2010
2020 RETURN

