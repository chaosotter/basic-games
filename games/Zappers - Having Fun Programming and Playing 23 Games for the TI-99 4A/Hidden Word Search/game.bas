100 REM HIDDEN WORD SEARCH
110 CALL CLEAR
120 PRINT "THIS IS THE HIDDEN WORD     SEARCH GAME ...": : : : : : : : : : :
130 RANDOMIZE
140 OPTION BASE 1
150 LC=2
160 RC=31
170 DIM WORDS$(100),SCRAMBLE(32,24)
180 N=39
190 FOR I=1 TO N
200 READ WORDS$(I)
210 R=INT(RND*I)+1
220 TEMP$=WORDS$(R)
230 WORDS$(R)=WORDS$(I)
240 WORDS$(I)=TEMP$
250 NEXT I
260 DATA "INTRIGUE","PLAGUE","TERROR","DARKNESS","QUEUE","EXIT","VARNISH","CLONE","SANDWICH","SAUCER","AIRPLANE"
270 DATA "CUP","VANQUISHED","DEMOLISH","ATTACK","LOVE","WARMTH","COMPUTER","OCEAN","RAZOR","GENIUS","SEWER"
280 DATA "FRENZY","CONNOTE","DEVIOUS","REALITY","SPACECRAFT","MISSION","ALTER","RADIOACTIVE","PROGRAM","DELIMIT"
290 DATA "ASSUAGE","SAUSAGE","MISSILE","REMIT","CONTRACT","RETREAD","INVOKE","COMMAND"
300 PRINT "HOW MANY WORDS SHOULD I     SCRAMBLE? (";N;" MAXIMUM):";
310 INPUT "":NWORDS
320 IF (NWORDS<1)+(NWORDS>N)+(NWORDS<>INT(NWORDS))THEN 300
330 PRINT : : : : : :"PLEASE HAVE PATIENCE, I AM  WORKING ON IT.": : : : : :
340 PRINT "THINKING .";
350 FOR W=1 TO NWORDS
360 C=0
370 CALL SOUND(25,(NWORDS-W+1)*220,0)
380 TEMP$=WORDS$(W)
390 L=LEN(TEMP$)
400 DX=INT(RND*3)-1
410 DY=INT(RND*3)-1
420 IF (DX=0)*(DY=0)THEN 400
430 RX=INT(RND*30)+1
440 RY=INT(RND*24)+1
450 PRINT ".";
460 C=C+1
470 IF C>500 THEN 820
480 IF C-INT(C/50)*50=0 THEN 400
490 EX=RX+L*DX
500 EY=RY+L*DY
510 IF (EX<LC)+(EX>RC)+(EY<1)+(EY>24)THEN 430
520 FOR I=1 TO L
530 IF SCRAMBLE(RX+I*DX,RY+I*DY)<>0 THEN 430
540 NEXT I
550 FOR I=1 TO L
560 SCRAMBLE(RX+I*DX,RY+I*DY)=ASC(SEG$(TEMP$,I,1))
570 NEXT I
580 NEXT W
590 CALL CLEAR
600 FOR I=LC TO RC
610 FOR J=1 TO 24
620 IF SCRAMBLE(I,J)<>0 THEN 650
630 CALL HCHAR(J,I,INT(RND*26)+65)
640 GOTO 660
650 CALL HCHAR(J,I,SCRAMBLE(I,J))
660 NEXT J
670 NEXT I
680 CALL KEY(3,CHAR,STATUS)
690 IF CHAR=ASC("X") THEN 800
700 IF CHAR<>ASC("H")THEN 680
720 FOR I=LC TO RC
730 FOR J=1 TO 24
740 IF SCRAMBLE(I,J)<>0 THEN 760
750 CALL HCHAR(J,I,42)
760 NEXT J
770 NEXT I
780 CALL KEY(3,CHAR,STATUS)
790 IF STATUS=0 THEN 780
800 CALL CLEAR
810 END
820 PRINT : : : : : : : :"SORRY, BUT THE BOARD IS TOO CROWDED. TRY AGAIN": :
830 FOR I=LC TO RC
840 FOR J=1 TO 24
850 SCRAMBLE(I,J)=0
860 NEXT J
870 NEXT I
880 GOTO 300