5 DIM A$(52), D$(500), D(500)
10 REM Proboscidean
20 GOSUB 790: REM Initialise/Shuffle
30 GOSUB 610: REM Print out
40 GOSUB 430: REM Human guess
50 GOSUB 150: REM Computer guess
60 IF HS + CS < 26 THEN 30
70 PRINT "That's brings us to the end"
80 PRINT "of a round of Proboscidean!"
90 PRINT
100 IF HS > CS THEN PRINT "You're the winner!"
110 IF CS > HS THEN PRINT "I'm the winner, human!"
120 IF CS = HS THEN PRINT "It's a draw, humanoid!"
130 END
140 REM ********************
150 REM Computer guess
160 MOVE = 0
170 IF R = 1 OR RND < LEVEL THEN 260
180 X = R
190 X = X - 1
200 Y = 1
210 Y = Y + 1
220 IF D(X) = D(Y) THEN 240
230 IF ASC(A$(D(X))) = ASC(A$(D(Y))) THEN IF X <> Y THEN IF MID$(A$(D(X)), 3, 1) = "X" AND MID$(A$(D(Y)), 3, 1) = "X" THEN A = D(X): B = D(Y): GOTO 340
240 IF Y < X THEN 210
250 IF X - 1 > R THEN 190
260 REM Random guess
270 COUNT = 0
280 COUNT = COUNT + 1
290 IF COUNT = 200 THEN 70
300 A = INT(RND * 52) + 1
310 B = INT(RND * 52) + 1
320 IF B = A THEN 310
330 IF RIGHT$(A$(A), 1) <> "X" OR RIGHT$(A$(B), 1) <> "X" THEN 280
340 PRINT "I've selected cards"; A; "and"; B
350 IF INKEY$ = "" THEN 350
360 MID$(A$(A), 3, 1) = " ": MID$(A$(B), 3, 1) = " "
370 GOSUB 610
380 IF LEFT$(A$(A), 1) = LEFT$(A$(B), 1) THEN PRINT "And I've picked a pair!": CS = CS + 1
390 IF LEFT$(A$(A), 1) <> LEFT$(A$(B), 1) THEN PRINT "But they're not a pair!": MID$(A$(A), 3, 1) = "X": MID$(A$(B), 3, 1) = "X": D$(R) = A$(A): D$(R + 1) = A$(B): D(R) = A: D(R + 1) = B: R = R + 2
400 FOR P = 1 TO 1000: NEXT P
410 RETURN
420 REM ********************
430 REM Human guess
440 MOVE = 1
450 PRINT: INPUT "Enter card choice number one"; A
460 IF A < 1 OR A > 52 THEN 450
470 IF RIGHT$(A$(A), 1) = " " THEN PRINT "That card has been picked": GOTO 450
480 MID$(A$(A), 3, 1) = " "
490 INPUT "Enter card number two"; B
500 IF B < 1 OR B > 52 OR B = A THEN 490
510 IF RIGHT$(A$(B), 1) = " " THEN PRINT "That card has been picked": GOTO 490
520 MID$(A$(B), 3, 1) = " "
530 GOSUB 610
540 IF LEFT$(A$(A), 1) = LEFT$(A$(B), 1) THEN PRINT "Yes, they are a pair": HS = HS + 1
550 IF LEFT$(A$(A), 1) <> LEFT$(A$(B), 1) THEN PRINT "Ho, they are not a pair": MID$(A$(A), 3, 1) = "X": MID$(A$(B), 3, 1) = "X"
560 IF LEFT$(A$(A), 1) <> LEFT$(A$(B), 1) THEN D$(R) = A$(A): D$(R + 1) = A$(B): D(R) = A: D(R + 1) = B: R = R + 2
570 IF INKEY$ = "" THEN 570
580 GOSUB 610
590 RETURN
600 REM ********************
610 REM Print out
620 CLS: PRINT "My score is"; CS; "and": PRINT "   yours is"; HS
630 PRINT: PRINT "We are playing on level"; 10 * LEVEL
640 PRINT: PRINT "  ";
650 FOR Z = 1 TO 52
660 IF Z = 6 THEN PRINT "  ";
670 PRINT Z; " ";
680 B$ = RIGHT$(A$(Z), 1)
690 IF B$ = "X" THEN PRINT "-- ";
700 IF B$ = " " THEN PRINT LEFT$(A$(Z), 2); " ";
710 IF 5 * (INT(Z / 5)) = Z THEN PRINT
720 NEXT Z
730 PRINT
740 PRINT
750 IF MOVE = 1 THEN PRINT "Your cards:"; A; "and"; B
760 IF MOVE = 0 THEN PRINT "My cards:-"; A; "and"; B
770 RETURN
780 REM ********************
790 REM Initialise/Shuffle
800 RANDOMIZE VAL(RIGHT$(TIME$, 2))
820 CLS: PRINT "Please stand by, card-sharp!"
830 PRINT: PRINT "Start flexing those memory muscles..."
840 CS = 0: HS = 0: R = 1: MOVE = 3
850 FOR B = 1 TO 52
860 D$(B) = "."
870 READ A$(B)
880 NEXT B
890 REM Moses/Oakford shuffle routine
900 FOR J = 52 TO 2 STEP -1
910 Z = INT(RND * J) + 1
920 H$ = A$(Z)
930 A$(Z) = A$(J)
940 A$(J) = H$
950 NEXT J
960 PRINT: PRINT "What level of difficulty (1 - 10)?"
970 PRINT "(10 is easy, 1 is almost IMPOSSIBLE!)"
980 INPUT LEVEL: IF LEVEL < 1 OR LEVEL > 10 THEN 980
990 LEVEL = LEVEL / 10
1000 RETURN
1010 DATA "AHX","2HX","3HX","4HX","5HX","6HX","7HX","8HX","9HX","THX","JHX","QHX","KHX"
1020 DATA "ADX","2DX","3DX","4DX","5DX","6DX","7DX","8DX","9DX","TDX","JDX","QDX","KDX"
1030 DATA "ASX","2SX","3SX","4SX","5SX","6SX","7SX","8SX","9SX","TSX","JSX","QSX","KSX"
1040 DATA "ACX","2CX","3CX","4CX","5CX","6CX","7CX","8CX","9CX","TCX","JCX","QCX","KCX"

