5 REM *** LEARN YOUR PHONE NUMBER10 REM THIS PROGRAM HELPS YOUNGER CHILDREN TO LEARN THEIR PHONE NUMBER20 REM MELISSA PERDUE50 CLS 55 PRINT@34,"***  PHONE NUMBER GAME  ***"56 FOR PAUSE=1 TO 1000:NEXT PAUSE60 REM N$ STORES PLAYER'S NAME70 REM SPH$ STORES PHONE NUMBER80 REM FPH$ STORES PHONE NUMBER AS82 REM REMEMBERED WITHOUT AID120 CLS 130 PRINT@77,"HELLO!"145 PRINT@225,"WHAT IS YOUR NAME";:INPUT N$160 CLS165 PRINT@226,"HI, THERE, ";N$;"!"170 PRINT@290,"WHAT IS YOUR"185 PRINT@321," ";186 PRINT@322,"PHONE NUMBER";:INPUT SPH$250 CLS260 PRINT@226,"CAN YOU REMEMBER"270 PRINT@290,"ALL THAT?"275 PRINT@354,"LET'S TRY!!!"280 FOR DLAY=1 TO 2000:NEXT DLAY282 COUNT=0285 CLS287 PRINT@226,"WHAT IS YOUR"288 PRINT@290,"PHONE NUMBER";:INPUT PPH$300 IF SPH$=PPH$ THEN CLS:GOSUB 1010:GOTO 350310 COUNT=COUNT+1320 IF COUNT>=3 THEN 340330 CLS:GOSUB 2010:GOTO 285340 CLS:PRINT@225," ";345 PRINT"YOUR PHONE NUMBER IS:"346 PRINT@290,SPH$347 FOR DLAY=1 TO 3000:NEXT DLAY350 CLS355 PRINT@226,"PLAY AGAIN";:INPUT A$360 IF LEFT$(A$,1)="Y" THEN 282370 IF LEFT$(A$,1)<>"N" THEN 350380 CLS:END1000 REM ***HAPPY FACE***1010 FOR A=0 TO 21015 PRINT @A*32+365,CHR$(128);1020 PRINT CHR$(128);CHR$(128);1025 PRINT CHR$(128);1030 NEXT A1050 REM MOUTH RED1055 SET(27,26,4):SET(28,27,4)1060 SET(29,27,4):SET(30,27,4)1065 SET(31,27,4):SET(32,26,4)1070 REM NOSE ORANGE1075 SET(29,25,8)1110 SET(28,23,3)1140 SET(31,23,3)1200 PRINT@492,"RIGHT!";1260 FOR W=180 TO 240 STEP 81270 SOUND W,11280 NEXT W1290 FOR A=1 TO 900:NEXT A1300 FOR A=1 TO 4:PRINT @(333+32*A)," ":NEXT A:PRINT @492,"      ";1350 RETURN2000 REM ***SAD FACE***2010 FOR A=0 TO 22020 PRINT @A*32+365,CHR$(128);2025 PRINT CHR$(128);CHR$(128);2030 PRINT CHR$(128);2035 NEXT A2050 REM MOUTH RED2055 SET(28,26,4):SET(29,25,4)2070 SET(30,25,4):SET(31,26,4)2075 SET(27,27,4):SET(32,27,4)2105 REM EYES BLUE2110 SET(28,23,3)2140 SET(31,23,3)2150 PRINT@486, "SORRY ... TRY AGAIN";2160 REM SAD SOUND2170 SOUND 32,82180 SOUND 16,162220 FOR A=1 TO 500: NEXT A2230 FOR A=1 TO 52235 PRINT@(288+32*A)," ":NEXT A:PRINT@486,"                   ";2250 RETURN