1 '  **** ADVENTURE MAKER ****2 '3 '        BY: JORGE MIR4 '5 '          (C) 19826 '7 ' **************************10 CLEAR 100020 CLS30 DIM RM$(85),OB$(85),OB(85),D(85,6),D$(6),F(10):MX=5:CA=040 FOR X=1TO6:READ D$(X):NEXTX50 X=060 X=X+1:READ RM$(X):IF RM$(X)="END" THEN 8070 FOR Y=1TO6:READ D(X,Y):NEXTY:GOTO6080 X=090 X=X+1:READ OB$(X):IF OB$(X)="END"THEN NO=X-1:GOTO100:ELSE READ I$,OB(X):OB$=OB$+I$:GOTO90100 X=0110 X=X+1:READ I$:IF I$="END" THEN 120 ELSE VB$=VB$+LEFT$(I$,3):GOTO110120 CLS130 YOU=1140 PRINT"I AM ";150 PRINT RM$(YOU)160 PRINT"I CAN SEE: ":F=0170 FOR I=1 TO NO180 IF INT(OB(I))<>INT(YOU) THEN 200190 PRINT "  "OB$(I):F=1200 NEXT:IF F=0 THEN PRINT"  NOTHING INTERESTING"210 PRINT "YOU CAN GO: "220 FOR I=1TO6230 IF D(YOU,I)<>0 THEN PRINT" *" D$(I);240 NEXT250 PRINT260 PRINT STRING$(32,61);270 INPUT"WHAT SHOULD I DO";I$280 IF I$=""THEN270 ELSE IF I$="LOOK" THEN CLS:GOTO140282 IF I$="QUIT" OR I$="END" THEN END284 IF I$="SAVE" THEN 7010286 IF I$="LOAD" THEN 7070287 IF I$="OBJECT" THEN 9000288 IF I$="ROOM" THEN 9100290 IF LEFT$(I$,2)="GO" THEN PRINT"USE SINSLE LETTERS TO INDICATE  DIRECTION (EXAMPLE, N=NORTH)":GOTO260300 IF LEFT$(I$,3)<>"INV"THEN 360310 PRINT"I AM CARRYING:":F=0320 FOR I=1TO NO330 IF OB(I)=-1THEN PRINT OB$(I):F=1340 NEXT:IF F=0 THEN PRINT"NOTHING"350 GOTO 260360 IF LEFT$(I$,5)<>"SCORE"THEN 430370 T=0:Y=0380 FOR I=1 TO NO390 FOR L=1TO LEN(OB$(I))400 IF MID$(OB$(I),L,1)="*"THEN T=T+1:IF OB(I)=YOU OR OB(I)=-1THEN Y=Y+1410 NEXT:NEXT420 PRINT"OUT OF";T;"POINTS YOU HAVE";Y:GOTO 260430 IF LEN(I$)=1 THEN 710440 IF I$="HELP" THEN 800450 SP=INSTR(I$,CHR$(32)):IF SP=0 THEN PRINT"TRY USING TWO WORD COMMANDS.":GOTO260460 V$=LEFT$(I$,SP-1):O$=MID$(I$,SP+1)470 A$=LEFT$(V$,3):B$=LEFT$(O$,3)500 IF A$="TAK" THEN A$="GET"501 IF A$="LEA" THEN A$="DRO"502 IF A$="LOO" THEN A$="EXA"503 IF A$="MOV" THEN A$="PUS"504 IF A$="TEA" THEN A$="BRE"600 V=(INSTR(VB$,A$)+2)/3:IF V<1 THEN CLS:PRINT"SORRY, I JUST DON'T KNOW HOW TO":PRINT V$" ANYTHING.":GOTO 140610 O=(INSTR(OB$,B$)+2)/3:IF O<1 THEN CLS:PRINT"SORRY, I JUST DON'T SEE ANY ":PRINT O$" HERE.":GOTO140700 IF LEN(I$)>1 THEN 1000710 V=0:CLS:IF I$="N"AND D(YOU,1)<>0 THEN YOU=D(YOU,1):GOTO 140720 IF I$="S"AND D(YOU,2)<>0 THEN YOU=D(YOU,2):GOTO 140730 IF I$="E"AND D(YOU,3)<>0 THEN YOU=D(YOU,3):GOTO 140740 IF I$="W"AND D(YOU,4)<>0 THEN YOU=D(YOU,4):GOTO 140750 IF I$="U"AND D(YOU,5)<>0 THEN YOU=D(YOU,5):GOTO 140760 IF I$="D"AND D(YOU,6)<>0 THEN YOU=D(YOU,6):GOTO 140770 GOTO 1000800 '**************************810 '****** HELP SECTION ******820 '**************************880 PRINT"TOUGH LUCK!  JUST KEEP TRYING!":GOTO2601000 F=0:IF OB(O)=YOU THEN F=1 ELSE IF OB(O)=-1 THEN F=21002 ON V GOTO 1100,1200,1300,1400,1500,1600,1700,1800,1900,2000,2100,22001010 IF LEN(I$)=1 THENPRINT"I CAN'T GO THAT WAY!":GOTO 1401020 PRINT"I DON'T UNDERSTAND WHAT YOU ARE TELLING ME.":GOTO2601100 '*** GET ***1102 IF F=2 THEN PRINT"I ALREADY HAVE IT!":GOTO2601104 IF F=0 THEN PRINT"I DON'T SEE THAT HERE.":GOTO2601106 IF CA=>MX THEN PRINT"I CAN'T CARRY ANYTHING ELSE!":GOTO2601199 OB(O)=-1:PRINT"OK, I GOT IT.":CA=CA+1:GOTO2601200 '*** DROP ***1201 IF F=2 THEN PRINT"OK, I DROPPED IT.":CA=CA-1:OB(O)=YOU: ELSE PRINT"I DON'T HAVE IT."1299 GOTO 2601300 '*** OPEN ***1301 IF F=0 THEN PRINT"I DON'T SEE IT HERE.":GOTO2601399 PRINT"SORRY, IT DOES NOT OPEN.":GOTO2601400 '*** CLOSE ***1401 IF F=0 THEN PRINT"I CAN'T CLOSE ANYTHING THAT I   CAN'T SEE OR DON'T HAVE.":GOTO2601499 PRINT"I TRIED, BUT IT DOESN'T CLOSE.":GOTO2601500 '*** EXAMINE ***1501 IF F=0 THEN PRINT"I DON'T SEE ANYTHING LIKE THAT  AROUND HERE.":GOTO2601599 PRINT"NOTHING SPECIAL ABOUT IT.":GOTO2601600 '*** PUSH ***1699 PRINT"NOTHING HAPPENED.":GOTO2601700 '*** BREAK ***1701 IF F=0 THEN PRINT"NOTHING LIKE THAT AROUND HERE   THAT I CAN BREAK.":GOTO2601799 PRINT"I TRIED, BUT I COULDN'T BREAK IT":GOTO2601800 '*** ENTER ***1801 IF F=0 THEN PRINT"I DON'T SEE ANYTHING LIKE THAT  AROUND HERE.":GOTO2601899 PRINT"I TRIED TO ENTER BUT COULDN'T.":GOTO2601900 '*** READ ***1901 IF F=0 THEN PRINT"I DON'T SEE IT HERE.":GOTO2601999 PRINT "NOTHING SPECIAL":GOTO2602000 '*** LOAD ***2001 IF F<>2 THEN PRINT"I DON'T HAVE IT.":GOTO2602099 PRINT"I TRIED, BUT NOTHING HAPPENED.":GOTO2602100 '*** RUN ***2199 PRINT"DON'T BE RIDICULOUS!":GOTO2602200 '*** SELL ***2299 IF F<>2 THEN PRINT"I DON'T HAVE IT TO SELL.":GOTO2603000 ' ******DIRECTIONS******3010 DATA NORTH,SOUTH,EAST,WEST,UP,DOWN4000 '*******  ROOMS  *******4999 DATA END5000 '****** OBJECTS *****5999 DATA END6000 '****** VERBS ******6010 DATA GET,DROP,OPEN,CLOSE,EXAMINE,PUSH,BREAK,ENTER,READ,LOAD,RUN,SELL6999 DATA END7000 '***** SAVE/LOAD ********7010 GOSUB7130:OPEN"O",DV,"DATA"7020 PRINT#DV,YOU7030 FOR X=1 TO NO7040 PRINT#DV,OB(X)7050 NEXT X7060 CLOSE:CLS:GOTO1407070 GOSUB7130:OPEN"I",DV,"DATA"7080 INPUT#DV,YOU7090 FOR X=1 TO NO7100 INPUT#DV,OB(X):NEXT X7110 IF EOF(DV) THEN CLOSE7120 CLS:GOTO1407130 CLS:PRINT"INDICATE DEVICE TO BE USED:"7140 PRINT:PRINT"  C - CASSETTE     D - DISK"7150 PRINT:INPUT"YOUR CHOICE";DV$7160 IF DV$="D" THEN DV=1 ELSE IF DV$="C" THEN DV=-1 ELSE 71507170 PRINT:PRINT"PRESS ANY KEY WHEN THE DEVICE   IS READY."7180 IF INKEY$=""THEN7180 ELSE RETURN8000 '***ELIMINATE OBJECT FROM8010 '   OBJECT LIST8020 MID$(OB$,O*3-2,3)="   "8030 RETURN9000 INPUT"KEYWORD(S)";X$9010 FOR X=1 TO NO9020 IF INSTR(OB$(X),X$)=0 THEN90509025 IF OB$(X)="END" THEN PRINT"NO SUCH OBJECT":GOTO2609030 CLS:PRINT"OBJECT NO."X9032 PRINT OB$(X)9034 PRINT "IN ROOM NO."OB(X)9036 IF OB(X)=-1THEN PRINT"   IN INVENTORY" ELSEPRINT "   ";RM$(OB(X))9040 IF INKEY$=""THEN90409050 NEXT X:GOTO2609100 CLS:INPUT"KEYWORD(S)";I$9110 FOR X=1TONR9115 IF INSTR(RM$(X),I$)=0THEN92009120 PRINT"ROOM NO."X":"9121 PRINT RM$(X):PRINT STRING$(31,"=")9122 FOR D=1TO6:IF D(X,D)<>0THEN PRINT D$(D)":":PRINT"   "RM$(D(X,D))" -"D(X,D)9123 NEXT D9125 IF RM$(X)="END" THEN PRINT"NO SUCH ROOM":GOTO2609128 PRINT:PRINT"OBJECTS:"9130 FOR D=1TO NO9132 IF OB(D)=X THEN PRINT "   "OB$(D);:PRINT" -"D9134 NEXT D9140 IF INKEY$=""THEN91409200 CLS:NEXTX9210 GOTO 260