5 RANDOMIZE TIMER
6 GOSUB 5000
10 PRINT "GHOST GUZZLER"
20 LET S = 0
30 LET Y = 0
40 LET L = 3
50 LET N = INT(RND(1) * 10)
60 LET I = 1
70 CLS: ST = TIMER
80 LOCATE 1, 1: COLOR 13: PRINT "Lives: ";: FOR J = 1 TO L
90 PRINT "/";
100 NEXT J: COLOR 15
110 LOCATE 10, 1
120 PRINT TAB(I + 28); N;: COLOR 11: PRINT TAB(45); ":"; Y: COLOR 15
130 LET B$ = INKEY$
140 IF B$ = "X" OR B$ = "x" THEN GOTO 220
150 IF B$ = "M" OR B$ = "m" THEN LET Y = Y + 1
160 IF Y = 10 THEN LET Y = 0
165 IF TIMER <= ST + 1 THEN 130
170 LET I = I + 1
180 IF I < 10 THEN GOTO 70
190 LET L = L - 1
200 IF L > 0 THEN GOTO 50
210 GOTO 270
220 IF Y <> N THEN GOTO 170
230 PRINT "GOT IT"
240 PRINT "******"
250 LET S = S + (18 - I)
260 GOTO 50
270 CLS
280 PRINT "Your ghost guzzling score is"; STR$(S); "."
300 PRINT
310 COLOR 10: PRINT "Another go (Y/N)";
320 INPUT A$: COLOR 15
330 IF LEFT$(A$, 1) = "Y" OR LEFT$(A$, 1) = "y" THEN CLS: GOTO 10
340 END
5000 CLS: COLOR 12
5010 PRINT TAB(33); "Ghost Guzzler": PRINT: PRINT
5020 COLOR 14: PRINT
5030 PRINT "The ghosts in this game are numbers rushing across the screen.  To catch them,"
5040 PRINT "you activate your ghost guzzler by pressing key X, but it only works when the"
5050 PRINT "number on it is the same as that of the attacking ghost.  You can increase the"
5060 PRINT "guzzler's number by pressing key M (when it gets to 9, it goes back to 0"
5070 PRINT "again).  If you fail to guzzle a ghost, it will snatch away one of your lives"
5080 PRINT "(shown as / at the top left of the screen).  See how good you are at guzzling"
5090 PRINT "ghosts."
5100 PRINT
5110 COLOR 13: PRINT "(Press any key.)"
5120 IF INKEY$ = "" THEN 5120
5130 CLS: COLOR 15: RETURN

