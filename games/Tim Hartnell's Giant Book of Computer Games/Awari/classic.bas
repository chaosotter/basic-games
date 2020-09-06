5 RANDOMIZE VAL(RIGHT$(TIME$, 2)): DIM A(12), B(2)
6 WIDTH 40
10 REM Awari
20 GOSUB 930: REM Initialise
30 GOSUB 770: REM Print board
40 FOR P = 1 TO 500: NEXT P
50 GOSUB 160: REM Machine move
60 GOSUB 770: REM Print board
70 GOSUB 620: REM Human move
80 CW = 0: HW = 0
90 FOR C = 1 TO 12
100 IF C < 7 THEN CW = CW + A(C)
110 IF C > 6 THEN HW = HW + A(C)
120 NEXT C
130 IF CW = 0 OR HW = 0 THEN 510
140 GOTO 30
150 REM ********************************
160 REM Machine move
170 GM = 0: C = 0
180 C = C + 1
190 IF A(C) = 0 THEN 180
200 Z = C + A(C)
210 IF Z > 12 THEN Z = Z - 12
220 IF Z > 6 THEN IF A(Z - 6) <> 0 AND A(Z) = 0 AND A(Z - 6) > GM THEN GM = C
230 IF Z < 7 THEN IF A(Z + 6) <> 0 AND A(Z) = 0 AND A(Z + 6) > GM THEN GM = C
240 IF C < 6 THEN 180
250 IF GM = 0 THEN 370
260 C = GM
270 PRINT "I'll move from "; CHR$(64 + C): INPUT Z$
280 FOR Z = C TO C + A(C)
290 IF Z > 12 THEN A(Z - 12) = A(Z - 12) + 1
300 IF Z < 13 THEN A(Z) = A(Z) + 1
310 NEXT Z
320 Z = C + A(C) - 1: IF Z > 12 THEN Z = Z - 12
330 A(C) = 0
340 B(2) = B(2) + A(13 - Z): A(13 - Z) = 0
350 RETURN
360 REM ********************************
370 REM Non-score move
380 W = 0
390 W = W + 1
400 C = INT(RND * 6) + 1
410 IF A(C) <> 0 THEN 440
420 IF W < 20 THEN 390
430 GOTO 510
440 PRINT "I'll move from "; CHR$(64 + C): INPUT Z$
450 FOR Z = C TO C + A(C)
460 IF Z < 13 THEN A(Z) = A(Z) + 1
470 IF Z > 12 THEN A(Z - 6) = A(Z - 6) + 1
480 NEXT Z
490 A(C) = 0: GOTO 350
500 REM ********************************
510 REM End of game
520 GOSUB 710
530 PRINT: PRINT "That's the end of the game"
540 PRINT
550 IF B(1) > B(2) THEN PRINT "You're the winner!"
560 IF B(1) < B(2) THEN PRINT "And I'm the winner!"
570 IF B(1) = B(2) THEN PRINT "It looks like a draw!"
580 PRINT: PRINT "My score was"; B(2)
590 PRINT "and yours was"; B(1)
600 END
610 REM ********************************
620 REM Human move
630 INPUT "Which pit to start with"; A$
640 B = ASC(A$) - 64
650 IF B < 7 OR B > 12 THEN 630
660 CO = B: Z = B + A(B): IF Z > 12 THEN Z = Z - 12
670 M = A(Z)
680 FOR Z = B TO B + A(B)
690 IF Z > 12 THEN A(Z - 12) = A(Z - 12) + 1
700 IF Z < 13 THEN A(Z) = A(Z) + 1
710 NEXT Z
720 Z = B + A(B) - 1: IF Z > 12 THEN Z = Z - 12
730 IF M = 0 THEN B(1) = B(1) + A(13 - Z): A(13 - Z) = 0
740 A(CO) = 0
750 RETURN
760 REM ********************************
770 REM Print board
780 CLS: PRINT: PRINT: PRINT
790 PRINT "    A  B  C  D  E  F": PRINT "   ";
800 FOR C = 1 TO 6
810 PRINT A(C);
820 NEXT C
830 PRINT: PRINT B(1); "                 "; B(2): PRINT "   ";
840 FOR C = 12 TO 7 STEP -1
850 PRINT A(C);
860 NEXT C
870 PRINT: PRINT "    L  K  J  I  H  G"
880 PRINT: PRINT
890 RETURN
900 PRINT "I move from "; CHR$(64 + GM)
910 C = GM
920 REM ********************************
930 REM Initialise
940 CLS
970 FOR C = 1 TO 12
980 A(C) = 3
990 NEXT C
1000 RETURN

