5 DIM A$(10), B$(10), C$(10), D$(10)
10 REM MADAME ZARA READS THE CARDS
20 GOSUB 770
30 PRINT: PRINT "Welcome, "; A$; ", to Zara's House of Mysticism..."
40 PRINT "Where the veil over the future is moved back... just for a moment..."
70 XX = 1.0: GOSUB 2000
80 PRINT: PRINT "Please tell me when you were born, as numbers."
90 PRINT
100 COLOR 10: INPUT "The month first (1=January to 12=December)"; B1: COLOR 15
110 IF B1 < 1 OR B1 > 12 THEN 100
120 PRINT: PRINT "Thank you, "; A$; "."
130 COLOR 10: INPUT "Now, what day of the month were you born"; B2: COLOR 15
140 IF B2 < 1 OR B2 > 31 THEN 120
150 B = 100 * B1 + B2
160 CLS
170 FOR Y = 1 TO 32: COLOR 9 + INT(RND * 7): PRINT TAB(Y * 2); "*": XX = 0.1: GOSUB 2000: NEXT Y
180 PRINT: COLOR 15: PRINT A$; ", you were born under the sign of ";
200 IF B >= 101 AND B <= 120 OR B >= 1223 AND B <= 1231 THEN PRINT "Capricorn."
210 IF B >= 121 AND B <= 219 THEN PRINT "Aquarius."
220 IF B >= 220 AND B <= 321 THEN PRINT "Pisces."
230 IF B >= 332 AND B <= 420 THEN PRINT "Aries."
240 IF B >= 421 AND B <= 521 THEN PRINT "Taurus."
250 IF B >= 522 AND B <= 621 THEN PRINT "Gemini."
260 IF B >= 622 AND B <= 723 THEN PRINT "Cancer."
270 IF B >= 724 AND B <= 823 THEN PRINT "Leo."
280 IF B >= 824 AND B <= 923 THEN PRINT "Virgo."
290 IF B >= 924 AND B <= 1023 THEN PRINT "Libra."
300 IF B >= 1024 AND B <= 1122 THEN PRINT "Scorpio."
310 IF B >= 1123 AND B <= 1222 THEN PRINT "Sagittarius."
320 FOR Y = 1 TO 32: COLOR 9 + INT(RND * 7): PRINT TAB(Y * 2); "*": XX = 0.1: GOSUB 2000: NEXT Y
330 COLOR 15: PRINT "Now I shall gaze into the future..."
340 FOR Y = 1 TO 32: COLOR 9 + INT(RND * 7): PRINT TAB(Y * 2); "*": XX = 0.1: GOSUB 2000: NEXT Y
350 PRINT "I am turning up the cards from the Hartnell Arcana...": PRINT
370 XX = 0.7: GOSUB 2000
375 COLOR 9: PRINT STRING$(40, 247): COLOR 15
380 FOR Y = 1 TO 4
390 A = INT(RND(1) * 6): COLOR 10 + Y
410 PRINT "This is ";
420 IF A = 0 THEN PRINT "the Anchor ";
430 IF A = 1 THEN PRINT "the Tower ";
440 IF A = 2 THEN PRINT "the Elvling ";
450 IF A = 3 THEN PRINT "the Knave ";
460 IF A = 4 THEN PRINT "the Cleric ";
470 IF A = 5 THEN PRINT "the Sovereign ";
480 A = INT(RND(1) * 6)
490 IF A = 0 THEN PRINT "of Stars"
500 IF A = 1 THEN PRINT "of Stones"
510 IF A = 2 THEN PRINT "of Shadows"
520 IF A = 3 THEN PRINT "of Gems"
530 IF A = 4 THEN PRINT "of Dust"
540 IF A = 5 THEN PRINT "of Echoes"
560 XX = 2.0: GOSUB 2000
570 NEXT Y: COLOR 9: PRINT STRING$(40, 247): COLOR 15
580 XX = 2.5: GOSUB 2000
590 PRINT: PRINT "And these cards tell me..."
600 XX = 1.3: GOSUB 2000
610 PRINT: COLOR 11: PRINT A$((INT(RND(1) * 10) + 1))
620 XX = 1.3: GOSUB 2000
630 COLOR 12: PRINT B$((INT(RND(1) * 10) + 1))
640 XX = 1.3: GOSUB 2000
650 COLOR 13: PRINT C$((INT(RND(1) * 10) + 1))
660 XX = 1.3: GOSUB 2000
670 COLOR 14: PRINT D$((INT(RND(1) * 10) + 1))
680 XX = 1.3: GOSUB 2000
690 COLOR 9: PRINT STRING$(40, 247): COLOR 15
700 PRINT: PRINT "Thank you for consulting the wisdom of Zara..."
720 XX = 2.0: GOSUB 2000
740 PRINT: PRINT "I would like to see you again sometime, "; A$; "."
760 END
770 REM
780 RANDOMIZE TIMER
790 CLS: COLOR 15
800 FOR T = 1 TO 10
810 FOR X = 1 TO 39: COLOR 9 + INT(RND * 7): IF RND > .5 THEN PRINT CHR$(15); " ";: ELSE PRINT "* ";
815 NEXT X: COLOR 15
820 PRINT TAB(23); "...Madame Zara reads the stars...": XX = 0.5: GOSUB 2000
830 NEXT T
840 FOR T = 1 TO 20
845 XX = 0.1: GOSUB 2000
850 PRINT TAB(T * 3); "* for you... *"
860 NEXT T
870 XX = 1.3: GOSUB 2000
880 COLOR 10: INPUT "What is your name, my dear"; A$: COLOR 15
890 CLS
900 FOR T = 1 TO 10: READ A$(T): READ B$(T)
910 READ C$(T): READ D$(T): NEXT T
920 RETURN
930 DATA "A sudden shock.","Great joy is near.","A park, and a special friendship."
935 DATA "Disappointment is on its way.","You are closely protected from harm."
940 DATA "There is a chance to stop ill-feeling.","Good friends are near."
945 DATA "Distrust those who would advise you.","The moon is in a good aspect for you."
950 DATA "Success is speculation is likely.","Confide in those near you."
955 DATA "Success in all ventures is indicated."
960 DATA "A mystery will soon be solved.","A letter will bring you strange news."
965 DATA "Good luck will be yours today."
970 DATA "High honor is on its way.","Domestic happiness is threatened."
975 DATA "The clouds are gathering.","Strength is on your side."
980 DATA "Someone is watching you with longing.","Family quarrels likely."
985 DATA "The sun is rising on your hopes."
990 DATA "Evil consequences may be averted.","There is a chance to make up a quarrel."
995 DATA "Your struggled are to be rewarded."
1000 DATA "You will be treated gently today.","A long-awaited wish is about to come true."
1005 DATA "Suspicion is focused on you."
1010 DATA "Good health will be yours.","Fulfillment of a dream is just around the corner."
1020 DATA "Beauty comes a-calling.","Good tidings are on their way."
1025 DATA "The current bad situation will not last long."
1030 DATA "Loss of property is probable.","You get the chance to ward off evil."
1040 DATA "Riches through property indicated.","A minor failure will turn to success."
1045 DATA "I see a safe bulging with money for you."
1050 DATA "Good news is on its way.","Beware of flattery."
2000 st = TIMER + XX
2010 IF TIMER < st THEN 2010
2020 RETURN

