100 REM MATHEMATICAL PROGRESSION 
110 REM COPYRIGHT FREDERICK HOLTZ AND ASSOCIATES 4/20/83
120 REM PROGRAM RUNS IN TI-BASIC
130 CALL CLEAR
140 FOR A=1 TO 10
150 B=A/8
160 PRINT B;
170 NEXT A
180 BB=11/8
190 GOSUB 390
200 CALL CLEAR
210 FOR A=20 TO 35
220 B=A*.5
230 PRINT B;
240 NEXT A
250 BB=36*.5
260 GOSUB 390
270 CALL CLEAR
280 FOR A=20 TO 36
290 B=SQR(A)
300 PRINT B;
310 NEXT A
320 BB=SQR(37)
330 GOSUB 390
340 CALL CLEAR
350 PRINT "THE GAME IS ENDED "
360 PRINT "YOU HAD";W;"WRONG ANSWERS"
370 PRINT "OUT OF";R;"ATTEMPTS."
380 END
390 PRINT
400 PRINT
410 R=R+1
420 PRINT "WHAT IS THE NEXT NUMBER"
430 PRINT "IN THIS SEQUENCE?"
440 INPUT AA
450 IF AA=BB THEN 560
460 PRINT "WRONG ANSWER!!"
470 W=W+1
480 PRINT "DO YOU WANT TO TRY AGAIN (Y/N)?"
490 INPUT AG$
500 IF AG$="Y" THEN 390
510 PRINT "THE CORRECT ANSWER IS";BB
520 PRINT
530 PRINT
540 INPUT "PRESS ENTER":AS$
550 RETURN
560 PRINT "THAT IS CORRECT!!"
570 GOTO 540
