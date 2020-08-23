5 CLS: COLOR 12
10 PRINT TAB(37); "Animal"
20 PRINT TAB(31); "Creative Computing"
25 PRINT TAB(29); "Morristown, New Jersey"
30 PRINT: PRINT: PRINT: COLOR 15
40 PRINT "Play 'Guess the Animal'!"
45 PRINT
50 PRINT "Think of an animal, and the computer will try to guess it."
60 PRINT
70 DIM A$(200)
80 FOR I = 0 TO 3
90 READ A$(I)
100 NEXT I
110 N = VAL(A$(0))
120 REM          MAIN CONTROL SECTION
130 COLOR 10: PRINT: INPUT "Are you thinking of an animal (LIST for an index)"; A$: COLOR 15
140 IF A$ = "LIST" OR A$ = "list" THEN 600
150 IF LEFT$(A$, 1) <> "Y" AND LEFT$(A$, 1) <> "y" THEN 120
160 K = 1
170 GOSUB 390
180 IF LEN(A$(K)) = 0 THEN 999
190 IF LEFT$(A$(K), 2) = "\Q" THEN 170
200 COLOR 10: PRINT "Is it a "; RIGHT$(A$(K), LEN(A$(K)) - 2);
210 INPUT A$: COLOR 15
220 A$ = LEFT$(A$, 1)
230 IF LEFT$(A$, 1) = "Y" OR LEFT$(A$, 1) = "y" THEN PRINT "Why not try another animal?": GOTO 120
240 COLOR 10: PRINT: INPUT "The animal you were thinking of was a"; V$: COLOR 15
250 PRINT "Please type in a yes-or-no question that would distinguish a"
260 PRINT V$; " from a "; RIGHT$(A$(K), LEN(A$(K)) - 2); "."
270 COLOR 10: INPUT X$: COLOR 15
280 COLOR 10: PRINT "For a "; V$; ", the answer would be";
290 INPUT A$
300 A$ = LEFT$(A$, 1): IF A$ <> "Y" AND A$ <> "y" AND A$ <> "N" AND A$ <> "n" THEN 280
310 IF A$ = "Y" OR A$ = "y" THEN A$ = "y": B$ = "n"
320 IF A$ = "N" OR A$ = "n" THEN A$ = "n": B$ = "y"
330 Z1 = VAL(A$(0))
340 A$(0) = STR$(Z1 + 2)
350 A$(Z1) = A$(K)
360 A$(Z1 + 1) = "\A" + V$
370 A$(K) = "\Q" + X$ + "\" + A$ + STR$(Z1 + 1) + "\" + B$ + STR$(Z1) + "\"
380 GOTO 120
390 REM     SUBROUTINE TO PRINT QUESTIONS
400 Q$ = A$(K)
410 COLOR 10: FOR Z = 3 TO LEN(Q$)
415 IF MID$(Q$, Z, 1) <> "\" THEN PRINT MID$(Q$, Z, 1); ELSE Z = LEN(Q$)
416 NEXT Z
420 INPUT C$: COLOR 15
430 C$ = LEFT$(C$, 1)
440 IF C$ <> "Y" AND C$ <> "y" AND C$ <> "N" AND C$ <> "n" THEN 410
450 T$ = "\" + C$
455 FOR X = 3 TO LEN(Q$) - 1
460 IF MID$(Q$, X, 2) = T$ THEN 480
470 NEXT X
475 STOP
480 FOR Y = X + 1 TO LEN(Q$)
490 IF MID$(Q$, Y, 1) = "\" THEN 510
500 NEXT Y
505 STOP
510 K = VAL(MID$(Q$, X + 2, Y - X - 2))
520 RETURN
530 DATA "4","\QDoes it swim\y2\n3\","\Afish","\Abird"
600 PRINT: PRINT "Animals I already know are:"
605 X = 0
610 COLOR 13: FOR I = 1 TO 200
620 IF LEFT$(A$(I), 2) <> "\A" THEN 650
624 PRINT TAB(15 * X);
630 FOR Z = 3 TO LEN(A$(I))
640 IF MID$(A$(I), Z, 1) <> "\" THEN PRINT MID$(A$(I), Z, 1); ELSE Z = LEN(A$(I))
641 NEXT Z
645 X = X + 1: IF X = 4 THEN X = 0: PRINT
650 NEXT I: COLOR 15
660 PRINT
670 PRINT
680 GOTO 120
999 END

