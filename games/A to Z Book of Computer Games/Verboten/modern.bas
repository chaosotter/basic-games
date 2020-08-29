5 CLS: COLOR 12
10 REM  "VERBOTEN"
15 PRINT TAB(36); "Verboten": PRINT: PRINT
20 REM
25 RANDOMIZE TIMER
30 GOSUB 9000
40 DIM A$(26), X(26), R(2)
50 COLOR 10: PRINT "Do you want instructions (Y/N)";
60 INPUT Q$
70 IF LEFT$(Q$, 1) = "Y" OR LEFT$(Q$, 1) = "y" THEN 110
80 IF LEFT$(Q$, 1) = "N" OR LEFT$(Q$, 1) = "n" THEN 120
90 PRINT "Was gibt es?"
100 GOTO 50
110 GOSUB 1000
120 GOSUB 2000
130 GOSUB 3000
140 GOSUB 4000
150 GOSUB 5000
160 GOSUB 6000
170 IF X$ <> " " THEN 160
180 LET T1 = T1 + R(1)
190 LET T2 = T2 + R(2)
200 LET R = R + 1
210 COLOR 11: PRINT: PRINT "Round"; R, "Total"
220 COLOR 13: PRINT "#1 ="; R(1), T1
230 COLOR 13: PRINT "#2 ="; R(2), T2
240 COLOR 15: PRINT
250 COLOR 10: PRINT "Go again (Y/N)";
260 LET Q$ = " "
270 INPUT Q$
280 IF LEFT$(Q$, 1) = "Y" OR LEFT$(Q$, 1) = "y" THEN 130
290 IF LEFT$(Q$, 1) = "N" OR LEFT$(Q$, 1) = "n" THEN 320
300 PRINT "Was ist los?"
310 GOTO 250
320 COLOR 10: PRINT "New game (Y/N)";
330 LET Q$ = " "
335 INPUT Q$: COLOR 15
340 IF LEFT$(Q$, 1) = "N" OR LEFT$(Q$, 1) = "n" THEN 400
350 LET T1 = 0
360 LET T2 = 0
370 IF LEFT$(Q$, 1) = "Y" OR LEFT$(Q$, 1) = "n" THEN 130
380 PRINT "Was gibt es?"
390 GOTO 320
400 PRINT: PRINT "Auf Wiedersehen."
410 END
1000 COLOR 14: PRINT
1010 PRINT "You and a friend take turns.  Type any letter of the alphabet that hasn't"
1020 PRINT "already been picked.  Each letter is worth one point, except that in each"
1030 PRINT "round, one is a bonus which will double your score, and one is Verboten!,"
1040 PRINT "which will erase your score.  When the forbidden letter is picked, the round"
1050 PRINT "ends and your scores are updated.  The next round begins with a new alphabet."
1160 PRINT: COLOR 15
1170 RETURN
1999 REM  "ALPHA TABLE"
2000 DATA A,B,C,D,E,F,G,H,I,J,K,L,M
2010 DATA N,O,P,Q,R,S,T,U,V,W,X,Y,Z
2020 FOR I = 1 TO 26
2030 READ A$(I)
2040 NEXT I
2050 RESTORE
2060 RETURN
2999 REM  "CLEAR TANK"
3000 LET R(1) = 0
3010 LET R(2) = 0
3020 FOR I = 1 TO 26
3030 LET X(I) = 0
3040 NEXT I
3050 RETURN
3999 REM  "BONUS LETTER"
4000 LET B = INT(100 * RND(1)) + 1
4010 IF B > 26 THEN 4000
4020 RETURN
4999 REM  "VERBOTEN LETTER"
5000 LET V = INT(100 * RND(1)) + 1
5010 IF V > 26 THEN 5000
5020 IF V = 8 THEN 5000
5030 RETURN
5999 REM  "PLAYER INPUT"
6000 IF P <> 1 THEN 6030
6010 LET P = 2
6020 GOTO 6040
6030 LET P = 1
6040 COLOR 10: PRINT "Player"; STR$(P); ", your letter";
6050 LET X$ = " "
6060 COLOR 10: INPUT X$: COLOR 15
6065 IF X$ >= "a" AND X$ <= "z" THEN X$ = CHR$(ASC(X$) - 32)
6070 FOR I = 1 TO 26
6080 IF X$ = A$(I) THEN 6130
6090 NEXT I
6100 PRINT "Frisch auf!"
6110 PRINT
6120 GOTO 6040
6130 IF X(I) <> 0 THEN 6260
6140 LET X(I) = P
6150 IF I = V THEN 6220
6160 IF I = B THEN 6190
6170 LET R(P) = R(P) + 1
6180 RETURN
6190 PRINT "*** BONUS ***"
6200 LET R(P) = R(P) * 2
6210 RETURN
6220 PRINT "VERBOTEN!"
6230 LET R(P) = 0
6240 LET X$ = " "
6250 RETURN
6260 IF X(I) = P THEN 6300
6270 PRINT "Your friend ";
6280 PRINT "picked "; X$; " before."
6290 GOTO 6050
6300 PRINT "You ";
6310 GOTO 6280
9000 REM  "RANDOM NUMBER ROUTINE"
9010 LET Z = RND(1)
9020 RETURN

