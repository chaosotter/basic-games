10 REM Caddy
20 DIM X(9): CO = 0
30 RANDOMIZE TIMER
40 FOR Z = 1 TO 9
50 SC = 0
60 J = INT(RND * 12)
70 Q = INT(RND * 3) + 3
80 IF Q = 5 THEN Q$ = "five"
90 IF Q = 4 THEN Q$ = "four"
100 IF Q = 3 THEN Q$ = "three"
110 CLS: PRINT: PRINT: COLOR 15
120 IF Z = 2 THEN PRINT "Score up to this hole is"; X(1)
130 IF Z > 2 THEN PRINT "Score up to this hole is"; K
140 COLOR 12: PRINT "<<< Hole number"; Z; ">>>": COLOR 15
150 PRINT: PRINT "Difficulty factor is "; Q$; ".": PRINT
160 GOSUB 430
170 PRINT: COLOR 10: INPUT "Enter stroke strength"; A: COLOR 15
180 IF J > 26 THEN A = -A
190 J = J + INT(A / (RND * Q + 1))
200 IF J = 26 THEN GOSUB 490
210 IF J <> 26 THEN GOSUB 430
220 SC = SC + 1
230 PRINT: PRINT "After that stroke, your score is"; STR$(SC); "."
240 XX = 0.8: GOSUB 1000
250 IF J <> 26 THEN 110
260 C = C + SC
270 X(Z) = SC
280 IF Z = 1 THEN 390
290 K = 0
300 PRINT: PRINT "The game so far:"
310 FOR J = 1 TO Z
320 K = K + X(J)
330 COLOR 13: PRINT "    Hole"; J; "took"; X(J); "strokes.": COLOR 15
340 XX = 0.3: GOSUB 1000
350 NEXT J
360 IF Z < 9 THEN PRINT: PRINT "The average so far is"; STR$(INT((K + .5) / Z)); "."
370 XX = 0.8: GOSUB 1000
380 IF Z > 1 THEN PRINT: PRINT "The score for"; Z; "holes is"; STR$(C); "."
390 IF Z = 1 THEN PRINT: PRINT "The score for the first hole is"; STR$(C); "."
400 XX = 0.8: GOSUB 1000
410 NEXT Z
420 GOTO 560
430 IF J > 30 THEN J = 30
440 COLOR 15: PRINT TAB(J + 2); "o"
450 COLOR 10: PRINT STRING$(26, 177);: COLOR 14: PRINT CHR$(16); " "; CHR$(17);: COLOR 10: PRINT STRING$(9, 177)
460 COLOR 10: PRINT STRING$(27, 178); " "; STRING$(10, 178)
470 COLOR 6: PRINT STRING$(38, 223): COLOR 15
480 RETURN
490 PRINT: PRINT: COLOR 11: PRINT "You did it!": PRINT: COLOR 15
500 XX = 0.8: GOSUB 1000
510 COLOR 10: PRINT STRING$(26, 177);: COLOR 14: PRINT CHR$(16); " "; CHR$(17);: COLOR 10: PRINT STRING$(9, 177)
520 COLOR 10: PRINT STRING$(26, 177);: COLOR 15: PRINT " o ";: COLOR 10: PRINT STRING$(9, 177)
530 COLOR 6: PRINT STRING$(38, 223): COLOR 15
540 XX = 1.2: GOSUB 1000
550 RETURN
560 PRINT: PRINT "End of that round, golfer!"
570 PRINT: PRINT "You scored"; C; "and your average per hole was"; STR$(INT((C + .5) / 9)); "."
590 PRINT: PRINT
600 COLOR 10: PRINT "Enter 'Y' for another round, or 'N' to quit": COLOR 15
610 A$ = INKEY$
620 IF A$ <> "Y" AND A$ <> "y" AND A$ <> "N" AND A$ <> "n" THEN 610
630 IF A$ = "Y" OR A$ = "y" THEN RUN
640 PRINT: PRINT "Okay, thanks for playing, champ!"
650 END
1000 ST = TIMER + XX
1010 IF TIMER < ST THEN 1010
1020 RETURN

