5 DEFINT A-Z: DIM A(10), B(10)
10 REM Idaho Stars
20 GOSUB 480: REM Set up star
30 GOSUB 340: REM Print Star
40 GOSUB 70: REM Ask for guess
50 GOTO 30
60 REM ******************
70 REM Ask for Guess
80 IF SCORE > 0 AND SCORE < 10 THEN PRINT "You have"; SCORE; "right so far": PRINT
90 GO = GO + 1
100 PRINT "This is go number"; GO: PRINT
110 PRINT "Enter any number which you"
120 INPUT "think is part of the star"; G
130 SCORE = 0
140 FOR J = 1 TO 10
150 IF G = A(J) THEN B(J) = A(J)
160 IF B(J) <> 0 THEN SCORE = SCORE + 1
170 NEXT J
180 XX = 1.0: GOSUB 1000
190 IF SCORE < 10 THEN RETURN
200 REM ******************
210 GOSUB 340
220 PRINT: PRINT "Yes, you've solved it!"
230 PRINT: PRINT "And it only took"; GO; "goes..."
240 XX = 1.0: GOSUB 1000
250 PRINT "Press 'Y' if you'd like to"
260 PRINT "try another Star of Idaho,"
270 PRINT "press 'N' to stop........."
280 A$ = INKEY$
290 IF A$ <> "n" AND A$ <> "N" AND A$ <> "Y" AND A$ <> "y" THEN 280
300 IF A$ = "Y" OR A$ = "y" THEN RUN
310 PRINT: PRINT "OK, thanks for playing"
320 END
330 REM *************
340 REM Print star
350 CLS: PRINT: PRINT
360 PRINT TAB(11); B(1)
370 PRINT: PRINT
380 PRINT TAB(2); " "; B(2); "  "; B(3); " "; B(4); " "; B(5)
390 PRINT
400 PRINT TAB(7); B(6); "    "; B(7)
410 PRINT
420 PRINT TAB(10); B(8)
430 PRINT
440 PRINT TAB(4); B(9); "      "; B(10)
450 PRINT: PRINT
460 RETURN
470 REM *************
480 REM Set up star
490 CLS
500 RANDOMIZE TIMER
530 GO = 0: SCORE = 0
540 A = INT(RND * 9) + 1
550 B = INT(RND * 9) + 1
560 C = INT(RND * 9) + 1
570 D = INT(RND * 9) + 1
580 E = INT(RND * 9) + 1
590 IF A = B OR A = C OR A = D OR A = E THEN 550
600 IF B = C OR B = D OR B = E THEN 550
610 IF C = D OR C = E THEN 550
620 IF D = E THEN 550
630 X = INT(RND * 3) + 1
640 A(1) = X
650 A(2) = X - B + C + D
660 A(3) = A + E
670 A(4) = A + D
680 A(5) = X - B - C + E
690 A(6) = A
700 A(7) = A + C
710 A(8) = A + B
720 A(9) = X - 2 * B + 2 * D + E
730 A(10) = X - 2 * B - C + D + 2 * E
740 FOR J = 1 TO 10
750 B(J) = A(J)
760 IF A(J) = 0 THEN RUN
770 NEXT J
780 B(INT(RND * 10) + 1) = 0
790 B(INT(RND * 10) + 1) = 0
800 B(INT(RND * 10) + 1) = 0
810 RETURN
1000 ST = TIMER + XX
1010 IF TIMER < ST THEN 1010
1020 RETURN

