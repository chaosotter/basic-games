5 DIM Z(29, 6)
10 REM Searching for Daryl
20 GOSUB 770: REM Initialise
30 GOSUB 480: REM Location description
40 GOSUB 360: REM Move
50 IF DA = 0 AND CAVE = 29 THEN GOSUB 90: REM Daryl found
60 IF DA = 1 AND CAVE = 1 THEN 210: REM Back home safely
70 GOTO 30
80 REM  ***********
90 REM  Daryl found
100 REM ***********
110 PRINT: PRINT "Well done, you've found Daryl"
120 PRINT "apparently safe and well...."
130 XX = 1.0: GOSUB 2000
140 PRINT: PRINT "Now it's time to try"
150 PRINT "return to the exit, with"
160 PRINT "Daryl...."
170 XX = 1.0: GOSUB 2000
180 DA = 1
190 RETURN
200 REM ****************
210 REM Back home safely
220 REM ****************
230 PRINT: PRINT
240 PRINT "You are a hero!!!"
250 XX = 1.0: GOSUB 2000
260 PRINT: PRINT "You've made it back with"
270 PRINT "Daryl safe and well...."
280 PRINT: PRINT
290 PRINT "Go straight to Washington"
300 PRINT "to be decorated by the"
310 PRINT "President....."
320 XX = 1.0: GOSUB 2000
330 PRINT "See you later, hero!"
340 END
350 REM *********
360 REM Make move
370 REM *********
380 PRINT: PRINT
390 INPUT "Which cave do you wish to enter"; J
400 FLAG = 0
410 FOR K = 1 TO 4
420 IF Z(CAVE, K) = J THEN FLAG = 1
430 NEXT K
440 IF FLAG = 0 THEN PRINT "There is no tunnel to cave"; J: XX = 1.0: GOSUB 2000: GOTO 390
450 CAVE = J
460 RETURN
470 REM ********************
480 REM Location description
490 REM ********************
500 CLS: PRINT: PRINT
510 IF DA = 0 THEN PRINT "You are on your way to find": PRINT "Daryl, trapped in this cave system"
520 IF DA = 1 THEN PRINT "You have found Daryl, and are": PRINT "returning to the entrance"
530 PRINT: PRINT "You are in cave"; CAVE
540 PRINT: PRINT "Tunnels lead from this cave to:"
550 FOR Q = 1 TO 4
560 IF Z(CAVE, Q) > 0 THEN PRINT Z(CAVE, Q);
570 NEXT Q
580 PRINT: PRINT
590 IF DA = 1 THEN 660
600 PRINT "Daryl is to the ";
610 IF Z(CAVE, 5) > 4 THEN PRINT "north";
620 IF Z(CAVE, 5) < 4 THEN PRINT "south";
630 IF Z(CAVE, 6) < 7 THEN PRINT "east";
640 IF Z(CAVE, 6) > 7 THEN PRINT "west";
650 GOTO 710
660 PRINT "The exit is to the ";
670 IF Z(CAVE, 5) > 7 THEN PRINT "north";
680 IF Z(CAVE, 5) < 7 THEN PRINT "south";
690 IF Z(CAVE, 6) < 7 THEN PRINT "east";
700 IF Z(CAVE, 6) > 7 THEN PRINT "west";
710 PRINT " of you"
720 PRINT: PRINT
730 IF DA = 0 THEN PRINT "Your Daryl-proximeter meter reads"; 10 - (ABS(Z(CAVE, 5) - 4)) + ABS(Z(CAVE, 6) - 7)
740 IF DA = 1 THEN PRINT "Your Exit-proximeter meter reads"; 10 * (ABS(Z(CAVE, 5) - 7)) + ABS(Z(CAVE, 6) - 7)
750 RETURN
760 REM **********
770 REM Initialise
780 REM **********
790 CLS
810 FOR H = 1 TO 29
820 READ B: READ C: READ D
830 READ E: READ F: READ G
840 Z(H, 1) = B: Z(H, 2) = C: Z(H, 3) = D
850 Z(H, 4) = E: Z(H, 5) = F: Z(H, 6) = G
860 NEXT H
870 DA = 0: REM You have not yet found Daryl
880 CAVE = 1: REM Starting position
890 RETURN
900 DATA 2,7,10,0,7,7,25,11,1,8,5,5
910 DATA 26,0,0,0,10,1,24,9,7,0,2,10
920 DATA 27,28,0,0,10,8,15,19,0,0,7,2
930 DATA 4,1,0,0,5,8,26,2,0,0,7,4
940 DATA 4,24,10,0,4,11,1,9,0,0,7,9
950 DATA 21,2,0,0,2,7,26,28,0,0,11,4
960 DATA 18,16,0,0,8,10,20,0,0,0,2,2
970 DATA 18,6,0,0,6,12,13,17,0,0,9,5
980 DATA 16,28,0,0,11,6,13,15,22,23,9,11
990 DATA 20,6,0,0,3,1,19,14,21,0,5,2
1000 DATA 11,25,20,0,1,4,18,29,0,0,11,11
1010 DATA 18,26,0,0,12,1,4,9,0,0,1,12
1020 DATA 21,2,0,0,3,4,8,3,23,12,9,3
1030 DATA 5,0,0,0,9,7,17,5,12,0,12,7
1040 DATA 22,0,0,0,12,12
2000 ST = TIMER + XX
2010 IF TIMER < ST THEN 2010
2020 RETURN

