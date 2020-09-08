10 REM Cavalcade of Puzzles
20 GOSUB 2530
30 X = .5: N = 0
40 PRINT "Think of a number between"
50 PRINT "one and sixty-three"
60 GOSUB 2550
70 PRINT "I will show you five"
80 PRINT "screenfulls of numbers."
90 GOSUB 2550
100 PRINT "If your number is on the screen,"
110 PRINT "just press 'Y' (for 'yes')."
120 PRINT "if it's not on the screen,"
130 PRINT "then simply press the 'N'"
140 GOSUB 2550
150 PRINT "I'll tell you the number you"
160 PRINT "thought of at the end of the"
170 PRINT , "game"
180 GOSUB 2560: GOSUB 2560
190 GOSUB 2530
200 PRINT "1 3 5 7 9 11 13 15 17"
210 PRINT "19 21 23 25 27 29 31"
220 PRINT "33 35 37 39 41 43 45"
230 PRINT "47 49 51 53 55 57 59"
240 PRINT "61 63"
250 GOSUB 630
260 PRINT " 2 3 6 7 10 11 14 15"
270 PRINT "18 19 22 23 26 27 30"
280 PRINT "31 34 35 38 39 42 43"
290 PRINT "46 47 50 51 54 55 58"
300 PRINT "59 62 63"
310 GOSUB 630
320 PRINT " 4 5 6 7 12 13 14 15"
330 PRINT "20 21 22 23 28 29 30"
340 PRINT "31 36 37 38 39 44 45"
350 PRINT "46 47 52 53 54 55 60"
360 PRINT "61 62 63"
370 GOSUB 630
380 PRINT "8 9 10 11 12 13 14 15"
390 PRINT "24 25 26 27 28 29 30"
400 PRINT "31 40 41 42 43 44 45"
410 PRINT "46 47 56 57 58 59 60"
420 PRINT "61 62 63"
430 GOSUB 630
440 PRINT "16 17 18 19 20 21 22"
450 PRINT "23 24 25 26 27 28 29"
460 PRINT "30 31 48 49 50 51 52"
470 PRINT "53 54 55 56 57 58 59"
480 PRINT "60 61 62 63"
490 GOSUB 630
500 PRINT "32 33 34 35 36 37 38"
510 PRINT "39 40 41 42 43 44 45"
520 PRINT "46 47 48 49 50 51 52"
530 PRINT "53 54 55 56 57 58 59"
540 PRINT "60 61 62 63"
550 GOSUB 630
560 GOSUB 2550: GOSUB 2550
570 GOSUB 2530
580 PRINT "Your number was..."
590 GOSUB 2550
600 PRINT , N; "!"
610 GOSUB 2550
620 GOTO 730
630 X = X + X
640 GOSUB 2550
650 PRINT "Press 'Y' if your number"
660 PRINT "is here, 'N' if it is not"
670 A$ = INKEY$
680 IF A$ <> "n" AND A$ <> "N" AND A$ <> "Y" AND A$ <> "y" THEN 670
690 IF A$ = "y" OR A$ = "Y" THEN N = N + X
700 GOSUB 2530
710 RETURN
720 REM ********************************
730 GOSUB 2530
740 PRINT "Now it's time for something"
750 PRINT "almost completely different!"
760 GOSUB 2550
770 W = 40
780 PRINT "I'm going to think of a number"
790 PRINT "between one and"; W; "and you"
800 PRINT "have just six guesses to get"
810 PRINT "it right...if you do, you"
820 PRINT "get to play the next game"
830 GOSUB 2550
840 PRINT "If you don't get it right,"
850 PRINT "you'll be given an easier"
860 PRINT "puzzle to work out...and"
870 PRINT "so on, until even someone"
880 PRINT "as stupid as a mere human"
890 PRINT "could solve it..."
900 PRINT: PRINT
910 PRINT "Please stand by..."
920 GOSUB 2550
930 GOSUB 2530
940 PRINT "OK, I'm thinking of my"
950 PRINT "number between one and"; W
960 N = INT(RND * W) + 1
970 J = 0
980 J = J + 1
990 PRINT: PRINT "Enter guess"; J
1000 INPUT Q
1010 IF Q = N THEN 1140
1020 IF Q < 1 OR Q > W THEN 1000
1030 IF Q < N THEN PRINT "Too low!"
1040 IF Q > N THEN PRINT "Too high!"
1050 IF J < 6 THEN 980
1060 PRINT: PRINT "Pretty hopeless..."
1070 PRINT "I was thinking of"; N
1080 IF W = 5 THEN PRINT "You're hopeless...let's try": PRINT "something else": GOSUB 2550: GOTO 1190
1090 PRINT
1100 PRINT "Well, I guess I'll have"
1110 PRINT "to give you another go..."
1120 W = W / 2
1130 GOTO 940
1140 GOSUB 2550
1150 PRINT "Wowee!!! Zap!!!"
1160 GOSUB 2550
1170 PRINT "You did it baby..."
1180 GOSUB 2550
1190 GOSUB 2530
1200 REM **********************
1210 PRINT "Now, it's time to"
1220 PRINT "be amazed..."
1230 GOSUB 2550
1240 PRINT "Follow these instructions,"
1250 PRINT "and press RETURN after"
1260 PRINT "you've carried them out..."
1270 GOSUB 2550
1280 GOSUB 2530
1290 PRINT "Start by multiplying your"
1300 PRINT "age by two..."
1310 INPUT A$
1320 GOSUB 2530
1330 PRINT "Now add five to that..."
1340 INPUT A$
1350 GOSUB 2530
1360 PRINT "Now multiply that by 50..."
1370 INPUT A$
1380 GOSUB 2530
1390 PRINT "Now subtract 365 from that..."
1400 INPUT A$
1410 GOSUB 2530
1420 PRINT "Now add the amount of loose"
1430 PRINT "change in your pocket..."
1440 INPUT A$
1450 GOSUB 2530
1460 PRINT "Now give me the number"
1470 PRINT "you've ended up with..."
1480 INPUT A
1490 A = A + 115
1500 B = INT(A / 100)
1510 A = A - 100 * B
1520 GOSUB 2530
1530 PRINT "You have"; A; "change..."
1540 GOSUB 2550
1550 PRINT "and are"; B; "years old..."
1560 GOSUB 2550
1570 REM *******************
1580 GOSUB 2530
1590 PRINT "Now to get your mind"
1600 PRINT "back into gear..."
1610 GOSUB 2550
1620 PRINT "In this game, we start"
1630 PRINT "with two sets of four"
1640 PRINT "objects in a line, with"
1650 PRINT "a space between them,"
1660 PRINT "like this:"
1670 PRINT
1680 PRINT "$$$$ ****"
1690 GOSUB 2550
1700 PRINT "You have to get them so"
1710 PRINT "they look like this:"
1720 PRINT "**** $$$$"
1730 PRINT "in the shortest possible"
1740 PRINT "time..."
1750 GOSUB 2550
1760 PRINT "You can only slide into"
1770 PRINT "empty space, or jump over"
1780 PRINT "one piece into an empty"
1790 PRINT "square....as I'll now"
1800 PRINT "demonstrate..."
1810 GOSUB 2550: GOSUB 2550
1820 FOR J = 1 TO 3
1830 CLS
1840 PRINT "$$$$ ****"
1850 XX = 0.5: GOSUB 3000: CLS
1860 PRINT "$$$ $****"
1870 XX = 0.5: GOSUB 3000: CLS
1880 PRINT "$$$*$ ***"
1890 XX = 0.5: GOSUB 3000: CLS
1900 PRINT "$$$*$* **"
1910 NEXT J
1920 PRINT: PRINT "and so on...."
1930 GOSUB 2550
1940 PRINT "Press RETURN when you're"
1950 PRINT "ready to play..."
1960 INPUT A$
1970 X = -1: M = 9
1980 DIM A(M)
1990 FOR Q = 1 TO M
2000 IF Q < 5 THEN A(Q) = ASC("$")
2010 IF Q > 5 THEN A(Q) = ASC("*")
2020 NEXT Q
2030 GOSUB 2530
2040 C = 0
2050 X = X + 1
2060 IF X = 0 THEN 2080
2070 PRINT "That was move"; X
2080 PRINT
2090 FOR Q = 1 TO M
2100 PRINT CHR$(A(Q)); " ";
2110 IF Q < 5 AND A(Q) = ASC("*") THEN C = C + 1
2120 IF A(Q) = 0 THEN H = Q
2130 IF Q > 5 AND A(Q) = ASC("$") THEN C = C + 1
2140 NEXT Q
2150 PRINT: PRINT "1 2 3 4 5 6 7 8 9"
2160 PRINT
2170 PRINT: PRINT "You have"; C; "correct"
2180 GOSUB 2220
2190 IF C = 8 THEN 2260
2200 PRINT: PRINT
2210 GOTO 2030
2220 INPUT "Which number piece to move"; T
2230 K = A(T)
2240 A(T) = 0: A(H) = K
2250 RETURN
2260 PRINT: PRINT "Well done.....You"
2270 PRINT "solved it in just"; X; "moves!"
2280 GOSUB 2550
2290 GOSUB 2530
2300 REM **********************
2310 PRINT "That brings us to the end"
2320 PRINT "of our cavalcade of puzzles"
2330 GOSUB 2550
2340 PRINT "Enter 'Y' to play them again"
2350 PRINT "or 'N' to quit..."
2360 A$ = INKEY$
2370 IF A$ <> "n" AND A$ <> "N" AND A$ <> "y" AND A$ <> "Y" THEN 2360
2380 IF A$ = "Y" OR A$ = "y" THEN 2460
2390 GOSUB 2530
2400 PRINT "Thanks for spending so"
2410 PRINT "much time playing with"
2420 PRINT "me...it sure was fun!"
2430 GOSUB 2550
2440 PRINT "See you again some time..."
2450 END
2460 GOSUB 2550
2470 PRINT "OK, here we go again..."
2480 GOSUB 2550
2490 CLEAR
2500 GOTO 10
2510 END
2520 REM **********************
2530 REM Delay, cls, print
2540 CLS
2550 PRINT: PRINT: PRINT
2560 XX = 1.0: GOSUB 3000
2570 RETURN
3000 ST = TIMER + XX
3010 IF TIMER < ST THEN 3010
3020 RETURN

