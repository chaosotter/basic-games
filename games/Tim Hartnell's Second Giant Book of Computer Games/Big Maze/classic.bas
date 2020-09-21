10 REM THE 3-D MAZE
20 CLS
30 RANDOMIZE TIMER
40 DIM A$(30)
50 D = 1
60 A$(5) = "     ********************": REM 20 *
70 FOR F = 6 TO 24 STEP 2
80 A$(F) = "     *                  *"
90 A$(F + 1) = "     ** **  **   **  * **"
100 NEXT F
110 A$(25) = "     ********************": REM AS EARLIER LINE
120 FOR F = 1 TO 70
130 N = INT(RND(1) * 20) + 6
140 N1 = INT(RND(1) * 20) + 6
150 A$(N) = MID$(A$(N), 1, N1 - 1) + "*" + MID$(A$(N), N1 + 1, 25 - N1)
160 NEXT F
170 N1 = INT(RND(1) * 2) + 1
180 ON N1 GOSUB 1090, 1130
190 X = INT(RND(1) * 4) + 9
200 Y = INT(RND(1) * 4) + 9
210 IF MID$(A$(X), Y, 1) = "*" THEN 190
220 A$(X) = MID$(A$(X), 1, Y - 1) + "I" + MID$(A$(X), Y + 1, 25 - Y)
230 MO = 0
240 PRINT "ENTER 'N', 'S', 'E' OR 'W' TO LOOK IN"
250 PRINT "THAT DIRECTION. FOLLOW IT, NEXT MOVE,"
260 PRINT "WITH 'M' TO MOVE IN THAT DIRECTION..."
270 PRINT "ENTER 'V' TO VIEW THE MAP, OR"
280 PRINT "'R' TO MOVE RANDOMLY TO A NEW POSITION"
290 INPUT "           "; R$
300 IF R$ = "V" THEN D = 5
310 IF R$ = "R" THEN D = 6
320 IF R$ = "M" THEN D = 0
330 IF R$ = "N" THEN D = 4
340 IF R$ = "E" THEN D = 1
350 IF R$ = "W" THEN D = 3
360 IF R$ = "S" THEN D = 2
370 IF D > 0 THEN D1 = D
380 IF D = 0 THEN 530
390 IF D = 5 THEN GOSUB 680
400 IF D = 6 THEN GOSUB 730
410 IF D > 4 OR D < 1 THEN 290
420 GOSUB 1160
430 PRINT "DIRECTION: "; U$
440 M$ = "": L$ = "": R$ = ""
450 ON D1 GOSUB 830, 880, 950, 1020
460 FOR F = 5 TO 1 STEP -1
470 PRINT MID$(L$, F, 1);
480 PRINT MID$(M$, F, 1);
490 PRINT MID$(R$, F, 1)
500 NEXT F
510 GOTO 290
520 REM ************
530 X1 = X: Y1 = Y
540 X = X - (D1 = 2) + (D1 = 4)
550 Y = Y + (D1 = 3) - (D1 = 1)
560 IF MID$(A$(X), Y, 1) = "*" THEN 640
570 IF MID$(A$(X), Y, 1) = "X" THEN 800
580 MO = MO + 1
590 A$(X) = MID$(A$(X), 1, Y - 1) + "I" + MID$(A$(X), Y + 1, 25 - Y)
600 A$(X1) = MID$(A$(X1), 1, Y1 - 1) + "." + MID$(A$(X1), Y1 + 1, 25 - Y1)
610 GOSUB 1160
620 PRINT "DIRECTION: "; U$
630 GOTO 440
640 X = X1: Y = Y1
650 PRINT "BAD MOVE"
660 GOTO 290
670 REM *************
680 FOR F = 4 TO 27
690 PRINT A$(F)
700 NEXT F
710 RETURN
720 REM *************
730 A$(X) = MID$(A$(X), 1, Y - 1) + " " + MID$(A$(X), Y + 1, 25 - Y)
740 X = INT(RND(1) * 4) + 9
750 Y = INT(RND(1) * 4) + 9
760 IF MID$(A$(X), Y, 1) = "*" THEN 730
770 A$(X) = MID$(A$(X), 1, Y - 1) + "I" + MID$(A$(X), Y + 1, 25 - Y)
780 RETURN
790 REM *************
800 PRINT TAB(4); "YOU'RE OUT AFTER"; MO; "MOVES..."
810 END
820 REM *************
830 M$ = MID$(A$(X), Y, 5)
840 L$ = MID$(A$(X - 1), Y, 5)
850 R$ = MID$(A$(X + 1), Y, 5)
860 RETURN
870 REM *************
880 FOR F = X TO X + 5
890 M$ = M$ + MID$(A$(F), Y, 1)
900 R$ = R$ + MID$(A$(F), Y - 1, 1)
910 L$ = L$ + MID$(A$(F), Y + 1, 1)
920 NEXT F
930 RETURN
940 REM *************
950 FOR F = 0 TO -5 STEP -1
960 M$ = MID$(A$(X), Y + F, 1)
970 R$ = R$ + MID$(A$(X - 1), Y + F, 1)
980 L$ = L$ + MID$(A$(X + 1), Y + F, 1)
990 NEXT F
1000 RETURN
1010 REM *************
1020 FOR F = X TO X - 5 STEP -1
1030 M$ = M$ + MID$(A$(F), Y, 1)
1040 R$ = R$ + MID$(A$(F), Y + 1, 1)
1050 L$ = L$ + MID$(A$(F), Y - 1, 1)
1060 NEXT F
1070 RETURN
1080 REM *************
1090 N = INT(RND(1) * 10) + 11
1100 A$(N) = "     X     " + MID$(A$(N), 12, 14): REM FIVE SPACES EACH SIDE OF THE X
1110 RETURN
1120 REM *************
1130 N = INT(RND(1) * 10) + 11
1140 A$(N) = MID$(A$(N), 1, 19) + "     X": REM FIVE SPACES
1150 RETURN
1160 IF D1 = 1 OR D = 1 THEN U$ = "EAST"
1170 IF D1 = 2 OR D = 2 THEN U$ = "SOUTH"
1180 IF D1 = 3 OR D = 3 THEN U$ = "WEST"
1190 IF D1 = 4 OR D = 4 THEN U$ = "NORTH"
1200 RETURN

