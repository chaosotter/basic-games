
50 REM *** DO-RE-MI GAME
60 CLS
65 PRINT@36,"***  DO-RE-MI  GAME  ***"
67 FOR PAUSE=1 TO 1000:NEXT PAUSE
80 DIM KEY(8)
90 DIM MUSIC(8)
92 GOSUB 3010
100 CLS
110 GOSUB 3510
120 FOR N=1 TO 8
130 SOUND MUSIC(N),32
140 J=1
142 PRINT@238,"    ";:REM 4 SPACES
145 IF J<>8 THEN 150
147 PRINT@238,"HI-";CHR$(KEY(J));
148 GOTO 170
150 PRINT@239,CHR$(KEY(J));
170 K$=INKEY$:IF K$="" THEN 170
172 K=ASC(K$)
180 IF K=32 THEN 230
190 IF K<>13 THEN 170
200 IF J=N THEN GOSUB 1010:GOTO 240
210 GOSUB 2010:SOUND MUSIC(N),24:GOSUB 3510
230 J=J+1:IF J<9 THEN 142
235 GOTO 140
240 IF N<8 THEN GOSUB 3510
245 NEXT N
250 PRINT@448,"  ";
260 PRINT"PLAY AGAIN";:INPUT A$
270 IP LEFT$(A$,1)="Y" THEN GOTO 100
280 IF LEFT$(A$,1)<>"N" THEN 250
290 CLS:END
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
3000 REM *** LOAD KEYS
3010 FOR I=1 TO 8
3020 READ MUSIC(I)
3030 READ KEY(I)
3040 NEXT I
3050 RETURN
3500 REM *** SCREEN MESSAGE
3510 PRINT@132,"***   WHICH NOTE?   ***";
3520 RETURN
5000 DATA 89,67,108,68,125,69,133,70,147,71,159,65,170,66,176,67
