10 REM Snakes Eyes
20 CLS
30 H = 0: CZ = 0
40 HS = 0: CS = 0
50 PRINT "Please stand by..."
60 GOSUB 700
70 PRINT: PRINT
80 PRINT "Your total is"; HS: PRINT
90 GOSUB 710
100 PRINT "Press 'R' to roll"
110 PRINT "'Q' to quit"
120 N = 0
130 W$ = INKEY$
140 N = N + 1
150 IF W$ <> "q" AND W$ <> "Q" AND W$ <> "r" AND W$ <> "R" THEN RANDOMIZE N: GOTO 130
160 IF W$ = "q" OR W$ = "Q" THEN 220
170 GOSUB 370
180 IF Z = 7 THEN 350
190 HS = HS + Z
200 PRINT: PRINT "Your total is"; HS
210 GOTO 60
220 PRINT: PRINT: PRINT "Stand by"
230 GOSUB 700
240 GOSUB 370
250 IF Z = 7 THEN 330
260 CS = CS + Z
270 PRINT: PRINT "My total is"; CS
280 PRINT "Your total is"; HS
290 IF CS < HS THEN 220
300 IF CS = HS THEN PRINT "It's a dead heat!"
310 IF CS > HS THEN 350
320 GOTO 510
330 PRINT: PRINT "You win!": H = H + 1
340 GOTO 510
350 PRINT: PRINT "I win!": CZ = CZ + 1
360 GOTO 510
370 REM Roll the dice
380 PRINT
390 FOR Q = 1 TO 20
400 X = INT(RND * 6) + 1
410 Y = INT(RND * 6) + 1
420 PRINT: PRINT "Die one:"; X; "   Die two:"; Y
430 FOR P = 1 TO 3 * Q: NEXT P
440 NEXT Q
450 PRINT
460 GOSUB 710
470 PRINT "Die one:"; X; "   Die two:"; Y
489 Z = X + Y
490 GOSUB 700
500 RETURN
510 PRINT: PRINT "The score is:"
520 PRINT , "You:"; H
530 PRINT , " He:"; CZ
540 IF CZ + H = 9 THEN 580
550 GOSUB 710
560 IF H > CZ THEN PRINT "You are leading!"
570 IF CZ > H THEN PRINT "And I'm in the lead..."
580 GOSUB 700
590 PRINT
600 IF CZ + H = 9 THEN 620
610 GOTO 40
620 PRINT: PRINT: PRINT
630 PRINT "Well, buddy, that's the end"
640 PRINT "    of the game..."
650 PRINT: PRINT: PRINT
660 PRINT "Your final score was"; H
670 PRINT "and mine was"; CZ: PRINT
680 IF H < CZ THEN PRINT "I'm the winner!!": END
690 PRINT "You're the winner!!": END
700 FOR P = 1 TO 1000: NEXT P: RETURN
710 PRINT "-------------------------": PRINT: RETURN

