50 REM *** ROLLER COASTER
62 CLS(0)
65 PRINT@260,"***   ROLLER COASTER!   ***"
66 FOR PAUSE=1 TO 1000:NEXT PAUSE
90 PI=3.14159
100 CLS(0)
130 FOR X=0 TO 63
132 DEG=360/63*X
135 RAD=DEG*PI/180
140 Y2=SIN(RAD)
145 Y=INT(-15*Y2+15)
150 SET(X,Y,RND(7))
152 FOR J=Y+2 TO 31
153 SET(X,J,7)
154 NEXT J
190 NEXT X
200 GOTO200
