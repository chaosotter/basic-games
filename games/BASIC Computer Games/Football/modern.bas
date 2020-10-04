1 CLS: COLOR 12: PRINT TAB(36); "Football"
2 PRINT TAB(31); "Creative Computing": PRINT TAB(29); "Morristown, New Jersey"
3 PRINT: PRINT: PRINT: RANDOMIZE TIMER: COLOR 15
100 REM
120 DIM A(20), B(20), C(40), H(2), T(2), W(2), X(2), Y(2), Z(2)
130 DIM M$(2), D(2), P$(20)
140 PRINT "Presenting N.F.U. football (No Fortran Used)!"
145 PRINT
150 COLOR 10: INPUT "Do you want instructions (Y/N)"; A$: COLOR 15
160 IF LEFT$(A$, 1) = "N" OR LEFT$(A$, 1) = "n" THEN 290
165 IF LEFT$(A$, 1) <> "Y" AND LEFT$(A$, 1) <> "y" THEN 150
167 COLOR 14: PRINT
170 PRINT "This is a football game for two teams in which players must prepare a tape with"
180 PRINT "a data statement (1770 for Team 1, 1780 for team 2) in which each team"
190 PRINT "scrambles numbers 1-20.  These numbers are then assigned to twenty given plays."
195 PRINT
200 PRINT "A list of numbers and their plays is provided with both teams having the same"
210 PRINT "plays.  The more similar the plays, the less yardage gained.  Scores are given"
220 PRINT "whenever scores are made.  Sscores may also be obtained by inputting 99,99 for"
225 PRINT "play numbers.  To punt or attempt a field goal, input 77,77 for play numbers."
230 PRINT "Questions will be asked then.  On 4th down, you will also be asked whether you"
240 PRINT "want to punt or attempt a field goal.  If the answer to both questions is no,"
250 PRINT "it will be assumed you want to try and gain yardage."
260 PRINT
270 PRINT "The game is played until players terminate (Control-C).  Please prepare a tape"
280 PRINT "and run."
290 PRINT: COLOR 10: PRINT "Please input score limit on game";: INPUT E: COLOR 15
300 FOR I = 1 TO 40: READ N: IF I > 20 THEN 350
330 A(N) = I: GOTO 360
350 B(N) = I - 20
360 C(I) = N: NEXT I
370 FOR I = 1 TO 20: READ P$(I): NEXT I
380 L = 0: T = 1
410 PRINT , "Team"; T; "Play Chart"
420 COLOR 11: PRINT , "Number", "Play"
430 FOR I = 1 TO 20
440 REM
450 COLOR 13: PRINT , C(I + L), P$(I)
460 NEXT I: COLOR 15
470 PRINT: COLOR 12: PRINT "(Press any key.)";
475 ZZ$ = INKEY$: IF ZZ$ = "" THEN 475
630 L = L + 20: T = 2
640 PRINT
660 FOR X = 1 TO 11: PRINT: NEXT X
680 IF L = 20 THEN 410
690 D(1) = 0: D(2) = 3: M$(1) = "--->": M$(2) = "<---"
700 H(1) = 0: H(2) = 0: T(1) = 2: T(2) = 1
710 W(1) = -1: W(2) = 1: X(1) = 100: X(2) = 0
720 Y(1) = 1: Y(2) = -1: Z(1) = 0: Z(2) = 100
725 GOSUB 1910
730 PRINT "Team 1 defends 0-yard goal -- Team 2 defends 100-yard goal."
740 T = INT(2 * RND(1) + 1)
760 PRINT: PRINT "The coin is flipped."
765 P = X(T) - Y(T) * 40
770 GOSUB 1860: PRINT: PRINT "Team"; T; "receives the kick-off."
780 K = INT(26 * RND(1) + 40)
790 P = P - Y(T) * K
794 IF W(T) * P < Z(T) + 10 THEN 810
795 PRINT: PRINT "Ball went out of endzone... --automatic touchback--"
796 GOTO 870
810 PRINT "Ball went"; K; "yards.  Now on the"; STR$(P); ".": GOSUB 1900
830 COLOR 10: PRINT "Team"; STR$(T); ", do you want to runback (Y/N)";: INPUT A$: COLOR 15
840 IF LEFT$(A$, 1) = "Y" OR LEFT$(A$, 1) = "y" THEN 1430
845 IF LEFT$(A$, 1) <> "N" AND LEFT$(A$, 1) <> "n" THEN 830
850 IF W(T) * P < Z(T) THEN 880
870 P = Z(T) - W(T) * 20
880 D = 1: S = P
885 FOR I = 1 TO 72: PRINT "=";: NEXT I
890 PRINT: COLOR 12: PRINT "Team"; T; " Down"; D; " On"; P: COLOR 15
893 IF D <> 1 THEN 900
895 IF Y(T) * (P + Y(T) * 10) >= X(T) THEN 898
897 C = 4: GOTO 900
898 C = 8
900 IF C = 8 THEN 904
901 PRINT TAB(27); 10 - (Y(T) * P - Y(T) * S); "yards to 1st down."
902 GOTO 910
904 PRINT TAB(27); X(T) - Y(T) * P; "yards."
910 GOSUB 1900: IF D = 4 THEN 1180
920 REM
930 U = INT(3 * RND(0) - 1): GOTO 940
936 PRINT "Illegal play number.  Check again."
940 COLOR 10: PRINT "Input offensive play, defensive play (1-20, 77, 99)";
950 IF T = 2 THEN 970
960 INPUT P1, P2: COLOR 15: GOTO 975
970 INPUT P2, P1: COLOR 15
975 IF P1 = 77 THEN 1180
980 IF P1 > 20 THEN 1800
985 IF P1 < 1 THEN 1800
990 IF P2 > 20 THEN 1800
992 IF P2 < 1 THEN 1800
995 P1 = INT(P1): P2 = INT(P2)
1000 Y = INT(ABS(A(P1) - B(P2)) / 19 * ((X(T) - Y(T) * P + 25) * RND(1) - 15))
1005 PRINT: IF T = 2 THEN 1015
1010 IF A(P1) < 11 THEN 1048
1012 GOTO 1020
1015 IF B(P2) < 11 THEN 1048
1020 IF U <> 0 THEN 1035
1025 PRINT "Pass incomplete for Team"; STR$(T); "."
1030 Y = 0: GOTO 1050
1035 G = RND(1): IF G > .025 THEN 1040
1037 IF Y > 2 THEN 1045
1040 PRINT "Quarterback scrambled.": GOTO 1050
1045 PRINT "Pass completed.": GOTO 1050
1048 PRINT "The ball was run."
1050 P = P - W(T) * Y
1055 Y$ = STR$(Y): IF Y >= 0 THEN Y$ = RIGHT$(Y$, LEN(Y$) - 1)
1060 PRINT: PRINT "Net yards gained on down"; D; "are "; Y$; "."
1070 G = RND(1): IF G > .025 THEN 1110
1080 PRINT: PRINT "*** Loss of possession from Team"; T; "to Team"; STR$(T(T)); "."
1100 GOSUB 1850: PRINT: T = T(T): GOTO 830
1110 IF Y(T) * P >= X(T) THEN 1320
1120 IF W(T) * P >= Z(T) THEN 1230
1130 IF Y(T) * P - Y(T) * S >= 10 THEN 880
1140 D = D + 1: IF D <> 5 THEN 885
1160 PRINT: PRINT "Conversion unsuccessful for Team"; STR$(T); ".": T = T(T)
1170 GOSUB 1850: GOTO 880
1180 COLOR 10: PRINT "Does Team"; T; "want to punt (Y/N)";: INPUT A$: COLOR 15
1185 IF LEFT$(A$, 1) = "N" OR LEFT$(A$, 1) = "n" THEN 1200
1187 IF LEFT$(A$, 1) <> "Y" AND LEFT$(A$, 1) <> "y" THEN 1180
1190 PRINT: PRINT "Team"; T; "will punt.": G = RND(1): IF G < .025 THEN 1080
1195 GOSUB 1850: K = INT(25 * RND(1) + 35): T = T(T): GOTO 790
1200 COLOR 10: PRINT "Does Team"; T; "want to attempt a field goal (Y/N)";: INPUT A$: COLOR 15
1210 IF LEFT$(A$, 1) = "Y" OR LEFT$(A$, 1) = "y" THEN 1640
1215 IF LEFT$(A$, 1) <> "N" AND LEFT$(A$, 1) <> "n" THEN 1200
1217 GOTO 920
1230 PRINT: PRINT "Safety against Team"; T; "  **********************   Uh-oh!"
1240 H(T(T)) = H(T(T)) + 2: GOSUB 1810
1280 COLOR 10: PRINT "Team"; STR$(T); ", do you want to punt instead of a kickoff (Y/N)";: INPUT A$: COLOR 15
1290 P = Z(T) - W(T) * 20: IF LEFT$(A$, 1) = "Y" OR LEFT$(A$, 1) = "y" THEN 1190
1320 PRINT: PRINT "Touchdown by Team"; T; "  *********************   YAY TEAM!"
1340 Q = 7: G = RND(1): IF G > .1 THEN 1380
1360 Q = 6: PRINT "Extra point no good.": GOTO 1390
1380 PRINT "Extra point good."
1390 H(T) = H(T) + Q: GOSUB 1810
1420 T = T(T): GOTO 765
1430 K = INT(9 * RND(0) + 1)
1440 R = INT(((X(T) - Y(T) * P + 25) * RND(1) - 15) / K)
1460 P = P - W(T) * R
1480 PRINT: PRINT "Runback for Team"; T; "of"; R; "yards."
1485 G = RND(1): IF G < .025 THEN 1080
1490 IF Y(T) * P >= X(T) THEN 1320
1500 IF W(T) * P >= Z(T) THEN 1230
1510 GOTO 880
1640 PRINT: PRINT "Team"; T; "will attempt a field goal."
1645 G = RND(1): IF G < .025 THEN 1080
1650 F = INT(35 * RND(1) + 20)
1660 PRINT: PRINT "Kick is"; F; "yards long."
1680 P = P - W(T) * F: G = RND(1)
1690 IF G < .35 THEN 1735
1700 IF Y(T) * P < X(T) THEN 1740
1710 PRINT "Field goal good for Team"; T; "  *********************   YEAH!"
1720 Q = 3: GOTO 1390
1735 PRINT "Ball went wide."
1740 PRINT "Field goal unsuccessful for Team"; T; "  -----------------   Too bad."
1742 GOSUB 1850: IF Y(T) * P < X(T) + 10 THEN 1745
1744 T = T(T): GOTO 794
1745 PRINT: PRINT "Ball now on the"; STR$(P); "."
1750 T = T(T): GOSUB 1900: GOTO 830
1770 DATA 17,8,4,14,19,3,10,1,7,11,15,9,5,20,13,18,16,2,12,6
1780 DATA 20,2,17,5,8,18,12,11,1,4,19,14,10,7,9,15,6,13,16,3
1790 DATA "Pitchout","Triple Reverse","Draw","QB Sneak","End Around"
1792 DATA "Double Reserve","Left Sweep","Right Sweep","Off Tackle"
1794 DATA "Wishbone Option","Flare Pass","Screen Pass"
1796 DATA "Roll Out Option","Right Curl","Left Curl","Wishbone Option"
1798 DATA "Sideline Pass","Halfback Option","Razzle-Dazzle","Bomb!!!"
1800 IF P1 <> 99 THEN 936
1810 PRINT: COLOR 13: PRINT "Team 1 score is"; STR$(H(1)); "."
1820 COLOR 11: PRINT "Team 2 score is"; STR$(H(2)); ".": PRINT: COLOR 15
1825 IF H(T) < E THEN 1830
1827 PRINT "Team"; T; "wins!!!!!!": GOTO 2000
1830 IF P1 = 99 THEN 940
1835 RETURN
1850 PRINT
1860 FOR X = 1 TO 72: PRINT "+";: NEXT X: PRINT
1870 RETURN
1900 PRINT TAB(D(T) + 5 + P / 2); M$(T)
1910 COLOR 13: PRINT "Team 1";: COLOR 14: PRINT " [0   10   20   30   40   50   60   70   80   90";
1915 PRINT "   100] ";: COLOR 11: PRINT "Team 2": COLOR 15
1920 PRINT
1930 RETURN
2000 END

