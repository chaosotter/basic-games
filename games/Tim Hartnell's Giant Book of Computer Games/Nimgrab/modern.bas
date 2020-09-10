10 REM Nimgrab
20 CLS: COLOR 15
30 PRINT "Press 'S' to start the game..."
40 N = 0
50 N = N + 1: IF INKEY$ = "" THEN 50
60 RANDOMIZE N
70 CLS
80 M = 0: E = 0: Z = INT(RND * 8) + 16
90 IF 2 * INT(Z / 2) = Z THEN Z = Z + 1
100 H = 3 + INT(RND * 2)
110 PRINT "The maximum you can grab is"; STR$(H); "."
120 GOSUB 320
130 IF E > 0 THEN PRINT "You took"; STR$(E); ", and I took"; STR$(Q); "."
140 COLOR 13: FOR K = 1 TO Z
150 PRINT K;: IF RND > .8 THEN PRINT
160 NEXT K: COLOR 15
170 GOSUB 320
175 H$ = STR$(H): H$ = RIGHT$(H$, LEN(H$) - 1)
180 COLOR 10: PRINT "How many will you grab (1-"; H$; ")?": COLOR 15
190 E = VAL(INKEY$)
200 IF E < 1 OR E > H OR E > Z THEN 190
210 PRINT: PRINT "So you want to grab"; STR$(E); "..."
220 Z = Z - E
230 GOSUB 320
240 IF Z < 1 THEN PRINT "You grabbed the last one, so I win!": END
250 Q = Z - 1 - INT((Z - 1) / (H + 1)) * (H + 1) - INT(RND * 2) + INT(RND * 2)
260 IF Q < 1 OR Q > H THEN 250
270 GOSUB 320
280 Z = Z - Q
290 IF Z < 1 THEN PRINT "I grabbed the last one, so you win!": END
300 GOSUB 320
310 GOTO 110
320 PRINT
330 COLOR 9: PRINT STRING$(79, 247): COLOR 15
340 PRINT
350 XX = 0.3: GOSUB 1000
360 RETURN
1000 ST = TIMER + XX
1010 IF TIMER < ST THEN 1010
1020 RETURN

