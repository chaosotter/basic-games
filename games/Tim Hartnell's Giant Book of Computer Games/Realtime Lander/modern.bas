10 REM Realtime Lander
20 HS = -10000
30 RANDOMIZE TIMER
40 A = 0
50 B = 1200 + INT(RND * 380): B1 = B: REM Height
60 C = 720 + INT(RND * 90): REM Fuel
70 CLS
80 PRINT: PRINT: PRINT
90 B = INT(B): A = INT(A): C = INT(C)
100 IF B > B1 THEN B = B1
110 COLOR 13: PRINT TAB(15); "Height:";: COLOR 11: PRINT B;
105 COLOR 13: PRINT TAB(35); "Velocity: ";: COLOR 11: PRINT A;
120 COLOR 13: PRINT TAB(55); "Fuel:";: COLOR 11: PRINT C: COLOR 15
130 FOR Q = 1 TO 16 - B / 100
140 PRINT
150 NEXT Q
160 PRINT TAB(40 + RND * 3 - RND * 3); CHR$(247); CHR$(234); CHR$(247);
170 FOR Q = 16 - B / 100 TO 16
180 PRINT
190 NEXT Q
200 T = 0
210 T$ = INKEY$: T = VAL(T$) * 1.7
215 XX = 0.1: GOSUB 1000
216 IF T$ = "" THEN T$ = INKEY$: T = VAL(T$) * 1.7
217 XX = 0.1: GOSUB 1000
220 IF T > C THEN T = 0
230 C = C - T
240 B = B + A + (T - 5) / 2
250 A = A + (T - 5) / 2
260 IF C < 1 AND B > 100 THEN 300
270 IF ABS(B) < 40 AND ABS(A) < 25 THEN PRINT "You have landed safely!  Well done, intrepid captain": SCORE = C * 234: GOTO 340
280 IF B > 39 THEN 70
290 IF C > 1 THEN 310
300 PRINT "You have run out of fuel!"
310 PRINT "Your ship crashed at"; ABS(A); "km/h, creating a"; INT(ABS(A) * 45); "meter deep crater."
330 SCORE = 100 - ABS(A)
340 XX = 1.0: GOSUB 1000
350 PRINT: PRINT
360 PRINT "Your galactic rating is"; STR$(SCORE); "."
370 IF SCORE > HS THEN HS = SCORE
380 PRINT: COLOR 14: PRINT "Best rating so far is"; HS: COLOR 15
390 PRINT: PRINT "Please stand by for your next mission..."
400 XX = 1.0: GOSUB 1000
410 IF INKEY$ <> "" THEN 410
420 GOTO 40
1000 ST = TIMER + XX
1010 IF TIMER < ST THEN 1010
1020 RETURN

