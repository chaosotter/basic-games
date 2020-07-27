5 CLS: COLOR 12
8 PRINT TAB(34); "Artillery 3"
9 PRINT TAB(31); "Creative Computing"
10 PRINT TAB(29); "Morristown, New Jersey": COLOR 15
11 PRINT: PRINT: PRINT
20 T = 0
60 DIM V(3), X(3), P(3), R(3, 3)
70 'MAT V=ZER
80 'MAT X=ZER
90 'MAT P=ZER
100 'MAT R=ZER
110 DATA 1,2,2,3,3,1,1,3,3,2,2,1,2,3,3,1,1,2,0
120 PRINT "Welcome to 'WAR3'.  Two or three humans may play!"
130 COLOR 10: PRINT "Do you wish some assistance (Y/N)";
140 INPUT A$: COLOR 15
150 IF LEFT$(A$, 1) = "Y" OR LEFT$(A$, 1) = "y" THEN 1310
160 PRINT ""
170 COLOR 10: PRINT "Number of players (2/3)";
180 INPUT N: COLOR 15
190 IF N = 2 THEN 240
200 IF N = 3 THEN 270
210 PRINT "Error: Two or three players!"
220 PRINT
230 GOTO 160
240 N1 = 1
250 PRINT ""
260 GOTO 290
270 N1 = N
280 PRINT ""
290 FOR J = 1 TO N1
300 READ A, B
310 COLOR 10: PRINT "Distance (ft.)"; A; "to"; B;
320 INPUT R(A, B): COLOR 15
330 R(B, A) = R(A, B)
340 NEXT J
350 PRINT ""
360 RESTORE
370 IF N = 2 THEN 460
380 FOR J = 1 TO N
390 READ A, B, C, D, E, F
400 IF R(A, B) < R(C, D) + R(E, F) THEN 440
410 PRINT "Error: Illegal triange.  Re-enter ranges."
420 RESTORE
430 GOTO 290
440 NEXT J
450 PRINT
460 FOR J = 1 TO N
470 COLOR 10: PRINT "Muzzle velocity (ft./sec.) of"; STR$(J);
480 INPUT V(J): COLOR 15
490 NEXT J
500 PRINT ""
510 FOR J = 1 TO N
520 X(J) = V(J) ^ 2 / 32
530 NEXT J
540 FOR A = 1 TO N
550 FOR B = 1 TO N
560 IF X(A) > R(A, B) THEN 610
570 PRINT "Error:"; A; "cannot reach"; B
580 COLOR 10: PRINT "What is the muzzle velocity of"; STR$(A);
590 INPUT V(A): COLOR 15
600 GOTO 510
610 NEXT B
620 NEXT A
630 N1 = N
640 PRINT ""
650 PRINT ""
660 PRINT "Round"; T + 1
670 PRINT
680 FOR M = 1 TO N
690 IF N = 3 THEN 750
700 C = 1
710 IF M <> 1 THEN 730
720 C = 2
730 PRINT "Player"; M; "shooting at"; C
740 GOTO 890
750 IF P(M) = 12 THEN 1280
760 COLOR 10: PRINT "Player"; M; "shooting at";
770 INPUT C: COLOR 15
780 ON C GOTO 830, 830, 830
810 PRINT "Error: Players are designated 1, 2, 3."
820 GOTO 760
830 IF C <> M THEN 860
840 PRINT "Error: Cannot shoot self."
850 GOTO 760
860 IF P(C) <> 12 THEN 890
870 PRINT "Error:"; C; "is defunct."
880 GOTO 760
890 COLOR 10: PRINT "Firing angle";
900 INPUT A3: COLOR 15
910 IF A3 < 0 THEN 940
920 IF A3 > 180 THEN 940
930 GOTO 970
940 PRINT "Error: Fired into ground. "; M; "now defunct."
950 P(M) = 12
960 GOTO 760
970 IF A3 < 90 THEN 1000
980 PRINT "Error: Fired wrong way, lose shot."
990 GOTO 760
1000 Z = SIN(A3 * 3.49064E-02) * V(M) ^ 2 / 32
1010 X = (R(M, C) / 1000 * RND(1)) - (R(M, C) / 1000 * RND(1))
1020 D = X + Z
1030 D1 = R(M, C) * .05
1040 IF D < D1 THEN 1080
1050 IF ABS(D - R(M, C)) < D1 THEN 1110
1060 IF D < R(M, C) THEN 1140
1070 IF D > R(M, C) THEN 1160
1080 PRINT "Too close -"; M; "is defunct."
1090 P(M) = 12
1100 GOTO 1180
1110 PRINT "A hit -"; C; "is defunct."
1120 P(C) = 12
1130 GOTO 1180
1140 PRINT "You undershot by"; ABS(D - R(M, C)); "feet."
1150 GOTO 1270
1160 PRINT "You overshot by"; ABS(D - R(M, C)); "feet."
1170 GOTO 1270
1180 N1 = N1 - 1
1190 IF N1 > 1 THEN 1270
1200 FOR M1 = 1 TO N
1210 IF P(M1) = 12 THEN 1250
1220 PRINT
1230 PRINT "Game over. "; M1; "wins."
1240 GOTO 1430
1250 NEXT M1
1260 STOP
1270 PRINT ""
1280 NEXT M
1290 T = T + 1
1300 GOTO 650
1310 PRINT: COLOR 14
1320 PRINT "This is a war game.  Two or three players are given (theoretical) cannons with"
1330 PRINT "which they attempt to shoot each other.  The parameters for distances and"
1340 PRINT "muzzle velocities are set at the beginning of the game.  The shots are fired"
1350 PRINT "by giving a firing angle, expressed in degrees from the horizontal."
1370 PRINT
1380 PRINT "The computer will keep track of the game and report all moves.  A 'hit' is"
1390 PRINT "scored by firing a shot within 5% of the total distance fired over."
1400 PRINT
1410 PRINT "Good luck!"
1415 PRINT: COLOR 15
1420 GOTO 160
1430 END

