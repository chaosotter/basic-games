10 REM Caddy
20 DIM X(9): CO = 0
30 RANDOMIZE TIMER
40 FOR Z = 1 TO 9
50 SC = 0
60 J = INT(RND * 12)
70 Q = INT(RND * 3) + 3
80 IF Q = 5 THEN Q$ = "FIVE"
90 IF Q = 4 THEN Q$ = "FOUR"
100 IF Q = 3 THEN Q$ = "THREE"
110 CLS: PRINT: PRINT
120 IF Z = 2 THEN PRINT "Score up to this hole is"; X(1)
130 IF Z > 2 THEN PRINT "Score up to this hole is"; K
140 PRINT "<<< Hole number"; Z; ">>>"
150 PRINT: PRINT "DIFFICULTY FACTOR IS "; Q$
160 GOSUB 430
170 PRINT: INPUT "Enter stroke strength"; A
180 IF J > 26 THEN A = -A
190 J = J + INT(A / (RND * Q + 1))
200 IF J = 26 THEN GOSUB 490
210 IF J <> 26 THEN GOSUB 430
220 SC = SC + 1
230 PRINT: PRINT "After that stroke your score is"; SC
240 XX = 0.3: GOSUB 1000
250 IF J <> 26 THEN 110
260 C = C + SC
270 X(Z) = SC
280 IF Z = 1 THEN 390
290 K = 0
300 PRINT "The game so far:"
310 FOR J = 1 TO Z
320 K = K + X(J)
330 PRINT "Hole"; J; "took"; X(J); "strokes"
340 XX = 0.2: GOSUB 1000
350 NEXT J
360 IF Z < 9 THEN PRINT: PRINT "The average so far is"; INT((K + .5) / Z)
370 XX = 0.7: GOSUB 1000
380 IF Z > 1 THEN PRINT: PRINT "The score for"; Z; "holes is"; C
390 IF Z = 1 THEN PRINT: PRINT "The score for the first hole is"; C
400 XX = 0.7: GOSUB 1000
410 NEXT Z
420 GOTO 560
430 IF J > 30 THEN J = 30
440 PRINT TAB(J + 2); "o"
450 PRINT "##########################\ /#########"
460 PRINT "########################### ##########"
470 PRINT "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
480 RETURN
490 PRINT: PRINT: PRINT "You did itll"
500 XX = 0.1: GOSUB 1000
510 PRINT "##########################\ /#########"
520 PRINT "########################## o #########"
530 PRINT "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
540 XX = 1.2: GOSUB 1000
550 RETURN
560 PRINT: PRINT "End of that round, golfer!"
570 PRINT: PRINT "You scored"; C
580 PRINT "and your average per hole was"; INT((C + .5) / 9)
590 PRINT: PRINT
600 PRINT "Enter 'Y' for another round, or 'N' to quit"
610 A$ = INKEY$
620 IF A$ <> "Y" AND A$ <> "y" AND A$ <> "N" AND A$ <> "n" THEN 610
630 IF A$ = "Y" OR A$ = "y" THEN RUN
640 PRINT: PRINT "OK, thanks for playing, champ"
650 END
1000 ST = TIMER + XX
1010 IF TIMER < ST THEN 1010
1020 RETURN

