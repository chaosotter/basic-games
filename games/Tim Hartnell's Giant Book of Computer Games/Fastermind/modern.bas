10 REM Fastermind
20 CLS
30 N = 1
40 COLOR 13: PRINT "(Press a key.)": COLOR 15
50 N = N + 1
60 IF INKEY$ = "" THEN 50
70 RANDOMIZE N
80 CLS: COLOR 13
90 PRINT TAB(35); "Fastermind"
100 PRINT: PRINT: PRINT: COLOR 14
110 PRINT "When you are told to do so, enter a 4-digit number and then press Enter."
140 PRINT
150 PRINT "Digits can be repeated."
160 PRINT
170 PRINT "You have 8 goes to break the difficult code.": COLOR 15
190 XX = 3.0: GOSUB 1000
200 CLS
210 DIM B(4)
220 DIM D(4)
230 LET H = 0
240 FOR A = 1 TO 4
250 LET B(A) = INT(RND * 9) + 1: REM Or RND(1)*9 + 1
260 NEXT A
270 FOR C = 1 TO 8
280 PRINT
290 COLOR 10: PRINT "Enter guess number"; C;
300 INPUT X: COLOR 15
310 IF X > 9999 THEN GOTO 290
320 IF X < 1000 THEN GOTO 290
330 LET P = INT(X / 1000)
340 LET Q = INT((X - 1000 * P) / 100)
350 LET R = INT((X - 1000 * P - 100 * Q) / 10)
360 LET S = INT(X - 1000 * P - 100 * Q - 10 * R)
370 LET D(1) = P
380 LET D(2) = Q
390 LET D(3) = R
400 LET D(4) = S
410 FOR E = 1 TO 4
420 IF D(E) <> B(E) THEN GOTO 470
430 PRINT "  ";: COLOR 0, 7: PRINT "Black";: COLOR 15, 0
440 LET B(E) = B(E) + 10
450 LET D(E) = D(E) + 20
460 LET H = H + 1
470 NEXT E
480 IF H = 4 THEN GOTO 680
490 FOR F = 1 TO 4
500 LET D = D(F)
510 FOR G = 1 TO 4
520 IF D <> B(G) THEN GOTO 560
530 PRINT "  White";
540 LET B(G) = B(G) + 10
550 GOTO 570
560 NEXT G
570 NEXT F
580 FOR G = 1 TO 4
590 IF B(G) < 10 THEN GOTO 610
600 LET B(G) = B(G) - 10
610 NEXT G
620 LET H = 0
630 PRINT
640 NEXT C
650 PRINT: PRINT "You didn't get it..."
660 PRINT "The answer is: ";: COLOR 13: PRINT B(1); B(2); B(3); B(4): COLOR 15
670 END
680 PRINT: PRINT: PRINT "Well done, Master brain!"
690 PRINT
700 PRINT: PRINT "You got the answer in just"; C; "goes."
720 END
1000 ST = TIMER + XX
1010 IF TIMER < ST THEN 1010
1020 RETURN

