5 CLS: COLOR 12
10 PRINT TAB(38); "Bull"
20 PRINT TAB(31); "Creative Computing"
25 PRINT TAB(29); "Morristown, New Jersey"
30 'DEF FNA(K)=INT(RND(1)*2+1)
200 PRINT: PRINT: PRINT: RANDOMIZE TIMER: COLOR 15
202 L = 1
205 COLOR 10: PRINT "Do you want instructions (Y/N)";
206 INPUT Z$: COLOR 15
207 IF LEFT$(Z$, 1) = "N" OR LEFT$(Z$, 1) = "n" THEN 410
209 COLOR 14: PRINT
210 PRINT "Hello, all you blood-lovers and aficionados.  Here is your big chance to kill"
220 PRINT "a bull.  On each pass of the bull, you may try:"
230 PRINT: COLOR 11
250 PRINT "    0 - Veronica (dangerous inside move of the cape)"
260 PRINT "    1 - Less dangerous outside move of the cape"
270 PRINT "    2 - Ordinary swirl of the cape."
280 PRINT: COLOR 14
290 PRINT "Instead of the above, you may try to kill the bull on any turn:"
300 PRINT: COLOR 11
305 PRINT "    4 - Over the horns"
306 PRINT "    5 - In the chest":
310 COLOR 14: PRINT
320 PRINT "But if I were you, I wouldn't try it before the seventh pass."
330 PRINT
340 PRINT "The crowd will determine what award you deserve (posthumously if necessary)."
350 PRINT "The braver you are, the better the award you receive.  The better the job the"
360 PRINT "picadores and toreadores do, the better your chances are."
400 PRINT
405 COLOR 13: PRINT "(Press any key.)": COLOR 15
406 Z$ = INKEY$: IF Z$ = "" THEN 406
410 PRINT: PRINT
420 D(5) = 1
430 D(4) = 1
450 DIM L$(5)
455 A = INT(RND(1) * 5 + 1)
460 FOR I = 1 TO 5
463 READ L$(I)
467 NEXT I
470 DATA "a superb","a good","a fair","a poor","an awful"
490 PRINT "You have drawn "; L$(A); " bull."
500 IF A > 4 THEN 530
510 IF A < 2 THEN 550
520 GOTO 570
530 PRINT "You're lucky."
540 GOTO 570
550 PRINT "Good luck.  You'll need it."
560 PRINT
570 PRINT
590 A$ = "picado"
595 B$ = "res"
600 GOSUB 1610
610 D(1) = C
630 A$ = "toread"
635 B$ = "ores"
640 GOSUB 1610
650 D(2) = C
660 PRINT
680 IF Z = 1 THEN 1310
690 D(3) = D(3) + 1
700 COLOR 12: PRINT "Pass number"; D(3): COLOR 15: PRINT
710 IF D(3) < 3 THEN 760
720 PRINT "Here comes the bull.  ";: COLOR 10: PRINT "Try for a kill (Y/N)";
730 GOSUB 1930
735 IF Z1 = 1 THEN 1130
740 COLOR 10: PRINT "Cape move (1-3)";
750 GOTO 800
760 PRINT "The bull is charging at you!  You are the matador --"
770 COLOR 10: PRINT "Do you want to kill the bull (Y/N)";
780 GOSUB 1930
785 IF Z1 = 1 THEN 1130
790 COLOR 10: PRINT "What move do you make with the cape (0-2)";
800 INPUT E: COLOR 15
810 IF E <> INT(ABS(E)) THEN 830
820 IF E < 3 THEN 850
830 PRINT "Don't panic, you idiot!  Put down a correct number."
840 GOTO 800
850 REM
860 IF E = 0 THEN 920
870 IF E = 1 THEN 900
880 M = .5
890 GOTO 930
900 M = 2
910 GOTO 930
920 M = 3
930 L = L + M
940 F = (6 - A + M / 10) * RND(1) / ((D(1) + D(2) + D(3) / 10) * 5)
950 IF F < .51 THEN 660
960 PRINT "The bull has gored you!"
970 ON INT(RND(1) * 2) + 1 GOTO 980, 1010
980 PRINT "You are dead."
990 D(4) = 1.5
1000 GOTO 1310
1010 PRINT "You are still alive!": PRINT
1020 COLOR 10: PRINT "Do you run from the ring (Y/N)";
1030 GOSUB 1930
1035 IF Z1 = 2 THEN 1070
1040 PRINT "Coward!"
1050 D(4) = 0
1060 GOTO 1310
1070 PRINT "You are brave.  Stupid, but brave."
1080 ON INT(RND(1) * 2) + 1 GOTO 1090, 1110
1090 D(4) = 2
1100 GOTO 660
1110 PRINT "You are gored again!"
1120 GOTO 970
1130 REM
1140 Z = 1
1150 PRINT: PRINT "It is the moment of truth.": PRINT
1155 COLOR 10: PRINT "How do you try to kill the bull (4-5)";
1160 INPUT H: COLOR 15
1170 IF H = 4 THEN 1230
1180 IF H = 5 THEN 1230
1190 PRINT "You panicked.  The bull gored you."
1220 GOTO 970
1230 K = (6 - A) * 10 * RND(1) / ((D(1) + D(2)) * 5 * D(3))
1240 IF J = 4 THEN 1290
1250 IF K > .2 THEN 960
1260 PRINT "You killed the bull!"
1270 D(5) = 2
1280 GOTO 1320
1290 IF K > .8 THEN 960
1300 GOTO 1260
1310 REM
1320 PRINT
1330 COLOR 11
1340 IF D(4) <> 0 THEN 1390
1350 PRINT "The crowd boos for ten minutes.  If you ever dare to show your face in a ring"
1360 PRINT "again, they swear they will kill you -- unless the bull does first."
1380 GOTO 1580
1390 'DEF FNC(Q)=FND(Q)*RND(1)
1395 'DEF FND(Q)=(4.5+L/6-(D(1)+D(2))*2.5+4*D(4)+2*D(5)-D(3)^2/120-A)
1400 IF D(4) <> 2 THEN 1430
1410 PRINT "The crowd cheers wildly!"
1420 GOTO 1450
1430 IF D(5) <> 2 THEN 1450
1440 PRINT "The crowd cheers!": PRINT
1450 PRINT "The crowd awards you ";
1460 GOSUB 2100: IF DQ * RND(1) < 2.4 THEN 1570
1470 GOSUB 2100: IF DQ * RND(1) < 4.9 THEN 1550
1480 GOSUB 2100: IF DQ * RND(1) < 7.4 THEN 1520
1500 PRINT "Ol"; CHR$(130); "!  You are 'muy hombre'!  Ol"; CHR$(130); "! Ol"; CHR$(130); "!"
1510 GOTO 1580
1520 PRINT "both ears of the bull!  Ol"; CHR$(130); "!"
1540 GOTO 1580
1550 PRINT "one ear of the bull."
1560 GOTO 1580
1570 PRINT "nothing at all."
1580 PRINT: COLOR 15
1590 PRINT CHR$(173); "Adi"; CHR$(162); "s!": PRINT
1600 GOTO 2030
1610 B = 3 / A * RND(1)
1620 IF B < .37 THEN 1740
1630 IF B < .5 THEN 1720
1640 IF B < .63 THEN 1700
1650 IF B < .87 THEN 1680
1660 C = .1
1670 GOTO 1750
1680 C = .2
1690 GOTO 1750
1700 C = .3
1710 GOTO 1750
1720 C = .4
1730 GOTO 1750
1740 C = .5
1750 T = INT(10 * C + .2)
1760 PRINT "The "; A$; B$; " did "; L$(T); " job."
1770 IF 4 > T THEN 1900
1780 IF 5 = T THEN 1870
1790 ON INT(RND(1) * 2) + 1 GOTO 1830, 1850
1800 IF A$ = "toread" THEN 1820
1810 PRINT "One of the horses of the "; A$; B$; " was killed."
1820 ON INT(RND(1) * 2) + 1 GOTO 1830, 1850
1830 PRINT "One of the "; A$; B$; " was killed."
1840 GOTO 1900
1850 PRINT "No "; A$; B$; " were killed."
1860 GOTO 1900
1870 IF A$ = "toread" THEN 1890
1880 PRINT INT(RND(1) * 2) + 1; "of the horses of the "; A$; B$; " killed."
1890 PRINT INT(RND(1) * 2) + 1; "of the "; A$; B$; " killed."
1900 PRINT
1910 RETURN
1920 REM
1930 INPUT A$: COLOR 15
1940 IF LEFT$(A$, 1) = "Y" OR LEFT$(A$, 1) = "y" THEN 1990
1950 IF LEFT$(A$, 1) = "N" OR LEFT$(A$, 1) = "n" THEN 2010
1970 PRINT "Incorrect answer -- please type 'Y' or 'N'."
1980 GOTO 1930
1990 Z1 = 1
2000 GOTO 2020
2010 Z1 = 2
2020 RETURN
2030 END
2100 DQ = (4.5 + L / 6 - (D(1) + D(2)) * 2.5 + 4 * D(4) + 2 * D(5) - D(3) ^ 2 / 120 - A)
2110 RETURN

