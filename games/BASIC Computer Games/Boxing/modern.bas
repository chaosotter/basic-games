1 CLS: COLOR 12
2 PRINT TAB(37); "Boxing"
3 PRINT TAB(31); "Creative Computing"
4 PRINT TAB(29); "Morristown, New Jersey"
5 PRINT: PRINT: PRINT: RANDOMIZE TIMER: COLOR 15
6 PRINT "Boxing, Olympic style (3 rounds -- 2 out of 3 wins)"
8 J = 0: L = 0
9 PRINT
10 COLOR 10: PRINT "What is your opponent's name";
20 INPUT J$: COLOR 15
30 COLOR 10: PRINT "Input your man's name";
40 INPUT L$: COLOR 15
45 PRINT
50 PRINT "The different punches are: (1) full swing; (2) hook; (3) uppercut; (4) jab."
60 COLOR 10: PRINT "What is your man's best (1-4)";
64 INPUT B: COLOR 15
70 COLOR 10: PRINT "What is his vulnerability (1-4)";
80 INPUT D: COLOR 15
90 B1 = INT(4 * RND(1) + 1)
100 D1 = INT(4 * RND(1) + 1)
110 IF B1 = D1 THEN 90
120 PRINT: PRINT J$; "'s advantage is"; STR$(B1); ".  Their vulnerability is secret.": PRINT
130 FOR R = 1 TO 3
140 IF J >= 2 THEN 1040
150 IF L >= 2 THEN 1060
160 X = 0
170 Y = 0
180 COLOR 12: PRINT "Round"; R; "begins...": COLOR 15
185 FOR R1 = 1 TO 7
190 I = INT(10 * RND(1) + 1)
200 IF I > 5 THEN 600
210 COLOR 10: PRINT: PRINT L$; "'s punch (1-4)";
220 INPUT P: COLOR 15
221 IF P = B THEN 225
222 GOTO 230
225 X = X + 2
230 IF P = 1 THEN 340
240 IF P = 2 THEN 450
250 IF P = 3 THEN 520
270 PRINT L$; " jabs at "; J$; "'s head!"
271 IF D1 = 4 THEN 290
275 C = INT(8 * RND(1) + 1)
280 IF C < 4 THEN 310
290 X = X + 3
300 GOTO 950
310 PRINT "It's blocked."
330 GOTO 950
340 PRINT L$; " swings and ";
341 IF D1 = 4 THEN 410
345 X3 = INT(30 * RND(1) + 1)
350 IF X3 < 10 THEN 410
360 PRINT "he misses."
375 IF X = 1 THEN 950
400 GOTO 300
410 PRINT "he connects!"
420 IF X > 35 THEN 980
425 X = X + 15
440 GOTO 300
450 PRINT L$; " throws a hook... ";
455 IF D1 = 2 THEN PRINT: GOTO 480
460 H1 = INT(2 * RND(1) + 1)
470 IF H1 = 1 THEN 500
475 PRINT "and connects!"
480 X = X + 7
490 GOTO 300
500 PRINT "but it's blocked!"
510 GOTO 300
520 PRINT L$; " tries an uppercut ";
530 IF D1 = 3 THEN 570
540 D5 = INT(100 * RND(1) + 1)
550 IF D5 < 51 THEN 570
560 PRINT "and it's blocked!  (Lucky block!)"
565 GOTO 300
570 PRINT "and he connects!"
580 X = X + 4
590 GOTO 300
600 J7 = INT(4 * RND(1) + 1)
601 IF J7 = B1 THEN 605
602 GOTO 610
605 Y = Y + 2
610 IF J7 = 1 THEN 720
620 IF J7 = 2 THEN 810
630 IF J7 = 3 THEN 860
640 PRINT J$; " jabs and ";
645 IF D = 4 THEN 700
650 Z4 = INT(7 * RND(1) + 1)
655 IF Z4 > 4 THEN 690
660 PRINT "it's blocked!"
670 GOTO 300
690 PRINT "blood spills!"
700 Y = Y + 5
710 GOTO 300
720 PRINT J$; " takes a full swing and ";
730 IF D = 1 THEN 770
740 R6 = INT(60 * RND(1) + 1)
745 IF R6 < 30 THEN 770
750 PRINT "it's blocked!"
760 GOTO 300
770 PRINT "POW! he hits him right in the face!"
780 IF Y > 35 THEN 1010
790 Y = Y + 15
800 GOTO 300
810 PRINT J$; " gets "; L$; " in the jaw (ouch!)"
820 Y = Y + 7
830 PRINT "...and again!"
835 Y = Y + 5
840 IF Y > 35 THEN 1010
850 PRINT
860 PRINT L$; " is attacked by an uppercat (uh-oh)..."
865 IF D = 3 THEN 890
870 Q4 = INT(200 * RND(1) + 1)
880 IF Q4 > 75 THEN 920
890 PRINT "And "; J$; " connects..."
900 Y = Y + 8
910 GOTO 300
920 PRINT "But blocks and hits "; J$; " with a hook!"
930 X = X + 5
940 GOTO 300
950 NEXT R1
951 IF X > Y THEN 955
952 PRINT: COLOR 11: PRINT J$; " wins round"; STR$(R); ".": COLOR 15
953 J = J + 1
954 GOTO 960
955 PRINT: COLOR 11: PRINT L$; " wins round"; STR$(R); ".": COLOR 15
956 L = L + 1
960 NEXT R
961 IF J >= 2 THEN 1040
962 IF L >= 2 THEN 1060
980 COLOR 13: PRINT: PRINT J$; " is knocked cold and "; L$; " is the winner and champ!"
1000 GOTO 1080
1010 COLOR 13: PRINT: PRINT L$; " is knocked cold and "; J$; " is the winner and champ!"
1030 GOTO 1000
1040 COLOR 13: PRINT: PRINT J$; " wins!  (Nice going, "; J$; "!)"
1050 GOTO 1000
1060 COLOR 13: PRINT: PRINT L$; ", amazingly, wins!"
1070 GOTO 1000
1080 PRINT: COLOR 15
1090 PRINT "And now goodbye from the Olympic arena."
1100 PRINT
1110 END

