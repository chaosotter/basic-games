5 RANDOMIZE TIMER
6 GOSUB 5000
10 DIM E(70)
20 DIM V$(4, 3)
30 DIM F(3)
40 LET W$ = ""
50 LET W$ = W$ + "0000000000"
60 LET W$ = W$ + "0111100110"
70 LET W$ = W$ + "0010011100"
80 LET W$ = W$ + "0011010110"
90 LET W$ = W$ + "0110100100"
100 LET W$ = W$ + "0011111100"
110 LET W$ = W$ + "0000009000"
120 FOR I = 1 TO 70
130 LET E(I) = VAL(MID$(W$, I, 1))
140 NEXT I
150 LET S = -1
160 LET G = 12
170 LET X = INT(RND(1) * 50) + 10
180 IF E(X) <> 1 THEN GOTO 170
190 GOSUB 860
200 LET D = INT(RND(1) * 4) + 1
210 IF X = G + 10 OR X = G - 10 THEN GOTO 170
220 IF X = G + 1 OR X = G - 1 THEN GOTO 170
230 LET H = H + 1
240 IF H = 5 THEN GOSUB 860
250 GOSUB 390
260 LET A$ = INKEY$
270 IF A$ = "" THEN GOTO 260
280 IF A$ = "M" OR A$ = "m" THEN LET D = D + 1
290 IF A$ = "N" OR A$ = "n" THEN LET D = D - 1
300 IF D = 5 THEN LET D = 1
310 IF D = 0 THEN LET D = 4
320 IF A$ <> "X" AND A$ <> "x" THEN GOTO 210
330 IF D = 1 AND E(X - 10) <> 0 THEN LET X = X - 10
340 IF D = 3 AND E(X + 10) <> 0 THEN LET X = X + 10
350 IF D = 2 AND E(X + 1) <> 0 THEN LET X = X + 1
360 IF D = 4 AND E(X - 1) <> 0 THEN LET X = X - 1
370 IF E(X) = 9 THEN GOTO 930
380 GOTO 210
390 FOR I = 1 TO 4
400 LET T = I - 1
410 ON D GOTO 420, 460, 500, 540
420 LET F(1) = X - 10 * T + 1
430 LET F(2) = X - 10 * T
440 LET F(3) = X - 10 * T - 1
450 GOTO 570
460 LET F(1) = X + 10 * T
470 LET F(2) = X + T
480 LET F(3) = X - 10 * T
490 GOTO 570
500 LET F(1) = X + 10 * T - 1
510 LET F(2) = X + 10 * T
520 LET F(3) = X + 10 * T + 1
530 GOTO 570
540 LET F(1) = X - T - 10
550 LET F(2) = X - T
560 LET F(3) = X - T + 10
570 FOR J = 1 TO 3
580 IF F(J) < 1 OR F(J) > 69 THEN GOTO 840
590 IF E(F(J)) = 0 THEN LET V$(I, J) = "#"
600 IF E(F(J)) = 1 THEN LET V$(I, J) = " "
610 IF E(F(J)) = 9 THEN LET V$(I, J) = "+"
620 IF E(F(J)) = 2 THEN LET V$(I, J) = "G"
630 NEXT J
640 NEXT I
650 LET V$(1, 2) = "Y"
660 CLS
670 PRINT
680 COLOR 12: PRINT TAB(30); "**** GHOST MAZE ****": COLOR 15
690 PRINT: PRINT
700 PRINT TAB(33); "Forward      ";: COLOR 11: PRINT "X": COLOR 15
710 PRINT TAB(33); "Turn right   ";: COLOR 11: PRINT "M": COLOR 15
720 PRINT TAB(33); "Turn left    ";: COLOR 11: PRINT "N": COLOR 15
730 FOR I = 1 TO 5
740 PRINT: COLOR 13
750 NEXT I
760 FOR I = 4 TO 1 STEP -1
770 LET P$ = ""
780 FOR J = 3 TO 1 STEP -1
790 LET P$ = P$ + V$(I, J)
800 NEXT J
810 PRINT TAB(38); P$
820 NEXT I: COLOR 15
830 RETURN
840 LET V$(I, J) = "#"
850 GOTO 630
860 LET E(G) = 1
870 LET G = INT(RND(1) * 50) + 10
880 IF E(G) <> 1 THEN GOTO 870
890 LET E(G) = 2
900 LET H = 0
910 LET S = S + 1
920 RETURN
930 PRINT: PRINT "You have escaped in"; S * 5 + H; "moves!"
950 END
5000 CLS: COLOR 12
5010 PRINT TAB(35); "Ghost Maze": PRINT: PRINT
5020 COLOR 14: PRINT
5030 PRINT "It's a creepy sort of place.  The identical dark corridors don't seem to go"
5040 PRINT "anywhere.  It might even be haunted.  You can only see straight in front of"
5050 PRINT "you, and you can only move in the direction in which you are facing.  You can"
5060 PRINT "turn left or right, but this won't actually move you anywhere, it will just"
5070 PRINT "show you another view.  All you have to do is find the cross which marks the"
5080 PRINT "way out.  Your position is marked with a Y and walls are marked #."
5090 PRINT
5100 PRINT "Gulp! It is haunted.  Ghouls are shown by a letter G.  If you get right up"
5110 PRINT "next to one you will be whisked away to another part of the maze, not knowing"
5120 PRINT "where you are or in which direction you are facing.  Here are the keys you can"
5130 PRINT "use: X moves you forward.  N turns you to the left (through 90 degrees), M"
5140 PRINT "turns you to the right (through 90 degrees)."
5150 PRINT
5160 COLOR 13: PRINT "(Press any key.)"
5170 IF INKEY$ = "" THEN 5170
5180 CLS: COLOR 15: RETURN


