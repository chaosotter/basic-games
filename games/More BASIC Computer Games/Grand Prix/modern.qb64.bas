5 RANDOMIZE TIMER: CLS: COLOR 12
10 PRINT TAB(37); "GRNPRX"
20 PRINT TAB(31); "Creative Computing"
30 PRINT TAB(29); "Morristown, New Jersey"
40 PRINT: PRINT: PRINT: COLOR 15
1020 DIM SHARED P(9), F(4), G(4), H(82), R
1030 REM
1040 FOR X = 1 TO 9
1043 READ P(X)
1045 NEXT X
1050 FOR I = 1 TO 4
1060 READ G(I), F(I)
1080 LET G(I) = G(I) / 2.04545
1090 LET F(I) = (F(I) + .61 / 2.04545)
1100 NEXT I
1110 FOR X = 1 TO 82: READ H(X): NEXT X
1115 REM
1120 'DEF FNA(X) = INT(X * 2.04545 + .05)
1130 'DEF FNT(T) = INT(T * 10 + .5) / 10
1133 'DEF FNC(T) = -(INT(T * R) + 2) * (INT(T * R) + 2 < 82) - 82 * (82 < INT(T * R) + 2)
1134 'DEF FNB(T) = -(INT(T * R) + 1) * (INT(T * R) + 1 < 82) - 82 * (82 < INT(T * R) + 1)
1135 'DEF FNP(T) = INT(H(FNB(T)) + FNQ(T) * FNR(T) + .5)
1136 'DEF FNQ(T) = H(FNC(T)) - H(FNB(T))
1137 'DEF FNR(T) = T * R - INT(T * R)
1140 REM
1150 LET D = 2
1200 PRINT
1210 PRINT "Welcome to the PUC Gran Prix."
1220 PRINT
1250 REM
1260 COLOR 10: PRINT "Do you want a course description (Y/N)";
1270 INPUT A$: COLOR 15
1280 IF LEFT$(A$, 1) <> "Y" AND LEFT$(A$, 1) <> "y" THEN 1910
1300 PRINT: COLOR 11
1320 PRINT TAB(23); "2"; TAB(66); "1"
1330 PRINT TAB(21); "CC0XPXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX0CC"
1340 PRINT TAB(12); "85-100 CC (800)"; TAB(69); "C"
1350 PRINT TAB(18); "C"; TAB(70); "C"
1360 PRINT TAB(15); "3 0"; TAB(33); "PUC Gran Prix Race"; TAB(70); "C"
1370 PRINT TAB(16); "X"; TAB(69); "C"
1375 PRINT TAB(15); "X"; TAB(67); "CC"
1380 PRINT TAB(14); "X"; TAB(38); "SS"; TAB(59); "(2800) C 50-"
1390 PRINT TAB(13); "X"; TAB(22); "SSSSSSS    SSS  SSS0XXXXXXXXXXXXXXXX";
1395 PRINT "XPXXOC   70"
1400 PRINT TAB(12); "X       SS       SSSSSSS       7";
1405 PRINT TAB(64); "8"
1410 PRINT TAB(11); "X (1900)0 6    90-110"
1420 PRINT TAB(10); "X       X"
1430 PRINT TAB(9); "X       X";
1433 COLOR 12: PRINT TAB(28); "Distances in yards, e.g. ";
1435 PRINT "(800) = 800 yds.": COLOR 11
1440 PRINT TAB(8); "X       X";: COLOR 12: PRINT TAB(28); "Speeds in MPH, ";
1445 PRINT "e.g. 85 to 100 MPH.": COLOR 11
1450 PRINT "       P     X"
1460 PRINT "      X       X"
1470 PRINT "     X       X"
1480 PRINT "   X       X"
1490 PRINT " 4 0(1500) X"
1500 PRINT "  H       X"
1510 PRINT "  H      X"
1520 PRINT "20-H   0 5"
1530 PRINT " 35 H  H";: COLOR 13: PRINT TAB(50); "(Press any key.)": COLOR 11
1535 PRINT "     HH";
1540 A$ = INKEY$: IF A$ = "" THEN 1540
1550 PRINT: PRINT: COLOR 14
1560 PRINT "1-2 is a straightaway 800 yards long."
1570 PRINT "2-3 is a curve 200 yards long.  The breakaway speed range is 85-100 mph."
1590 PRINT "3-4 is a straightaway 500 yards long.  It ends at position 1500 yards from"
1600 PRINT "    the starting grid."
1610 PRINT "4-5 is a hairpin curve 100 yards long.  The breakaway speed range is 20-35 mph."
1630 PRINT "5-6 is another straightaway 300 yards long.  It ends at position 1900 yards"
1640 PRINT "    from the grid."
1650 PRINT "6-7 is a set of 'S' curves 500 yards long.  The speed range is 90-110 mph."
1670 PRINT "7-8 is the final straightaway of 400 yards.  It enters the last curve at 2800"
1680 PRINT "    yards."
1690 PRINT "8-9 is the final curve of 400 yards.  The breakaway speed range is 50-70 mph."
1710 PRINT
1720 PRINT "The total length of one lap is 3200 yards."
1725 PRINT: COLOR 13: PRINT "(Press any key.)";
1726 A$ = INKEY$: IF A$ = "" THEN 1726
1730 PRINT: PRINT: COLOR 14
1820 PRINT "During the straightaways you will be able to cotrol the acceleration and"
1830 PRINT "braking of the car.  The curves will be taken at whatever speed you enter them."
1840 PRINT "Below the breakaway speed, the curves may be taken with no difficulty.  Above"
1850 PRINT "the fastest speed indicated, you will crash!  Within the speed range, there is"
1860 PRINT "possibility that you might lose time or speed by swinging wide or by spinning"
1870 PRINT "out.  The faster you take the curves, the greater the risks -- and the less the"
1880 PRINT "time!!!"
1905 PRINT
1907 PRINT "Your task is to traverse the track in a minimum of time without crashing!!!"
1909 COLOR 15
1910 PRINT: PRINT "Your car may be one of the following:"
1911 COLOR 11: PRINT: PRINT "  1. Porsche"
1912 PRINT "  2. Ferrari"
1913 PRINT "  3. Maserati"
1914 PRINT "  4. Lotus Ford"
1915 PRINT: COLOR 10: PRINT "Which car would you like (1-4)";
1916 INPUT Z: COLOR 15
1917 ON Z GOTO 1920, 1923, 1926, 1929
1918 PRINT "We don't have that car in stock, please choose again."
1919 GOTO 1915
1920 M = 25
1921 LET B = -20
1922 GOTO 1931
1923 M = 10
1924 B = -25
1925 GOTO 1931
1926 M = 12
1927 B = -22
1928 GOTO 1931
1929 M = 8
1930 B = -30
1931 PRINT: PRINT "Your car has a maximum acceleration of"; M; "mph/sec and a maximum braking"
1932 PRINT "of "; B; "mph/sec.  You will race against one of the following:"
1933 COLOR 11: PRINT
1934 PRINT "  1. U.S. Postal delivery truck"
1935 PRINT "  2. 1970 beat Pontiac GTO"
1936 PRINT "  3. 1966 well-used Ford Mustang"
1937 PRINT "  4. Lotus Ford"
1938 PRINT "  5. 1974 Ferrari"
1939 PRINT "  6. The physics-supercharged lightbeam special"
1940 COLOR 10: PRINT: PRINT "Choose one opponent by entering number";
1941 INPUT R1: COLOR 15
1942 IF R1 > 0 AND R1 < 6 THEN 1946
1943 IF R1 = 6 THEN 1948
1944 PRINT "Which car did you say?"
1945 GOTO 1940
1946 LET R = 2 * R1 - 5
1947 GOTO 1949
1948 LET R = 2.5E+08
1949 LET R = (90 + 2 * R) / 100 + 7 * RND(1) / 100
1950 PRINT
3000 REM
3002 REM           BEGIN THE RACE!!
3004 REM
3010 LET J = 1
3020 PRINT "Elapsed time", "Speed", "Position", "Opponent's", "Acceleration"
3030 PRINT "  Seconds", " MPH", " Yards", " Position"
3040 PRINT
3070 X = 0: S = 0: T = 0: T9 = 0: X9 = 0
3080 REM
3100 IF J < 9 THEN 3200
3130 PRINT
3160 PRINT "Completed lap!  Elapsed time"; FNT(T); "seconds."
3166 PRINT "Your opponent finished in"; 80 / R; "seconds."
3167 LET K1 = FNT(T) - 80 / R
3168 IF K1 > 0 THEN 3171
3169 PRINT "Congratulations, you won by"; -K1; "seconds."
3170 GOTO 8600
3171 PRINT "Sorry, you lost by"; K1; "seconds."
3172 GOTO 8600
3200 IF FNP(T) > 3200 THEN 3203
3201 COLOR 11: PRINT "  "; FNT(T), "  "; FNA(S), "  "; INT(X), "  "; FNP(T), "  ";
3202 GOTO 3210
3203 COLOR 11: PRINT "  "; FNT(T), "  "; FNA(S), "  "; INT(X), "  Finish", "  ";
3210 COLOR 10: INPUT A1: COLOR 15
3220 LET A = A1 / 2.04545
3230 IF A1 >= 0 THEN 3600
3240 IF A1 >= B THEN 3300
3250 PRINT "Maximum braking is "; B; "mph/sec."
3260 GOTO 3200
3300 LET T1 = -S / A
3310 IF T1 > D THEN 3500
3320 LET X1 = X + S * T1 + A / 2 * T1 * T1
3330 IF X1 > P(J + 1) THEN 3400
3340 PRINT "You stopped"; INT(P(J + 1) - X1); "yards from point"; STR$(J + 1); "."
3350 LET S = 0
3360 LET X = X1
3370 LET T = T + T1
3380 GOTO 3100
3400 LET Y = P(J + 1) - X
3402 IF A <> 0 THEN 3410
3404 LET T = T + Y / S
3406 GOTO 3440
3410 LET S1 = SQR(S * S + 2 * A * Y)
3420 LET T = T - (S - S1) / A
3430 LET S = S1
3440 LET J = J + 1
3450 GOTO 8000
3500 LET X1 = X + S * D + A / 2 * D * D
3510 IF X1 > P(J + 1) THEN 3400
3520 LET T = T + D
3530 LET S = S + A * D
3540 LET X = X1
3550 GOTO 3100
3600 IF A1 <= M THEN 3700
3610 PRINT "Maximum acceleration is"; M; "mph/sec."
3620 GOTO 3200
3700 LET X1 = X + S * D + A / 2 * D * D
3710 IF X1 > P(J + 1) THEN 3400
3720 GOTO 3500
8000 REM *** SUB CURVE ***
8010 REM
8020 LET I = INT(J / 2)
8030 LET T1 = (P(J + 1) - P(J)) / S
8040 LET S1 = G(I) + (F(I) - G(I)) * RND(1)
8050 IF S > S1 THEN 8100
8055 PRINT "Curve"; STR$(J); STR$(-J - 1); ", speed"; FNA(S); "mph"
8060 LET J = J + 1
8070 LET X = P(J)
8080 LET T = T + T1
8090 GOTO 3100
8100 IF S > S1 + (F(I) - S1) / 2 THEN 8200
8110 LET T2 = T1 * RND(1) * .4
8120 PRINT "Speed in curve"; FNA(S); "mph, took curve wide, lost";
8125 PRINT FNT(T2); "sec."
8130 LET T1 = T1 + T2
8140 GOTO 8060
8200 IF S > F(I) THEN 8300
8210 LET S2 = S - S * RND(1) * .9
8220 LET T1 = T1 * S / S2
8230 PRINT "Spun out at"; FNA(S); "mph, lost speed and time."
8240 LET S = S2
8250 GOTO 8060
8300 PRINT "Lost control at"; FNA(S); "mph.  Your car crashed!!"
8305 PRINT "Your opponent finished in"; 82 / R; "seconds!"
8330 REM
8600 PRINT
8605 COLOR 10: PRINT "Do you wish to try again (Y/N)";
8610 INPUT A$: COLOR 15
8620 IF LEFT$(A$, 1) = "Y" OR LEFT$(A$, 1) = "y" THEN 1910
9000 REM
9010 DATA 0,800,1000,1500,1600,1900,2400,2800,3200
9020 DATA 85,100
9030 DATA 20,35
9040 DATA 90,110
9050 DATA 50,70
9060 REM
9070 DATA 0,1,3,9,21,39,62,87,120,156,196,244,293,351,410
9080 DATA 479,550,625,700,758,800,847,894,942,990,1030,1080
9090 DATA 1135,1200,1260,1330,1382,1425,1470,1490,1505,1519
9100 DATA 1539,1548,1563,1578,1512,1610,1632,1658,1683,1718
9110 DATA 1758,1800,1850,1890,1943,1997,2050,2104,2057,2210
9120 DATA 2294,2317,2370,2420,2480,2535,2600,2670,2725,2768,2799,2830
9130 DATA 2861,2892,2920,2951,2982,3013,3044,3075,3106,3137,3168,3199
9140 DATA 10000

FUNCTION FNA (X)
  FNA = INT(X * 2.04545 + .05)
END FUNCTION

FUNCTION FNT (T)
  FNT = INT(T * 10 + .5) / 10
END FUNCTION

FUNCTION FNC (T)
  FNC = -(INT(T * R) + 2) * (INT(T * R) + 2 < 82) - 82 * (82 < INT(T * R) + 2)
END FUNCTION

FUNCTION FNB (T)
  FNB = -(INT(T * R) + 1) * (INT(T * R) + 1 < 82) - 82 * (82 < INT(T * R) + 1)
END FUNCTION

FUNCTION FNP (T)
  FNP = INT(H(FNB(T)) + FNQ(T) * FNR(T) + .5)
END FUNCTION

FUNCTION FNQ (T)

  FNQ = H(FNC(T)) - H(FNB(T))
END FUNCTION

FUNCTION FNR (T)
  FNR = T * R - INT(T * R)
END FUNCTION

