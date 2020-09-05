1 RANDOMIZE TIMER
2 GOSUB 5000
5 LET F$ = "0"
10 DIM C$(5)
20 LET S = 300
30 LET C$(1) = "** Micros rule! **"
40 LET C$(2) = "*People are stupid*"
50 LET C$(3) = "*A robot for President!"
60 LET C$(4) = "!Computers are great!"
70 LET C$(5) = "*I'm better than you!*"
80 CLS
90 LET N = INT(RND(1) * 9) + 1
100 LOCATE 5, 40: COLOR 15: PRINT N
110 LOCATE 9, 35: COLOR 13: PRINT "Score:"; S: COLOR 15
120 IF RND(1) > 0.5 THEN GOTO 150
130 LOCATE 20, 10: COLOR 11
140 PRINT C$(INT(S / 100) + 1)
150 IF S < 60 THEN PRINT TAB(10); "<There's no hope.>"
160 IF S > 440 THEN PRINT TAB(10); "Urk! Help!!"
165 ST = TIMER
170 FOR I = 1 TO 10
180 LET A$ = INKEY$
190 IF A$ <> "" THEN LET F$ = A$
200 NEXT I
205 IF TIMER <= ST + 1 THEN 170
210 LET S = S - 10
220 IF VAL(F$) <> N THEN GOTO 240
230 LET S = S + 10 + N * 2
240 IF S < 0 THEN GOTO 270
250 IF S > 500 THEN GOTO 290
260 GOTO 80
270 COLOR 15: PRINT: PRINT "You're now my slave!"
280 END
290 COLOR 15: PRINT: PRINT "Okay, you win (this time)."
300 END
5000 CLS: COLOR 12
5010 PRINT TAB(31); "Computer Nightmare": PRINT: PRINT
5020 COLOR 14: PRINT
5030 PRINT "You are a late-night computer addict and you've fallen asleep at the keyboard."
5040 PRINT "Suddenly your computer comes alive and starts hurling numbers and abuse at you."
5050 PRINT "To beat it you have to match the numbers as they appear on the screen.  Your"
5060 PRINT "starting score of 300 is increased if you hit the right number and decreased if"
5070 PRINT "you don't.  If you can get your score up to 500 the computer will give up and"
5080 PRINT "you win, but if it goes down to zero, you will become a slave to your computer."
5090 PRINT "It's a real nightmare!  Can you stay sane?"
5100 PRINT
5110 COLOR 13: PRINT "(Press any key.)"
5120 IF INKEY$ = "" THEN 5120
5130 CLS: COLOR 15: RETURN

