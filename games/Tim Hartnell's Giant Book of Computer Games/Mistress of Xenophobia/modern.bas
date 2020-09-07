10 REM Mistress of Xenophobia
20 GOSUB 700: REM Initialise
30 REM *********************************
40 FOR Y = 1 TO 20
50 CLS: COLOR 15
60 PRINT: PRINT: PRINT
70 PRINT "Mistress of Xenophobia, a report for you from the Office of Information"
80 PRINT "regarding the state of your planet in this ";: COLOR 12: PRINT "year of Grace,"; 1994 + Y: COLOR 15
110 PRINT
120 PRINT "The planet's population is";: COLOR 11: PRINT STR$(INT(P));: COLOR 15: PRINT "."
130 GOSUB 880
140 PRINT "The grovelling peasants could work some";: COLOR 11: PRINT L;: COLOR 15: PRINT "acres this year..."
160 GOSUB 880
165 U$ = STR$(INT(U)): U$ = RIGHT$(U$, LEN(U$) - 1)
170 PRINT "Your treasury holds gold, gems, and coins worth ";: COLOR 11: PRINT "$"; U$;: COLOR 15: PRINT "."
190 GOSUB 880
200 PRINT: PRINT "Time to issue a decree..."
210 PRINT
220 COLOR 10: INPUT "How much land is to be farmed this year"; W: COLOR 15
230 U = U - W * 10
240 IF U < 1 THEN 780
250 L = L + W
260 GOSUB 880
280 COLOR 10: INPUT "And how much will you spend on food for the peasants"; W: COLOR 15
290 U = U - W * 10
300 IF U < 1 THEN 780
310 R = INT(RND * 10) + 1
320 GOSUB 880
330 IF P - W * R * 5 > P / 4 THEN PRINT "Oh dear!  There's not enough food for everyone...": GOSUB 580
340 P = P + RND * (W * R * 5 - P)
350 IF P > 149 THEN 410
360 GOSUB 880
370 PRINT "The population of Xenophobia is now down to"; P; "and that just ain't enough,"
380 PRINT "Your Xeno."
400 GOTO 480
410 U = U + INT(P * L) / 93
420 NEXT Y
430 PRINT: PRINT
440 PRINT "Well, Your Xenophobic, that's the end of your 20-year domination of our little"
450 PRINT "planet.  You managed to accumulate some $"; U; "which I guess ain't too"
460 PRINT "bad..."
480 GOSUB 880
490 PRINT
500 PRINT "If you'd like another shot at ruling, then just press 'Y' or press 'N' to end"
510 PRINT "this farce..."
520 A$ = INKEY$
530 IF A$ <> "N" AND A$ <> "n" AND A$ <> "Y" AND A$ <> "y" THEN 520
540 IF A$ = "N" OR A$ = "n" THEN PRINT: PRINT "Your wish is my command, oh Mistress of Xenophobia!": END
550 RUN
560 END
570 REM ********************************
580 PRINT
590 PRINT "Horrors, your Xenoness!  There's been a rebellion!!!"
600 PRINT "The peasants are revolting.  (I had to get that line in!)"
620 GOSUB 880
630 IF RND < .2 THEN PRINT "And your cops couldn't stop them.": GOTO 480
640 PRINT "But your ruthless police have put a stop to all that nonsense."
660 GOSUB 880
670 RETURN
680 GOTO 420
690 REM ********************************
700 REM Initialisation
710 RANDOMIZE VAL(RIGHT$(TIME$, 2))
720 CLS
730 P = 200 + INT(RND * 300)
740 U = 700 + INT(RND * 500)
750 L = 70 + INT(RND * 50)
760 RETURN
770 REM **********
780 REM Bankruptcy
790 PRINT
800 PRINT "Well, Xeno, that's a fine mess you've got yourself, and our little planet into."
820 GOSUB 880
830 PRINT: PRINT "The Treasury is bankrupt!"
840 GOSUB 880
850 PRINT: PRINT "Guess who blew it???"
860 GOTO 490
870 REM ************************
880 REM Delay
890 ZZ = 1.0: GOSUB 1000: RETURN
1000 ST = TIMER + ZZ
1010 IF TIMER < ST THEN 1010
1020 RETURN

