1 'ICE LANDER2 'BY TED SHORTER 19813 '2578 SYLVAN RD.4 'CUYAHOGA FALLS,OHIO,4422110 DIM L(2),B(2),K(18):G=.1:HN$="NOBODY":HS=1020 CLS:YM=030 PRINT"1 START GAME":PRINT"2 GET INSTRUCTIONS":PRINT"3 CHANGE GRAVITY LEVEL"40 PRINT@265,"WHICH ONE?"50 FOR Z=1 TO 2000:Y$=INKEY$:IF Y$="1" THEN 70ELSE IF Y$="2" THEN 770 ELSE IF Y$="3" THEN 41060 NEXT:PRINT"WELL?":GOTO 5070 CLS:POKE 65494,0:INPUT"OXYGEN LEVEL";O80 IF O>200 THEN PRINT"YOU'LL BE SORRY!!":O=5190 OO=O100 PMODE 4,1110 PCLS120 DRAW"BM128,96D4U2R4D2U4L4"125 PAINT(129,97),5,5130 FOR Z=1 TO 25:X=RND(18):X=X+100140 Y=RND(18):PSET (X,Y,5):NEXT150 GET(100,0)-(118,18),K,G160 GET (128,96)-(132,100),L,G170 GET (0,0)-(4,4),B,G180 PCLS190 SCREEN 1,1200 GOSUB 460210 X=9:Y=9:XM=3220 Y$=INKEY$230 PUT(X-2,Y-2)-(X+2,Y+2),B,PSET240 IF Y$="^" THEN YM=YM-1250 IF Y$=CHR$(10) THEN YM=YM+1260 IF Y$=CHR$(9) THEN XM=XM+1270 IF Y$=CHR$(8) THEN XM=XM-1280 X=X+XM:Y=Y+YM290 YM=YM+G300 IF Y<9 THEN Y=9310 IF X<9 THEN X=9320 IF Y>189 THEN Y=189330 IF X>244 THEN X=244340 O=O-1:IF O=50 THEN PLAY"L32CCC" ELSE IF O<0 THEN 680350 IF PPOINT(X,Y+3)=5 AND PPOINT (X+4,Y+3)=5 AND XM=0 AND YM<2 THEN 580 360 IF PPOINT(X+4,Y+3)=5 AND PPOINT(X,Y+3)<>5 THEN PUT(X-6,Y-5)-(X+12,Y+13),K,PSET:GOTO 680370 IF PPOINT(X,Y+3)=5 AND PPOINT(X+4,Y+3)<>5 THEN PUT(X-12,Y-5)-(X+5,Y+13),K,PSET:GOTO 680380 IF PPOINT(X,Y)=5 OR PPOINT (X+4,Y)=5 THEN 680390 PUT(X-2,Y-2)-(X+2,Y+2),L,PSET400 GOTO 220410 CLS:PRINT"       CHOOSE:"420 PRINT"1 NO GRAVITY(EASY)":PRINT"2 LITTLE GRAVITY(FAIRLY EASY)":PRINT"3 EARTH GRAVITY(HARD)":PRINT"4 JUPITER GRAVITY(VERY HARD)"430 PRINT"          WHICH?"440 G$=INKEY$:IF G$="1" THEN G=0 ELSE IF G$="2" THEN G=.1 ELSE IF G$="3" THEN G=.5 ELSE IF G$="4" THEN G=.7450 IF G$="" THEN 440 ELSE 20460 POKE 65495,0470 LINE-(0,100),PSET:PCLS480 FOR X=10 TO 120 STEP 10490 Y=RND(160):Y=Y+20500 LINE-(X,Y),PSET510 NEXT520 LINE-(X+5,Y),PSET530 FOR X=130 TO 250 STEP 10540 Y=RND(160):Y=Y+20550 LINE-(X,Y),PSET560 NEXT:Y=RND(160):Y=Y+20:LINE-(255,Y),PSET:PAINT(10,180),5,5570 RETURN580 PUT(X-2,Y-2)-(X+2,Y+2),L,PSET590 POKE 65494,0600 FOR Z=1 TO 4610 PLAY"L16CGO4CO3"620 NEXT630 POKE 65495,0635 S$=STR$(FIX(Y+4)*10+O*VAL(G$)-OO)640 CLS:PRINT"YOUR SCORE="+S$645 S=VAL(S$)650 PRINT AMOUNT OF OXYGEN LEFT=";O660 FOR Z=1 TO 460*16:NEXT665 GOSUB 10000 670 GOTO 20 680 PUT(X-9,Y-9)-(X+9,Y+9),K,PSET690 POKE 65494,0700 PLAY"L4FFL8FL4FG+L8GL4GL8FL4FL8EL2F"710 POKE 65495,0715 GOSUB 10290720 GOTO 20730 CLS:PRINT"        ICE LANDER"740 PRINT:PRINT"EVERY TIME YOU HIT AN ARROW,YOU GO FASTER IN THAT DIRECTION.....BUT GRAVITY PLAYS A PART,TOO.":PRINT:PRINT"OXYGEN STARTS AT WHAT YOU SET,  UNLESS YOU ENTER MORE THAN 200. THEN IT LEAKS AND YOU ONLY HAVE 50."750 PRINT"HIT [ENTER]."760 IF INKEY$=CHR$(13) THEN GOTO 20 ELSE 760770 CLS:PRINT"        ICE LANDER"780 PRINT" YOU MUST PILOT A SHIP OVER THE FROZEN PLANET GARBONZO."781 PRINT"WEIRD SHAPES OF DEADLY ICE FORM."782 PRINT"USE THE ARROW KEYS FOR CONTROL."783 PRINT"WHEN YOU ARE ASKED FOR AMOUNT OFOXYGEN, REMEMEER THAT 175 IS A  NORMAL AMOUNT."784 PRINT"A WARNING BUZZER TELLS YOU WHEN YOUR OXYGEN IS LOW."790 PRINT"YOU MUST LAND ON A FLAT SURFACE."800 PRINT"HIT [ENTER]"810 IF INKEY$=CHR$(13) THEN GOTO 730 ELSE 81010000 IF S<HS THEN 10290 ELSE CLS:PRINT"GREAT SCORE!!!!!"10010 PRINT"YOUR SCORE BEAT THE FORMER HIGH SCORE.YOU SHOULD BE PROUD OF      YOURSELF!!!!!!!"10020 PRINT:PRINT"ENTER YOUR NAME IN.MOVE THE     JOYSTICK BACK&FORTH TILL YOU GETTHE RIGHT LETTER.THEN PRESS THE BUTTON WHEN THE LETTER IS RIGHT.";10025 HS=S:N$=""10030 PRINT:PRINT10040 PRINT" ";:RESTORE:FOR PL=1 TO 2610050 READ LP$:PRINTLP$;10060 NEXT10070 DATA A,B,C,D,E,F,G,H,I,J,K,L,M,N,0,P,Q,R,S,T,U,V,W,X,Y,Z10080 PRINT" 0"10090 PRINT@384+28,"V"10100 PRINT@416+28,"E"10110 PRINT@448+28,"R"10120 PRINT@321,"";10130 X=JOYSTK(0)10140 W=X/2.2510150 W=INT(W)10160 IF W=27 THEN W=2810170 IF W=0THEN W=110180 PRINT@320+W,"V";10190 FOR Z=1 TO 10:NEXT:PRINT@320+W," ";10200 P=PEEK(65280)10210 IF P=254 OR P=126 OR P=252 THEN L=W ELSE 1013010220 IF L=28 THEN 1029010230 RESTORE:FOR LL=1 TO L10240 READ L$:NEXT10250 N$=N$+L$:HN$=N$10260 IF LEN(N$)=4 THEN 1029010270 PRINT@416+11,N$;10280 GOTO 1013010290 CLS:PRINT"TOP SCORE IS"HS" BY "HN$10300 FOR Z=1 TO 460*12:NEXT10310 RETURN