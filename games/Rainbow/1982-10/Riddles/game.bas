10 ' GRAMMAR20 ' STEVE BLYN-COMPUTER ISLAND, 198230 CLS RND(8)40 RESTORE50 Y=RND(10)60 FOR X=1 TO Y:READ A$,B$:NEXTX70 PRINT@12,"RIDDLES";80 PRINT@64,"WHAT ";A$90 PRINT@160,"";:INPUT M$100 PRINT@256,"A";110 C$=LEFT$(B$,1)120 IF C$="E" OR C$="A" OR C$="I" OR C$="O" OR C$="U" THEN PRINT"N";130 PRINT" ";140 PRINTB$150 IF M$=B$ THENR=R+1 : ' * CORRECT ANSWERS160 PRINT@384,"YOU NOW HAVE";R;"RIDDLE";170 IF R<>1 THEN PRINT "S";180 PRINT" CORRECT.";190 IF M$=B$ THEN FOR X=1 TO 250 STEP 5:SOUND X,1:NEXT X200 IF M$<>B$ THEN FOR X=1 TO 5:SOUNDX,2:NEXT X210 LINE INPUT"     PRESS ENTER TO GO ON   ";G$220 J=J+1 : ' * THE COUNTER230 IF J=25 THEN CLS:PRINT " YOU MUST KNOW ALL THE ANSWERS! RUN THE PROGRAM AGAIN TO BE SURE":END240 GOTO 30250 DATA HAS 4 LEGS BUT ONLY 1 FOOT?,BED260 DATA IS FULL OF HOLES YET HOLDS WATER?,SPONGE270 DATA DO YOU CALL ANY BEE BORN IN MAY?,MAYBE280 DATA IS A MIDGET SKUNK CALLED?,SHRUNK SKUNK290 DATA CAN YOU CALL A GRANDFATHER CLOCK?,OLD TIMER300 DATA HAS A HEAD BUT CAN'T THINK?,NAIL310 DATA HAS 6 POCKETS BUT NO COAT?,POOL TABLE320 DATA GOES AROUND THE WORLD- BUT DOESN'T MOVE?,EQUATOR330 DATA BIRD IS AT EVERY MEAL?,SWALLOW340 DATA KIND OF DOG HAS NO TAIL?,HOT DOG