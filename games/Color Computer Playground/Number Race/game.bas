
50 REM *** FIND THAT NUMBER!
60 CLS
62 PRINT@34,"***  FIND THAT NUMBER!  ***"
64 FOR PAUSE=1 TO 1000:NEXT
70 MAX=300
120 FOR NUMBER=48 TO 57
125 COUNT=0:PRINT@271," "
126 PRINT@271,CHR$(NUMBER):SOUND 218,1
128 COUNT=COUNT+1:IF COUNT=MAX THEN 160
130 A$=INKEY$:IFA$=""THEN 128
140 A=ASC(A$)
150 IF A=NUMBER THEN GOSUB 1010:GOTO 170
160 GOSUB 2010:GOTO 125
170 NEXT NUMBER
171 IF MAX<=50 THEN 180
172 PRINT@386,"FASTER";:INPUT A$
173 PRINT@386," "
174 IF LEFT$(A$,1)<>"Y" THEN 177
175 MAX=MAX-50:GOTO 120
177 IF LEFT$(A$,1)<>"N" THEN 172
180 CLS:END
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
