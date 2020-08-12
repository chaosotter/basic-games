5 CLS: COLOR 12
10 PRINT TAB(32); "Motorcycle Jump"
20 PRINT TAB(31); "Creative Computing"
30 PRINT TAB(29); "Morristown, New Jersey"
40 PRINT: PRINT: PRINT: RANDOMIZE TIMER: COLOR 15
50 DIM I2(14), I$(84)
90 I$ = "r.arm l.arm r.leg l.leg back  neck  skull ribs  knee  butt  "
100 I$ = I$ + "face  pelvispride bike  "
110 T = .1
130 T2 = 0
140 T3 = 0
150 PRINT "We're at the scene of the big motorcycle jump!"
160 COLOR 10: INPUT "How many buses will you try to jump"; N: COLOR 15
170 J = N * 15
175 N$ = STR$(N): N$ = RIGHT$(N$, LEN(N$) - 1)
180 PRINT: PRINT N$; " buses!  That's"; J; "feet!"
190 COLOR 10: INPUT "What ramp angle will you use (0-90)"; A2: COLOR 15
200 IF A2 < 90 AND A2 > 0 THEN 230
210 PRINT A2; "degrees?  That's impossible.  Come on now."
220 GOTO 190
230 A = A2 * .01745
240 COLOR 10: INPUT "How fast will you leave the ramp"; S: COLOR 15
250 PRINT: PRINT "Good luck!"
260 IF S > 0 THEN 300
270 PRINT "A practice jump!  Okay, try again."
290 GOTO 240
300 H = 6
310 D = 0
320 G = 6
330 R2 = 0
340 S2 = 0
350 S = S * 1.5
360 PRINT "There he goes!!!"
380 S = S - S2
390 F = S * T
400 D2 = F * COS(A)
410 R = F * SIN(A)
420 R2 = R2 + (32 * T)
430 R3 = R2 * T
440 H = H + R - R3
450 D = D + D2
460 COLOR 13: PRINT "*";: COLOR 15
480 S2 = (S / 120) * 32 * T
490 IF D >= J THEN G = G - R
510 IF G <= 0 THEN G = 0
520 IF H > G THEN 380
530 IF D < J THEN 600
540 IF D > J + 20 THEN 640
550 L = ((D - J) / 30) + RND(1)
560 IF L > .8 THEN 650
570 PRINT "He made it!  Great jump, killer!"
580 T2 = T2 + 1
590 GOTO 920
600 PRINT "He's short of the ramp..."
620 L2 = INT((((J - D) / 5) * 2) + (RND(1) * .5) + .5)
630 GOTO 670
640 PRINT "He jumped too far!"
650 PRINT "He missed the ramp."
660 L2 = INT(((D + 20 - J) / 20) + (RND(1) * 5))
670 PRINT "I think he's hurt..."
680 FOR K = 1 TO 14
690 I2(K) = K
700 NEXT K
710 K2 = 14
720 IF L2 > 14 THEN L2 = 14
730 IF L2 <= 0 THEN L2 = 1
760 FOR K = 1 TO L2
770 V = INT(RND(1) * 1000)
780 V = (V - (INT(V / K2) * K2)) + 1
790 H2 = I2(V)
800 I2(V) = I2(K2)
810 I2(K2) = H2
820 K2 = K2 - 1
830 NEXT K
840 PRINT: PRINT "Well, killer, the doctor says you broke your:"
860 COLOR 12: FOR K = (15 - L2) TO 14
880 P = (6 * I2(K)) - 5
890 A$ = MID$(I$, P, 6)
900 PRINT A$,
910 NEXT K: PRINT: COLOR 15
920 T3 = T3 + 1
930 COLOR 10: PRINT: INPUT "Want to jump again (Y/N)"; A$: COLOR 15
940 IF LEFT$(A$, 1) = "Y" OR LEFT$(A$, 1) = "y" THEN PRINT: PRINT: GOTO 160
950 PRINT: PRINT "You made it"; T2; "out of"; T3; "attempts."
960 PRINT "Be careful, now."
970 END

