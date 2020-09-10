10 REM Cavalcade of Puzzles
15 RANDOMIZE TIMER
20 GOSUB 2530
30 X = .5: N = 0
40 PRINT "Think of a number between one and sixty-three."
60 GOSUB 2550
70 PRINT "I will show you five screensful of numbers."
90 GOSUB 2550
100 PRINT "If your number is on the screen, just press 'Y' (for 'yes')."
120 PRINT "If it's not on the screen, then simply press the 'N' key."
140 GOSUB 2550
150 PRINT "I'll tell you the number you thought of at the end of the game."
180 GOSUB 2560: GOSUB 2560
190 GOSUB 2530
195 COLOR 14: LOCATE 6, 1
200 PRINT TAB(30); " 1  3  5  7  9 11 13"
210 PRINT TAB(30); "15 17 19 21 23 25 27"
220 PRINT TAB(30); "29 31 33 35 37 39 41"
230 PRINT TAB(30); "43 45 47 49 51 53 55"
240 PRINT TAB(30); "57 59 61 63"
250 GOSUB 630
255 COLOR 14: LOCATE 6, 1
260 PRINT TAB(30); " 2  3  6  7 10 11 14"
270 PRINT TAB(30); "15 18 19 22 23 26 27"
280 PRINT TAB(30); "30 31 34 35 38 39 42"
290 PRINT TAB(30); "43 46 47 50 51 54 55"
300 PRINT TAB(30); "58 59 62 63"
310 GOSUB 630
315 COLOR 14: LOCATE 6, 1
320 PRINT TAB(30); " 4  5  6  7 12 13 14"
330 PRINT TAB(30); "15 20 21 22 23 28 29"
340 PRINT TAB(30); "30 31 36 37 38 39 44"
350 PRINT TAB(30); "45 46 47 52 53 54 55"
360 PRINT TAB(30); "60 61 62 63"
370 GOSUB 630
375 COLOR 14: LOCATE 6, 1
380 PRINT TAB(30); " 8  9 10 11 12 13 14"
390 PRINT TAB(30); "15 24 25 26 27 28 29"
400 PRINT TAB(30); "30 31 40 41 42 43 44"
410 PRINT TAB(30); "45 46 47 56 57 58 59"
420 PRINT TAB(30); "60 61 62 63"
430 GOSUB 630
435 COLOR 14: LOCATE 6, 1
440 PRINT TAB(30); "16 17 18 19 20 21 22"
450 PRINT TAB(30); "23 24 25 26 27 28 29"
460 PRINT TAB(30); "30 31 48 49 50 51 52"
470 PRINT TAB(30); "53 54 55 56 57 58 59"
480 PRINT TAB(30); "60 61 62 63"
490 GOSUB 630
495 COLOR 14: LOCATE 6, 1
500 PRINT TAB(30); "32 33 34 35 36 37 38"
510 PRINT TAB(30); "39 40 41 42 43 44 45"
520 PRINT TAB(30); "46 47 48 49 50 51 52"
530 PRINT TAB(30); "53 54 55 56 57 58 59"
540 PRINT TAB(30); "60 61 62 63"
550 GOSUB 630
560 GOSUB 2550: GOSUB 2550
570 GOSUB 2530
580 PRINT "Your number was..."
590 GOSUB 2550
600 COLOR 12: PRINT TAB(37); "!"; N; "!"
610 GOSUB 2550
620 GOTO 730
630 X = X + X
640 GOSUB 2550
650 COLOR 10: PRINT "Press 'Y' if your number is here, 'N' if it is not.": COLOR 15
670 A$ = INKEY$
680 IF A$ <> "n" AND A$ <> "N" AND A$ <> "Y" AND A$ <> "y" THEN 670
690 IF A$ = "y" OR A$ = "Y" THEN N = N + X
700 GOSUB 2530
710 RETURN
720 REM ********************************
730 GOSUB 2530
740 PRINT "Now it's time for something almost completely different!"
760 GOSUB 2550
770 W = 40
780 PRINT "I'm going to think of a number between one and"; W; "and you have just six"
800 PRINT "guesses to get it right... if you do, you get to play the next game."
830 GOSUB 2550
840 PRINT "If you don't get it right, you'll be given an easier puzzle to work out..."
850 PRINT "and so on, until even someone as stupid as a mere human could solve it..."
900 PRINT: PRINT
910 COLOR 13: PRINT "Please stand by...": COLOR 15
920 GOSUB 2550
930 GOSUB 2530
940 PRINT "Okay, I'm thinking of my number between 1 and"; STR$(W); "."
960 N = INT(RND * W) + 1
970 J = 0
980 J = J + 1
990 PRINT: COLOR 10: PRINT "Enter guess"; J
1000 INPUT Q: COLOR 15
1010 IF Q = N THEN 1140
1020 IF Q < 1 OR Q > W THEN 1000
1030 IF Q < N THEN PRINT "Too low!"
1040 IF Q > N THEN PRINT "Too high!"
1050 IF J < 6 THEN 980
1060 PRINT: PRINT "Pretty hopeless..."
1070 PRINT "I was thinking of"; STR$(N); "."
1080 IF W = 5 THEN PRINT "You're hopeless... let's try something else.": GOSUB 2550: GOTO 1190
1090 PRINT
1100 PRINT "Well, I guess I'll have to give you another go..."
1120 W = W / 2
1130 GOTO 940
1140 GOSUB 2550
1150 PRINT "Wowee!!! Zap!!!"
1160 GOSUB 2550
1170 PRINT "You did it, baby..."
1180 GOSUB 2550
1190 GOSUB 2530
1200 REM **********************
1210 PRINT "Now, it's time to be amazed..."
1230 GOSUB 2550
1240 PRINT "Follow these instructions, and press Enter after you've carried them out..."
1270 GOSUB 2550
1280 GOSUB 2530
1290 PRINT "Start by multiplying your age by two..."
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
1420 PRINT "Now add the amount of loose change in your pocket..."
1440 INPUT A$
1450 GOSUB 2530
1460 COLOR 10: PRINT "Now give me the number you've ended up with";
1480 INPUT A: COLOR 15
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
1590 PRINT "Now to get your mind back into gear..."
1610 GOSUB 2550
1620 PRINT "In this game, we start with two sets of four objects in a line, with a space"
1630 PRINT "between them, like this:"
1670 PRINT
1680 COLOR 11: PRINT TAB(35); STRING$(4, 1); " ";: COLOR 12: PRINT STRING$(4, 2): COLOR 15
1690 GOSUB 2550
1700 PRINT "You have to get them so they look like this:"
1710 PRINT
1720 COLOR 12: PRINT TAB(35); STRING$(4, 2); " ";: COLOR 11: PRINT STRING$(4, 1): COLOR 15
1725 PRINT ""
1730 PRINT "in the shortest possible time..."
1750 GOSUB 2550
1760 PRINT "You can only slide into empty space, or jump over one piece into an empty"
1790 PRINT "square... as I'll now demonstrate..."
1810 GOSUB 2550: GOSUB 2550
1820 FOR J = 1 TO 3
1830 CLS
1840 COLOR 11: PRINT TAB(35); STRING$(4, 1); " ";: COLOR 12: PRINT STRING$(4, 2): COLOR 15
1850 XX = 0.5: GOSUB 3000: CLS
1860 COLOR 11: PRINT TAB(35); STRING$(3, 1); " "; CHR$(1);: COLOR 12: PRINT STRING$(4, 2): COLOR 15
1870 XX = 0.5: GOSUB 3000: CLS
1880 COLOR 11: PRINT TAB(35); STRING$(3, 1);: COLOR 12: PRINT CHR$(2);: COLOR 11: PRINT CHR$(1); " ";: COLOR 12: PRINT STRING$(3, 2): COLOR 15
1890 XX = 0.5: GOSUB 3000: CLS
1900 COLOR 11: PRINT TAB(35); STRING$(3, 1);: COLOR 12: PRINT CHR$(2);: COLOR 11: PRINT CHR$(1);: COLOR 12: PRINT CHR$(2); " "; STRING$(2, 2): COLOR 15
1910 NEXT J
1920 PRINT: PRINT "and so on...."
1930 GOSUB 2550
1940 COLOR 10: PRINT "Press Enter when you're ready to play...";
1960 INPUT A$: COLOR 15
1970 X = -1: M = 9
1980 DIM A(M)
1990 FOR Q = 1 TO M
2000 IF Q < 5 THEN A(Q) = 1
2010 IF Q > 5 THEN A(Q) = 2
2020 NEXT Q
2030 GOSUB 2530
2040 C = 0
2050 X = X + 1
2060 IF X = 0 THEN 2080
2070 COLOR 12: PRINT "That was move"; STR$(X); "."
2080 PRINT: PRINT TAB(31);
2090 FOR Q = 1 TO M
2100 IF A(Q) = 0 THEN PRINT "  ";
2102 IF A(Q) = 1 THEN COLOR 11: PRINT CHR$(1); " ";: COLOR 15
2105 IF A(Q) = 2 THEN COLOR 12: PRINT CHR$(2); " ";: COLOR 15
2110 IF Q < 5 AND A(Q) = 2 THEN C = C + 1
2120 IF A(Q) = 0 THEN H = Q
2130 IF Q > 5 AND A(Q) = 1 THEN C = C + 1
2140 NEXT Q
2150 COLOR 13: PRINT TAB(31); "1 2 3 4 5 6 7 8 9": COLOR 15
2160 PRINT
2170 PRINT: PRINT "You have"; C; "correct."
2180 GOSUB 2220
2190 IF C = 8 THEN 2260
2200 PRINT: PRINT
2210 GOTO 2030
2220 COLOR 10: INPUT "Which number piece to move"; T: COLOR 15
2230 K = A(T)
2240 A(T) = 0: A(H) = K
2250 RETURN
2260 PRINT: PRINT "Well done...  You solved it in just"; X; "moves!"
2280 GOSUB 2550
2290 GOSUB 2530
2300 REM **********************
2310 PRINT "That brings us to the end of our cavalcade of puzzles!"
2330 GOSUB 2550
2340 COLOR 10: PRINT "Enter 'Y' to play them again or 'N' to quit...": COLOR 15
2360 A$ = INKEY$
2370 IF A$ <> "n" AND A$ <> "N" AND A$ <> "y" AND A$ <> "Y" THEN 2360
2380 IF A$ = "Y" OR A$ = "y" THEN 2460
2390 GOSUB 2530
2400 PRINT "Thanks for spending so much time playing with me... it sure was fun!"
2430 GOSUB 2550
2440 PRINT "See you again some time..."
2450 END
2460 GOSUB 2550
2470 PRINT "Okay, here we go again..."
2480 GOSUB 2550
2490 CLEAR
2500 GOTO 10
2510 END
2520 REM **********************
2530 REM Delay, cls, print
2540 CLS: COLOR 15
2550 PRINT: PRINT
2560 XX = 1.0: GOSUB 3000
2570 RETURN
3000 ST = TIMER + XX
3010 IF TIMER < ST THEN 3010
3020 RETURN

