90 CLS: COLOR 12
100 PRINT TAB(36); "Blackbox"
110 PRINT TAB(31); "Creative Computing"
120 PRINT TAB(29); "Morristown, New Jersey"
130 PRINT: PRINT: PRINT: COLOR 15
135 RANDOMIZE TIMER
140 DEF FNR(Z) = INT(8 * RND(1) + 1)
150 COLOR 10: PRINT "Number of atoms";: INPUT N: COLOR 15
160 FOR J = 0 TO 9: FOR I = 0 TO 9: B(I, J) = 0: NEXT I, J
170 FOR I = 1 TO N
180 X = FNR(1): Y = FNR(1): IF B(X, Y) <> 0 THEN 180
190 B(X, Y) = 1: NEXT I
200 S = 0: C = 0
210 COLOR 10: PRINT: PRINT "Ray";: INPUT R: COLOR 15: IF R < 1 THEN 480
220 ON INT((R - 1) / 8 + 1) GOTO 240, 250, 260, 270
230 PRINT "Error": GOTO 210
240 X = 0: Y = R: U = 1: V = 0: GOTO 280
250 X = R - 8: Y = 9: U = 0: V = -1: GOTO 280
260 X = 9: Y = 25 - R: U = -1: V = 0: GOTO 280
270 X = 33 - R: Y = 0: U = 0: V = 1
280 X1 = X + U: Y1 = Y + V
290 IF U = 0 THEN X2 = X1 - 1: X3 = X1 + 1: Y2 = Y1: Y3 = Y1: GOTO 310
300 Y2 = Y1 - 1: Y3 = Y1 + 1: X2 = X1: X3 = X1
310 ON 8 * B(X1, Y1) + B(X2, Y2) + 2 * B(X3, Y3) + 1 GOTO 330, 340, 350, 340
320 PRINT "Absorbed": S = S + 1: GOTO 210
330 X = X1: Y = Y1: GOTO 380
340 Z = 1: GOTO 360
350 Z = -1
360 IF U = 0 THEN U = Z: V = 0: GOTO 380
370 U = 0: V = Z
380 ON INT((X + 15) / 8) GOTO 420, 400, 430
390 STOP
400 ON INT((Y + 15) / 8) GOTO 440, 280, 450
410 STOP
420 Z = Y: GOTO 460
430 Z = 25 - Y: GOTO 460
440 Z = 33 - X: GOTO 460
450 Z = 8 + X
460 IF Z = R THEN PRINT "Reflected": S = S + 1: GOTO 210
470 PRINT "To"; Z: S = S + 2: GOTO 210
480 PRINT: PRINT "Now tell me, where do you think the atoms are (in row, column format please)?"
500 FOR Q = 1 TO N
505 Q$ = STR$(Q): Q$ = RIGHT$(Q$, LEN(Q$) - 1)
510 COLOR 10: PRINT "Atom #"; Q$;
520 INPUT I, J: COLOR 15
530 IF B(J, I) = 0 THEN S = S + 5: GOTO 540
535 C = C + 1
540 NEXT Q
550 PRINT: FOR J = 1 TO 8: FOR I = 1 TO 8
560 IF B(I, J) = 0 THEN PRINT " .";: GOTO 580
570 PRINT " *";
580 NEXT I: PRINT: NEXT J: PRINT:
590 PRINT "You guessed"; C; "out of"; N; "atoms correctly!!"
600 PRINT "Your score for this round was"; S; "points.": PRINT
610 COLOR 10: INPUT "Care to try again (Y/N)"; a$: COLOR 15
650 IF LEFT$(a$, 1) = "Y" OR LEFT$(a$, 1) = "y" THEN PRINT: GOTO 150

