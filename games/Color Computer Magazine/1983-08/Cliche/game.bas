
10 'CREATED BY GEORGE AFTAMONOW     46 HOWE ST.  MILFORD, CT
20 CLEAR2000
30 PMODE3,1:SCREEN1,0:PCLS
40 DRAW"BM38,80;S16G2NU2L6NU2HU2FR6E2L2GL2NE3L2E5D2R2NDUENL3BEFND2GNL2D2NEL2BDD2 BRD2R7EU2GND2L7BEBR2NR2E6D2G4R3 BR2BD"
50 DRAW"D2R2U2NL2E7D2G7BR5 HU2FD2R6E2U2NG2L2GBFND2L6BENR4E5NR3D2NG3R2NDUNER2ENHD2GNU2NL2BD3"
60 DRAW"D2R2NE3U2NL2E3NR4D2R2NE2GNR2D2R2U2E4BL2L2NEL2E3D2BR4NGE2D2G7 BR4"
70 DRAW"U2R7D2NL7EU2NGNENU2L5E2ND2R3END2L3E2ND2R4D2NL3EU2NGBH2 DH2UF2"
80 PAINT(1,1),2,4
90 PLAY"T3O2L8DD+EO3L4CO2L8EL4O3CO2L8EO3L2CO4L8CDD+ECDL4EO3L8BO4L4DL2CP4"
100 CLS0:PRINT@232,"******************";:PRINT@264,"*  CREATED   BY  *";:PRINT@296,"*                *";
110 PRINT@328,"*GEORGE AFTAMONOW*";
120 PRINT@360,"******************";
130 SCREEN0,1
140 PLAY"T3O4L8CDECDL4EL8CDCECDL4EL8CDCECDL4EL8O3BO4L4DC"
150 CLS:INPUT"DO YOU NEED INSTRUCTIONS (Y/N)";A$
160 IFA$="N" THEN 280
170 CLS:PRINT"TO SOLVE THIS PUZZLE,SIMPLY FINDA SAYING,PHRASE OR CLICHE."
180 PRINT"          ***********                     * WORKING *                     *  TIME   *                     ***********
190 INPUT"FOR EXAMPLE:IN THE SAMPLE ABOVE THE WORD 'WORKING' APPREARS OVER THE WORD 'TIME'. SO THE ANSWER  WOULD BE WORKING OVERTIME.      PRESS 'ENTER' TO CONTINUE";B$
200 IFB$="B" THEN210
210 CLS:PRINT"THERE ARE 4 BOXES ON EACH SCREENYOU ARE TO GUESS THE CLICHE IN  EACH (DO NOT INPUT YOUR ANSWER) TO FIND OUT WHETHER YOU WERE    RIGHT PRESS ITS CORRESPONDING   NUMBER."
220 PRINT"       *********"
230 PRINT"       * 1 * 2 *"
240 PRINT"       *********"
250 PRINT"       * 3 * 4 *"
260 PRINT"       *********"
270 INPUT"PRESS 'C' TO CONTINUE OR TO GET A  NEW SCREEN";C$
280 CLS:FORI=10TO60:SET(I,3,3):SET(I,13,3):SET(I,23,3):NEXT
290 FORI=3TO23:SET(10,I,3):SET(35,I,3):SET(60,I,3):NEXT
300 PRINT@72,"SOCIETY";
310 PRINT@147,"WAY YIELD";
320 PRINT@265,"STAND";:PRINT@299,"I";
330 PRINT@277,"LOVERS";:PRINT@310,"TORN";:PRINT@341,"LOVERS";
340 SCREEN0,1
350 AA$=INKEY$:IFAA$="" THEN350
360 IFAA$="C" THEN440
370 IFAA$="1" OR AA$="2" OR AA$="3" OR AA$="4" THEN380 ELSE350
380 AA=VAL(AA$)
390 ON AA GOTO400,410,420,430
400 PRINT@448,"#1 HIGH SOCIETY":SCREEN0,1:GOTO350
410 PRINT@448,"#2 YIELD RIGHT OF WAY":SCREEN0,1:GOTO350
420 PRINT@448,"#3 I UNDERSTAND":SCREEN0,1:GOTO350
430 PRINT@448,"#4 TORN BETWEEN 2 LOVERS":SCREEN0,1:GOTO350
440 CLS
450 FORI=10TO60:SET(I,3,4):SET(I,13,4):SET(I,23,4):NEXT
460 FORI=3TO23:SET(10,I,4):SET(35,I,4)
470 SET(60,I,4):NEXT
480 PRINT@71,"BET YOUR";:PRINT@168,"DOLLAR";
490 PRINT@116,"SAFETY";:PRINT@124,"8";:PRINT@82,"2";:PRINT@87,"0";:PRINT@155,"5";:PRINT@182,"71";:PRINT@188,"4";:PRINT@147,"12";:PRINT@151,"3";
500 PRINT@265,"DAY";:PRINT@393,"DAY";
510 PRINT@244,"SWEAR";:PRINT@276,"BIBLE";:PRINT@308,"BIBLE";:PRINT@340,"BIBLE";
520 BB$=INKEY$:IFBB$="" THEN520
530 IFBB$="C" THEN610
540 IFBB$="1" OR BB$="2" OR BB$="3" OR BB$="4" THEN550 ELSE520
550 BB=VAL(BB$)
560 ON BB GOTO 570,580,590,600
570 PRINT@448,"#1 BET YOUR BOTTOM DOLLAR":GOTO520
580 PRINT@448,"#2 SAFETY IN NUMBERS":GOTO520
590 PRINT@448,"#3 DAY IN, DAY OUT":GOTO520
600 PRINT@448,"#4 SWEAR ON A STACK OF BIBLES":GOTO520
610 CLS:FORI=10TO35:SET(I,3,5):SET(I,23,5):NEXT:FORI=10TO60:SET(I,13,5):NEXT
620 FORI=3TO23:SET(10,I,5):SET(35,I,5):SET(60,I,5):NEXT
630 PRINT@74,"0";:PRINT@105,"B.S.";:PRINT@137,"M.A.";:PRINT@169,"PHD.";
640 PRINT@85,"BATHING";:PRINT@118,"SUIT";
650 PRINT@264,"STRIKE";:PRINT@296,"STRIKE";:PRINT@328,"STRIKE";:PRINT@392,"YOU'RE";
660 PRINT@310,"PIT";
670 CC$=INKEY$:IFCC$="" THEN670
680 IFCC$="C" THEN760
690 IFCC$="1" OR CC$="2" OR CC$="3" OR CC$="4" THEN700 ELSE670
700 CC=VAL(CC$)
710 ON CC GOTO720,730,740,750
720 PRINT@448,"#1 THREE DEGREES BELOW ZERO":GOTO670
730 PRINT@448,"#2 TOPLESS BATHING SUIT":GOTO670
740 PRINT@448,"#3 THREE STRIKES,YOU'RE OUT":GOTO670
750 PRINT@448,"#4 BOTTOMLESS PIT":GOTO670
760 CLS:FORI=10TO62:SET(I,1,7):SET(I,15,7):SET(I,26,7):NEXT
770 FORI=1TO26:SET(10,I,7):SET(35,I,7):SET(62,I,7):NEXT
780 PRINT@42,"S";:PRINT@74,"P";:PRINT@106,"O";:PRINT@138,"R";:PRINT@170,"T";:PRINT@202,"S";
790 PRINT@89,"C";:PRINT@121,"O";:PRINT@153,"M";:PRINT@185,"I";:PRINT@217,"C";
800 PRINT@326,"CALM STORM";
810 PRINT@340,"NOON GOOD";
820 DD$=INKEY$:IFDD$="" THEN820
830 IF DD$="C" THEN910
840 IFDD$="1" OR DD$="2" OR DD$="3" OR DD$="4" THEN850 ELSE820
850 DD=VAL(DD$)
860 ON DD GOTO870,880,890,900
870 PRINT@448,"#1 SPORTS COLUMN":GOTO820
880 PRINT@448,"#2 STAND UP COMIC":GOTO820
890 PRINT@448,"#3 CALM BEFORE THE STORM":GOTO820
900 PRINT@448,"#4 GOOD AFTERNOON":GOTO820
910 CLS:FORI=10TO60:SET(I,3,8):SET(I,13,8):SET(I,23,8):NEXT
920 FORI=3TO23:SET(10,I,8):SET(35,I,8):SET(60,I,8):NEXT
930 PRINT@72,"COVER";
940 PRINT@118,"END";:PRINT@150,"END";
950 PRINT@277,"POWER";:PRINT@405,"BLACK":
960 PRINT@392,"CHANCE";
970 EE$=INKEY$:IFEE$="" THEN970
980 IFEE$="C" THEN1060
990 IFEE$="1" OR EE$="2" OR EE$="3" OR EE$="4" THEN1000 ELSE970
1000 EE=VAL(EE$)
1010 ON EE GOTO1020,1030,1040,1050
1020 PRINT@448,"#1 COVER UP":GOTO970
1030 PRINT@448,"#2 END OVER END":GOTO970
1040 PRINT@448,"#3 OUTSIDE CHANCE":GOTO970
1050 PRINT@448,"#4 POWER BLACKOUT":GOTO970
1060 PCLS:PMODE4,1:SCREEN1,1
1070 DRAW"BM20,10;S16 R28ND40R28D20NL56D20L56U40"
1080 DRAW"BM40,60;S16U2RDNLBRNRND2U2RD4 BFBRU6BR2ND7FD5FU8BEBRNRD5RD5L"
1090 DRAW"BM150,70;S32 U2NU3R2NU3D2BRU4RD2NLD2BRU3BFND2RDLFBRR2"
1100 DRAW"BM40,120;S16 RULURBRRND2RBRND2RDLFBRNRU2RD2BRU2BRGFBRNRUNRURBRNRDRDL"
1110 DRAW"BM40,150;S16 E2D2NHENFU3BGR2BDND2FDENDURD2NLENDEBU2BLD3FREULDFE2D2H"
1120 DRAW"BM170,140;S32 L2HUER2DLDRDBR NU2RURDRU2BL3ERFBRNUDRDRURU2L3"
1130 FF$=INKEY$:IF FF$="" THEN1130
1140 IF FF$="C" THEN1220
1150 IF FF$="1" OR FF$="2" OR FF$="3" OR FF$="4" THEN1160 ELSE1130
1160 FF=VAL(FF$)
1170 ON FF GOTO1180,1190,1200,1210
1180 CLS:PRINT@448,"#1 GROWING PAINS":GOSUB1510:GOTO1060
1190 CLS:PRINT@448,"#2 RECEDING HAIRLINE:GOSUB1510:GOTO1060
1200 CLS:PRINT@448,"#3 DIFFERENT STROKES":GOSUB1510:GOTO1060
1210 CLS:PRINT@448,"#4 FAT CAT":GOSUB1510:GOTO1060
1220 PCLS:PMODE4,1:SCREEN1,1:DRAW"BM20,10;S16 R28ND40R28D20NL56D20L56U40"
1230 DRAW"BM60,60;S16 U2F2U2BRFNRLDR2U2BRND2R2ND2BR2D2NLR"
1240 DRAW"BM230,20;S16 DNDR2BD2DLNULNUBDDRNURNUBDGULDR2BD2L2NUDBDDRURD"
1250 DRAW"BM45,130;S12L3U2R3BR2D2BR2U2R3DL2NLFBR2NR3U2R3BR2D2R3U2BR2D2BR4U2NL2R2"
1260 DRAW"BM160,110;S24 D2ND2RNU2D2 BRNRU4RND4BR D4RNU4BR NRU2RBD2D2NLBR NRU2NRU2R"
1270 GG$=INKEY$:IFGG$="" THEN1270
1280 IF GG$="C" THEN1360
1290 IF GG$="1" OR GG$="2" OR GG$="3" OR GG$="4" THEN1300 ELSE1270
1300 GG=VAL(GG$)
1310 ON GG GOTO1320,1330,1340,1350
1320 CLS:PRINT@448,"#1 TURN UPSIDE DOWN":GOSUB1510:GOTO1220
1330 CLS:PRINT@448,"#2 SIDE STREET":GOSUB1510:GOTO1220
1340 CLS:PRINT@448,"#3 SHORT CIRCUIT":GOSUB1510:GOTO1220
1350 CLS:PRINT@448,"#4 SPLIT LEVEL HOUSE":GOSUB1510:GOTO1220
1360 PLAY"T3O2L4EEL8DL2DL4FFL8EL2EL4GGL8FL2FL4AGP4O3L4O3CCO2L8AL2FL4AGL8EL2CL4EFAL2O3CL4DL2C"
1370 PMODE4,1:SCREEN1,1:PCLS
1380 A$="U2NL2R2BR DNDR2NUDBR NR2UNRUR2"
1390 A1$="L2UNRUR2BR ND2F2U2BR R2D2LNU2L"
1400 FORS=1TO62
1410 B$="S"+STR$(S)
1420 DRAW"C3BM90,120;XB$;XA$;"
1430 DRAW"C0BM90,120;XB$;XA$;"
1440 NEXTS
1450 FORS=1TO62
1460 B$="S"+STR$(S)
1470 DRAW"C3BM100,120;XB$;XA1$;"
1480 DRAW"C0BM100,120;XB$;XA1$;"
1490 NEXTS
1500 CLS0:END
1510 FORQ=1TO1000:NEXTQ:RETURN
