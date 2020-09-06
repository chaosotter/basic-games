5 RANDOMIZE TIMER
6 GOSUB 5000
10 CLS
20 PRINT "GRAVE DIGGER"
30 DIM A(10, 20)
40 DIM B(6)
50 FOR I = 1 TO 10
60 FOR J = 1 TO 20
70 LET A(I, J) = ASC(" ")
80 NEXT J
90 NEXT I
100 LET W = 0
110 LET X = 5
120 LET Y = ASC("*")
130 LET B = ASC("+")
140 LET C = ASC("O")
150 LET D = ASC(":")
160 LET E = ASC("X")
170 LET Z = ASC(" ")
180 FOR J = 1 TO 10
190 LET A(J, 1) = D
200 LET A(J, 20) = D
210 NEXT J
220 FOR J = 1 TO 20
230 LET A(1, J) = D
240 LET A(10, J) = D
250 NEXT J
260 LET A(9, 20) = Z
270 FOR J = 1 TO 20
280 LET F = INT(RND(1) * 7 + 2)
290 LET G = INT(RND(1) * 15 + 3)
300 LET A(F, G) = B
310 NEXT J
320 LET M = 2
330 LET N = 2
340 LET B(2) = 19
350 LET B(4) = 19
360 LET B(6) = 19
370 LET B(1) = 4
380 LET B(3) = 3
390 LET B(5) = 2
400 FOR J = 1 TO 5 STEP 2
410 LET A(B(J), B(J + 1)) = E
420 NEXT J
430 GOSUB 860
440 PRINT
450 COLOR 10: PRINT "Enter move"; W; "(N/S/E/W)";
470 INPUT A$: COLOR 15
480 IF A$ = "N" OR A$ = "n" THEN GOTO 530
490 IF A$ = "E" OR A$ = "e" THEN GOTO 560
500 IF A$ = "S" OR A$ = "s" THEN GOTO 600
510 IF A$ = "W" OR A$ = "w" THEN GOTO 630
520 GOTO 470
530 LET T = N - 1
540 LET U = M
550 GOTO 650
560 LET T = N
570 LET U = M + 1
580 IF A(T, U) = Z AND M = 19 THEN GOTO 770
590 GOTO 650
600 LET T = N + 1
610 LET U = M
620 GOTO 650
630 LET T = N
640 LET U = M - 1
650 IF A(T, U) = Z THEN GOTO 710
660 IF A(T, U) = D OR A(T, U) = B THEN GOTO 690
670 IF A(T, U) = C THEN GOTO 800
680 IF A(T, U) = E THEN GOTO 830
690 PRINT "That way is blocked."
700 GOTO 440
710 LET A(N, M) = Z
720 LET N = T
730 LET M = U
740 LET A(N, M) = Y
750 GOSUB 1030
760 GOTO 400
770 PRINT: PRINT "You're free!"
780 PRINT "Your performance rating is "; STR$(INT((60 - W) / 60 * (96 + X))); "%"
790 END
800 PRINT: PRINT "You've fallen into one of your own holes!"
820 END
830 PRINT: PRINT "Urk!  You've been scaree to death by a skeleton!"
850 END
860 LET A(N, M) = Y
870 CLS
880 LET R = N
890 LET S = M
900 LET W = W + 1
910 IF W > 60 THEN GOTO 990
915 LOCATE 4, 1
920 FOR I = 1 TO 10
925 PRINT TAB(30);
930 FOR J = 1 TO 20
940 C$ = CHR$(A(I, J))
945 IF C$ = "X" THEN COLOR 12: ELSE IF C$ = "O" THEN COLOR 9: ELSE IF C$ = "*" THEN COLOR 11: ELSE COLOR 15
946 PRINT C$;
950 NEXT J
960 PRINT
970 NEXT I: PRINT: COLOR 15
980 RETURN
990 PRINT "The clock's struck midnight!  Aghhhhh!!!"
1020 END
1030 IF X = 0 THEN GOTO 1110
1050 COLOR 10: PRINT "Would you like to dig a hole (Y/N)";
1070 INPUT B$: COLOR 15
1080 IF B$ <> "Y" AND B$ <> "y" THEN GOTO 1110
1090 LET X = X - 1
1100 LET A(R, S) = C
1110 FOR J = 1 TO 5 STEP 2
1120 LET T = B(J)
1130 LET U = B(J + 1)
1140 IF A(T, U + 1) = Y THEN GOTO 830
1150 IF A(T, U - 1) = Y THEN GOTO 830
1160 IF A(T - 1, U) = Y THEN GOTO 830
1170 IF A(T + 1, U) = Y THEN GOTO 830
1180 IF A$ = "W" OR A$ = "w" THEN GOTO 1300
1190 IF (A$ = "S" OR A$ = "s") AND A(T + 1, U) = Z THEN GOTO 1270
1200 IF (A$ = "N" OR A$ = "n") AND A(T - 1, U) = Z THEN GOTO 1280
1210 IF (A$ = "E" OR A$ = "e") AND A(T, U + 1) = Z AND M > U THEN GOTO 1240
1220 IF (A$ = "E" OR A$ = "e") AND A(T, U - 1) = Z THEN GOTO 1250
1230 GOTO 1300
1240 LET B(J + 1) = B(J + 1) + 2
1250 LET B(J + 1) = B(J + 1) - 1
1260 GOTO 1290
1270 LET B(J) = B(J) + 2
1280 LET B(J) = B(J) - 1
1290 LET A(T, U) = Z
1300 NEXT J
1310 RETURN
5000 CLS: COLOR 12
5010 PRINT TAB(34); "Gravedigger": PRINT: PRINT
5020 COLOR 14: PRINT
5030 PRINT "It's dark and windy -- not the kind of night to be lost in a graveyard, but"
5040 PRINT "that's where you are.  You have until midnight to find your way out."
5050 PRINT "Skeletons lurk in the shadows waiting to scare you to death should you come"
5060 PRINT "too close.  You can dig holes to help keep them away, but digging is tiring"
5070 PRINT "work and you cannot manage more than five in one game.  You have to be careful"
5080 PRINT "not to fall down the holes you have dug too."
5090 PRINT
5100 PRINT "Grave stones (marked +) and the walls of the graveyard (marked :) block your"
5110 PRINT "way.  The holes you dig are marked O, you are * and the skeletons are X.  See"
5120 PRINT "if you can escape."
5130 PRINT
5140 COLOR 13: PRINT "(Press any key.)"
5150 IF INKEY$ = "" THEN 5150
5160 CLS: COLOR 15: RETURN

