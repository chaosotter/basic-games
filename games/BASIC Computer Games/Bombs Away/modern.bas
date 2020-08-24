1 CLS: COLOR 12
2 PRINT TAB(35); "Bombs Away"
3 PRINT TAB(31); "Creative Computing"
4 PRINT TAB(29); "Morristown, New Jersey"
5 PRINT: PRINT: PRINT: RANDOMIZE TIMER: COLOR 15
8 PRINT "You are a pilot in a World War II bomber."
10 COLOR 10: INPUT "What side: (1) Italy, (2) Allies, (3) Japan, (4) Germany"; A: COLOR 15
20 IF A > 0 AND A < 5 THEN 25
22 PRINT "Try again...": GOTO 10
25 ON A GOTO 30, 110, 200, 220
30 COLOR 10: INPUT "Your target: (1) Albania, (2) Greece, (3) North Africa"; B: COLOR 15
40 IF B > 0 AND B < 4 THEN 45
42 PRINT "Try again...": GOTO 30
45 PRINT: ON B GOTO 50, 80, 90
50 PRINT "Should be easy -- you're flying a Nazi-made plane."
60 GOTO 280
80 PRINT "Be careful!": GOTO 280
90 PRINT "You're going for the oil, eh?": GOTO 280
110 COLOR 10: INPUT "Aircraft: (1) Liberator, (2) B-29, (3) B-17, (4) Lancaster"; G: COLOR 15
120 IF G > 0 AND G < 5 THEN 125
122 PRINT "Try again...": GOTO 110
125 PRINT: ON G GOTO 130, 150, 170, 190
130 PRINT "You've got 2 tons of bombs flying for Ploesti.": GOTO 280
150 PRINT "You're dumping the A-bomb on Hiroshima.": GOTO 280
170 PRINT "You're chasing the Bismarck in the North Sea.": GOTO 280
190 PRINT "You're busting a German heavy water plant in the Ruhr."
195 GOTO 280
200 PRINT "You're flying a kamimaze mission over the U.S.S. Lexington."
205 COLOR 10: INPUT "Your first kamikaze mission (Y/N)"; F$: COLOR 15
207 IF F$ = "N" OR F$ = "n" THEN S = 0: GOTO 358
210 PRINT: IF RND(1) > .65 THEN 325
215 GOTO 380
220 PRINT "A Nazi, eh?  Oh, well."
230 COLOR 10: INPUT "Are you going for (1) Russia, (2) England, or (3) France"; M: COLOR 15: IF M > 0 AND M < 4 THEN 235
232 PRINT "Try again...": GOTO 220
235 PRINT: ON M GOTO 250, 260, 270
250 PRINT "You're nearing Stalingrad.": GOTO 280
260 PRINT "Nearing London.  Be careful, they've got radar.": GOTO 280
270 PRINT "Nearing Versailles.  Duck soup.  They're nearly defenseless."
280 PRINT
285 COLOR 10: INPUT "How many missions have you flown"; D: COLOR 15
290 IF D < 160 THEN 300
292 PRINT "Missions, not miles... 150 missions is high even for old-timers.  Now, then..."
297 GOTO 285
300 PRINT: IF D < 100 THEN 310
305 PRINT "That's pushing the odds!": GOTO 320
310 IF D < 25 THEN PRINT "Fresh out of training, eh?"
320 PRINT: IF D < 160 * RND(1) THEN 330
325 PRINT "Direct hit! "; INT(100 * RND(1)); "killed."
327 PRINT "Mission successful.": GOTO 390
330 PRINT "Missed target by"; INT(2 + 30 * RND(1)); "miles!"
335 PRINT "Now you're really in for it!": PRINT
340 COLOR 10: INPUT "Does the enemy have (1) guns, (2) missiles, or (3) both"; R: COLOR 15
345 IF R > 0 AND R < 4 THEN 350
347 PRINT "Try again...": GOTO 340
350 PRINT: T = 0: IF R = 2 THEN 360
355 INPUT "What's the percent hit rate of enemy gunners (10-50)"; S
357 IF S < 10 THEN PRINT "You lie, but you'll pay...": GOTO 380
358 PRINT
360 PRINT: IF R > 1 THEN T = 35
365 IF S + T > 100 * RND(1) THEN 380
370 PRINT "You made it through tremendous flak!": GOTO 390
380 COLOR 12: PRINT "* * * * BOOM * * * *": COLOR 15
384 PRINT "You have been shot down."
386 PRINT "Dearly beloved, we are gathered here today to pay our last tribute..."
390 PRINT: PRINT: COLOR 10: INPUT "Another mission (Y/N)"; U$: COLOR 15: PRINT
395 IF LEFT$(U$, 1) = "Y" OR LEFT$(U$, 1) = "y" THEN 8
400 PRINT "Chicken!": PRINT: END

