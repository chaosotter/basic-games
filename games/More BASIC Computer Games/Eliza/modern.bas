1 CLS: COLOR 12: PRINT TAB(37); "Eliza"
2 PRINT TAB(31); "Creative Computing"
3 PRINT TAB(29); "Morristown, New Jersey"
4 PRINT: PRINT: PRINT: COLOR 15
10 RANDOMIZE TIMER
80 REM     -----INITIALIZATION-----
100 DIM S(36), R(36), N(36)
110 N1 = 36: N2 = 28: N3 = 112
120 FOR X = 1 TO N1 + N2 + N3: READ Z$: NEXT X: REM SAME AS RESTORE
130 FOR X = 1 TO N1
140 READ S(X), L: R(X) = S(X): N(X) = S(X) + L - 1
150 NEXT X
160 PRINT "Hi!  I'm Eliza.  What's your problem?"
170 REM
180 REM     -----USER INPUT SECTION-----
190 REM
200 COLOR 10: PRINT: INPUT I$: COLOR 15
201 I$ = " " + I$ + "  "
210 REM  GET RID OF APOSTROPHES
220 FOR L = 1 TO LEN(I$)
230 IF MID$(I$, L, 1) = "'" THEN I$ = LEFT$(I$, L - 1) + RIGHT$(I$, LEN(I$) - L): GOTO 230
240 IF L + 4 <= LEN(I$) THEN IF MID$(I$, L, 4) = "SHUT" OR MID$(I$, L, 4) = "shut" THEN PRINT "Shut up...": END
250 NEXT L
251 IU$ = "": IL$ = "": FOR I = 1 TO LEN(I$): A$ = MID$(I$, I, 1)
252 IF A$ >= "a" AND A$ <= "z" THEN IU$ = IU$ + CHR$(ASC(A$) - 32): IL$ = IL$ + A$: GOTO 255
253 IF A$ >= "A" AND A$ <= "Z" THEN IU$ = IU$ + A$: IL$ = IL$ + CHR$(ASC(A$) + 32): GOTO 255
254 IU$ = IU$ + A$: IL$ = IL$ + A$
255 NEXT I
256 IF I$ = P$ THEN PRINT "Please don't repeat yourself!": GOTO 170
260 REM
270 REM     -----FIND KEYWORD IN I$-----
280 REM
290 RESTORE
295 S = 0
300 FOR K = 1 TO N1
310 READ K$
315 IF S > 0 THEN 360
320 FOR L = 1 TO LEN(IU$) - LEN(K$) + 1
340 IF MID$(IU$, L, LEN(K$)) = K$ THEN S = K: T = L: F$ = K$
350 NEXT L
360 NEXT K
365 IF S > 0 THEN K = S: L = T: GOTO 390
370 K = 36: GOTO 570: REM  WE DIDN'T FIND ANY KEYWORDS
380 REM
390 REM     TAKE RIGHT PART OF STRING AND CONJUGATE IT
400 REM     USING THE LIST OF STRINGS TO BE SWAPPED
410 REM
420 RESTORE: FOR X = 1 TO N1: READ Z$: NEXT X: REM SKIP OVER KEYWORDS
430 C$ = " " + RIGHT$(I$, LEN(IU$) - LEN(F$) - L + 1) + " "
440 FOR X = 1 TO N2 / 2
450 READ S$, R$
460 FOR L = 1 TO LEN(C$)
470 IF L + LEN(S$) > LEN(C$) THEN 510
480 IF MID$(C$, L, LEN(S$)) <> S$ THEN 510
490 C$ = LEFT$(C$, L - 1) + R$ + RIGHT$(C$, LEN(C$) - L - LEN(S$) + 1)
495 L = L + LEN(R$)
500 GOTO 540
510 IF L + LEN(R$) > LEN(C$) THEN 540
520 IF MID$(C$, L, LEN(R$)) <> R$ THEN 540
530 C$ = LEFT$(C$, L - 1) + S$ + RIGHT$(C$, LEN(C$) - L - LEN(R$) + 1)
535 L = L + LEN(S$)
540 NEXT L
550 NEXT X
555 IF MID$(C$, 2, 1) = " " THEN C$ = RIGHT$(C$, LEN(C$) - 1): REM ONLY 1 SPACE
556 FOR L = 1 TO LEN(C$)
557 IF MID$(C$, L, 1) = "!" THEN C$ = LEFT$(C$, L - 1) + RIGHT$(C$, LEN(C$) - L): GOTO 557
558 NEXT L
560 REM
570 REM     NOW USING THE KEYWORD NUMBER (K) GET REPLY
580 REM
590 RESTORE: FOR X = 1 TO N1 + N2: READ Z$: NEXT X
600 FOR X = 1 TO R(K): READ F$: NEXT X: REM  READ RIGHT REPLY
610 R(K) = R(K) + 1: IF R(K) > N(K) THEN R(K) = S(K)
620 IF RIGHT$(F$, 1) <> "*" THEN PRINT F$: P$ = I$: GOTO 170
630 PRINT LEFT$(F$, LEN(F$) - 1);
632 FOR K = 1 TO LEN(C$)
633 A$ = MID$(C$, K, 1): IF A$ >= "A" AND A$ <= "Z" THEN PRINT CHR$(ASC(A$) + 32); ELSE PRINT A$;
634 NEXT K: PRINT
640 P$ = I$: GOTO 170
1000 REM
1010 REM     -----PROGRAM DATA FOLLOWS-----
1020 REM
1030 REM     KEYWORDS
1040 REM
1050 DATA "CAN YOU","CAN I","YOU ARE","YOURE","I DONT","I FEEL"
1060 DATA "WHY DONT YOU","WHY CANT I","ARE YOU","I CANT","I AM","IM "
1070 DATA "YOU ","I WANT","WHAT","HOW","WHO","WHERE","WHEN","WHY"
1080 DATA "NAME","CAUSE","SORRY","DREAM","HELLO","HI ","MAYBE"
1090 DATA " NO","YOUR","ALWAYS","THINK","ALIKE","YES","FRIEND"
1100 DATA "COMPUTER","NOKEYFOUND"
1200 REM
1210 REM     STRING DATA FOR CONJUGATIONS
1220 REM
1230 DATA " ARE "," am "," AM "," are "
1235 DATA "WERE ","was ","WAS ","were "
1240 DATA " YOU "," I "," I "," you "
1245 DATA "YOUR ","my ","MY ","your "
1250 DATA " IVE "," you've "," YOUVE "," I've "
1255 DATA " IM "," you're "," YOURE "," I'm "
1260 DATA " ME "," !you "," !YOU "," me "
1300 REM
1310 REM     REPLIES
1320 REM
1330 DATA "Don't you believe that I can*"
1340 DATA "Perhaps you would like to be able to*"
1350 DATA "You want me to be able to*"
1360 DATA "Perhaps you don't want to*"
1365 DATA "Do you want to be able to*"
1370 DATA "What makes you think I am*"
1380 DATA "Does it please you to believe I am*"
1390 DATA "Perhaps you would like to be*"
1400 DATA "Do you sometimes wish you were*"
1410 DATA "Don't you really*"
1420 DATA "Why don't you*"
1430 DATA "Do you wish to be able to*"
1440 DATA "Does that trouble you?"
1450 DATA "Tell me more about such feelings."
1460 DATA "Do you often feel*"
1470 DATA "Do you enjoy feeling*"
1480 DATA "Do you really believe I don't*"
1490 DATA "Perhaps in good time I will*"
1500 DATA "Do you want me to*"
1510 DATA "Do you think you should be able to*"
1520 DATA "Why can't you*"
1530 DATA "Why are you interested in whether or not I am*"
1540 DATA "Would you prefer if I were not*"
1550 DATA "Perhaps in your fantasies I am*"
1560 DATA "How do you know you can't*"
1570 DATA "Have you tried?"
1580 DATA "Perhaps you can now*"
1590 DATA "Did you come to me because you are*"
1600 DATA "How long have you been*"
1610 DATA "Do you believe it is normal to be*"
1620 DATA "Do you enjoy being*"
1630 DATA "We were discussing you, not me."
1640 DATA "Oh, I*"
1650 DATA "You're not really talking about me, are you?"
1660 DATA "What would it mean to you if you got*"
1670 DATA "Why do you want*"
1680 DATA "Suppose you soon got*"
1690 DATA "What if you never got*"
1700 DATA "I sometimes also want*"
1710 DATA "Why do you ask?"
1720 DATA "Does that question interest you?"
1730 DATA "What answer would please you the most?"
1740 DATA "What do you think?"
1750 DATA "Are such questions on your mind often?"
1760 DATA "What is it that you really want to know?"
1770 DATA "Have you asked anyone else?"
1780 DATA "Have you asked such questions before?"
1790 DATA "What else comes to mind when you ask that?"
1800 DATA "Names don't interest me."
1810 DATA "I don't care about names -- please go on."
1820 DATA "Is that the real reason?"
1830 DATA "Don't any other reasons come to mind?"
1840 DATA "Does that reason explain anything else?"
1850 DATA "What other reasons might there be?"
1860 DATA "Please don't apologize!"
1870 DATA "Apologies are not necessary."
1880 DATA "What feelings do you have when you apologize?"
1890 DATA "Don't be so defensive!"
1900 DATA "What does that dream suggest to you?"
1910 DATA "Do you dream often?"
1920 DATA "What persons appear in your dreams?"
1930 DATA "Are you disturbed by your dreams?"
1940 DATA "How do you do... please state your problem."
1950 DATA "You don't seem quite certain."
1960 DATA "Why the uncertain tone?"
1970 DATA "Can't you be more positive?"
1980 DATA "You aren't sure?"
1990 DATA "Don't you know?"
2000 DATA "Are you saying no just to be negative?"
2010 DATA "You are being a bit negative."
2020 DATA "Why not?"
2030 DATA "Are you sure?"
2040 DATA "Why no?"
2050 DATA "Why are you concerned about my*"
2060 DATA "What about your own*"
2070 DATA "Can you think of a specific example?"
2080 DATA "When?"
2090 DATA "What are you thinking of?"
2100 DATA "Really, always?"
2110 DATA "Do you really think so?"
2120 DATA "But you are not sure you*"
2130 DATA "Do you doubt you*"
2140 DATA "In what way?"
2150 DATA "What resemblance do you see?"
2160 DATA "What does the similarity suggest to you?"
2170 DATA "What other connections do you see?"
2180 DATA "Could there really be some connection?"
2190 DATA "How?"
2200 DATA "You seem quite positive."
2210 DATA "Are you sure?"
2220 DATA "I see."
2230 DATA "I understand."
2240 DATA "Why do you bring up the topic of friends?"
2250 DATA "Do your friends worry you?"
2260 DATA "Do your friends pick on you?"
2270 DATA "Are you sure you have any friends?"
2280 DATA "Do you impose on your friends?"
2290 DATA "Perhaps your love for friends worries you."
2300 DATA "Do computers worry you?"
2310 DATA "Are you talking about me in particular?"
2320 DATA "Are you frightened by machines?"
2330 DATA "Why do you mention computers?"
2340 DATA "What do you think machines have to do with your problem?"
2350 DATA "Don't you think computers can help people?"
2360 DATA "What is it about machines that worries you?"
2370 DATA "Say, do you have any psychological problems?"
2380 DATA "What does that suggest to you?"
2390 DATA "I see."
2400 DATA "I'm not sure I understand you fully."
2410 DATA "Come, come, elucidate your thoughts."
2420 DATA "Can you elaborate on that?"
2430 DATA "That is quite interesting."
2500 REM
2510 REM     DATA FOR FINDING RIGHT REPLIES
2520 REM
2530 DATA 1,3,4,2,6,4,6,4,10,4,14,3,17,3,20,2,22,3,25,3
2540 DATA 28,4,28,4,32,3,35,5,40,9,40,9,40,9,40,9,40,9,40,9
2550 DATA 49,2,51,4,55,4,59,4,63,1,63,1,64,5,69,5,74,2,76,4
2560 DATA 80,3,83,7,90,3,93,6,99,7,106,6

