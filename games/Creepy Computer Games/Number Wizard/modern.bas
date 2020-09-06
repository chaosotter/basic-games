5 RANDOMIZE TIMER
6 GOSUB 5000
10 PRINT "THE NUMBER WIZARD"
20 DIM A(10)
30 LET T = 8
40 FOR I = 1 TO 10
50 LET A(I) = 1
60 NEXT I
70 CLS
80 LET A(1) = 1
90 LET V = 0
100 LOCATE 3, 10: COLOR 13: FOR I = 2 TO 10
110 IF A(I) <> 0 THEN GOTO 150
120 PRINT " ";
130 LET V = V + 1
140 GOTO 160
150 PRINT I - 1;
160 NEXT I
170 PRINT: COLOR 15
180 IF V = 9 THEN GOTO 370
190 PRINT: PRINT "You have"; T; "turns left."
200 LET C = INT(RND(1) * 6 + 1)
210 LET B = INT(RND(1) * 6 + 1)
220 PRINT "The dice throw is"; C; "and"; STR$(B); ".": PRINT
230 COLOR 10: PRINT "What are your numbers";
240 IF B = C THEN LET T = T + 2
250 LET T = T - 1
260 IF T < 0 THEN GOTO 350
270 INPUT N, M: COLOR 15
290 IF M > 9 OR N > 9 THEN PRINT "Too big -- try again."
300 IF M > 9 OR N > 9 THEN GOTO 230
310 IF M + N <> B + C OR A(N + 1) = 0 OR A(M + 1) = 0 THEN GOTO 70
320 LET A(M + 1) = 0
330 LET A(N + 1) = 0
340 GOTO 70
350 COLOR 15: PRINT: PRINT "-- Wait!  The wizard won!"
360 END
370 COLOR 15: PRINT: PRINT "You won!"
380 END
5000 CLS: COLOR 12
5010 PRINT TAB(33); "Number Wizard": PRINT: PRINT
5020 COLOR 14: PRINT
5030 PRINT "This is the game the Number Wizard plays with all his visitors.  He conjures"
5040 PRINT "the numbers 1 to 9 in the air and then rolls two dice.  You must give him two"
5050 PRINT "numbers which both appear in the air and, when added together, give the same"
5060 PRINT "total as the two numbers on the dice.  Once you have used a number, its image"
5070 PRINT "disappears from the air and you cannot use it again.  You win if all the"
5080 PRINT "numbers have disappeared before all your turns are used up.  (You get an extra"
5090 PRINT "turn for every double the Wizard throws.)  You are allowed to use zero as many"
5100 PRINT "times as you like as one of your numbers.  If you can't go, move on to the next"
5110 PRINT "turn by using two zeros.  See how many times you can beat the Wizard!"
5120 PRINT
5130 COLOR 13: PRINT "(Press any key.)"
5140 IF INKEY$ = "" THEN 5140
5150 CLS: COLOR 15: RETURN

