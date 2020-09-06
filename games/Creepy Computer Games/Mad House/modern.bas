5 RANDOMIZE TIMER
6 GOSUB 5000
10 DIM P(3)
20 DIM S(3)
30 CLS
40 PRINT "MAD HOUSE"
50 LET L$ = ""
60 LET W = 31
70 FOR I = 1 TO W
80 LET L$ = L$ + "*"
90 NEXT I
100 LET CT = 240
110 LET S(1) = 1
120 LET S(3) = -1
130 FOR I = 1 TO 3
140 LET P(I) = INT(RND(1) * (W - 4) + 1)
150 NEXT I
160 CLS
170 COLOR 11: FOR I = 5 TO 15 STEP 5
180 LOCATE I + 1, 24: PRINT L$
190 LOCATE I + 1, P(I / 5) + 24: PRINT "> <"
200 NEXT I: COLOR 15
210 LOCATE 1, 1: COLOR 13: PRINT "Time Left: "; CT; "  ": COLOR 15
220 IF CT < 0 THEN GOTO 450
230 IF P(1) = P(2) AND P(2) = P(3) THEN GOTO 390
235 ST = TIMER
240 LET Z$ = INKEY$
250 IF Z$ = "" THEN 295
260 IF Z$ = "X" OR Z$ = "x" THEN LET S(1) = -1: GOTO 300
270 IF Z$ = "C" OR Z$ = "c" THEN LET S(1) = 1: GOTO 300
280 IF Z$ = "N" OR Z$ = "n" THEN LET S(3) = -1: GOTO 300
290 IF Z$ = "M" OR Z$ = "m" THEN LET S(3) = 1: GOTO 300
295 IF TIMER <= ST THEN 240
300 IF CT / 25 = INT(CT / 25) THEN LET P(2) = P(2) + INT(RND(1) * 20) - 10
310 LET CT = CT - 1
320 LET P(1) = P(1) + S(1)
330 LET P(3) = P(3) + S(3)
340 FOR I = 1 TO 3
350 IF P(I) < 1 THEN LET P(I) = 1
360 IF P(I) > (W - 4) THEN LET P(I) = W - 4
370 NEXT I
380 GOTO 170
390 LET L = P(1) + 1
400 FOR I = 1 TO 18
410 LOCATE I + 1, L + 24: COLOR 12: PRINT CHR$(186);: COLOR 15
420 NEXT I
430 PRINT: PRINT "You are free!": GOTO 6000
440 END
450 PRINT: PRINT "Too late!  The footsteps have stopped.  ARGHHH!!!": GOTO 6000
470 END
5000 CLS: COLOR 12
5010 PRINT TAB(36); "Mad House": PRINT: PRINT
5020 COLOR 14: PRINT
5030 PRINT "You're trapped in a weird house where everything moves, including the walls."
5040 PRINT "If the doorways would line up, even for a moment, you could make a dash for"
5050 PRINT "freedom.  You've found a console which appears to control some of the movements"
5060 PRINT "in the house.  Keys X and C make the doorway nearest to you (top of the screen)"
5070 PRINT "change direction.  Keys N and M have the same effect on the doorway furthest"
5080 PRINT "from you.  There doesn't seem to be any way of controlling the centre doorway."
5090 PRINT
5100 PRINT "As you frantically wrestle with the knobs on the console, you can hear foot-"
5110 PRINT "steps pounding down the corridor behind you.  The number at the top left of the"
5120 PRINT "screen shows their progress towards you.  If you can't escape before the"
5130 PRINT "phantom footsteps catch up with you..."
5140 PRINT
5150 PRINT "...aggghhhhh!"
5160 PRINT
5170 COLOR 13: PRINT "(Press any key.)"
5180 IF INKEY$ = "" THEN 5180
5190 CLS: COLOR 15: RETURN
6000 COLOR 10: PRINT "Play again (Y/N)";
6010 INPUT Z$: COLOR 15
6020 IF LEFT$(Z$, 1) = "Y" OR LEFT$(Z$, 1) = "y" THEN GOTO 30
6030 END

