1 PRINT TAB(26); "CONDOT"
2 PRINT TAB(20); "CREATIVE COMPUTING"
3 PRINT TAB(18); "MORRISTOWN, NEW JERSEY": PRINT
4 PRINT
5 PRINT
6 PRINT "THIS PROGRAM WILL PLAY CONNECT THE DOTS WITH YOU."
7 PRINT "THE GAME IS PLAYED ON A 4 X 4 ARRAY. WHEN"
8 PRINT "YOU WANT TO MAKE A MOVE YOU MUST TYPE IN"
9 PRINT "THE COORDINATES OF THE SPACE BETWEEN THE TWO DOTS YOU"
10 PRINT "WANT TO CONNECT. ENTER EACH OF YOUR MOVES BY TYPING"
11 PRINT "THE ROW NUMBER, A COMMA AND THE COLUMN NUMBER."
12 PRINT "THE UPPER LEFT HAND CORNER OF THE ARRAY IS 1,1."
13 PRINT "HERE WE GO."
20 DIM A(12, 12)
30 V = 0
40 FOR R = 1 TO 12
50 FOR C = 1 TO 12
60 IF R / 2 = INT(R / 2) THEN 100
70 IF C / 2 = INT(C / 2) THEN 100
80 A(R, C) = -50
90 GOTO 110
100 A(R, C) = 0
110 NEXT C
120 NEXT R
130 IF V = 1 THEN 200
200 GOSUB 1000
210 PRINT "YOUR MOVE";
220 INPUT X, Y
230 IF X = INT(X) THEN 260
240 PRINT "YOU REALLY DON'T WANT TO PUT A LINE THERE!!!!"
250 GOTO 210
260 IF (X - 1) * (X - 7) > 0 THEN 240
265 X = X + 2
270 IF (Y - 1) * (Y - 7) > 0 THEN 240
272 Y = Y + 2
280 IF (X + Y + 1) / 2 <> INT((X + Y + 1) / 2) THEN 240
290 IF A(X, Y) <> 0 THEN 240
300 A(X, Y) = 50
310 IF X / 2 = INT(X / 2) THEN 380
320 IF A(X - 2, Y) + A(X - 1, Y + 1) + A(X - 1, Y - 1) <> 150 THEN 350
330 P = 1
340 A(X - 1, Y) = 1
350 IF A(X + 2, Y) + A(X + 1, Y + 1) + A(X + 1, Y - 1) <> 150 THEN 440
360 A(X + 1, Y) = 1
370 GOTO 200
380 IF A(X, Y - 2) + A(X + 1, Y - 1) + A(X - 1, Y - 1) <> 150 THEN 410
390 A(X, Y - 1) = 1
400 P = 1
410 IF A(X, Y + 2) + A(X + 1, Y + 1) + A(X - 1, Y + 1) <> 150 THEN 440
420 A(X, Y + 1) = 1
430 GOTO 200
440 IF P = 1 THEN 200
450 GOSUB 1000
460 PRINT "MY MOVE"
470 FOR R = 4 TO 10 STEP 2
480 FOR C = 4 TO 10 STEP 2
490 IF A(R - 1, C) + A(R + 1, C) + A(R, C - 1) + A(R, C + 1) <> 150 THEN 680
500 A(R, C) = -1
510 IF A(R - 1, C) <> 0 THEN 550
520 A(R - 1, C) = 50
530 IF A(R - 3, C) + A(R - 2, C - 1) + A(R - 2, C + 1) <> 150 THEN 450
540 LET A(R - 2, C) = -1
550 IF A(R + 1, C) <> 0 THEN 590
560 A(R + 1, C) = 50
570 IF A(R + 3, C) + A(R + 2, C - 1) + A(R + 2, C + 1) <> 150 THEN 450
580 A(R + 2, C) = -1
590 IF A(R, C - 1) <> 0 THEN 630
600 A(R, C - 1) = 50
610 IF A(R, C - 3) + A(R - 1, C - 2) + A(R + 1, C + 2) <> 150 THEN 450
620 A(R, C - 2) = -1
630 IF A(R, C + 1) <> 0 THEN 450
640 A(R, C + 1) = 50
650 IF A(R, C + 3) + A(R - 1, C + 2) + A(R + 1, C + 2) <> 150 THEN 450
660 A(R, C + 2) = -1
670 GOTO 450
680 NEXT C
690 NEXT R
692 IF E > 1 THEN 730
700 IF A(12 - X, 12 - Y) <> 0 THEN 730
710 A(12 - X, 12 - Y) = 50
712 IF E > 1 THEN 870
720 GOTO 200
730 FOR R = 3 TO 9
740 FOR C = 3 TO 9
750 IF (R + C) / 2 = INT((R + C) / 2) THEN 850
760 IF A(R, C) <> 0 THEN 850
780 IF R / 2 = INT(R / 2) THEN 830
790 IF A(R - 2, C) + A(R - 1, C - 1) + A(R - 1, C + 1) = 100 THEN 850
800 IF A(R + 2, C) + A(R + 1, C - 1) + A(R + 1, C + 1) = 100 THEN 850
810 A(R, C) = 50
820 GOTO 200
830 IF A(R, C - 2) + A(R - 1, C - 1) + A(R + 1, C - 1) = 100 THEN 850
840 IF A(R, C + 2) + A(R - 1, C + 2) + A(R + 1, C + 1) <> 100 THEN 810
850 NEXT C
860 NEXT R
862 IF E > 1 THEN 700
870 R = INT(RND(1) * 7) + 3
880 C = INT(RND(1) * 7) + 3
881 IF R / 2 = INT(R / 2) THEN 885
882 IF C / 2 = INT(C / 2) THEN 900
883 GOTO 870
885 IF C / 2 <> INT(C / 2) THEN 900
886 GOTO 870
900 IF A(R, C) <> 0 THEN 870
910 A(R, C) = 50
920 GOTO 200
930 PRINT "DO YOU WANT TO PLAY AGAIN (TYPE 1 FOR YES OR 2 FOR NO)";
940 INPUT B
950 IF B = 1 THEN 40
960 END
1000 P = 0
1010 D = 0
1020 E = 0
1030 FOR R = 3 TO 9
1040 FOR C = 3 TO 9
1050 IF A(R, C) <> 0 THEN 1080
1060 PRINT "   ";
1070 GOTO 1240
1080 IF A(R, C) <> -50 THEN 1110
1090 PRINT " . ";
1100 GOTO 1240
1110 IF A(R, C) <> -1 THEN 1140
1120 PRINT " C ";
1130 GOTO 1170
1140 IF A(R, C) <> 1 THEN 1200
1150 PRINT " H ";
1170 D = D + A(R, C)
1180 E = E + 1
1190 GOTO 1240
1200 IF R / 2 = INT(R / 2) THEN 1230
1210 PRINT " - ";
1220 GOTO 1240
1230 PRINT " : ";
1240 NEXT C
1245 PRINT
1250 NEXT R
1260 IF E >= 9 THEN 1280
1270 RETURN
1280 IF D > 0 THEN 1310
1290 PRINT "I WON"
1300 GOTO 930
1310 PRINT "YOU WON!!!"
1320 GOTO 930
1400 END

