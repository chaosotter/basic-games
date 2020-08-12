5 CLS: COLOR 12
10 PRINT TAB(36); "Obstacle"
20 PRINT TAB(31); "Creative Computing"
30 PRINT TAB(29); "Morristown, New Jersey"
40 RANDOMIZE TIMER
150 REM VARIABLES          USAGE
160 REM ---------------------------------------------------------------
170 REM   A1                DECIMAL VALUE FOR THE CHARACTER'*
180 REM   A2                DECIMAL VALUE FOR THE CHARACTER ' '
190 REM   A3                DECIMAL VALUE FOR THE CHARACTER '!'
200 REM   A4                DECIMAL VALUE FOR THE CHARACTER 'S'
210 REM   A5                DECIMAL VALUE FOR THE CHARACTER 'F'
220 REM   A6                DECIMAL VALUE FOR THE CHARACTER '-'
230 REM   D                 DIRECTION
240 REM   D1                TOTAL NO. OF TURNS TAKEN
250 REM   I                 ROW MATRIX
260 REM   J                 COLUMN MATRIX INDEX
270 REM   K                 PLACE HOLDER FOR THE VARIABLE I
280 REM   L                 PLACE HOLDER FOR THE VARIABLE J
290 REM   M                 MATRIX VARIBLE
300 REM   N$                INPUT TO YES-NO QUESTIONS
310 REM   R1                RANDOM NUMBER GENERATOR VARIABLE
320 REM   S                 SPEED
330 REM   S1                TOTAL SPEED COUNTER
340 REM   T                 'TIME' RATIO (D1/S1)*100
350 REM
360 REM                            START PROGRAM
370 REM
380 REM
390 REM         INSTRUCTIONS
400 REM
410 PRINT
420 PRINT
430 PRINT
450 COLOR 10: PRINT "Do you want instructions (Y/N)";: INPUT N$: COLOR 15
460 IF LEFT$(N$, 1) <> "Y" AND LEFT$(N$, 1) <> "y" THEN 610
465 PRINT: COLOR 14
470 PRINT "The object of this game is to move your car ("; CHR$(1); ") beginning at 'S' and navigate"
480 PRINT "through the obstacles ("; CHR$(15); ") and walls ("; CHR$(178); ") to the space marked 'F'.  You must land"
490 PRINT "on the space marked 'F' on the exact amount of spaces.  There are no diagonal"
500 PRINT "moves.  There are no right-to-left moves."
510 PRINT
520 PRINT "Direction #1 is up, #2 is left to right, and #3 is down."
560 PRINT "Speed is the number of spaces in a given direction.": COLOR 15
580 REM
590 REM               INITIALATION
600 REM
610 DIM M(15, 50)
620 A1 = 1: REM Car
630 A2 = 15: REM Barrier
640 A3 = ASC(" ")
650 A4 = ASC("S")
660 A5 = ASC("F")
670 A6 = 178: REM Wall
680 D1 = 0: S1 = 0
690 REM   *** NOTE - COURSE SET UP ROUTINE
700 FOR I = 1 TO 10
710 FOR J = 1 TO 42
720 R1 = INT(RND(1) * 1.2)
730 IF R1 = 0 THEN 760
740 M(I, J) = A2
750 GOTO 770
760 M(I, J) = A3
770 NEXT J
780 NEXT I
790 M(2, 2) = A4
800 M(10, 40) = A3
810 M(10, 41) = A5
820 M(2, 3) = A3
830 M(3, 2) = A3
840 FOR I = 1 TO 10: M(I, 1) = A6: M(I, 42) = A6: NEXT I
850 FOR J = 1 TO 42: M(1, J) = A6: M(11, J) = A6: NEXT J
860 REM
870 REM        ** PRINTING ROUTINE **
880 REM
890 K = I: L = J
900 PRINT: COLOR 11
910 FOR I = 1 TO 11: PRINT "    ";
920 FOR J = 1 TO 42
930 PRINT CHR$(M(I, J));
940 NEXT J
950 PRINT
960 NEXT I: COLOR 15
970 I = K: J = L
980 REM        88 NOTE- NEW COURSE OPTION**
990 IF D1 > 0 THEN 1080
1000 PRINT: COLOR 10: PRINT "Option (A=Continue, B=New Course, C=Stop)";
1010 INPUT N$: COLOR 15
1020 IF N$ = "A" OR N$ = "a" THEN 1080
1030 IF N$ = "B" OR N$ = "b" THEN 670
1040 IF N$ = "C" OR N$ = "c" THEN 1420
1050 PRINT "Invalid option."
1060 GOTO 1000
1070 REM
1080 REM           ** MAIN PROGRAM BODY **
1090 REM
1100 COLOR 10: PRINT "Direction (1-3)";: INPUT D: COLOR 15: D = INT(ABS(D))
1110 IF D < 1 THEN 1100
1111 IF D > 3 THEN 1100
1120 COLOR 10: PRINT "Speed";: INPUT S: COLOR 15: S = INT(ABS(S))
1130 D1 = D1 + 1: S1 = S1 + S: IF D1 <> 1 THEN 1160
1140 REM           ** NOTE - CAR STARTS AT POSITION 2,2
1150 J = 2: I = 2
1160 IF D = 1 THEN 1190
1170 IF D = 2 THEN 1230
1180 IF D = 3 THEN 1270
1190 M(I, J) = A3: REM      ** WIPES OUT PREVIOUS CHARACTER **
1200 FOR C = 1 TO S: I = ABS(I - 1): IF M(I, J) = A2 THEN 1340
1210 IF M(I, J) = A6 THEN 1340
1215 NEXT C
1220 M(I, J) = A1: GOTO 1310
1230 M(I, J) = A3
1240 FOR C = 1 TO S: J = J + 1: IF M(I, J) = A2 THEN 1340
1250 IF M(I, J) = A6 THEN 1340
1255 NEXT C
1260 M(I, J) = A1: GOTO 1310
1270 M(I, J) = A3
1280 FOR C = 1 TO S: I = I + 1: IF M(I, J) = A2 THEN 1340
1290 IF M(I, J) = A6 THEN 1340
1295 NEXT C
1300 M(I, J) = A1
1310 REM     ** NOTE - WINNING CHECK**
1320 IF M(10, 41) <> A1 THEN 870
1330 GOTO 1360
1340 PRINT "Illegal move... you lose!": GOTO 1400
1350 REM
1360 REM        ** END OF REN ROUTINE **
1370 REM
1380 T = (D1 / S1) * 100
1390 PRINT "You win!  And your time is"; STR$(T); "."
1400 COLOR 10: PRINT: PRINT "Do you wish to play again (Y/N)";: INPUT N$: COLOR 15
1410 IF LEFT$(N$, 1) = "Y" OR LEFT$(N$, 1) = "y" THEN 670
1420 END

