5 REM *** DISAPPEARING GHOSTS10 REM ANGELA BRADSHAW50 CLS51 PRINT@34,"*** DISAPPPEARING GHOSTS ***"53 FOR PAUSE=1 TO 1000:NEXT PAUSE100 N=RND(25)105 N2=RND(25)106 IF N<N2 THEN Z=N:N=N2:N2=Z107 O1=N:O2=N2108 CLS 5122 PRINT@226,"count the ghosts!";125 COUNT=0130 FOR PAUSE=1 TO 1000:NEXT PAUSE165 N1=N210 GOSUB 3005:REM PRINT GHOSTS260 REM BOTH SETS PRINTED?270 COUNT=COUNT+1280 FOR PAUSE=1 TO 3000:NEXT PAUSE305 IF COUNT=2 THEN 335310 N=N2318 CLS 5319 PRINT@226,"here they are again";320 FOR PAUSE=1 TO 1000:NEXT PAUSE:GOTO 210335 CLS337 PRINT@34,"how many ghosts the first time"340 INPUT E$341 F$="A"342 IF VAL(E$)=N1 THEN 344343 GOTO 360344 PRINT" how many ghosts the second time"345 INPUT F$:IF VAL(F$)=N2 THEN 347346 GOTO 360347 PRINT:PRINT" HOW MANY GHOSTS DISAPPEARED":INPUT G$350 IF VAL(G$)=N1-N2 THEN 380360 GOSUB 2010370 N=O1:N2=O2:F=VAL(F$):IF F=0 OR F=N2 THEN 108375 COUNT=1:GOTO 310380 GOSUB 1010400 CLS:PRINT@450,"PLAY AGAIN";:INPUT A$410 IF LEFT$(A$,1)="Y" THEN 100420 IF LEFT$(A$,1)<>"N" THEN 400430 CLS:END1000 REM ***HAPPY FACE***1010 FOR A=0 TO 21015 PRINT @A*32+365,CHR$(128);1020 PRINT CHR$(128);CHR$(128);1025 PRINT CHR$(128);1030 NEXT A1050 REM MOUTH RED1055 SET(27,26,4):SET(28,27,4)1060 SET(29,27,4):SET(30,27,4)1065 SET(31,27,4):SET(32,26,4)1070 REM NOSE ORANGE1075 SET(29,25,8)1110 SET(28,23,3)1140 SET(31,23,3)1200 PRINT@492,"RIGHT!";1260 FOR W=180 TO 240 STEP 81270 SOUND W,11280 NEXT W1290 FOR A=1 TO 900:NEXT A1300 FOR A=1 TO 4:PRINT @(333+32*A)," ":NEXT A:PRINT @492,"      ";1350 RETURN2000 REM ***SAD FACE***2010 FOR A=0 TO 22020 PRINT @A*32+365,CHR$(128);2025 PRINT CHR$(128);CHR$(128);2030 PRINT CHR$(128);2035 NEXT A2050 REM MOUTH RED2055 SET(28,26,4):SET(29,25,4)2070 SET(30,25,4):SET(31,26,4)2075 SET(27,27,4):SET(32,27,4)2105 REM EYES BLUE2110 SET(28,23,3)2140 SET(31,23,3)2150 PRINT@486, "SORRY ... TRY AGAIN";2160 REM SAD SOUND2170 SOUND 32,82180 SOUND 16,162220 FOR A=1 TO 500: NEXT A2230 FOR A=1 TO 52235 PRINT@(288+32*A)," ":NEXT A:PRINT@486,"                   ";2250 RETURN3000 REM PRINT GHOSTS3005 CLS3010 FOR X=3 TO 13 STEP 53012 FOR Y=1 TO 28 STEP 33014 P=X*32+1+Y3020 PRINT@P,CHR$(142);3022 PRINT CHR$(141);3024 PRINT@P+32,CHR$(130);3026 PRINT CHR$(129);3030 NEXT Y3040 NEXT X3100 Y=1:X=23105 FOR L=1 TO N3110 PRINT@Y*32+X,CHR$(206);3120 PRINT CHR$(206);3130 PRINT@Y*32+32+X,CHR$(206);3140 PRINT CHR$(205);3150 X=X+3:IF X>29 THEN X=2:Y=Y+53160 NEXT L3200 RETURN