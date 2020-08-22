5 CLS: COLOR 12
10 PRINT TAB(38); "UFO"
20 PRINT TAB(31); "Creative Computing"
30 PRINT TAB(29); "Morristown, New Jersey"
40 PRINT: PRINT: PRINT: COLOR 15
50 RANDOMIZE TIMER
60 DIM P(1)
80 REM UFO
90 COLOR 10: PRINT "Do you want instructions (Y/N)";
100 INPUT A$
102 IF LEFT$(A$, 1) = "N" OR LEFT$(A$, 1) = "n" THEN 480
104 IF LEFT$(A$, 1) = "Y" OR LEFT$(A$, 1) = "y" THEN 110
106 GOTO 90
110 COLOR 14: PRINT
115 PRINT "You are about to receive high-security information.  Please eat the computer"
120 PRINT "readout after reading."
130 PRINT
140 PRINT "This is the year 2000.  Civilization as you know it has been destroyed."
150 PRINT "Nations have been reduced to rubble in a massive space war.  You are onboard"
160 PRINT "a space ship whose sole purpose is to safeguard the 150 people on your ship,"
170 PRINT "the sole survivors."
180 PRINT
190 PRINT "Your mission: Find a planet suitable for your colonists."
200 PRINT "Problem: The enemy of Earth still exists, strange creatures never seen by man."
210 PRINT
220 PRINT "By the time you read this, Earth will no longer exist."
230 PRINT: COLOR 13: PRINT "(Press any key.)"
235 Z$ = INKEY$: IF Z$ = "" THEN 235
240 COLOR 14: PRINT
250 PRINT "Here are your vital data:"
255 PRINT: PRINT "  * You are equipped with 10000 units of energy."
260 PRINT "  * When you run out, the aliens will destroy you."
265 COLOR 12: PRINT: PRINT TAB(25); "WEAPONRY"
270 PRINT "Type", "Description", "Capacity", "Fuel Drain": COLOR 11
280 PRINT "  1", "Heavy Guns", "0-11000", "10 units"
290 PRINT "  2", "Warheads", "10000-100000", "100 units"
300 PRINT "  3", "Laser", "10000-20000", "1000 units"
310 COLOR 12: PRINT: PRINT TAB(25); "OPTIONS": COLOR 11
320 PRINT "  4", "Approach", "---------", "100 units"
325 PRINT "  5", "Retreat", "---------", "100 units"
330 PRINT "  6", "Pass and gain 100 units (laborers work to produce power)"
350 PRINT: COLOR 13: PRINT "(Press any key.)"
355 Z$ = INKEY$: IF Z$ = "" THEN 355
360 COLOR 14: PRINT
370 PRINT "The enemy has the same capabilities that you have.  Each time a ship is hit,"
380 PRINT "its energy drain is equal to the amount of energy spent times 10 (except the"
390 PRINT "laser, which equals the amount spend times 3)."
400 PRINT
410 PRINT "Both ships are on the same mission and destination, and both are on equal"
420 PRINT "terms.  Unfortuately, you must kill each other to win."
430 PRINT
440 PRINT "Your maximum speed is a jump of 50000 units; however, speeds vary between"
450 PRINT "10000-50000.  Warheads travel at 35000 feet per second, shells at 1000 feet"
460 PRINT "per second."
470 PRINT
475 PRINT "This message was recorded.  Earth is dead.  Good luck!"
480 PRINT: PRINT: COLOR 10: PRINT "This is Computer Control.  What is your name";
490 INPUT A$: COLOR 15: PRINT "Very good, "; A$; ".": PRINT
500 P = 10000: P(1) = 10000: A = RND(1) * 200000
510 PRINT "Leaving planetary orbit, "; A$; "."
515 PRINT "Ship approaching at"; A; "miles."
520 COLOR 10: PRINT "What are your orders (1-6)";: INPUT C: COLOR 15
530 O = INT(RND(1) * 2) + 1
540 ON C GOTO 570, 650, 710, 750, 780, 820
560 PRINT "Let's not crack under pressure!": GOTO 520
570 IF A > 11005 THEN 560
580 P = P - 10
590 PRINT "Guns fired!"
595 FOR X = 1 TO A * 2 STEP 1000
600 NEXT X
610 IF O = 1 THEN 630
620 PRINT "Missed, too bad.": GOTO 830
630 PRINT "Direct hit... enemy ship's power down."
640 P(1) = P(1) - 100: GOTO 830
650 IF A > 100000 THEN 560
655 IF A < 10000 THEN 560
660 P = P - 100: PRINT "Warhead launched!": FOR X = 1 TO A * 2 STEP 35000
670 NEXT X
680 IF O = 1 THEN 690: ELSE PRINT "Missed, too bad.": GOTO 830
690 PRINT "Direct hit... enemy ship's power down."
700 P(1) = P(1) - 1000
705 GOTO 830
710 IF A < 100000 THEN 560
714 P = P - 1000
716 PRINT "Laser fired!"
720 IF O = 1 THEN 730
725 PRINT "Missed, too bad.": GOTO 830
730 PRINT "Direct hit... enemy ship's power down."
740 P(1) = P(1) - 3000: GOTO 830
750 B = RND(1) * 40000 + 10000: A = A - B: P = P - 100: IF A < 1 THEN 770
760 GOTO 830
770 PRINT "***COLLISION***": PRINT "Both ships destroyed.": GOTO 1080
780 B = RND(1) * 40000 + 10000: A = A + B: P = P - 100: IF A > 200050 THEN 800
790 GOTO 830
800 PRINT A$, " your range is"; STR$(A); ", but we cannot run.  Range is now 200000."
810 A = 200000: GOTO 830
820 P = P + 100
830 PRINT: COLOR 11
835 PRINT "Enemy ship report -- Range:"; STR$(A); ", Power:"; P(1): COLOR 15
840 IF P(1) < 1 THEN 1110
850 IF P(1) < 500 THEN 1040
860 IF A < 5000 THEN 1070
870 R = INT(RND(1) * 3) + 1: O = INT(RND(1) * 2 + 1)
880 ON R GOTO 970, 920
885 'IF R=W THEN
890 IF A < 100000 THEN 870
892 P(1) = P(1) - 1000
894 PRINT "Enemy fires laser!"
900 IF O = 1 THEN 910: ELSE PRINT "Missed... whew!": GOTO 1010
910 PRINT "Direct hit!  Power down.": P = P - 3000: GOTO 1010
920 IF A > 100000 THEN 870: ELSE IF A < 10000 THEN 870
930 P(1) = P(1) - 100: PRINT "Enemy warhead fired."
940 FOR D = 1 TO A STEP 35000: NEXT D
950 IF O = 1 THEN 960: ELSE PRINT "Missed... whew!": GOTO 1010
960 P = P - 1000: PRINT "Direct hit!  Power down.": GOTO 1010
970 IF A > 11000 THEN 870: ELSE P(1) = P(1) - 10: PRINT "Enemy fires shell!"
980 FOR D = 1 TO A STEP 1000: NEXT D
990 IF O = 1 THEN 1000: ELSE PRINT "Missed... whew!": GOTO 1010
1000 PRINT "Direct hit!  Power down.": P = P - 100
1010 PRINT: COLOR 11: PRINT "Status of ship -- ";
1020 PRINT "Range:"; STR$(A); ", Power:"; P: COLOR 15
1025 IF P < 1 THEN 1130
1030 GOTO 520
1040 P(1) = P(1) + 100: PRINT "Enemy ship resting.": GOTO 1010
1050 B = INT(RND(1) * 40000) + 10000: A = A - B: PRINT "Enemy ship approaching, "; A$; "."
1060 GOTO 1010
1070 B = RND(1) * 40000 + 10000: A = A + B: PRINT "Enemy ship retreating.": GOTO 1010
1080 PRINT "That was a pretty dumb thing to do, "; A$; "."
1090 PRINT "Your mission is to protect your passengers, not destroy them."
1100 GOTO 1140
1110 PRINT "Enemy ship's power gone -- no life present."
1120 COLOR 12: PRINT "Mission successful!": GOTO 1210
1130 PRINT "Enemy is victor!  Life support fading, crew dying."
1140 REM
1150 PRINT
1160 PRINT
1170 PRINT
1180 COLOR 10: PRINT "Play again (Y/N)";
1190 INPUT A$: COLOR 15
1200 IF LEFT$(A$, 1) = "Y" OR LEFT$(A$, 1) = "y" THEN 80
1210 END

