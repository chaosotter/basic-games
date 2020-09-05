1 CLS: COLOR 12
2 PRINT TAB(36); "Civil War"
4 PRINT TAB(31); "Creative Computing"
5 PRINT TAB(29); "Morristown, New Jersey"
6 PRINT: PRINT: PRINT: RANDOMIZE TIMER: COLOR 15
20 REM ORIGINAL GAME DESIGN: CRAM, GOODIE, HIBBARD LEXINGTON H.S.
30 REM MODIFICATIONS: G. PAUL, R. HESS (TIES), 1973
50 DIM S(4), C$(14), M1(14), M2(14), C1(14), C2(14), M(14)
60 REM UNION INFO ON LIKELY CONFEDERATE STRATEGY
70 S(1) = 25: S(2) = 25: S(3) = 25: S(4) = 25
82 REM READ HISTORICAL DATA.
84 FOR D = 1 TO 14
86 READ C$(D), M1(D), M2(D), C1(D), C2(D), M(D)
88 NEXT D
89 LET D = RND(-1)
90 PRINT
100 COLOR 10: PRINT "Do you want instructions (Y/N)";
110 INPUT X$: COLOR 15
120 IF LEFT$(X$, 1) = "Y" OR LEFT$(X$, 1) = "y" THEN 160
130 IF LEFT$(X$, 1) = "N" OR LEFT$(X$, 1) = "n" THEN 370
140 PRINT "Please enter 'Y' or 'N'."
150 GOTO 110
160 PRINT: PRINT: PRINT: PRINT: COLOR 14
170 PRINT "This is a Civil War simulation.  To play, type a response when the computer"
180 PRINT "asks.  Remember that all factors are interrelated and that your responses could"
190 PRINT "change history.  Facts and figures used are based on the actual events.  Most"
200 PRINT "battles tend to result as they did in the Civil War, but it all depends on you!"
230 PRINT
240 PRINT "The object of the game is to win as many battles as possible."
250 PRINT
260 PRINT "Your choices for defensive strategy are:": COLOR 11
270 PRINT "    (1) Artillery attack"
280 PRINT "    (2) Fortification against frontal attack"
290 PRINT "    (3) Fortification against flanking maneuvers"
300 PRINT "    (4) Falling back":
305 COLOR 14: PRINT
310 PRINT "Your choices for offensive strategy are:": COLOR 11
320 PRINT "    (1) Artillery attack"
330 PRINT "    (2) Frontal attack"
340 PRINT "    (3) Flanking maneuvers"
350 PRINT "    (4) Encirclement"
355 COLOR 15: PRINT
360 PRINT "You may surrender by typing a '5' for your strategy.": COLOR 15
370 PRINT: PRINT:
380 COLOR 10: PRINT "Are there two generals present (Y/N)";
390 INPUT B$: COLOR 15
400 IF LEFT$(B$, 1) = "Y" OR LEFT$(B$, 1) = "y" THEN 430
410 IF LEFT$(B$, 1) <> "N" AND LEFT$(B$, 1) <> "n" THEN 380
420 PRINT: PRINT "You are the Confederacy.  Good luck!"
425 PRINT
430 LET D = 1
440 IF LEFT$(B$, 1) <> "Y" AND LEFT$(B$, 1) <> "y" THEN 460
450 LET D = 2
460 COLOR 14: PRINT "Select a battle by typing a number from 1 to 14 on request.  Type any other"
470 PRINT "number to end the simulation.  Entering '0' brings back the exact previous"
480 PRINT "battle situation, allowing you to replay it."
500 PRINT
510 PRINT "Note: A negative entry for food causes the program to use the entries from the"
520 PRINT "previous battle."
530 PRINT: COLOR 15
540 COLOR 10: PRINT "After requesting a battle, do you wish battle descriptions (Y/N)";
570 INPUT X$: COLOR 15
580 IF LEFT$(X$, 1) = "Y" OR LEFT$(X$, 1) = "y" THEN 600
590 IF LEFT$(X$, 1) <> "N" AND LEFT$(X$, 1) <> "n" THEN 540
600 L = 0: W = 0: R1 = 0: Q1 = 0: M3 = 0: M4 = 0: P1 = 0: P2 = 0: T1 = 0: T2 = 0
610 F(2) = 0: H(2) = 0: B(2) = 0: R2 = 0: Q2 = 0: C6 = 0: F = 0: W0 = 0: Y = 0: Y2 = 0: U = 0: U2 = 0
620 PRINT: PRINT
630 COLOR 10: PRINT "Which battle do you wish to simulate (1-14)";
640 INPUT A: COLOR 15
650 IF A <> 0 THEN 660
655 IF A = 0 THEN 1140
660 IF A <= 0 THEN 2860
665 IF A >= 15 THEN 2860
670 LET C$ = C$(A)
680 LET M1 = M1(A)
690 LET M2 = M2(A)
700 LET C1 = C1(A)
710 LET C2 = C2(A)
720 LET M = M(A)
960 LET U = 0
970 REM  INFLATION CALC
980 LET I1 = 10 + (L - W) * 2
990 LET I2 = 10 + (W - L) * 2
1000 REM - MONEY AVAILABLE
1010 LET D(1) = 100 * INT((M1 * (100 - I1) / 2000) * (1 + (R1 - Q1) / (R1 + 1)) + .5)
1020 LET D(2) = 100 * INT(M2 * (100 - I2) / 2000 + .5)
1030 IF LEFT$(B$, 1) <> "Y" AND LEFT$(B$, 1) <> "y" THEN 1050
1040 LET D(2) = 100 * INT((M2 * (100 - I2) / 2000) * (1 + (R2 - Q2) / (R2 + 1)) + .5)
1050 REM - MEN   AVAILABLE
1060 LET M5 = INT(M1 * (1 + (P1 - T1) / (M3 + 1)))
1070 LET M6 = INT(M2 * (1 + (P2 - T2) / (M4 + 1)))
1080 LET F1 = 5 * M1 / 6
1090 PRINT: PRINT: PRINT: PRINT: PRINT
1100 COLOR 12: PRINT "This is the Battle of "; C$: COLOR 15
1110 IF LEFT$(X$, 1) = "N" OR LEFT$(X$, 1) = "n" THEN 1150
1120 IF A > 11 THEN 1130
1125 PRINT: ON A GOTO 3580, 3620, 3650, 3690, 3720, 3750, 3780, 3800, 3830, 3860, 3890
1130 ON A - 11 GOTO 3920, 3950, 3980
1140 COLOR 12: PRINT "Battle of "; C$; " -- Instant Replay": COLOR 15
1150 PRINT
1160 COLOR 13: PRINT " ", " Confederacy", " Union"
1170 COLOR 13: PRINT "Men",: COLOR 11: PRINT M5, M6
1175 D1$ = STR$(D(1)): IF D(1) >= 0 THEN D1$ = RIGHT$(D1$, LEN(D1$) - 1)
1176 D2$ = STR$(D(2)): IF D(2) >= 0 THEN D2$ = RIGHT$(D2$, LEN(D2$) - 1)
1180 COLOR 13: PRINT "Money",: COLOR 11: PRINT " $"; D1$, " $"; D2$
1190 COLOR 13: PRINT "Inflation",: COLOR 11: PRINT STR$(I1 + 15); "%", STR$(I2); "%"
1195 PRINT: COLOR 15
1200 REM - ONLY IN PRINTOUT IS CONFED INFLATION = I1+15%
1210 REM - IF TWO GENERALS, INPUT CONFED. FIRST
1220 FOR I = 1 TO D
1230 IF LEFT$(B$, 1) <> "Y" AND LEFT$(B$, 1) <> "y" THEN 1260
1240 IF I = 2 THEN 1260
1250 PRINT "Confederate General -- ";
1260 PRINT "How much do you wish to spend for:"
1270 COLOR 10: PRINT "  - Food......";
1280 INPUT F: COLOR 15
1290 IF F >= 0 THEN 1360
1300 IF R1 <> 0 THEN 1330
1310 PRINT "No previous entries."
1320 GOTO 1270
1330 PRINT "Assuming you want to keep the same allocations."
1340 PRINT
1350 GOTO 1510
1360 LET F(I) = F
1370 COLOR 10: PRINT "  - Salaries..";
1380 INPUT H(I): COLOR 15
1390 LET N = 1
1400 IF H(I) < 0 THEN 1490
1410 COLOR 10: PRINT "  - Ammunition";
1420 INPUT B(I): COLOR 15
1430 LET N = 2
1440 IF B(I) < 0 THEN 1490
1450 PRINT
1460 IF F(I) + H(I) + B(I) <= D(I) THEN 1510
1470 DI$ = STR$(D(I)): IF D(I) >= 0 THEN DI$ = RIGHT$(DI$, LEN(DI$) - 1)
1475 PRINT "Think again!  You have only $"; DI$; "."
1480 GOTO 1270
1490 PRINT "Negative values not allowed."
1500 ON N GOTO 1370, 1410
1510 IF LEFT$(B$, 1) <> "Y" AND LEFT$(B$, 1) <> "y" THEN 1550
1520 IF I = 2 THEN 1550
1530 PRINT "Union General -- ";
1540 NEXT I
1550 FOR Z = 1 TO D
1560 IF LEFT$(B$, 1) <> "Y" AND LEFT$(B$, 1) <> "y" THEN 1620
1570 ON Z GOTO 1580, 1600
1580 COLOR 13: PRINT "Confederate ";
1590 GOTO 1620
1600 COLOR 13: PRINT "      Union ";
1610 REM - FIND MORALE
1620 LET O = ((2 * F(Z) ^ 2 + H(Z) ^ 2) / F1 ^ 2 + 1)
1630 IF O < 10 THEN 1660
1640 PRINT "morale is high.": COLOR 15
1650 GOTO 1700
1660 IF O < 5 THEN 1690
1670 PRINT "morale is fair.": COLOR 15
1680 GOTO 1700
1690 PRINT "morale is poor.": COLOR 15
1700 IF B$ <> "YES" THEN 1760
1710 LET O(Z) = O
1720 NEXT Z
1730 LET O2 = O(2)
1740 LET O = O(1)
1750 PRINT "Confederal General -- ";
1760 REM - ACTUAL OFF/DEF BATTLE SITUATION
1770 IF M <> 3 THEN 1800
1780 PRINT "You are on the offensive."
1790 GOTO 1840
1800 IF M <> 1 THEN 1830
1810 PRINT "You are on the defensive."
1820 GOTO 1840
1830 PRINT "Both sides are on the offensive."
1840 PRINT
1850 REM - CHOOSE STRATEGIES
1860 IF LEFT$(B$, 1) <> "Y" AND LEFT$(B$, 1) <> "y" THEN 1910
1870 FOR I = 1 TO 2
1880 ON I GOTO 1890, 1920
1890 COLOR 10: PRINT "Confederate strategy (1-5)";
1900 GOTO 1920
1910 COLOR 10: PRINT "Your strategy (1-5)";
1920 INPUT Y: COLOR 15
1930 IF ABS(Y - 3) < 3 THEN 1960
1940 PRINT "Strategy"; Y; "not allowed."
1950 GOTO 1910
1960 IF LEFT$(B$, 1) = "Y" OR LEFT$(B$, 1) = "y" THEN 2000
1970 IF Y = 5 THEN 2830
1980 GOSUB 3110
1990 GOTO 2170
2000 IF I = 2 THEN 2040
2010 LET Y1 = Y
2020 COLOR 10: PRINT "Union strategy (1-5)";
2030 NEXT I
2040 LET Y2 = Y
2050 LET Y = Y1
2060 IF Y2 = 5 THEN 2020
2070 REM : SIMULATED LOSSES-NORTH
2080 LET C6 = (2 * C2 / 5) * (1 + 1 / (2 * (ABS(Y2 - Y) + 1)))
2090 LET C6 = C6 * (1.28 + (5 * M2 / 6) / (B(2) + 1))
2100 LET C6 = INT(C6 * (1 + 1 / O2) + .5)
2110 REM - IF LOSS > MEN PRESENT, RESCALE LOSSES
2120 LET E2 = 100 / O2
2130 IF INT(C6 + E2) < M6 THEN 2190
2140 LET C6 = INT(13 * M6 / 20)
2150 LET E2 = 7 * C6 / 13
2160 LET U2 = 1
2170 REM - CALCULATE SIMULATED LOSSES
2180 PRINT
2190 PRINT: COLOR 13: PRINT , " Confederacy", " Union"
2200 LET C5 = (2 * C1 / 5) * (1 + 1 / (2 * (ABS(Y2 - Y) + 1)))
2210 LET C5 = INT(C5 * (1 + 1 / O) * (1.28 + F1 / (B(1) + 1)) + .5)
2220 LET E = 100 / O
2230 IF C5 + 100 / O < M1 * (1 + (P1 - T1) / (M3 + 1)) THEN 2270
2240 LET C5 = INT(13 * M1 / 20 * (1 + (P1 - T1) / (M3 + 1)))
2250 LET E = 7 * C5 / 13
2260 LET U = 1
2270 IF D = 1 THEN 2500
2280 COLOR 13: PRINT "Casualties",: COLOR 11: PRINT C5, C6
2290 COLOR 13: PRINT "Desertions",: COLOR 11: PRINT INT(E), INT(E2)
2300 PRINT: COLOR 15
2310 IF LEFT$(B$, 1) <> "Y" AND LEFT$(B$, 1) <> "y" THEN 2350
2320 PRINT "Compared to the actual casualties at "; C$; ":"
2330 COLOR 13: PRINT "Confederate:";: COLOR 11: PRINT STR$(INT(100 * (C5 / C1) + .5)); "% of the original"
2340 COLOR 13: PRINT "Union:      ";: COLOR 11: PRINT STR$(INT(100 * (C6 / C2) + .5)); "% of the original"
2350 PRINT: COLOR 15
2360 REM - 1 WHO ONE
2370 IF U <> 1 THEN 2380
2375 IF U2 = 1 THEN 2460
2380 IF U = 1 THEN 2420
2390 IF U2 = 1 THEN 2440
2400 IF C5 + E = C6 + E2 THEN 2460
2410 IF C5 + E < C6 + E2 THEN 2440
2420 PRINT "The Union wins "; C$; "."
2430 GOTO 2600
2440 PRINT "The Confederacy wins "; C$; "."
2450 GOTO 2660
2460 PRINT "Battle outcome unresolved."
2470 LET W0 = W0 + 1
2480 IF A = 0 THEN 2790
2490 GOTO 2680
2500 LET C6 = INT(17 * C2 * C1 / (C5 * 20))
2510 LET E2 = 5 * O
2520 GOTO 2280
2530 PRINT "Your casualties were "; STR$(INT(100 * (C5 / C1) + .5)); "% of ";
2540 PRINT "the actual casualties at "; C$; "."
2550 PRINT
2560 REM - FIND WHO WON
2570 IF U = 1 THEN 2590
2580 IF C5 + E < 17 * C2 * C1 / (C5 * 20) + 5 * O THEN 2630
2590 PRINT "You lose "; C$; "."
2600 IF A = 0 THEN 2790
2610 LET L = L + 1
2620 GOTO 2680
2630 PRINT "You win "; C$; "."
2640 REM - CUMULATIVE BATTLE FACTORS WHICH ALTER HISTORICAL
2650 REM  RESOURCES AVAILABLE.IF A REPLAY DON'T UPDATE.
2660 IF A = 0 THEN 2790
2670 LET W = W + 1
2680 LET T1 = T1 + C5 + E
2690 LET T2 = T2 + C6 + E2
2700 LET P1 = P1 + C1
2710 LET P2 = P2 + C2
2720 LET Q1 = Q1 + (F(1) + H(1) + B(1))
2730 LET Q2 = Q2 + (F(2) + H(2) + B(2))
2740 LET R1 = R1 + M1 * (100 - I1) / 20
2750 LET R2 = R2 + M2 * (100 - I2) / 20
2760 LET M3 = M3 + M1
2770 LET M4 = M4 + M2
2780 GOSUB 3300
2790 U = 0: U2 = 0
2800 PRINT "---------------"
2810 GOTO 620
2820 REM------FINISH OFF
2830 PRINT "The Confederacy has surrendered."
2840 GOTO 2860
2850 PRINT "The Union has surrendered."
2860 PRINT: PRINT: PRINT
2870 PRINT "The Confederacy ";
2880 PRINT "has won"; W; "battles and lost"; STR$(L); "."
2890 IF Y = 5 THEN 2940
2900 IF Y2 = 5 THEN 2920
2910 IF W <= L THEN 2940
2915 IF Y = 5 THEN 2940
2920 PRINT "The Confederacy has won the war."
2930 GOTO 2950
2940 PRINT "The Union has won the war."
2950 PRINT
2960 IF R1 = 0 THEN 3100
2970 PRINT "For the"; STR$(W + L + W0); " battles fought (excluding reruns):"
2980 COLOR 13: PRINT " ", " ", " Confederacy", " Union"
3000 COLOR 13: PRINT "Historical Losses",: COLOR 11: PRINT INT(P1 + .5), INT(P2 + .5)
3010 COLOR 13: PRINT " Simulated Losses",: COLOR 11: PRINT INT(T1 + .5), INT(T2 + .5)
3030 COLOR 13: PRINT "    % of Original",: COLOR 11: PRINT INT(100 * (T1 / P1) + .5), INT(100 * (T2 / P2) + .5): COLOR 15
3040 IF LEFT$(B$, 1) = "Y" OR LEFT$(B$, 1) = "y" THEN 3100
3050 PRINT
3060 PRINT "Union intelligence suggests that the South used strategies 1, 2, 3, 4 in the"
3070 PRINT "following percentages:"
3080 COLOR 11: PRINT "   "; S(1); S2(2); S(3); S(4);: COLOR 15
3090 REM---------------------------------
3100 END
3110 REM - UNION STRATEGY IS COMPUTER CHOSEN
3120 COLOR 10: PRINT "Union strategy (1-5)";
3130 IF A <> 0 THEN 3180
3140 INPUT Y2: COLOR 15
3150 IF Y2 <= 0 THEN 3160
3155 IF Y2 < 5 THEN 3290
3160 PRINT "Enter 1-4 or 5 to surrender.  Usually use the previous Union strategy."
3170 GOTO 3140
3180 LET S0 = 0
3190 LET R = 100 * RND(0)
3200 FOR I = 1 TO 4
3210 LET S0 = S0 + S(I)
3220 REM - IF ACTUAL STRATEGY INFO IS IN PROGRAM DATA STATEMENTS
3230 REM   THEN R-100 IS EXTRA WEIGHT GIVEN TO THAT STATEGY.
3240 IF R < S0 THEN 3270
3250 NEXT I
3260 REM - IF ACTUAL STRAT. IN,THEN HERE IS Y2= HIST. STRAT.
3270 LET Y2 = I
3280 PRINT Y2
3290 RETURN
3300 REM LEARN  PRESENT STRATEGY, START FORGETTING OLD ONES
3310 REM - PRESENT STRATEGY OF SOUTH GAINS 3*S, OTHERS LOSE S
3320 REM   PROBABILITY POINTS, UNLESS A STRATEGY FALLS BELOW 5%.
3330 LET S = 3
3340 LET S0 = 0
3350 FOR I = 1 TO 4
3360 IF S(I) <= 5 THEN 3390
3370 LET S(I) = S(I) - S
3380 LET S0 = S0 + S
3390 NEXT I
3400 LET S(Y) = S(Y) + S0
3410 RETURN
3420 REM - HISTORICAL DATA...CAN ADD MORE (STRAT.,ETC) BY INSERTING
3430 REM   DATA STATEMENTS AFTER APPRO. INFO, AND ADJUSTING READ
3440 DATA "Bull Run",18000,18500,1967,2708,1
3450 DATA "Shiloh",40000.,44894.,10699,13047,3
3460 DATA "Seven Days",95000.,115000.,20614,15849,3
3470 DATA "Second Bull Run",54000.,63000.,10000,14000,2
3480 DATA "Antietam",40000.,50000.,10000,12000,3
3490 DATA "Fredericksburg",75000.,120000.,5377,12653,1
3500 DATA "Murfreesboro",38000.,45000.,11000,12000,1
3510 DATA "Chancellorsville",32000,90000.,13000,17197,2
3520 DATA "Vicksburg",50000.,70000.,12000,19000,1
3530 DATA "Gettysburg",72500.,85000.,20000,23000,3
3540 DATA "Chickamauga",66000.,60000.,18000,16000,2
3550 DATA "Chattanooga",37000.,60000.,36700.,5800,2
3560 DATA "Spotsylvania",62000.,110000.,17723,18000,2
3570 DATA "Atlanta",65000.,100000.,8500,3700,1
3580 PRINT "July 21, 1861.  Gen. Beauregard, commanding the South, met Union forces with"
3590 PRINT "Gen. McDowell in a premature battle at Bull Run.  Gen. Jackson helped push back"
3600 PRINT "the Union attack."
3610 GOTO 1150
3620 PRINT "April 6-7, 1982.  The Confederate surprise attack at Shiloh failed due to poor"
3630 PRINT "organization."
3640 GOTO 1150
3650 PRINT "June 25-July 1, 1862.  General Lee (CSA) upheld the offensive through the"
3660 PRINT "battle and forced Gen. McClellan and the Union forces away from Richmond."
3680 GOTO 1150
3690 PRINT "August 29-30, 1862.  The combined Confederate forces under Lee and Jackson"
3700 PRINT "drove the Union forces back into Washington."
3710 GOTO 1150
3720 PRINT "September 17, 1862.  The South failed to incorporate Maryland into the"
3730 PRINT "Confederacy."
3740 GOTO 1150
3750 PRINT "December 13, 1862.  The Confederacy under Lee successfully repulsed an attack"
3760 PRINT "by the Union under Gen. Burnside."
3770 GOTO 1150
3780 PRINT "December 31, 1862.  The South under Gen. Bragg won a close battle."
3790 GOTO 1150
3800 PRINT "May 1-6, 1863.  The South had a costly Victory and lost one of their out-"
3810 PRINT "standing generals, 'Stonewall' Jackson."
3820 GOTO 1150
3830 PRINT "July 4, 1863.  Vicksburg was a costly defeat for the South because it gave the"
3840 PRINT "Union access to the Mississippi."
3850 GOTO 1150
3860 PRINT "July 1-3, 1863.  A Southern mistake by Gen. Lee at Gettysburg cost them one of"
3870 PRINT "most crucial battles of the war."
3880 GOTO 1150
3890 PRINT "September 15, 1863.  Confusion in a forest near Chuckamauga led to a costly"
3900 PRINT "Southern victory."
3910 GOTO 1150
3920 PRINT "November 25, 1863.  After the South had sieged Gen. Rosencrans' army for three"
3930 PRINT "months, Gen. Grant broke the siege."
3940 GOTO 1150
3950 PRINT "May 5, 1864.  Grant's plan to keep Lee isolated began to fail here, and"
3960 PRINT "continued at Cold Harbor and Petersburg."
3970 GOTO 1150
3980 PRINT "August, 1864.  Sherman and three veteran armies converged on Atlanta and dealt"
3990 PRINT "the death blow to the Confederacy."
4000 GOTO 1150
4010 END

