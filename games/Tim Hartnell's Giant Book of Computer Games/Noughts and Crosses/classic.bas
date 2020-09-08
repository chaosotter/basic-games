10 REM Noughts and CRosses
20 DEFINT A-Z
30 CLS
40 N = 0
50 PRINT "Press any key when"
60 PRINT "you're ready to play"
70 N = N + 1: IF INKEY$ = "" THEN 70
80 CLS
90 DIM A(9)
100 RANDOMIZE N
110 CLS: FOR N = 1 TO 9: A(N) = 0: NEXT N
120 IF RND > .5 THEN PRINT "I'll have the first move": XX = 1.0: GOSUB 1000: CLS: GOTO 160
130 GOSUB 750
140 GOSUB 480
150 GOSUB 670
160 GOSUB 750
170 GOSUB 480
180 IF A(5) = 0 THEN A(5) = 1: GOTO 130
190 REM To complete row/block
200 D = 1
210 B = 1
220 IF B = 1 THEN X = 1: Y = 2: Z = 3
230 IF B = 2 THEN X = 1: Y = 4: Z = 7
240 IF B = 3 THEN X = 1: Y = 5: Z = 9
250 IF B = 4 THEN X = 3: Z = 7
260 C = 1
270 IF A(X) = D AND A(Y) = D AND A(Z) = 0 THEN A(Z) = 1: GOTO 130
280 IF A(X) = D AND A(Y) = 0 AND A(Z) = D THEN A(Y) = 1: GOTO 130
290 IF A(X) = 0 AND A(Y) = D AND A(Z) = D THEN A(X) = 1: GOTO 130
300 IF B = 1 THEN X = X + 3: Y = Y + 3: Z = Z + 3
310 IF B = 2 THEN X = X + 1: Y = Y + 1: Z = Z + 1
320 IF C < 3 THEN C = C + 1: GOTO 270
330 IF B < 4 THEN B = B + 1: GOTO 230
340 IF D < 2 THEN D = D + 1: GOTO 210
350 REM Move at random
360 B = 1
370 D = INT(RND * 9) + 1
380 IF A(C) = 0 THEN A(C) = 1: GOTO 130
390 B = B + 1
400 IF B < 21 THEN 370
410 B = 0
420 B = B + 1
430 IF A(B) = 0 THEN A(B) = 1: GOTO 130
440 IF B < 9 THEN 420
450 GOSUB 750
460 PRINT: PRINT "It's a draw!"
470 GOTO 650
480 REM Win check
490 FOR B = 1 TO 4
500 IF B = 1 THEN X = 1: Y = 2: Z = 3
510 IF B = 2 THEN X = 1: Y = 4: Z = 7
520 IF B = 3 THEN X = 1: Y = 5: Z = 9
530 IF B = 4 THEN X = 3: Z = 7
540 FOR C = 1 TO 3
550 IF A(X) = A(Y) THEN IF A(Y) = A(Z) THEN IF A(X) <> 0 THEN 610
560 IF B = 1 THEN X = X + 3: Y = Y + 3: Z = Z + 3
570 IF B = 2 THEN X = X + 1: Y = Y + 1: Z = Z + 1
580 NEXT C
590 NEXT B
600 RETURN
610 REM The Winner!
620 PRINT
630 IF A(X) = 1 THEN PRINT "I'm the winner!"
640 IF A(X) = 2 THEN PRINT "You're the winner!"
650 XX = 1.0: GOSUB 1000
660 GOTO 110
670 REM Player move
680 PRINT: PRINT "Enter your move..."
690 A$ = INKEY$
700 IF A$ < "1" OR A$ > "9" THEN 690
710 B = VAL(A$)
720 IF A(B) <> 0 THEN 690
730 A(B) = 2
740 RETURN
750 REM Printout
760 CLS
770 PRINT: PRINT: PRINT: PRINT
780 PRINT "1 2 3   ";
790 FLAG = 0
800 FOR B = 1 TO 9
810 IF A(B) = 0 THEN FLAG = 1
820 IF A(B) = 0 THEN PRINT " - ";
830 IF A(B) = 1 THEN PRINT " O ";
840 IF A(B) = 2 THEN PRINT " X ";
850 IF B = 3 THEN PRINT: PRINT: PRINT "4 5 6   ";
860 IF B = 6 THEN PRINT: PRINT: PRINT "7 8 9   ";
870 NEXT B
880 PRINT: PRINT
890 IF FLAG = 0 THEN 460
900 RETURN
1000 ST = TIMER + XX
1010 IF TIMER < ST THEN 1010
1020 RETURN

