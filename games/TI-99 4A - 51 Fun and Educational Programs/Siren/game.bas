100 REM -SIREN
110 CALL CLEAR
120 PRINT "*********  SIREN  *********"
130 PRINT
140 PRINT
150 PRINT "HIT ENTER TO START SIREN"
160 INPUT ENTER$
170 PRINT
180 PRINT
190 PRINT "TO STOP: HIT FUNCTION AND 4-KEY TOGETHER!"
200 FOR F=500 TO 800 STEP 20
210 CALL SOUND(-100,F,2)
220 NEXT F
230 FOR F=800 TO 500 STEP -20
240 CALL SOUND(-100,F,2)
250 NEXT F
260 GOTO 200
