
50 REM *** COUNT IN SPANISH
60 CLS
65 PRINT@33,"*** COUNT TO 10 IN SPANISH ***"
67 FOR PAUSE=1 TO 1000:NEXT PAUSE
76 B$=" "
80 DIM M(10):DIM N$(10)
82 FOR I=0 TO 10
84 READ M(I)
88 NEXT I
90 FOR I=0 TO 10
92 READ N$(I)
94 NEXT I
100 CLS
110 FOR I=1 TO 11
120 PRINT@329,B$:PRINT@329,"NUMBER (0-10)";
122 INPUT A$
130 IF VAL(A$)<0 OR VAL(A$)>10 THEN 120
132 IF ASC(A$) <48 OR ASC(A$) >57 THEN 120
135 K=VAL(A$)
165 PRINT@354,"SAY IN english AND spanish"
170 PRINT@398,K
175 GOSUB 3010:REM * CENTER NUMBER
190 SOUND M(K),6
200 FOR PAUSE=1 TO 800:NEXT PAUSE
220 PRINT@320,B$
230 PRINT:PRINT:PRINT
240 NEXT I
250 CLS
255 PRINT@397,"AGAIN";:INPUT A$
257 IF A$="Y" THEN 100
260 IF A$<>"N" THEN 250
270 CLS:END
3000 REM *** CENTER NUMBER SUBROUTINE
3010 N$=N$(K)
3020 PRINT@431-INT((LEN(N$))/2),N$
3030 RETURN
5000 DATA 89,108,125,133,147,159,170,176,185,193,197
5010 DATA CERO,UNO,DOS,TRES,CUATRO,CINCO,SEIS,SIETE,OCHO,NUEVE,DIEZ
