100 REM PHONE TRANSLATOR
110 CALL CLEAR
111 PRINT "RING ... RING ... RING": : : : : : : :
112 PRINT "TYPE IN THE TELEPHONE #     (NO DASHES PLEASE) ";
120 CHAR$="000111ABCDEFGHIJKLMNOPRSTUVWXY"
130 FOR I=1 TO 7
140 CALL KEY(3,KEY,STATUS)
150 IF STATUS<1 THEN 140
160 IF (KEY<48)+(KEY>57)*(KEY<65)+(KEY>89)THEN 140
170 IF KEY=ASC("Q")THEN 140
180 PRINT CHR$(KEY);
190 IF KEY<58 THEN 210
200 KEY=INT((POS(CHAR$,CHR$(KEY),1)-1)/3)+49
210 NUMB(I)=(KEY-48)*3
220 NEXT I
230 CALL CLEAR
240 FOR A=1 TO 3
250 FOR B=1 TO 3
260 FOR C=1 TO 3
270 FOR D=1 TO 3
280 FOR E=1 TO 3
290 FOR F=1 TO 3
300 FOR G=1 TO 3
310 PRINT SEG$(CHAR$,NUMB(1)+A,1);
320 PRINT SEG$(CHAR$,NUMB(2)+B,1);
330 PRINT SEG$(CHAR$,NUMB(3)+C,1);
340 PRINT SEG$(CHAR$,NUMB(4)+D,1);
350 PRINT SEG$(CHAR$,NUMB(5)+E,1);
360 PRINT SEG$(CHAR$,NUMB(6)+F,1);
370 PRINT SEG$(CHAR$,NUMB(7)+G,1),
380 NEXT G
390 NEXT F
400 NEXT E
410 NEXT D
420 NEXT C
430 NEXT B
440 NEXT A
