5 DEFINT A-Z: DIM A(129), C(4)
10 REM Shogun
20 REM Make sure your computer is in upper case mode
30 GOSUB 790
40 GOSUB 90
50 GOSUB 460
60 GOSUB 630
70 GOSUB 460
80 GOTO 40
90 REM CAPTURE
100 A = 99
110 IF A(A) <> C THEN 190
120 IF A(A - 10) = E THEN IF A(A - 9) = H THEN IF A(A - 8) = C THEN B = A - 10: GOTO 350
130 IF A(A - 10) = E THEN IF A(A - 11) = H THEN IF A(A - 12) = C THEN B = A - 10: GOTO 350
140 IF A(A - 10) = E THEN IF A(A + 11) = H THEN IF A(A + 12) = C THEN B = A - 10: GOTO 350
150 B = 1
160 IF A + 2 * C(B) < 11 OR A + 2 * C(B) > 99 THEN GOTO 180
170 IF A(A + C(B)) = E AND A(A + 2 * C(B)) = H AND A(A + 3 * C(B)) = C THEN A(A + 2 * C(B)) = E: CS = CS + 1: GOTO 340
180 IF B < 4 THEN B = B + 1: GOTO 160
190 IF A > 11 THEN A = A - 1: GOTO 110
200 REM Non-capture
210 COUNT = 0
220 COUNT = COUNT + 1
230 A = RND * 89 + 11
240 IF A(A) = C THEN 270
250 IF COUNT < 200 THEN 220
260 PRINT "Shogun Master!  I give you the victory!": END
270 B = 1
280 IF A + 2 * C(B) < 11 THEN 300
290 IF (A(A + C(B)) = C OR A(A + C(B)) = H) AND A(A + 2 * C(B)) = E THEN B = A + 2 * C(B): GOTO 350
300 IF A(A + C(B)) = E THEN 330
310 IF B < 4 THEN B = B + 1: GOTO 280
320 GOTO 250
330 REM Computer moves
340 B = A + C(B)
350 B1 = B - 10 - (INT(B / 10))
360 A(B) = C: A(A) = E
370 IF B1 > 7 THEN 390
380 IF A(B + 1) = H AND A(B + 2) = C THEN A(B + 1) = E: CS = CS + 1
390 IF B1 < 3 THEN 410
400 IF A(B - 1) = H AND A(B - 2) = C THEN A(B - 1) = E: CS = CS + 1
410 IF A > 89 THEN 430
420 IF A(B + 10) = H AND A(B + 20) = C THEN A(B + 10) = E: CS = CS + 1
430 IF A < 29 THEN RETURN
440 IF A(B - 10) = H AND A(B - 20) = C THEN A(B - 10) = E: CS = CS + 1
450 RETURN
460 REM Board printout
470 CLS: REM Put HOME here if your computer supports it
480 PRINT: COLOR 13: PRINT TAB(31); "1 2 3 4 5 6 7 8 9": COLOR 15
490 FOR M = 90 TO 10 STEP -10
500 COLOR 13: PRINT TAB(29); CHR$(M / 10 + 64); " ";: COLOR 15
510 FOR N = 1 TO 9
515 C$ = CHR$(A(M + N))
516 IF C$ = "C" THEN COLOR 12: ELSE IF C$ = "H" THEN COLOR 11: ELSE COLOR 15
520 PRINT C$; " ";
530 NEXT
540 COLOR 13: PRINT CHR$(M / 10 + 64): COLOR 15
550 NEXT
560 COLOR 13: PRINT TAB(31); "1 2 3 4 5 6 7 8 9": COLOR 15
570 PRINT: PRINT TAB(34); "Computer:";: COLOR 12: PRINT CS: COLOR 15
580 PRINT TAB(34); "   Human:";: COLOR 11: PRINT HS: COLOR 15: PRINT: PRINT
590 IF CS > 6 OR HS > 6 THEN 610
600 RETURN
610 IF CS > HS THEN PRINT: PRINT "I win!": END
620 PRINT: PRINT "You win!": END
630 REM player move
640 COLOR 10: INPUT "From (e.g., A4)"; A$: COLOR 15
650 IF A$ = "S" OR A$ = "s" THEN END
660 IF LEN(A$) <> 2 THEN 640
665 C$ = LEFT$(A$, 1): IF C$ >= "a" AND C$ <= "z" THEN A$ = CHR$(ASC(C$) - 32) + RIGHT$(A$, 1)
670 COLOR 10: PRINT "From "; A$; " to ";: INPUT B$: COLOR 15
680 IF LEN(B$) <> 2 THEN 670
685 C$ = LEFT$(B$, 1): IF C$ >= "a" AND C$ <= "z" THEN B$ = CHR$(ASC(C$) - 32) + RIGHT$(B$, 1)
690 A = 10 * (ASC(A$) - 64) + VAL(RIGHT$(A$, 1))
700 B = 10 * (ASC(B$) - 64) + VAL(RIGHT$(B$, 1))
710 Y = VAL(RIGHT$(B$, 1))
720 A(B) = H: A(A) = E
730 IF A(B + 1) = C AND A(B + 2) = H AND Y <= 7 THEN A(B + 1) = E: HS = HS + 1
740 IF A(B - 1) = C AND A(B - 2) = H AND Y >= 3 THEN A(B - 1) = E: HS = HS + 1
750 IF B > 79 THEN 770
760 IF A(B + 10) = C AND A(B + 20) = H THEN A(B + 10) = E: HS = HS + 1
770 IF B >= 31 THEN IF A(B - 10) = C AND A(B - 20) = H THEN A(B - 10) = E: HS = HS + 1
780 RETURN
790 REM initialise
800 REM Seed random number generator
810 PRINT "Press any key."
820 N = 1
830 N = N + 1
840 IF INKEY$ = "" THEN 830
850 RANDOMIZE N
870 CLS
890 H = 72: C = 67: E = 46
900 FOR Z = 11 TO 29
910 IF Z = 20 THEN Z = 21
920 A(Z) = H
930 NEXT
940 FOR Z = 31 TO 79
950 IF 10 * INT(Z / 10) = Z THEN Z = Z + 1
960 A(Z) = E
970 NEXT
980 FOR Z = 81 TO 99
990 IF Z = 90 THEN Z = 91
1000 A(Z) = C
1010 NEXT
1020 HS = 0
1030 CS = 0
1040 FOR Z = 1 TO 4
1050 READ C(Z)
1060 NEXT
1070 DATA -10,-1,1,10
1080 GOSUB 460
1090 RETURN

