100 REM ONE MILLION WORDS
110 REM COPYRIGHT FREDERICK HOLTZ AND ASSOCIATES 
120 REM 3/15/83
130 REM PROGRAM RUNS IN TI-BASIC
140 DIM A(26)
150 CALL CLEAR
160 FOR X=1 TO 26
170 A(X)=X+64
180 NEXT X
190 RANDOMIZE
200 CALL CLEAR
210 RN=INT(RND*26)+1
220 CV=CV+1
230 PRINT CHR$(A(RN));
240 IF CV<=28 THEN 260
250 CV=0 
260 GH=GH+1
270 IF GH=616 THEN 290
280 GOTO 210
290 PRINT
300 PRINT
310 INPUT "PRESS ENTER FOR NEW PUZZLE.":ER$
320 GH=0
330 CV=0
340 GOTO 200
