10 REM Rural Pursuits
20 RANDOMIZE TIMER: CLS: COLOR 15
30 YR = 1
40 MO = INT(RND * 1000 + 7000)
50 LA = INT(RND * 1000 + 100)
60 AC = INT(RND * 200 + 300)
70 CS = INT(RND * .5) + 8: CX = CS
80 BA = 0: WH = 0: CO = 0
90 GOSUB 170
100 GOSUB 290
110 IF YR = 10 THEN 750
120 IF MO < 1 THEN 790
130 IF LA < 1 THEN 820
140 YR = YR + 1
150 CS = CS + INT(12.5 * CS / 100): REM General costs increase at 12.5% a year
160 GOTO 80
170 REM Update
180 GOSUB 870
190 MO$ = STR$(MO): MO$ = RIGHT$(MO$, LEN(MO$) - 1)
195 PRINT "You have $"; MO$; " in ";: COLOR 12: PRINT "year"; STR$(YR);: COLOR 15: PRINT "."
200 GOSUB 880
210 PRINT "You are employing";: COLOR 11: PRINT LA;: COLOR 15: PRINT "laborers, working for you on";
220 COLOR 11: PRINT AC;: COLOR 15: PRINT "acres."
240 GOSUB 880
250 PRINT "Crops:",: COLOR 11: PRINT CO;: COLOR 15: PRINT "corn"
260 COLOR 11: PRINT , BA;: COLOR 15: PRINT "barley"
270 COLOR 11: PRINT , WH;: COLOR 15: PRINT "wheat"
280 RETURN
290 PRINT: CS$ = STR$(CS): CS$ = RIGHT$(CS$, LEN(CS$) - 1)
300 PRINT "It will be ";: COLOR 11: PRINT "$"; CS$;: COLOR 15: PRINT " in general costs to work each acre... and so the"
310 PRINT "maximum number of acres you can work this year is";
340 MAX = INT(MO / CS): IF MAX > AC THEN MAX = AC
350 COLOR 11: PRINT STR$(MAX);: COLOR 15: PRINT "."
360 COLOR 10: PRINT: PRINT "How much land do you want to harvest";
370 INPUT L: COLOR 15
380 IF L > MAX THEN 370
390 MO = MO - L * CS
400 GOSUB 170
410 COLOR 10: PRINT: PRINT "How much will you pay each worker";
420 INPUT W: COLOR 15
430 IF W * LA > MO THEN 420
440 MO = MO - LA * W
450 GOSUB 170
460 P = 10
470 COLOR 10: PRINT: PRINT "What proportion (out of ten) do wish to concentrate on corn";
490 INPUT CP: COLOR 15
500 IF CP > P THEN 490
510 P = P - CP
520 COLOR 10: PRINT "Of the remaining"; P; "out of 10, ";
530 PRINT "how much do you wheat will you plant";
540 INPUT WP: COLOR 15
550 IF WP > P THEN 540
560 P = P - WP
570 GOSUB 870
580 PRINT "Stand by for a year..."
590 XX = 2.0: GOSUB 1000
600 BA = INT(P * L * LA * W * 3 / 100000)
610 CO = INT(CP * L * LA * W * 2.7 / 17000)
620 WH = INT(WP * L * LA * W * 1.4 / 9300)
630 T = BA + CO + WH
640 GOSUB 170
650 PRINT: PRINT T; "tons were harvested."
660 RT = INT((.5 + 8.7 * BA + 5.94 * CO + 2.2 * WH) * (CS - CX + 1))
670 IF BA = 0 AND CO = 0 AND WH = 0 THEN RT = 0
680 XX = 1.0: GOSUB 1000
690 RT$ = STR$(RT): RT$ = RIGHT$(RT$, LEN(RT$) - 1)
700 PRINT: PRINT "And your total return was $"; RT$; "."
710 MO = MO + RT
720 LA = INT(LA - LA / (W + .01))
730 XX = 2.0: GOSUB 1000
740 RETURN
750 GOSUB 870
760 PRINT "You have survived for 10 years.  Congratulations!"
780 END
790 GOSUB 870
800 PRINT "You have gone broke!"
810 END
820 GOSUB 870
830 PRINT "You have no workers, and have been forced to sell your farm."
860 END
870 CLS
880 PRINT
890 RETURN
1000 ST = TIMER + XX
1010 IF TIMER < ST THEN 1010
1020 RETURN

