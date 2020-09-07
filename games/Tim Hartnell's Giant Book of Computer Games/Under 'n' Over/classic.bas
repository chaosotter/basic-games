10 REM Under'n'over
20 RANDOMIZE VAL(RIGHT$(TIME$, 2))
30 CLS
40 M = 30
50 GOSUB 450
60 GOSUB 470
70 PRINT "OK, punter, 'tis time to"
80 PRINT "place your bet.........."
90 GOSUB 470
100 PRINT "Enter 'A' to bet under 7"
110 PRINT "      'B' to bet on 7, or"
120 PRINT "      'C' to bet over 7"
130 A$ = INKEY$
140 IF A$ <> "A" AND A$ <> "a" AND A$ <> "B" AND A$ <> "b" AND A$ <> "C" AND A$ <> "c" THEN 130
150 PRINT: PRINT "The odds are:"
160 PRINT "  A - pays even"
170 PRINT "  B - pays 4 to 1"
180 PRINT "  C - pays even"
190 GOSUB 470
200 INPUT "Now how much would you like to bet"; A
210 GOSUB 470
220 IF A > M THEN PRINT "You haven't got that muchl": PRINT: GOTO 200
230 B = INT(RND * 6) + 1
240 PRINT , "Die one came up"; B
250 GOSUB 470
260 C = INT(RND * 6) + 1
270 PRINT , "Die two came up"; C
280 D = C + B
290 GOSUB 470
300 PRINT , "So the total is"; D
310 W = -A
320 IF D = 7 AND (A$ = "B" OR A$ = "b") THEN W = 4 * A
330 IF D < 7 AND (A$ = "A" OR A$ = "a") THEN W = A
340 IF D > 7 AND (A$ = "C" OR A$ = "c") THEN W = A
350 M = M + W
360 GOSUB 470
370 IF W > 0 THEN PRINT "You've just won $"; W
380 IF W < 0 THEN PRINT "And so you lose $"; (W * -1)
390 GOSUB 470
400 GOSUB 450
410 GOSUB 470
420 IF M < 1 THEN PRINT "You're flat broke, buddy": PRINT "so I gotta close the casino": PRINT: PRINT "There's no room for deadbeats in my joint": END
430 PRINT
440 GOTO 50
450 PRINT: PRINT "You now have $"; M
460 RETURN
470 FOR P = 1 TO 1000: NEXT P
480 PRINT: PRINT
490 RETURN

