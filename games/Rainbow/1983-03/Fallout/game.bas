
10 CLS:GOTO 1750
20 CLEAR250:IF PEEK(65314) AND1 THEND=0 ELSED=-2:GOTO810
30 CLS3:IFPEEK(65314) AND1 THEND9=0:GOSUB1110:POKE65314,13:ELSEINPUT" I SEE A PRINTER ATTACHED, DO   YOU WANT OUTPUT TO PRINTER";A$:IFLEFT$(A$,1)="Y"THEND9=-2:ELSED9=0
40 PRINT#D9," THIS PROGRAM IS SIMPLY AN AID  TO HELP YOU KNOW WHAT TO DO IN  CASE OF NUCLEAR ATTACK.
50 PRINT#D9:PRINT#D9,"THERE ARE TWO SECTIONS.
60 PRINT#D9,"  (1) TABLES WHICH HELP YOU TO  PLOT WHERE THE RADIATION WILL   FALL.
70 PRINT#D9,"  (2) EXPLAINATIONS OF HOW TO   PROTECT YOURSELF.
78 IFD9=-2THENCLS
80 PRINT#D9:PRINT#D9,"DO YOU WANT WIND/FALLOUT TABLES":INPUT"";W$:PRINT#D9,CHR$(13):IFLEFT$(W$,1)="N"THEN190
90 PRINT#D9," SINGLE PATTERN":INPUT"";Z$:PRINT#D9:IFLEFT$(Z$,1)="N"THENZ=0ELSEZ=1
100 PRINT#D9," SIZE BOMB IN MEGATONS (1,5,10,   OR 50)":INPUT"";S$:PRINT#D9:S=VAL(S$)
110 IFS=1ORS=5ORS=10ORS=50THEN112ELSE100
112 CLS:PRINT@67,"ANY RADIO STATIONS STILL ABLETO BROADCAST WILL TRANSMIT BOTH VALUABLE SURVIVAL INFORMATION   AND INFO ABOUT HEAVY RADIATION  IN YOUR AREA. IN CASE YOU CANNOTPICK UP BROADCASTS FOR YOUR AREAYOU SHOULD MAKE A GUESS AT WIND
113 PRINT"SPEED AND DIRECTION BASED ON THEWEATHER PATTERNS IN YOUR LOCALE.
115 GOSUB510
120 IFZ=1THENPRINT#D9," WIND SPEED (MPH)":INPUT"";W$:PRINT#D9:W=INT(VAL(W$)):IFW<0ORW>300THEN120
130 CLS:PRINT#D9:PRINT#D9,CHR$(12)"     WIND/FALLOUT PATTERN":PRINT#D9,"       "S"MEGATON BOMB
140 PRINT#D9,STRING$(32,61);
150 IFZ=0THENFORW=10TO50STEP10
160 GOSUB530
170 GOSUB510
180 IFZ=0THENNEXT
190 PRINT#D9,"DO YOU WANT PROTECTION METHODS ":INPUT"";Z$:IFLEFT$(Z$,1)="N"THEN1000
200 CLS:PRINT#D9,"PROTECT AGAINST RADIOACTIVE DUST";STRING$(32,61);
203 PRINT#D9,"   IF YOU ARE CAUGHT OUTSIDE AT THE INSTANT OF THE EXPLOSION:   YOU MAY RECEIVE FLASH-BURNS AND TEMPORARY OR PERMANENT BLINDNESS  CLOSE YOUR EYES IMMEDIATELY ! THROW YOURSELF FACE-DOWN TO THE GROUND. PULL YOUR HOOD OR SOME
204 PRINT#D9,"CLOTHING OVER YOUR HEAD,  FOLD  YOUR HANDS UNDER YOU. A CULVERT,DRAIN, EVEN A ";
205 PRINT#D9,"SMALL GROUND SWELLCOULD PROTECT YOU. THE INFERNO  OF THE FIREBALL WILL LAST FROM  ONE AND A HALF TO TWO MINUTES.
208 GOSUB510
209 PRINT#D9,"  A SEVERE DOUBLE SHOCKWAVE WILLFOLLOW AT ABOUT 5 SECONDS PER   MILE OF DISTANCE FROM BLAST (AT FIFTY MILES THIS EQUATES TO FOURMINUTES DELAY AFTER FLASH.)
210 PRINT#D9,"   THE DUST WILL DESCEND FROM   ABOVE, AND COLLECT ON THE GROUNDTO BE STIRRED UP AS YOU WALK, ORBY PASSING MILITARY OR CIVILIAN VEHICLES.
220 PRINT#D9,"   YOU SHOULD COVER YOUR MOUTH  WITH A HANDKERCHIEF OR ANY CLEANCLOTH YOU CAN BREATHE THROUGH.  THIS IS EVEN MORE IMPORTANT THANCOVERING UP YOUR BODY, AS ANY":GOSUB510:PRINT#D9:PRINT#D9,"RADIOACTIVE PARTICLES WHICH GET INSIDE ";
230 PRINT#D9,"YOUR BODY CAN LAY THERE
240 PRINT#D9," DOING DAMAGE FOR SEVERAL DAYS,  OR EVEN WEEKS. YOU SHOULD ALSO  COVER YOUR BODY AS MUCH AS YOU  CAN, AND WASH UPON REENTERING   YOUR SHELTER. IF WATER IS AT A  PREMIUM, AT LEAST BRUSH OFF...!";
243 PRINT#D9,"    IF YOU ARE WITHIN THE CROSS-WIND DISTANCE OF THE 10 ROENTGENPER HOUR ZONE, YOU ARE ALREADY  GETTING SOME RADIATION. YOU MUSTGET INSIDE AS FAST AS POSSIBLE. EVERY THREE FEET OF AIR OR THREEINCHES OF DIRT BETWEEN YOU AND
245 GOSUB510:PRINT#D9,"THE RADIATION CUTS THE LEVEL YOUARE GETTING IN HALF, SO RUN TO  THE CELLAR OR ANY CENTRAL ROOM  WITHOUT WINDOWS, COVER UP WITH ANY CLOTHES, BLANKETS, ETC. AND
247 PRINT#D9,"WAIT. THE FIRST HOUR OR MORE THELEVEL OF RADIATION INCREASES TO MAXIMUM, THEN BEGINS TO DROP OFF SLOWLY. EVEN IF YOU HAD NO TIMETO DRAW WATER, YOU CAN STAY HID FOR AT LEAST A DAY, OR MORE.     DO NOT COME OUT IN THE OPEN
248 PRINT#D9,"  UNTIL YOU ABSOLUTELY HAVE TO!
250 GOSUB510:GOTO770
260 U=10:RETURN
270 V=8:U=8:RETURN
280 V=7:U=7:RETURN
290 V=6:U=6:RETURN
300 U=5:V=5:RETURN
310 U=32:RETURN
320 U=25:RETURN
330 U=22:RETURN
340 U=19:RETURN
350 U=16:RETURN
360 U=37:RETURN
370 U=34:RETURN
380 U=31:RETURN
390 U=28:RETURN
400 U=25:RETURN
410 U=104:RETURN
420 U=97:RETURN
430 U=91:RETURN
440 U=85:RETURN
450 U=80:RETURN
460 IFL=100THENU=INT(U*10+V):U=INT(U*10/21-9):V=U-INT(U/10*10):U=U/10
470 IFL=1000THENU=INT(U*10+V):U=INT(U/11):V=U-INT(U/10*10):U=U/10
480 IFL=3000THENU=INT(U*10+V):U=INT(U/21+1):V=U-INT(U/10*10):U=U/10
490 IFS>5 ANDL=3000THENU=INT(U*10+V):U=INT(U/2):V=U-INT(U/10*10):U=U/10
500 RETURN
510 IFD9=0 THENPRINT@480,"   PRESS ANY KEY TO CONTINUE:";:ELSEPRINT#D9,"PRESS ANY KEY TO CONTINUE:"
520 IFINKEY$=""THEN520ELSECLS:RETURN
530 PRINT#D9:PRINT#D9," "W" M.P.H. WIND 
550 PRINT#D9,"LEVEL*UPWIND*CROSS*DOWN*MAXWIDTH":PRINT#D9," R/HR   MI.   MI.   MI.   MI.
560 L=10:GOSUB570:L=100:GOSUB570:L=1000:GOSUB570:L=3000:GOSUB570:RETURN
565 IFW<5THENW=5
570 B=0:D=INT(936*INT((W+5)/10)):IFS=10THEND1=10:B=10:M=2420:ELSEIFS=1THEND1=44:M=515:ELSEIFS=5THEND1=15:B=5:M=1512:ELSEIFS=50THEND1=3:B=15:M=8066
580 D=D*10:D=INT(D/D1)
590 IFL=100THEND=INT(D/2.7):ELSEIFL=1000THEND=INT(D/7.3):ELSEIFL=3000THEND=INT(D/13)
600 IFW<5 ANDL=1GOSUB570
610 M=M/W:IFL=100THENM=M/1.9:ELSEIFL=1000THENM=M/4.7:ELSEIFL=3000THENM=M/11
615 IFB+INT(W/10)<1THENB=1
620 V=0:B=B+INT(W/10):ONB GOSUB260,270,280,290,300,310,320,330,340,350,360,370,380,390,400,410,420,430,440,450
630 GOSUB460:IFL=10THENC1=110:C2=350:C3=400:C4=1250:ELSEIFL=100THENC1=47:C2=150:C3=180:C4=550:ELSEIFL=1000THENC1=14:C2=46:C3=60:C4=175:ELSEIFL=3000THENC1=4:C2=15:C3=16:C4=50
640 IFS><1THEN660
650 C=-110*(L=10)-47*(L=100)-14*(L=1000)-4*(L=3000)
660 IFS><10THEN680
670 C=-400*(L=10)-180*(L=100)-60*(L=1000)-16*(L=3000)
680 IFS><5THEN700
690 C=-350*(L=10)-150*(L=100)-46*(L=1000)-15*(L=3000)
700 IFS><50THEN720
710 C=-1250*(L=10)-550*(L=100)-175*(L=1000)-50*(L=3000)
720 C=C/10
730 IFM=0THENM=1
740 IFW<5THENU=C:V=E
745 IFU>C THENC1=U:U=C:C=C1
750 PRINT#D9,USING" ####";L;:PRINT#D9,USING" ###.#";U;:PRINT#D9,USING" ###.#";C;:PRINT#D9,USING" #####";D;:IFM>=10THENPRINT#D9,USING"  ####";M:ELSEPRINT#D9,USING"    ##.#";M
760 RETURN
770 PRINT#D9,"IF YOU HAVE PRIOR WARNING THAT  A NUCLEAR EXPLOSION IS IMMINENT,  DRAW WATER",,"  IF YOU HAVE A CELLAR, GO OUT  AND SHOVEL DIRT, GRAVEL, ETC.   AROUND THE FOUNDATION AND BACK- FILL OVER WINDOWS. DRAG BOARDS, MATTRESSES, OR ANYTHING TO 
780 PRINT#D9,"FLOOR OVER YOUR SHELTER AREA, TOCUT DOWN RADIATION.","  IF YOU ARE GOING TO WAIT IN A CLOSET, PICK ONE NEAR THE CENTEROF THE HOUSE, PULL MATTRESSES OROTHER HEAVY FURNITURE AROUND IT.":GOSUB510:PRINT#D9,"LAYING IN A BATHTUB WITH A TABLE
785 PRINT#D9,"OR HEAVY MATTRESS OVER IT MIGHT PROTECT YOU IF THE HOUSE SHOULD COLLAPSE DURING THE SHOCK-WAVE."
787 PRINT#D9,"BUT IS NOT SUFFICIENT AGAINST   THE RADIATION (FALLOUT). AFTER  THE SHOCK-WAVE, IF YOUR HOUSE ISDESTROYED, RUN TO A NEIGHBOR'S, OR ANY PUBLIC FALLOUT SHELTER IFLESS THAN A MINUTE OR TWO AWAY..   BUT GET AS FAR FROM THE DUST
788 PRINT#D9,"FALLING OUT OF THE SKY AS YOU    CAN.",,"    GOOD LUCK !":GOSUB510
790 GOTO1000
800 END
810 CLS:PRINT"
820 PRINT:PRINT"  CALCULATING PROGRAM LOCATION
830 'POKE150,174:'THIS POKE SETS BAUD RATE FOR SILENT 700 PRINTER
840 X1=PEEK(116)*256+PEEK(117)+1
850 X2=PEEK(39)*256+PEEK(40)+1
860 X3=X1-X2
865 RESTORE
870 READA$:IFA$><"^"THEN870
880 READA$
890 IFLEFT$(A$,1)="^"THEN880
900 IFA$="END"THEN920
910 X=X+1:GOTO880
920 IF X3=0 THEN 950
930 PRINT:PRINT"I SEE RESERVED MEMORY...BUT THIS IS A high priority PROGRAM, SO THEY ARE GONE NOW, SORRY...!"
940 PRINT:FORM=1TO15:PLAY"L255O4CDEFGABO5BAGFEDC":NEXT
950 X2=X1-X:CLEAR 200,X2
960 POKE&H167,57
970 RESTORE:X=PEEK(39)*256+PEEK(40)+1
980 PRINT"   ONE  MOMENT, PLEASE...!
990 GOTO1560
1000 PCLEAR8:PCLS:CLEAR100:GOSUB1110:GOTO 1800
1010 CIRCLE(159,91),100,3,.4,.75,.25
1020 CIRCLE(255,91),254,3,.17,.32,.695
1030 LINE(17,91)-(24,91),PSET:LINE(20,88)-(20,94),PSET
1040 PRESET(1,91):PRESET(1,90):PRESET(1,89):PRESET(1,92)
1050 PSET(2,90,3):PSET(2,89,3):PSET(2,91,3):PSET(2,92,3)
1060 LINE(120,88)-(180,88),PSET:LINE(180,88)-(165,73),PSET:LINE(180,88)-(165,103),PSET
1070 DRAWHM$:DRAW"S4":BB$="THE FALLOUT PATTERN WILL"+CHR$(10):GOSUB1200
1080 BB$="OCCUR AS A CIGAR-LIKE SHAPE"+CHR$(10):GOSUB1200:BB$="DOWN-WIND FROM THE BLAST"+CHR$(10):GOSUB1200
1090 BB$=CHR$(10)+CHR$(10)+" BLAST"+CHR$(10)+CHR$(10):GOSUB1200:DRAW"S8":BB$="    WIND"+CHR$(10):GOSUB1200
1100 FORL=1TO2000:NEXT:RUN
1110 DIMAZ$(60)
1120 FORLE=0TO60
1130 READAZ$(LE):NEXTLE
1140 NC$="BR3BU7"
1150 NL$="BD4"
1160 BS$="BL9"
1170 HM$="BM0,10"
1180 CC=1
1190 RETURN
1200 CC=1:FORTT=1TOLEN(BB$)
1210 A9$=MID$(BB$,TT,1)
1220 IFA9$=CHR$(94)THENDRAWHM$:GOTO1320
1230 IFA9$=" "THENDRAW"BR9":GOTO1320
1240 IFA9$=CHR$(8) THENDRAWBS$:GOTO1320
1250 IFA9$=CHR$(10)THENDRAW"BD12BL250":GOTO1320
1260 IFA9$=CHR$(12) THENPCLS:GOTO1320
1270 IF" ">A9$ OR"Z"<A9$ THEN1320
1280 CC=CC+1
1290 IFCC>27 THENDRAWNL$:FORI=1TO27:DRAWBS$:NEXTI:CC=1:GOTO1310
1300 DRAWNC$
1310 DRAWAZ$(ASC(A9$)-30)
1315 DRAW"BR1
1320 NEXT
1330 RETURN
1340 GOTO1340
1350 DATA' !"#$%&'()*+,-./
1360 DATA BD7BR5,NR1D4R1NU4BD2ND1L1D1R1,ND1R1D1NL1D1G1BR3E1U2L1D1R1BD6,BD1R1NU1ND4R3NU1NR1D3NL4NR1D1BD2,BD1BR2NU1NR2L1G1F1R2F1G1L1NL2D1BR2BD1,R1D1L1NU1BR5G5BR5L1D1R1NU1,BR1BD1ND1E1R1F1D1G1L1NH1G1D2F1R1E1U2NH1NE1F1BD2,ND1R1D1NL1D1G1BD4BR1,BR1G1D5F1
1370 DATA F1D5G1BR1,BR3D3NL3ND3NE2NF2NG2NH2R3BD4,BD3R3NU3ND3R3BD4,BD4ND1R1D1NL1D1G1BR1,BD4R4BD3,BD7U1R1D1NL1,BR5BD1G5BR5BD1
1380 '0-8
1390 DATABD1BR1D5F1R1E1U5H1L1G1BD6BR5,BD1E1D7L1R2BR1,BD1E1R3F1D2G1L3G1D2R5,BD1E1R3F1D1G1NL2F1D2G1L3H1BF1BR4,BD4NR5E4D7BR1,NR5D3R4F1D2G1L3H1BF1BR4,BD1BR5H1L3G1D5F1R3E1U2H1L3G1BF3BR2,ND1R5D1G5D1BR5,BD1E1R3F1D1G1NL3F1D2G1L3H1U2E1H1NU1BF5
1400 '9:;<=>?@
1410 DATA BD6F1R3E1U5H1L3G1D2F1R3E1BD4,BD1R1D1L1U1BD3R1D1L1U1BD3BR2,BD1R1D1L1U1BD3NR1D1R1NU1D1G1BR2,BD1BR3G3F3,BD3NR4BD2R4BD2,BD1F3G3BR3,BD1E1R2F1D1G2BD2ND1L1D1R1BR3,BD2BR1ND2E1R1F1D2G1L1H1BR3D1R1U4H1L3G1D5F1R4
1420 ' A-H
1430 DATA BD7U3NR5U3E1R3F1D6,ND7R4F1D1G1NL4F1D2G1NL4BR1,BD1D5F1R3E1U1BU3U1H1L3G1BD6BR5,D7R4E1U5H1L4BD7BR5,NR5D3NR4D4R5,NR5D3NR4D4BR5,BD1D5F1R3E1U2NL2BU2U1H1L3G1BD6BR5,D7U4R5NU3D4
1440 ' I-T
1450 DATA R4L2D7L2R4BR1,BD5D1F1R3E1U6BD7,D7U4R3E2NU1G2F2D2,D7R5,ND7F3E3D7BR1,ND7F5NU5D2,BD1D5F1R3E1U5H1L3G1BD6BR5,ND7R4F1D2G1L4BD3BR5,BD1D5F1R3E1U5H1L3G1D4BR3F2,ND7R4F1D1G1NL4F1D3,BD1D1F1R3F1D2G1L3H1BU5E1R3F1BD6,R4L2D7BR2
1460 ' U-Z
1470 DATA D6F1R3E1U6BD7,D4F3E3NU4BD3BR1,D7E3F3U7BD7BR1,D1F5D1BL5U1E5U1BD7,D2F2ND3E2U2BD7BR1,R5D1G5D1R5
1540 '
1550 '
1560 READA$
1570 IF LEFT$(A$,1)<>"^" THEN1590
1580 MR(Y)=X:Y=Y+1:GOTO1560
1590 IFA$="END"THEN1610
1600 POKEX,VAL(A$):X=X+1:GOTO1560
1610 DATA ^,52,22,214,111,193,254,38,2,141,5,53,22,126,130,115
1620 DATA 129,13,38,27,124,3,249,246,3,249,241,3,252,37,12,246,3,251
1630 DATA 189,162,133,90,38,250,127,3,249,127,3,250,57
1640 DATA 129,12,38,20,125,3,249,39,14,134,13,189,162,133,141,213,125,3,249,38,246,134,12,57
1650 DATA 124,3,250,246,3,250,241,3,253,37,36,129,48,37,7,192,10,241,3,253,37,25,134,13,141,22,141,177,246,3,255,247,3,250,39,8,134,32,189,162,133,90,38,250,18,18,57,57,126,162,133,END
1660 POKE&H168,INT(MR(0)/256):POKE(&H169),MR(0) AND 255
1690 POKE&H3FB,8:POKE&H3FC,25:POKE&H3F9,0:POKE&H3FA,0
1700 POKE&H3FF,0
1710 POKE&H3FD,32
1720 POKE&H167,&H7E
1730 DATA 141,3,126,142,144
1731 '^
1740 D=2:CLS:GOTO30
1750 PMODE0:PCLEAR2:GOTO 20
1800 PMODE3:SCREEN4:PCLS:GOTO1010
