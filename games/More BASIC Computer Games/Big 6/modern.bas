1 CLS: COLOR 12: PRINT TAB(38); "Big 6"
2 PRINT TAB(31); "Creative Computing"
3 PRINT TAB(29); "Morristown, New Jersey"
4 PRINT: PRINT: PRINT: COLOR 15
5 RANDOMIZE TIMER
9 COLOR 14
10 PRINT "This program is a dice wheel game in which you can bet on any number between"
20 PRINT "one and six and up to three numbers."
30 PRINT
40 PRINT "The house limit is from $1 to $500!!"
50 PRINT "To end this program, type the word 'STOP'."
55 PRINT
60 PRINT "Good luck!"
65 PRINT: PRINT: COLOR 15
67 DIM S(3)
70 GOTO 90
80 PRINT "You cannot bet on less than one or more than three numbers."
90 COLOR 10: PRINT "How many numbers do you want to bet on";
100 INPUT N$: COLOR 15: IF N$ = "STOP" OR N$ = "stop" THEN 3360
110 N = VAL(N$)
120 IF N = 2 THEN 370
130 IF N = 3 THEN 600
140 IF N > 3 OR N < 1 THEN 80
190 COLOR 10: PRINT "What number";
200 INPUT V: COLOR 15
210 IF V <= 6 OR V >= 1 THEN 260
240 PRINT "You can only bet on an integer from one to six."
250 GOTO 190
260 COLOR 10: PRINT "Wager";
270 INPUT F: COLOR 15
280 IF F <= 500 OR F >= 1 THEN 330
310 PRINT "The house limit is from $1 to $500."
320 GOTO 260
330 GOSUB 1870
340 S2 = V: S3 = F: GOSUB 2060
360 GOTO 3260
370 COLOR 10: PRINT "What two numbers";
380 INPUT V, P
390 IF V <= 6 OR V >= 1 OR P <= 6 OR P >= 1 THEN 460
440 PRINT "You can only bet on an integer from one to six."
450 GOTO 370
460 COLOR 10: PRINT "Wager on both";
470 INPUT F, I: COLOR 15
480 IF F <= 500 OR F >= 1 OR I <= 500 OR I >= 1 THEN 550
530 PRINT "The house limit is from $1 to $500."
540 GOTO 460
550 GOSUB 1870
560 S2 = V: S3 = F: GOSUB 2060
570 S2 = P: S3 = I: GOSUB 2060
590 GOTO 3260
600 COLOR 10: PRINT "What three numbers";
610 INPUT V, P, S: COLOR 15
620 IF V <= 6 OR V >= 1 OR P <= 6 OR P >= 1 OR S <= 6 OR S >= 1 THEN 710
690 PRINT "You can only bet on an integer from one to six."
700 GOTO 600
710 COLOR 10: PRINT "Wager on each of the three";
720 INPUT F, I, J: COLOR 15
730 IF F <= 500 OR F >= 1 OR I <= 500 OR I >= 1 OR J <= 500 OR J >= 1 THEN 820
800 PRINT "The house limit is from $1 to $500."
810 GOTO 710
820 GOSUB 1870
830 S2 = V: S3 = F: GOSUB 2060
840 S2 = P: S3 = I: GOSUB 2060
850 S2 = S: S3 = J: GOSUB 2060
870 GOTO 3260
1870 X = -1
1880 A = INT(6 * RND(1) + 1): B = INT(6 * RND(1) + 1): C = INT(6 * RND(1) + 1)
1890 S(1) = A: S(2) = B: S(3) = C
1900 FOR Y = 1 TO 2
1910 FOR X = 1 TO 3 - Y
1920 IF S(X) <= S(X + 1) THEN 1940
1930 TE = S(X): S(X) = S(X + 1): S(X + 1) = TE
1940 NEXT X: NEXT Y
1950 COLOR 13: PRINT "The lucky numbers are: "; S(1); S(2); S(3): COLOR 15
1960 RETURN
2060 C1 = 0
2070 IF S2 = A THEN C1 = C1 + 1
2080 IF S2 = B THEN C1 = C1 + 1
2090 IF S2 = C THEN C1 = C1 + 1
2100 IF C1 > 0 THEN 2130
2110 S3 = S3 * (-1)
2120 PRINT "You lose on:"; S2: GOTO 2150
2130 S3 = S3 * C1
2140 PRINT "You win"; C1; "times on:"; S2
2150 W = W + S3
2160 RETURN
3260 IF W = 0 THEN PRINT "You're even!!": PRINT: GOTO 90
3270 IF W > 0 THEN W$ = STR$(W): W$ = RIGHT$(W$, LEN(W$) - 1): PRINT "You're ahead $"; W$: PRINT: GOTO 90
3280 IF W < 0 THEN W$ = STR$(W): W$ = RIGHT$(W$, LEN(W$) - 1): PRINT "You're behind $"; W$: PRINT: GOTO 90
3350 REM
3360 PRINT: PRINT: PRINT "So you want to cash in your chips, I see!!!"
3370 IF W > 0 THEN 3410
3380 PRINT "You didn't win any money, but I'm willing to call it even!"
3390 GOTO 3440
3410 W$ = STR$(W): W$ = RIGHT$(W$, LEN(W$) - 1): PRINT "You won exactly $"; W$; "!!  Not bad!!!"
3440 END

