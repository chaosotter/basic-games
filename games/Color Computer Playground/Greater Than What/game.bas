
50 REM *** GREATER-THAN GAME
60 CLS
65 PRINT@1,"*** THE GREATER-THAN GAME ***"
66 FORPAUSE=1TO1000:NEXT PAUSE
100 GOSUB 3010:REM * MENU 
170 FORL=1TO5
180 N1=RND(10)
190 N2=RND(10)
200 ON B GOSUB 3510,4010,4510,5010
250 NEXT L
260 CLS
265 PRINT@416,"  PLAY AGAIN <Y/N>";:INPUT A$
270 IF A$="Y" THEN 100
280 IF A$ <> "N"THEN 265
300 CLS:END
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
3000 REM *** MENU SUBROUTINE
3010 CLS
3020 PRINT@98,"1. GREATER THAN...........>"
3030 PRINT@130,"2. LESS THAN..............<"
3040 PRINT@162,"3. GREATER THAN OR EQUAL..>="
3050 PRINT@194,"4. LESS THAN OR EQUAL.....<="
3060 PRINT@256,"WHICH NUMBER (1, 2, 3, OR 4)":INPUT B$:B=VAL(B$)
3070 IF B>=1 AND B<=4 THEN 3090
3080 GOTO 3060
3090 RETURN
3200 REM *** INITIALIZE SCREEN
3210 CLS
3220 PRINT@132,"enter=yes    space=no"
3230 RETURN
3500 REM *** GREATER-THAN (>)
3510 GOSUB 3210
3515 PRINT@71,N1;" > ";N2;" ?"
3520 K$=INKEY$:IF K$=""THEN 3520 
3522 K=ASC(K$):IF K <> 13 AND K <> 32 THEN 3520
3530 IF (N1>N2 AND K=13) OR (N1<=N2 AND K=32) THEN GOSUB 1010:GOTO 3570
3540 GOSUB 2010:GOTO3510
3570 RETURN
4000 REM *** LESS-THAN (<)
4010 GOSUB 3210
4015 PRINT@71,N1;" < ";N2;" ?"
4020 K$=INKEY$:IF K$=""THEN 4020
4022 K=ASC(K$):IF K <> 13 AND K <> 32 THEN 4020
4030 IF (N1<N2 AND K=13) OR (N1>=N2 AND K=32) THEN GOSUB 1010:GOTO 4070
4044 GOSUB 2010:GOTO 4010
4070 RETURN
4500 REM *** GREATER THAN/EQUAL (>=)
4510 GOSUB 3210
4515 PRINT@71,N1;" >= ";N2;" ?"
4520 K$=INKEY$:IF K$="" THEN 4520
4522 K=ASC(K$):IF K <> 13 AND K <> 32 THEN 4520
4530 IF (N1>=N2 AND K=13) OR (N1<N2 AND K=32) THEN GOSUB 1010:GOTO 4570 
4550 GOSUB 2010:GOTO 4510
4570 RETURN
5000 REM *** LESS THAN/EQUAL (<=)
5010 GOSUB 3210
5015 PRINT@71,N1;" <= ";N2;" ?"
5020 K$=INKEY$:IF K$=""THEN 5020 
5022 K=ASC(K$):IF K <> 13 AND K <> 32 THEN 5020
5030 IF (N1<=N2 AND K=13) OR (N1>N2 AND K=32) THEN GOSUB 1010:GOTO 5070
5040 GOSUB 2010:GOTO 5010
5070 RETURN
