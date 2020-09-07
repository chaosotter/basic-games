10 REM One-and-Twenty
20 HS = 0: CS = 0
30 H = 0: C = 0: N = 0
40 PRINT
50 PRINT "Press 'R' to roll, 'S' to stand"
60 A$ = INKEY$
70 N = N + 1
80 IF A$ <> "s" AND A$ <> "S" AND A$ <> "r" AND A$ <> "R" THEN 60
90 IF A$ = "s" OR A$ = "S" THEN CLS: PRINT "Your total is"; H: GOTO 180
100 RANDOMIZE (N + H)
110 GOSUB 430
120 R = INT(RND * 6) + 1
130 PRINT: PRINT "You rolled a"; R
140 H = H + R
150 PRINT "so your total is"; H
160 GOSUB 430
170 PRINT: GOTO 50
180 IF C > H AND C < 22 OR C > 21 OR H > 21 OR H = 21 AND C = 21 THEN 260
190 R = INT(RND * 6) + 1
200 GOSUB 430
210 PRINT: PRINT "I rolled a"; R
220 C = C + R
230 PRINT "so my total is"; C
240 GOSUB 430
250 GOTO 180
260 IF H = C OR H > 21 AND C > 21 THEN 320
270 GOSUB 510
280 IF (C < H OR H > 21) AND C < 22 THEN PRINT , "I";: CS = CS + 1
290 IF (C < H OR C > 21) AND H < 22 THEN PRINT , "You";: HS = HS + 1
300 PRINT " win!!"
310 GOTO 330
320 PRINT "That round is a dead heat...no score"
330 GOSUB 430
340 GOSUB 510
350 PRINT "After that round, the game score is"
360 GOSUB 430
370 PRINT , "You:"; HS; ", and me"; CS
380 GOSUB 510
390 IF CS + HS = 5 THEN GOTO 450
400 PRINT: PRINT "Stand by for the next round..."
410 GOSUB 430: GOSUB 430
420 PRINT: GOTO 30
430 FOR O = 1 TO 900: NEXT O
440 RETURN
450 PRINT: PRINT "That's the end of the game"
460 PRINT: PRINT "Final scores:"
470 PRINT , "You:"; HS
480 PRINT , " Me:"; CS: PRINT
490 IF CS > HS THEN PRINT "And I defeated you, humanoid!": END
500 PRINT "And remarkably, a mere human beat the machine!": END
510 PRINT: PRINT "************************************": PRINT
520 RETURN

