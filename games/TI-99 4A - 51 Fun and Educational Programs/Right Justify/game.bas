100 REM -"RIGHT JUSTIFY"
110 REM -PROGRAM CONTAINS
120 REM -A ROUTINE TO RIGHT
130 REM -JUSTIFY A NUMBER
140 REM -BEFORE PRINTING IT.
150 REM -NUMBERS ARE
160 REM -JUSTIFIED TO 7
170 REM -POSITIONS
180 CALL CLEAR
190 PRINT "**** RIGHT JUSTIFY ****"
200 PRINT
210 PRINT
220 READ A$,B
230 IF A$="END" THEN 430
240 X=B
250 GOSUB 290
260 B$=X$
270 PRINT A$,B$
280 GOTO 220
290 REM =RIGHT JUSTIFY
300 X$=STR$(X)
310 L=LEN(X$)
320 IF L>=7 THEN 350
330 X$=" "&X$
340 GOTO 310
350 RETURN
360 DATA JONES,1234
370 DATA HARRIS,4
380 DATA JOHNSON,12345
390 DATA FRANKLIN,280
400 DATA KING,456678
410 DATA KLINE,1234567
420 DATA END,0
430 END
