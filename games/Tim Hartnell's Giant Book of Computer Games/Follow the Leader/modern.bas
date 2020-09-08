10 REM FOLLOW THE LEADER
20 REM *************************
30 T = 1000
40 RANDOMIZE TIMER
50 A = 1000 * INT(RND(1) * 9999) + INT(RND(1) * 9999)
60 A$ = STR$(A)
70 A$ = "2" + RIGHT$(A$, 7)
80 Z = 1
90 IF MID$(A$, Z, 1) = " " THEN 50
100 IF Z < 8 THEN Z = Z + 1: GOTO 90
110 Q = 1
120 REM ************************
130 CLS: COLOR 15
140 LOCATE 10, 1: PRINT TAB(40 - Q / 2);: COLOR 11
150 IF Q = 8 THEN 270
160 FOR Z = 1 TO Q
170 PRINT MID$(A$, Z, 1);
180 NEXT Z: COLOR 15
190 XX = T / 1000: GOSUB 1000
200 CLS
210 IF INKEY$ <> "" THEN 210
220 LOCATE 12, 36: COLOR 10: INPUT B$: COLOR 15
230 IF B$ = "" THEN 220
240 IF B$ <> LEFT$(A$, Q) THEN PRINT: PRINT "You blew it, turkey!  Your score was"; STR$(37 * (1100 - T + 10 * Q)); ".": END
250 IF Q < 8 THEN Q = Q + 1: GOTO 130
260 REM ************************
270 COLOR 15: PRINT: PRINT "You did it, champ!"
280 IF T = 500 THEN PRINT: PRINT: PRINT "You are the ultimate champ!": END
290 PRINT: COLOR 12: PRINT "Stand by for a more difficult one...": COLOR 15
300 T = T - 100
310 XX = 1.0: GOSUB 1000
320 GOTO 50
330 END
1000 ST = TIMER + XX
1010 IF TIMER < ST THEN 1010
1020 RETURN

