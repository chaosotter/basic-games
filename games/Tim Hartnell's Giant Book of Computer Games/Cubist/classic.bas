10 REM Cubist
20 DIM A(4), B(16)
30 RANDOMIZE TIMER
40 CLS
50 B = 1: F = 0
60 FOR D = 1 TO 4
70 C = 0
80 IF B = 1 THEN C = 1
90 IF B = 3 THEN C = 2
100 IF B = 9 THEN C = 3
110 IF B = 11 THEN C = 4
120 B(B) = C
130 B(B + 1) = C
140 B(B + 4) = C
150 B(B + 5) = C
160 C = 0
170 IF B = 1 THEN C = 2
180 IF B = 3 THEN C = 6
190 IF B = 9 THEN C = 2
200 B = B + C
210 NEXT D
220 GOSUB 410
230 PRINT: PRINT
240 IF F < 11 THEN PRINT "Twisting..."
250 F = F + 1
260 XX = 1.0: GOSUB 1000
270 IF F < 11 THEN X = INT(RND * 12) + 1
280 IF F > 10 THEN PRINT "Enter your choice (2 - 12) but": INPUT "not 5 or 9"; X
290 IF X < 2 OR X = 5 OR X = 9 OR X > 12 THEN 270
300 A(1) = B(X)
310 A(2) = B(X + 4)
320 A(3) = B(X + 3)
330 A(4) = B(X - 1)
340 B(X) = A(4)
350 B(X + 4) = A(1)
360 B(X + 3) = A(2)
370 B(X - 1) = A(3)
380 GOSUB 410
390 F = F + 1
400 GOTO 270
410 CLS
420 PRINT: PRINT: PRINT
430 FOR B = 1 TO 16
440 PRINT B(B);
450 IF B / 4 = INT(B / 4) THEN PRINT
460 NEXT B
470 PRINT: PRINT
480 IF F < 10 THEN PRINT: PRINT "Twist number"; F
490 IF F > 10 THEN PRINT: PRINT "Your cubist twist number"; F - 10: PRINT
500 IF F < 11 THEN RETURN
510 P = 0
520 IF B(1) = 1 AND B(2) = 1 AND B(3) = 2 AND B(4) = 2 AND B(5) = 1 AND B(6) = 1 AND B(7) = 2 AND B(8) = 2 THEN P = P + 1
530 IF B(9) = 3 AND B(10) = 3 AND B(11) = 4 AND B(12) = 4 AND B(13) = 3 AND B(14) = 3 AND B(15) = 4 AND B(16) = 4 THEN P = P + 1
540 IF P <> 2 THEN RETURN
550 PRINT: PRINT "You solved it in just"; F - 10; " twists"
560 PRINT: PRINT "Well done, cubist!"
570 END
1000 ST = TIMER + XX
1010 IF TIMER < ST THEN 1010
1020 RETURN

