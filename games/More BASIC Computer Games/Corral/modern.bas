1 CLS: COLOR 12: PRINT TAB(37); "Corral"
2 PRINT TAB(31); "Creative Computing"
3 PRINT TAB(29); "Morristown, New Jersey"
4 PRINT: PRINT: PRINT: COLOR 15
5 RANDOMIZE TIMER
10 DIM A(21)
40 DIM S(2, 9)
50 FOR I = 1 TO 2: FOR J = 0 TO 9
55 READ S(I, J): NEXT J: NEXT I
60 DATA 0,1,2,3,3,2,2,1,0,-1
70 DATA 1,2,3,4,5,4,3,2,1,0
100 PRINT "You are the cowboy.  Go catch your horse in the corral!"
110 COLOR 10: PRINT: INPUT "Do you want full instructions (Y/N)"; F$
120 IF LEFT$(F$, 1) = "N" OR LEFT$(F$, 1) = "n" GOTO 190
125 COLOR 14: PRINT
130 PRINT "You move toward your horse 1 to 5 steps at a time.  If you more than halve the"
140 PRINT "separation, he will bolt!  He may also bolt when he is close to the rail."
150 PRINT "When you come within 2 steps, he may kick.  So look out!!"
180 PRINT
190 PRINT "After '?', type in a digit from 1 to 5 for the cowboy's next move.": COLOR 15
200 C = 1: L = 1: K = 0: M = 0: N = 0: GOSUB 800
220 IF R > 5 THEN Q = -Q
225 H = 13 + Q: GOSUB 810
230 T = 2 + P: PRINT
300 B$ = "            "
310 FOR J = 1 TO 21: A(J) = 32: NEXT J
320 A(C) = 1: A(H) = 20
330 PRINT N, CHR$(179);
333 COLOR 11: FOR J = 1 TO 21: PRINT CHR$(A(J));: NEXT J: COLOR 15
337 PRINT CHR$(179),: COLOR 12: PRINT B$;: COLOR 15
370 X = ABS(H - C): L = SGN(H - C)
380 N = N + 1: IF K > 0 GOTO 640
390 IF N > 100 THEN 980
395 COLOR 10: INPUT D: COLOR 15
400 IF D > 0 AND D < 6 GOTO 450
420 PRINT "Illegal move. Try again", ;: GOTO 390
450 E = C + L * D: IF E < 1 OR E > 21 THEN 420
460 C = E: GOSUB 800
510 G = P: H = H + L * G: GOSUB 810
530 IF X < 2 * D AND D > 1 GOTO 570
540 IF H > 1 AND H < 20 THEN 600
545 GOSUB 800
550 IF R > 2 GOTO 600
555 IF X > 7 GOTO 300
570 G = 9 + 2 * P: H = H - L * G: L = -L: GOSUB 810
580 IF ABS(H - C) > 1 THEN 590
585 H = H - 3 * L: GOSUB 810
590 B$ = "BOLTED      ": GOTO 310
600 IF ABS(H - C) > 2 THEN 300
605 GOSUB 800
610 IF R > 3 GOTO 700
615 GOSUB 800
620 K = P + 2: M = M + 1: H = H - 5 * L: GOSUB 810
630 B$ = "KICKED": GOTO 310
640 IF M > T GOTO 900
650 K = K - 1: PRINT: GOSUB 800
670 H = H + L * (P + 1): GOSUB 810: GOTO 300
700 IF H = C THEN 930
705 GOTO 300
800 R = INT(10 * RND(1)): P = S(1, R): Q = S(2, R): RETURN
810 IF H < 1 THEN H = 1
820 IF H > 21 THEN H = 21
830 RETURN
900 PRINT: PRINT "THOSE KICKS LANDED YOU IN THE HOSPITAL!"
910 PRINT " GET WELL SOON!!": GOTO 960
930 FOR J = 1 TO 21: A(J) = 32: NEXT J: A(C) = 2
940 PRINT , CHR$(179);
943 COLOR 11: FOR J = 1 TO 21: PRINT CHR$(A(J));: NEXT J: COLOR 15
947 PRINT CHR$(179)
950 PRINT: PRINT "Yippie!!  Now see if you can catch him in fewer moves."
960 COLOR 10: INPUT "Another roundup (Y/N)"; F$
970 IF LEFT$(F$, 1) = "Y" OR LEFT$(F$, 1) = "y" THEN 200
975 GOTO 999
980 PRINT: PRINT "Enough!!  You'd do better as camp cook!": GOTO 960
999 END

