1000 REM **PICO-FERMI-BAGELS NUMBER GUESS GAME**  D. RESEK, P. ROWE
1010 REM COPYRIGHT 1971 BY THE REGENTS OF THE UNIV. OF CALIF.
1020 REM PRODUCED AT THE LAWRENCE HALL OF SCIENCE, BERKELEY
1030 DIM A(3), B(3)
1035 RANDOMIZE TIMER
1040 N$ = "0123456789"
1050 Y = 0
1060 T = 255
1065 CLS
1070 COLOR 10: PRINT "Would you like the rules (Y/N)";
1080 INPUT A$: COLOR 15
1090 IF LEFT$(A$, 1) <> "Y" AND LEFT$(A$, 1) <> "y" THEN 1150
1095 COLOR 14: PRINT
1100 PRINT "I am thinking of a three-digit number.  You can guess what number I have in"
1110 PRINT "mind and I will tell you:": PRINT
1120 COLOR 12: PRINT "  Pico   ";: COLOR 14: PRINT "- One digit is in the wrong place"
1130 COLOR 12: PRINT "  Fermi  ";: COLOR 14: PRINT "- One digit is in the correct place"
1140 COLOR 12: PRINT "  Bagels  ";: COLOR 14: PRINT "- No digit is correct"
1145 COLOR 15
1150 FOR I = 1 TO 3
1160 A(I) = INT(10 * RND(1))
1170 FOR J = 1 TO I - 1
1180 IF A(I) = A(J) THEN 1160
1190 NEXT J
1200 NEXT I
1210 PRINT: PRINT "Okay, I have a number in mind."
1220 FOR I = 1 TO 20
1230 PRINT: COLOR 10: PRINT "Guess #"; STR$(I);
1240 INPUT A$: COLOR 15
1250 IF LEN(A$) <> 3 THEN 1630
1260 FOR J = 1 TO 3
1270 FOR C = 1 TO 10
1280 IF MID$(A$, J, 1) = MID$(N$, C, 1) THEN 1320
1290 NEXT C
1300 COLOR 13: PRINT TAB(22); "WHAT?";
1310 GOTO 1230
1320 B(J) = C - 1
1330 NEXT J
1340 IF B(1) = B(2) OR B(2) = B(3) OR B(1) = B(3) THEN 1650
1350 C = 0: D = 0
1360 FOR J = 1 TO 2
1370 IF A(J) <> B(J + 1) THEN 1390
1380 C = C + 1
1390 IF A(J + 1) <> B(J) THEN 1410
1400 C = C + 1
1410 NEXT J
1420 IF A(1) <> B(3) THEN 1440
1430 C = C + 1
1440 IF A(3) <> B(1) THEN 1460
1450 C = C + 1
1460 FOR J = 1 TO 3
1470 IF A(J) <> B(J) THEN 1490
1480 D = D + 1
1490 NEXT J
1500 IF D = 3 THEN 1680
1510 COLOR 12: PRINT TAB(22);
1520 FOR J = 1 TO C
1530 PRINT "Pico ";
1540 NEXT J
1550 FOR J = 1 TO D
1560 PRINT "Fermi ";
1570 NEXT J
1580 IF C + D <> 0 THEN 1600
1590 PRINT "Bagels";
1595 COLOR 15
1600 NEXT I
1610 PRINT "Oh, well."
1620 GOTO 1700
1630 PRINT "Try guessing a three-digit number."
1640 GOTO 1230
1650 PRINT "Oh.  I forgot to tell you that the number I have in mind has no two digits"
1660 PRINT "the same."
1670 GOTO 1230
1680 PRINT "You got it!"
1690 Y = Y + 1
1700 COLOR 10: PRINT: PRINT "Again (Y/N)";
1710 INPUT A$: COLOR 15
1720 IF LEFT$(A$, 1) = "Y" OR LEFT$(A$, 1) = "y" THEN 1150
1730 IF Y = 0 THEN 1750
1740 PRINT: PRINT "You are a"; STR$(Y); "-point Bagels buff!"
1750 END

