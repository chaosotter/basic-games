
50 REM *** NAME THAT COLOR
60 CLS
62 PRINT@35,"***  NAME THAT COLOR!  ***"
64 FOR PAUSE=1 TO 1000:NEXT PAUSE
69 DIM CHART$(9)
70 FOR L=1 TO 9:READ CHART$(L):NEXT L
72 FOR L=1 TO 9:READ CO(L):NEXT L
100 FOR I=1 TO 9
110 CLS CO(I)
130 J=1
135 PRINT@237,"       ";
140 PRINT@237,CHART$(J);
150 GUESS$="":NAME$=" "
160 K$=INKEY$:IF K$=""THEN 160
165 KEY=ASC(K$)
170 IF KEY=32 THEN 210
180 IF KEY<>13 THEN GOTO 160
185 GOSUB 2510
190 IF GUESS$=NAME$ THEN GOSUB 1010:GOTO 220
200 GOSUB 2010
205 CLS CO(I):GOTO 135
210 J=J+1:IF J<10 THEN 135
215 IF GUESS$<>NAME$ THEN 130
220 NEXT I
250 CLS:END
1000 REM ***HAPPY FACE***
1010 FOR A=0 TO 2
1015 PRINT @A*32+365,CHR$(128);
1020 PRINT CHR$(128);CHR$(128);
1025 PRINT CHR$(128);
1030 NEXT A
1050 REM MOUTH RED
1055 SET(27,26,4):SET(28,27,4)
1060 SET(29,27,4):SET(30,27,4)
1065 SET(31,27,4):SET(32,26,4)
1070 REM NOSE ORANGE
1075 SET(29,25,8)
1110 SET(28,23,3)
1140 SET(31,23,3)
1200 PRINT@492,"RIGHT!";
1260 FOR W=180 TO 240 STEP 8
1270 SOUND W,1
1280 NEXT W
1290 FOR A=1 TO 900:NEXT A
1300 FOR A=1 TO 4:PRINT @(333+32*A)," ":NEXT A:PRINT @492,"      ";
1350 RETURN
2000 REM ***SAD FACE***
2010 FOR A=0 TO 2
2020 PRINT @A*32+365,CHR$(128);
2025 PRINT CHR$(128);CHR$(128);
2030 PRINT CHR$(128);
2035 NEXT A
2050 REM MOUTH RED
2055 SET(28,26,4):SET(29,25,4)
2070 SET(30,25,4):SET(31,26,4)
2075 SET(27,27,4):SET(32,27,4)
2105 REM EYES BLUE
2110 SET(28,23,3)
2140 SET(31,23,3)
2150 PRINT@486, "SORRY ... TRY AGAIN";
2160 REM SAD SOUND
2170 SOUND 32,8
2180 SOUND 16,16
2220 FOR A=1 TO 500: NEXT A
2230 FOR A=1 TO 5
2235 PRINT@(288+32*A)," ":NEXT A:PRINT@486,"                   ";
2250 RETURN
2500 REM *** TEST ANSWER
2510 GUESS$=CHART$(J)
2520 NAME$=CHART$(I)
2560 RETURN
3000 REM COLOR DATA
3005 DATA BLACK,GREEN,YELLOW,BLUE,RED,BUFF,CYAN,MAGENTA,ORANGE
3010 DATA 0,1,2,3,4,5,6,7,8
