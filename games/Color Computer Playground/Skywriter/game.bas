
50 REM *** THE SKYWRITER
60 CLS
65 PRINT@36,"***  THE SKYWRITER  ***"
70 FOR PAUSE=1 TO 1000:NEXT PAUSE
100 CLS
110 PRINT@353,"WHAT IS YOUR MESSAGE";:INPUT N$
115 IF N$=""THEN 180
120 CLS
130 FOR I=1 TO 150
150 PRINTN$;" ";
160 GO SUB 3000
172 NEXT I
174 FOR PAUSE=1 TO 2000:NEXT PAUSE
176 GOTO 100
180 END
3000 REM *** SKYWRITER SOUND
3020 SOUND89,1
3030 FOR K=1 TO 20:NEXT K
3040 RETURN
