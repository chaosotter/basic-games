10 REM Moonlander
20 HS = -10000
30 RANDOMIZE TIMER
40 A = -20 - INT(RND * 60): REM Initial velocity
50 B = 1200 + INT(RND * 380): REM Height
60 C = 320 + INT(RND * 90): REM Fuel
70 CLS
80 PRINT: PRINT: PRINT
90 B = INT(B): A = INT(A): C = INT(C)
100 COLOR 13: PRINT TAB(15); "Height:";: COLOR 11: PRINT B;
105 COLOR 13: PRINT TAB(35); "Velocity: ";: COLOR 11: PRINT A;
110 COLOR 13: PRINT TAB(55); "Fuel:";: COLOR 11: PRINT C: COLOR 15
120 FOR Q = 1 TO 16 - B / 100
130 PRINT
140 NEXT Q
150 PRINT TAB(40 + RND * 3 - RND * 3); CHR$(247); CHR$(234); CHR$(247)
160 FOR Q = 16 - B / 100 TO 16
170 PRINT
180 NEXT Q
190 XX = 0.2: GOSUB 1000
200 COLOR 10: INPUT "Thrust"; T: COLOR 15
210 XX = 0.5: GOSUB 1000
220 IF T > C THEN T = 0
230 C = C - T
240 B = B + A + (T - 5) / 2
250 A = A + (T - 5) / 2
260 IF C < 1 AND B > 100 THEN 300
270 IF ABS(B) < 20 AND ABS(A) < 15 THEN PRINT "You have landed safely!  Well done, intrepid captain.": SCORE = C * 234: GOTO 340
280 IF B > 19 THEN 70
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
400 XX = 3.0: GOSUB 1000
410 GOTO 40
1000 ST = TIMER + XX
1010 IF TIMER < ST THEN 1010
1020 RETURN

