10 REM Under'n'over
20 RANDOMIZE TIMER
30 CLS: COLOR 15
40 M = 30
50 GOSUB 450
60 GOSUB 470
70 PRINT "Okay, punter, 'tis time to place your bet..."
90 GOSUB 470
100 PRINT "Enter ";: COLOR 11: PRINT "A";: COLOR 15: PRINT " to bet under 7"
110 PRINT "      ";: COLOR 11: PRINT "B";: COLOR 15: PRINT " to bet on 7, or"
120 PRINT "      ";: COLOR 11: PRINT "C";: COLOR 15: PRINT " to bet over 7"
130 A$ = INKEY$
140 IF A$ <> "A" AND A$ <> "a" AND A$ <> "B" AND A$ <> "b" AND A$ <> "C" AND A$ <> "c" THEN 130
150 PRINT: PRINT "The odds are:"
160 COLOR 11: PRINT "    A";: COLOR 15: PRINT " - pays even"
170 COLOR 11: PRINT "    B";: COLOR 15: PRINT " - pays 4 to 1"
180 COLOR 11: PRINT "    C";: COLOR 15: PRINT " - pays even"
190 GOSUB 470
200 COLOR 10: INPUT "Now how much would you like to bet"; A: COLOR 15
210 GOSUB 470
220 IF A > M THEN PRINT "You haven't got that much!": PRINT: GOTO 200
230 B = INT(RND * 6) + 1
240 PRINT , "Die one came up";: COLOR 13: PRINT B;: COLOR 15
250 GOSUB 470
260 C = INT(RND * 6) + 1
270 PRINT , "Die two came up";: COLOR 13: PRINT C;: COLOR 15
280 D = C + B
290 GOSUB 470
300 PRINT , "So the total is";: COLOR 13: PRINT D: COLOR 15
310 W = -A
320 IF D = 7 AND (A$ = "B" OR A$ = "b") THEN W = 4 * A
330 IF D < 7 AND (A$ = "A" OR A$ = "a") THEN W = A
340 IF D > 7 AND (A$ = "C" OR A$ = "c") THEN W = A
350 M = M + W
360 GOSUB 470
365 W$ = STR$(ABS(W)): W$ = RIGHT$(W$, LEN(W$) - 1)
370 IF W > 0 THEN PRINT "You've just won $"; W$; "."
380 IF W < 0 THEN PRINT "And so you lose $"; W$; "."
390 GOSUB 470
400 GOSUB 450
410 GOSUB 470
420 IF M < 1 THEN PRINT "You're flat broke, buddy, so I gotta close the casino.": PRINT: PRINT "There's no room for deadbeats in my joint!": END
430 CLS
440 GOTO 50
450 M$ = STR$(M): M$ = RIGHT$(M$, LEN(M$) - 1)
455 PRINT: COLOR 12: PRINT "You now have $"; M$; ".": COLOR 15
460 RETURN
470 XX = 0.8: GOSUB 1000
480 PRINT
490 RETURN
1000 ST = TIMER + XX
1010 IF TIMER < ST THEN 1010
1020 RETURN

