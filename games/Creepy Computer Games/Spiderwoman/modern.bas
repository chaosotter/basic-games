5 RANDOMIZE TIMER
6 GOSUB 5000
10 LET G = 0
20 CLS
30 LET T = INT(RND(1) * 26 + 65)
40 LET T$ = CHR$(T): T1$ = CHR$(ASC(T$) + 32)
50 PRINT "Spiderwoman has chosen!"
70 PRINT
80 COLOR 10: PRINT "Try a word (4-8 letters)";
110 INPUT W$: COLOR 15
120 LET G = G + 1
130 LET L = LEN(W$)
140 IF L < 4 OR L > 8 THEN GOTO 70
150 LET F = 0
160 FOR I = 1 TO L
170 LET A$ = MID$(W$, I, 1)
180 IF A$ = T$ OR A$ = T1$ THEN LET F = 1
190 NEXT I
200 IF F = 1 THEN GOTO 280
210 PRINT
220 PRINT "It's not in that word."
230 FOR A = 1 TO 30
240 NEXT A
250 IF G > 15 THEN GOTO 400
260 PRINT
270 GOTO 70
280 PRINT "Yes -- it's one of those!"
290 PRINT
300 COLOR 10: PRINT "Do you want to guess (Y/N)";
310 INPUT R$: COLOR 15
320 IF LEFT$(R$, 1) = "N" OR LEFT$(R$, 1) = "n" THEN GOTO 250
330 PRINT
340 COLOR 10: PRINT "What is your guess, then";
350 INPUT G$: COLOR 15
360 IF G$ <> T$ AND G$ <> T1$ THEN GOTO 410
370 PRINT: PRINT "Okay -- you can go (this time)!"
390 END
400 PRINT "You are too late!"
410 PRINT "NO!!!  You are now a fly... and caught in her web..."
420 END
5000 CLS: COLOR 12
5010 PRINT TAB(34); "Spiderwoman": PRINT: PRINT
5020 COLOR 14: PRINT
5030 PRINT "Eek!  It's Spiderwoman!"
5040 PRINT ""
5050 PRINT "You might be lucky, she's in a good mood today.  If you can guess the letter"
5060 PRINT "she is thinking of, quickly enough, she will set you free.  If not, you'll"
5070 PRINT "probably get turned into a fly."
5080 PRINT
5090 PRINT "To find the letter, give Spiderwoman a word and she will tell you whether or"
5100 PRINT "not her letter is in it."
5110 PRINT
5120 COLOR 13: PRINT "(Press any key.)"
5130 IF INKEY$ = "" THEN 5130
5140 CLS: COLOR 15: RETURN

