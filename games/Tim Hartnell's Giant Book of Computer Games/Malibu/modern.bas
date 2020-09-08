5 DIM H(3), C(3)
10 REM MALIBU
20 GOSUB 680
30 REM *****************************
40 REM *** THE MAIN GAME ROUTINE ***
50 FOR T = 1 TO 5
60 CLS: COLOR 15
70 PRINT: PRINT: PRINT "This is round"; STR$(T); "."
80 IF CS * HS <> O THEN COLOR 11: PRINT A$; ":"; HS;: COLOR 12: PRINT " Me:"; CS: COLOR 15
90 GOSUB 840
100 PRINT: PRINT "First I'll roll three dice for myself... stand by..."
120 GOSUB 840
130 FOR Z = l TO 3: C(Z) = 0: H(Z) = 0: NEXT Z
140 GOSUB 850
150 PRINT: PRINT "And now it's time to roll for you."
160 GOSUB 850
170 PRINT: PRINT "I rolled ";: COLOR 13: PRINT C(1); C(2); C(3): COLOR 15
180 PRINT: PRINT "You rolled ";: COLOR 13: PRINT H(1); H(2); H(3): COLOR 15
190 REM *** ASSESS RESULT OF ROLLS ***
195 COLOR 14
200 HT = H(1) + H(2) + H(3)
210 CT = C(1) + C(2) + C(3)
220 IF (C(1) = C(2) OR C(2) = C(3) OR C(1) = C(3)) AND CT = 13 THEN PRINT "That's Sough for me!": CS = CS + 10: HS = HS - 10
230 IF (H(1) = H(2) OR H(2) = H(3) OR H(1) = H(3)) AND HT = 13 THEN PRINT "That's Sough for you!": HS = HS + 10: CS = CS - 10
240 IF HT = 15 OR HT = 6 THEN HS = HS + 4: CS = CS - 4: PRINT "**Easy Rider for you**"
250 IF CT = 15 OR CT = 6 THEN CS = CS + 4: HS = HS - 4: PRINT "**Easy Rider for me**"
260 IF CT = 9 OR CT = 12 THEN CS = CS + 3: HS = HS - 3: PRINT ">> I crack a Straight Road <<"
270 IF HT = 9 OR HT = 12 THEN BS = HS + 3: CS = CS - 3: PRINT ">> You crack a Straight Road <<"
280 IF C(1) = C(2) AND C(2) = C(3) THEN PRINT "A Triple Crown for me!": CS = CS + 5: HS = HS - 5: GOTO 300
290 IF C(1) = C(2) OR C(2) = C(3) OR C(1) = C(3) THEN PRINT "$$ Two of a Kind for me! $$": CS = CS + 3: HS = HS - 3
300 IF H(1) = H(2) AND H(2) = H(3) THEN PRINT "A Triple Crown for me!": HS = HS + 5: CS = CS - 5: GOTO 320
310 IF H(1) = H(2) OR H(2) = H(3) OR H(1) = H(3) THEN PRINT "$$ Two of a Kind for you! $$": HS = HS + 3: CS = CS - 3
320 IF HT = 13 THEN PRINT "For you... Lucky Joe!": HS = HS + 6: CS = CS - 6
330 IF CT = 13 THEN PRINT "For you... Lucky Joe!": CS = CS + 6: HS = HS - 6
340 IF HT = 3 THEN PRINT "Low and Mean... for you!": HS = HS + 7: CS = CS - 7
350 IF CT = 3 THEN PRINT "Low and Mean... for me!": CS = CS + 7: HS = HS - 7
360 IF HT = 18 THEN PRINT "High Roller for the human...": HS = HS + 12: CS = CS - 12
370 IF CT = 18 THEN PRINT "High Roller for the machine...": CS = CS + 12: HS = HS - 12
380 IF HT = 7 THEN PRINT "You tripped a Dreaded Seven!": HS = HS - 2: CS = CS + 2
390 IF CT = 7 THEN PRINT "I tripped a Dreaded Seven!": CS = CS - 2: HS = HS + 2
395 COLOR 15
400 REM *** PRINT OUT SCORES ***
410 PRINT: PRINT
420 IF T < 5 THEN PRINT ">>> After round"; T; "the scores are:"
425 IF T < 5 THEN PRINT ">>> ";: COLOR 11: PRINT A$; ":"; HS;: COLOR 12: PRINT " Computer:"; CS: COLOR 15
430 GOSUB 840: GOSUB 840
440 REM ** CHECK BOTH STILL IN GAME **
450 IF CS < 1 OR HS < 1 THEN T = 5
460 NEXT T
470 REM *** RESULT OF FIVE ROUNDS ***
480 PRINT: PRINT "Well,"; A$; ", that's the end of our little game of Malibu..."
500 PRINT: COLOR 11: PRINT A$; "'s final is score is"; STR$(HS); "."
510 COLOR 12: PRINT "And mine is"; STR$(CS); ".": COLOR 15
520 GOSUB 840
530 PRINT
540 IF CS > HS THEN PRINT "So I'm the winner!"
550 IF HS > CS THEN PRINT "So "; A$; " takes the winner's trophy!"
560 IF CS = HS THEN PRINT "It looks like a dead heat..."
570 GOSUB 840: GOSUB 840
580 PRINT: COLOR 10: PRINT "Do you want another game, "; A$; " (Y/N)?"
590 PRINT: COLOR 15
600 F$ = INKEY$
610 IF F$ <> "y" AND F$ <> "Y" AND F$ <> "n" AND F$ <> "N" THEN 600
620 IF F$ = "N" OR F$ = "n" THEN PRINT "Okay, thanks for the game, "; A$; ".  See you again sometime.": END
630 PRINT "Okay, "; A$; ", stand by..."
640 GOSUB 840
650 GOSUB 770
660 GOTO 50
670 REM *********************
680 REM *****INITIALISE******
690 RANDOMIZE TIMER
700 CLS: COLOR 15
720 PRINT: PRINT: PRINT "Welcome to the Game of Malibu"
730 PRINT "Which is played with three dice..."
740 GOSUB 840
750 PRINT: COLOR 10: INPUT "What is your name"; A$: COLOR 15
760 GOSUB 840
770 CLS: PRINT
780 HS = 50: CS = 50
790 PRINT "Okay, "; A$; ", press the space bar when you're ready to play."
810 IF INKEY$ = "" THEN 810
820 RETURN
830 REM *** DELAY SUBROUTINE ***
840 XX = 1.0: GOSUB 2000
845 RETURN
850 REM *** REM DICE ROLL ***
860 FOR Z = 1 TO 3
870 PRINT "...Rolling die"; Z;
880 XX = 0.5: GOSUB 2000
890 K = INT(RND(1) * 6) + 1
900 COLOR 13: PRINT "which came up"; K: COLOR 15
920 IF C(Z) = 0 THEN C(Z) = K ELSE H(Z) = K
930 NEXT Z
940 GOSUB 840
945 COLOR 9: PRINT STRING$(79, 196): COLOR 15
950 RETURN
2000 ST = TIMER + XX
2010 IF TIMER < ST THEN 2010
2020 RETURN

