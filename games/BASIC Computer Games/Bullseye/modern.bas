2 CLS: COLOR 12
5 PRINT TAB(36); "Bullseye"
10 PRINT TAB(31); "Creative Computing"
15 PRINT TAB(29); "Morristown, New Jersey"
20 PRINT: PRINT: PRINT: RANDOMIZE TIMER: COLOR 14
30 PRINT "In this game, up to 20 players throw darts at a target with 10, 20, 30, and 40"
40 PRINT "point zones.  The objective is to get 200 points."
50 PRINT: COLOR 15
60 PRINT "  Throw", "Description", , "Probable Score": COLOR 11
70 PRINT "   1", "Fast overarm", , "Bullseye or complete miss"
80 PRINT "   2", "Controlled overarm", "10, 20 or 30 points"
90 PRINT "   3", "Underarm", , "Anything": PRINT: COLOR 15
100 DIM A$(20), S(20), W(10): M = 0: R = 0: FOR I = 1 TO 20: S(I) = 0: NEXT I
110 COLOR 10: INPUT "How many players (1-20)"; N: COLOR 15: PRINT
120 FOR I = 1 TO N
125 I$ = STR$(I): I$ = RIGHT$(I$, LEN(I$) - 1)
130 COLOR 10: PRINT "Name of player #"; I$;: INPUT A$(I): COLOR 15
140 NEXT I
150 R = R + 1: PRINT: COLOR 12: PRINT "Round"; R: COLOR 15
160 FOR I = 1 TO N
170 PRINT: COLOR 10: PRINT A$(I); "'s throw (1-3)";: INPUT T: COLOR 15
180 IF T < 0 OR T > 3 THEN PRINT "Input 1, 2, or 3!": GOTO 170
190 ON T GOTO 200, 210, 200
200 P1 = .65: P2 = .55: P3 = .5: P4 = .5: GOTO 230
210 P1 = .99: P2 = .77: P3 = .43: P4 = .01: GOTO 230
220 P1 = .95: P2 = .75: P3 = .45: P4 = .05
230 U = RND(1)
240 IF U >= P1 THEN PRINT "Bullseye!  40 points!": B = 40: GOTO 290
250 IF U >= P2 THEN PRINT "30-point zone!": B = 30: GOTO 290
260 IF U >= P3 THEN PRINT "20-point zone.": B = 20: GOTO 290
270 IF U >= P4 THEN PRINT "Whew!  10 points.": B = 10: GOTO 290
280 PRINT "Missed the target!  Too bad.": B = 0
290 S(I) = S(I) + B: PRINT "Total score:"; S(I): NEXT I
300 FOR I = 1 TO N
310 IF S(I) >= 200 THEN M = M + 1: W(M) = I
320 NEXT I
330 IF M = 0 THEN 150
340 PRINT: PRINT "We have a winner!": PRINT: COLOR 11
350 FOR I = 1 TO M: PRINT A$(W(I)); " scored"; S(W(I)); "points.": NEXT I: COLOR 15
360 PRINT: PRINT "Thanks for the game.": END

