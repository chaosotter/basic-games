5 CLS: COLOR 12
10 PRINT TAB(31); "Word Search Puzzle"
20 PRINT TAB(31); "Creative Computing"
30 PRINT TAB(29); "Morristown, New Jersey"
40 PRINT: PRINT: PRINT: COLOR 14
45 RANDOMIZE TIMER
50 PRINT "This program is a word search puzzle generator!  The program takes a set of"
60 PRINT "input strings, purges all non-alphabetic characters from them, and incorporates"
70 PRINT "them into a word search puzzle."
90 PRINT
100 PRINT "In the course of making the puzzle, the machine may find that it can't put a"
110 PRINT "particular word anywhere, and so will ask you if it should start the whole"
120 PRINT "puzzle over.  If you don't want it to start over, typing 'NO' will throw away"
130 PRINT "that particular word.  If this persists, try either giving fewer words or"
140 PRINT "bigger puzzle dimensions!"
160 PRINT: PRINT
280 'CLEAR 3000
300 'DEF FNA(Z) = INT(RND(1) * Z + 1)
310 COLOR 10: INPUT "How many columns does your printer have"; TW: COLOR 15
320 COLOR 10: INPUT "Do you want a solution printout"; X$: COLOR 15
330 COLOR 10: INPUT "What is to be the width of the puzzle"; W: COLOR 15: MD = W
340 IF W * 2 <= TW THEN 345
343 PRINT "That will not fit in"; TW; "columns.": GOTO 330
345 IF W < 1 THEN 330
350 COLOR 10: INPUT "And the length"; L: COLOR 15: IF L > W THEN MD = L
355 IF L < 1 THEN 350
360 COLOR 10: INPUT "What is the maximum number of words in the puzzle"; M: COLOR 15
370 IF M >= 2 THEN 380
375 PRINT "Sorry, there must be at least 2 words.": GOTO 360
380 PRINT
390 DIM A$(L, W), W$(M)
400 DIM W(M, 3), DXY(8, 2), DD(28)
410 TW$ = STR$(TW): TW$ = RIGHT$(TW$, LEN(TW$) - 1)
420 PRINT "Now enter a heading that will be printed over the puzzle ("; TW$; " characters max!)"
430 COLOR 10: INPUT XY$: COLOR 15: PRINT
440 PRINT "Okay... enter a word at each question mark."
450 PRINT "To redo the previous word, type a hyphen (-)."
460 PRINT "When you run out of words, type a period (.)."
470 FOR I = 1 TO M
480 COLOR 10: INPUT T$: COLOR 15: IF T$ = "-" THEN I = I - 1: PRINT "Redo "; W$(I); "...": GOTO 480
490 IF T$ = "." THEN M = I - 1: GOTO 660
500 IF LEN(T$) = 0 THEN PRINT "Input error, redo.": GOTO 480
510 J = 1
520 TE$ = MID$(T$, J, 1): IF TE$ >= "a" AND TE$ <= "z" THEN 570
525 IF TE$ < "A" OR TE$ > "Z" THEN 530
527 T$ = LEFT$(T$, J - 1) + CHR$(ASC(MID$(T$, J, 1)) + 32) + RIGHT$(T$, LEN(T$) - J): GOTO 570
530 IF TE$ = T$ THEN T$ = "": GOTO 500
540 IF J = LEN(T$) THEN T$ = LEFT$(T$, J - 1): GOTO 580
550 IF J = 1 THEN T$ = RIGHT$(T$, LEN(T$) - 1): J = J - 1: GOTO 570
560 T$ = LEFT$(T$, J - 1) + RIGHT$(T$, LEN(T$) - J): J = J - 1
570 J = J + 1: IF J <= LEN(T$) THEN 520
580 PRINT "-"; T$; "-"
600 IF LEN(T$) <= MD THEN 610
605 PRINT "That's too long, I'm afraid.  Try another one.": GOTO 480
610 F = 0: FOR IZ = 1 TO I - 1
615 IF W$(IZ) = T$ THEN F = 1
616 NEXT IZ: IF F = 0 THEN 630
620 PRINT "You entered that one already.  Try another.": GOTO 480
630 W$(I) = T$
640 NEXT I
650 PRINT: PRINT "That's it..."; M; "words."
660 PRINT "Now let me ponder this...": PRINT
680 FOR I = 1 TO M - 1
685 FOR J = I + 1 TO M
690 IF LEN(W$(I)) < LEN(W$(J)) THEN HZ$ = W$(I): W$(I) = W$(J): W$(J) = HZ$
700 NEXT: NEXT
710 FOR I = 1 TO 8: READ DXY(I, 1), DXY(I, 2): NEXT
720 FOR I = 1 TO 28: READ DD(I): NEXT
730 DATA 0,1,1,1,1,0,1,-1,0,-1,-1,-1,-1,0,-1,1
740 DATA 2,4,8,8,2,4,6,8,2,4,6,8,2,4,6,8,2,4,6,8,2,4,6,8,1,3,5,7
750 FOR I = 1 TO M
760 LN = LEN(W$(I))
770 NT = 0
790 SD = DD(INT(RND(1) * 28 + 1))
800 SX = INT(RND(1) * W + 1): X1 = SX + (LN - 1) * DXY(SD, 1): IF X1 < 1 OR X1 > W THEN 790
810 SY = INT(RND(1) * L + 1): X1 = SY + (LN - 1) * DXY(SD, 2): IF X1 < 1 OR X1 > L THEN 790
820 NT = NT + 1: IF NT <> W * L * 2 THEN 850
830 PRINT "Couldn't fit '"; W$(I); "' in the puzzle."
832 INPUT "Do you want me to start over (Y/N)"; A$
834 IF LEFT$(A$, 1) = "Y" OR LEFT$(A$, 1) = "y" THEN 750
836 W$(I) = "": GOTO 950
850 J = SY: K = SX
860 FOR P = 1 TO LN
870 IF LEN(A$(J, K)) AND A$(J, K) <> MID$(W$(I), P, 1) THEN 790
880 J = J + DXY(SD, 2): K = K + DXY(SD, 1): NEXT P
900 J = SY: K = SX
910 FOR P = 1 TO LN: A$(J, K) = MID$(W$(I), P, 1)
920 J = J + DXY(SD, 2): K = K + DXY(SD, 1): NEXT
940 W(I, 1) = SX: W(I, 2) = SY: W(I, 3) = SD
950 NEXT I
970 FOR I = 1 TO L
975 FOR J = 1 TO W
980 IF A$(I, J) = "" THEN A$(I, J) = CHR$(INT(RND(1) * 26 + 1) + 96)
990 NEXT: NEXT
1010 FOR I = 1 TO M - 1: FOR J = I + 1 TO M
1020 IF W$(I) <= W$(J) THEN 1030
1021 HZ$ = W$(I): W$(I) = W$(J): W$(J) = HZ$
1025 FOR K = 1 TO 3: HZ = W(I, K): W(I, K) = W(J, K): W(J, K) = HZ: NEXT K
1030 NEXT J: NEXT I
1040 COLOR 10: INPUT "How many copies of this puzzle do you want"; N: COLOR 15
1050 PRINT "For each copy, hit Return to begin printing..."
1060 FOR C = 1 TO N: GOSUB 1070: NEXT: GOTO 1230
1070 COLOR 10: INPUT A$: COLOR 15: PRINT
1080 T = (TW - 2 * W) / 2: PRINT
1090 PRINT
1100 COLOR 13: PRINT TAB((TW - LEN(XY$)) / 2); XY$: COLOR 11
1110 PRINT
1120 FOR J = 1 TO L: PRINT TAB(T);
1130 FOR K = 1 TO W: IF A$(J, K) = "." THEN PRINT ". ";: GOTO 1140
1135 PRINT CHR$(ASC(A$(J, K)) - 32); " ";
1140 NEXT: PRINT: NEXT
1150 PRINT: COLOR 15
1160 PRINT "Find these hidden words in the above puzzle:"
1170 PRINT
1180 FOR J = 1 TO M: IF LEN(W$(J)) = 0 THEN 1210
1190 IF POS(0) + LEN(W$(J)) > TW - 2 THEN PRINT
1200 COLOR 14: PRINT W$(J),: COLOR 15
1210 NEXT: PRINT: PRINT
1220 RETURN
1230 IF LEFT$(X$, 1) = "Y" OR LEFT$(X$, 1) = "y" THEN 1250
1240 END
1250 REM
1260 FOR I = 1 TO L: FOR J = 1 TO W: A$(I, J) = ".": NEXT J: NEXT I
1270 FOR I = 1 TO M
1280 LN = LEN(W$(I)): J = W(I, 2): K = W(I, 1)
1290 FOR P = 1 TO LN
1300 A$(J, K) = MID$(W$(I), P, 1)
1310 J = J + DXY(W(I, 3), 2): K = K + DXY(W(I, 3), 1): NEXT P
1320 NEXT I
1330 XY$ = "Here is the answer key:"
1340 GOSUB 1070
1350 PRINT: PRINT
1360 END

