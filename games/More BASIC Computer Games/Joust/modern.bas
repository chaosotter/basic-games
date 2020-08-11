5 RANDOMIZE TIMER
6 CLS: COLOR 12
10 PRINT TAB(37); "Joust"
20 PRINT TAB(31); "Creative Computing"
30 PRINT TAB(29); "Morristown, New Jersey"
40 PRINT: PRINT: PRINT
100 COLOR 10: INPUT "What is your name, please"; A$
110 COLOR 14: PRINT
120 PRINT "Sir "; A$; ", you are a medieval knight in a jousting tournament.  The prize"
121 PRINT "to the winner is the princess' hand in marriage.  To win, you must beat four"
122 PRINT "other knights.  To joust, you pick an aiming point for the lance, and then one"
128 PRINT "of from 3 to 6 different possible defense positions.  The aiming points are:"
140 COLOR 11: PRINT
150 PRINT "  1 - Helm"
200 PRINT "  2 - Upper left (of shield)"
250 PRINT "  3 - Upper middle"
300 PRINT "  4 - Upper right"
350 PRINT "  5 - Lower left"
400 PRINT "  6 - Lower middle"
450 PRINT "  7 - Lower right"
500 PRINT "  8 - Base of shield"
520 PRINT: COLOR 14
530 PRINT "If you break a lance or lose a helm, you will be given another."
540 PRINT "Good luck, sir!"
555 PRINT: COLOR 15
600 FOR A = 1 TO 4
650 ON A GOTO 800, 950, 1100, 1250
700 REM OFF YOU GO TO THE FOUR JOUSTS.
750 REM ------------------------------
800 PRINT "This is your first joust.  You are up against the gold knight."
850 GOTO 1400
950 PRINT "This is your second joust.  Your opponent is the silver knight."
1000 GOTO 1400
1100 PRINT "You are doing well!  Your third joust is against the red knight."
1150 GOTO 1400
1250 PRINT "This is your final test!  If you win this one, the princess is yours!  This"
1270 PRINT "fight is against the fierce black knight!"
1400 COLOR 10: INPUT "Your aiming point (1-8)"; B: COLOR 15
1450 IF B < 1 OR B > 8 THEN 1400
1470 PRINT: PRINT "You may use one of these defenses:"
1500 ON B GOTO 1550, 1650, 1750, 1850, 1550, 1750, 1550, 1950
1550 COLOR 11: PRINT "  (4) Steady seat, (5) Shield high, (6) Shield low."
1600 GOTO 2000
1650 COLOR 11: PRINT "  (3) Left lean, (4) Steady seat, (5) Shield high, (6) Shield low."
1700 GOTO 2000
1750 COLOR 11: PRINT "  (1) Lower helm, (2) Right lean, (3) Left lean, (4) Steady seat,"
1755 PRINT "  (5) Shield high, (6) Shield low."
1800 GOTO 2000
1850 COLOR 11: PRINT "  (2) Right lean, (4) Steady seat, (5) Shield high, (6) Shield low."
1900 GOTO 2000
1950 COLOR 11: PRINT "  (1) Lower helm, (4) Steady seat, (5) Shield high, (6) Shield low."
2000 COLOR 10: PRINT: INPUT "What is your choice"; C: COLOR 15
2050 D = INT(RND(1) * 8) + 1
2100 ON D GOTO 2150, 2200, 2250, 2300, 2350, 2400, 2450, 2500
2150 ON C GOTO 2600, 2600, 2600, 2700, 2800, 2600
2200 ON C GOTO 2800, 2750, 2600, 2750, 2750, 2600
2250 ON C GOTO 2850, 2800, 2650, 2750, 2950, 2900
2300 ON C GOTO 2650, 2600, 2750, 2650, 2650, 2800
2350 ON C GOTO 2750, 2950, 2600, 2750, 2600, 2750
2400 ON C GOTO 2950, 2650, 2750, 2950, 2850, 2750
2450 ON C GOTO 2650, 2600, 2950, 2650, 2650, 2650
2500 ON C GOTO 2750, 2650, 2850, 2750, 2850, 2750
2600 PRINT "He missed you!": S = 0: GOTO 3000
2650 PRINT "He hit your shield but it glanced off.": S = 0: GOTO 3000
2700 PRINT "He knocked off your helm!": S = 0: GOTO 3000
2750 PRINT "He broke his lance.": S = 0: GOTO 3000
2800 PRINT "He has unseated you (thud!)": S = 5: GOTO 3000
2850 PRINT "He has broken his lance and injured and unseated you (ouch!)"
2855 S = 5: GOTO 3000
2900 PRINT "He has injured and unseated you (crash!)": S = 5: GOTO 3000
2950 PRINT "He has broken his lance and unseated you (clang!)": S = 5
3000 E = INT(RND(1) * 6) + 1
3050 ON D GOTO 3100, 3150, 3200, 3250, 3100, 3200, 3100, 3300
3100 IF E < 4 THEN 3000 ELSE GOTO 3350
3150 IF E < 3 THEN 3000 ELSE GOTO 3350
3200 GOTO 3350
3250 IF E = 1 OR E = 3 THEN 3000 ELSE GOTO 3350
3300 IF E = 2 OR E = 3 THEN 3000
3350 ON E GOTO 3400, 3450, 3500, 3550, 3600, 3650
3400 ON B GOTO 3700, 3900, 3950, 3750, 3850, 4050, 3750, 3850
3450 ON B GOTO 3700, 3850, 3900, 3700, 4050, 3750, 3700, 3750
3500 ON B GOTO 3700, 3700, 3750, 3850, 3700, 3850, 4050, 3900
3550 ON B GOTO 3800, 3850, 3850, 3750, 3850, 4050, 3750, 3850
3600 ON B GOTO 3900, 3850, 4050, 3750, 3700, 3950, 3750, 3950
3650 ON B GOTO 3700, 3700, 4000, 3900, 3850, 3850, 3750, 3850
3700 PRINT "You missed him (hiss!)": T = 0: GOTO 4100
3750 PRINT "You hit his shield but glanced off.": T = 0: GOTO 4100
3800 PRINT "You knock off his helm (cheers!)": T = 0: GOTO 4100
3850 PRINT "You broke your lance (crack...)": T = 0: GOTO 4100
3900 PRINT "You unseated him (loud cheers and huzzahs!)": T = 5: GOTO 4100
3950 PRINT "You broke your lance, but unseated and injured your foe."
3955 T = 5: GOTO 4100
4000 PRINT "You injured and unseated your opponent.": T = 5: GOTO 4100
4050 PRINT "You broke your lance but unseated your opponent.": T = 5: GOTO 4100
4100 IF S = T AND S = 0 THEN 4450
4150 IF S = T GOTO 4400
4200 IF S < T GOTO 4300
4250 IF S > T GOTO 4350
4300 PRINT "You have won this joust.": PRINT: GOTO 4320
4320 NEXT A
4330 GOTO 4550
4350 PRINT "Too bad, you lost.  Hope your insurance was paid up.": GOTO 4500
4400 PRINT "Too bad, you both lost.  At least your honor is intaact.": GOTO 4500
4450 PRINT: PRINT "You are now ready to try again.": GOTO 1400
4500 PRINT "Sorry, better luck next joust.": GOTO 9999
4550 PRINT "Hooray!  You are the winner.  Here comes the bride!"
9999 END

