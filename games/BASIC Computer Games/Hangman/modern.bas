5 CLS: COLOR 12
10 PRINT TAB(36); "Hangman"
20 PRINT TAB(31); "Creative Computing": PRINT TAB(29); "Morristown, New Jersey"
25 PRINT: PRINT: PRINT: RANDOMIZE TIMER: COLOR 15
30 DIM P$(12, 12), L$(20), D$(20), N$(26), U(50)
40 C = 1: N = 50
50 FOR I = 1 TO 20: D$(I) = "-": NEXT I: M = 0
60 FOR I = 1 TO 26: N$(I) = "": NEXT I
70 FOR I = 1 TO 12: FOR J = 1 TO 12: P$(I, J) = " ": NEXT J: NEXT I
80 FOR I = 1 TO 12: P$(I, 1) = CHR$(178): NEXT I
90 FOR I = 1 TO 7: P$(1, I) = CHR$(178): NEXT: P$(2, 7) = CHR$(178)
95 IF C < N THEN 100
97 PRINT "You did all the words!": END
100 Q = INT(N * RND(1)) + 1
110 IF U(Q) = 1 THEN 100
115 U(Q) = 1: C = C + 1: RESTORE: T1 = 0
150 FOR I = 1 TO Q: READ A$: NEXT I
160 L = LEN(A$): FOR I = 1 TO LEN(A$): L$(I) = MID$(A$, I, 1): NEXT I
170 PRINT "Here are the letters you used:"
180 COLOR 13: PRINT "    ";: FOR I = 1 TO 26: PRINT N$(I);: IF N$(I + 1) = "" THEN 200
190 PRINT ",";: NEXT I
200 PRINT: PRINT: PRINT "    ";: FOR I = 1 TO L
202 IF D$(I) = "-" THEN COLOR 9 ELSE COLOR 11
205 PRINT D$(I);: NEXT I: PRINT: PRINT: COLOR 15
210 COLOR 10: INPUT "What is your guess"; G$: COLOR 15: R = 0
215 IF G$ >= "a" AND G$ <= "z" THEN G$ = CHR$(ASC(G$) - 32)
220 FOR I = 1 TO 26: IF N$(I) = "" THEN 250
230 IF G$ = N$(I) THEN PRINT "You guessed that letter before!": GOTO 170
240 NEXT I: PRINT "Program error.  Run again.": END
250 N$(I) = G$: T1 = T1 + 1
260 FOR I = 1 TO L: IF L$(I) = G$ THEN 280
270 NEXT I: IF R = 0 THEN 290
275 GOTO 300
280 D$(I) = G$: R = R + 1: GOTO 270
290 M = M + 1: GOTO 400
300 FOR I = 1 TO L: IF D$(I) = "-" THEN 320
310 NEXT I: GOTO 390
320 PRINT: PRINT "    ";: FOR I = 1 TO L
322 IF D$(I) = "-" THEN COLOR 9 ELSE COLOR 11
325 PRINT D$(I);: NEXT I: PRINT: PRINT: COLOR 15
330 COLOR 10: INPUT "What is your guess for the word"; B$: COLOR 15
335 BB$ = "": FOR X = 1 TO LEN(B$): CH$ = MID$(B$, X, 1): IF CH$ >= "a" AND CH$ <= "z" THEN BB$ = BB$ + CHR$(ASC(CH$) - 32) ELSE BB$ = BB$ + CH$
336 NEXT X: B$ = BB$
340 IF A$ = B$ THEN 360
350 PRINT "That's not the word.  Try getting more letters.": PRINT: GOTO 170
360 PRINT "Right!  It took you"; T1; "guesses!"
370 COLOR 10: PRINT: INPUT "Want another word (Y/N)"; W$: COLOR 15: IF LEFT$(W$, 1) = "Y" OR LEFT$(W$, 1) = "y" THEN 50
380 PRINT: PRINT "It's been fun!  Bye for now.": GOTO 999
390 PRINT "You found the word!": GOTO 370
400 PRINT: PRINT: PRINT "Sorry, that letter isn't in the word."
410 ON M GOTO 415, 420, 425, 430, 435, 440, 445, 450, 455, 460
415 PRINT "First, we draw a head.": GOTO 470
420 PRINT "Now we draw a body.": GOTO 470
425 PRINT "Next we draw an arm.": GOTO 470
430 PRINT "This time it's the other arm.": GOTO 470
435 PRINT "Now, let's draw the right leg.": GOTO 470
440 PRINT "This time we draw the left leg.": GOTO 470
445 PRINT "Now we put up a hand.": GOTO 470
450 PRINT "Next the other hand.": GOTO 470
455 PRINT "Now we draw one foot.": GOTO 470
460 PRINT "Here's the other foot -- you're hung!"
470 ON M GOTO 480, 490, 500, 510, 520, 530, 540, 550, 560, 570
480 P$(3, 6) = "-": P$(3, 7) = "-": P$(3, 8) = "-": P$(4, 5) = "(": P$(4, 6) = CHR$(167)
481 P$(4, 8) = CHR$(167): P$(4, 9) = ")": P$(5, 6) = "-": P$(5, 7) = "-": P$(5, 8) = "-": GOTO 580
490 FOR I = 6 TO 9: P$(I, 7) = CHR$(177): NEXT I: GOTO 580
500 FOR I = 4 TO 7: P$(I, I - 1) = "\": NEXT I: GOTO 580
510 P$(4, 11) = "/": P$(5, 10) = "/": P$(6, 9) = "/": P$(7, 8) = "/": GOTO 580
520 P$(10, 6) = "/": P$(11, 5) = "/": GOTO 580
530 P$(10, 8) = "\": P$(11, 9) = "\": GOTO 580
540 P$(3, 11) = "\": GOTO 580
550 P$(3, 3) = "/": GOTO 580
560 P$(12, 10) = "\": P$(12, 11) = "-": GOTO 580
570 P$(12, 3) = "-": P$(12, 4) = "/"
580 COLOR 14: FOR I = 1 TO 12: FOR J = 1 TO 12: PRINT P$(I, J);: NEXT J
590 PRINT: NEXT I: COLOR 15: PRINT: PRINT: IF M <> 10 THEN 170
600 PRINT "Sorry, you lose.  The word was ";: COLOR 13: PRINT A$: COLOR 15: PRINT "."
610 GOTO 370
700 DATA "GUM","SIN","FOR","CRY","LUG","BYE","FLY"
710 DATA "UGLY","EACH","FROM","WORK","TALK","WITH","SELF"
720 DATA "PIZZA","THING","FEIGN","FIEND","ELBOW","FAULT","DIRTY"
730 DATA "BUDGET","SPIRIT","QUAINT","MAIDEN","ESCORT","PICKAX"
740 DATA "EXAMPLE","TENSION","QUININE","KIDNEY","REPLICA","SLEEPER"
750 DATA "TRIANGLE","KANGAROO","MAHOGANY","SERGEANT","SEQUENCE"
760 DATA "MOUSTACHE","DANGEROUS","SCIENTIST","DIFFERENT","QUIESCENT"
770 DATA "MAGISTRATE","ERRONEOUSLY","LOUDSPEAKER","PHYTOTOXIC"
780 DATA "MATRIMONIAL","PARASYMPATHOMIMETIC","THIGMOTROPISM"
990 PRINT "Bye now."
999 END

