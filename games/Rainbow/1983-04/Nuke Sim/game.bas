
1 '******  NUKE SIM  ********     *NUCLEAR REACTOR SIMULATOR*     *VERSION 1.0 COPYRIGHT (C)*     *1983 BY JOHN ERICKSON AND*     *CRIS LATHAM WRITTEN UNDER*     *CONTRACT FROM THE RAINBOW*     ****** JESUS IS LORD ****** 
10 CLS:CLEAR500:A=PEEK(27)*256+PEEK(28):A=A-843:DEFUSR0=A:DEFUSR1=A+33:A=USR0(0):PMODE3,1:PCLS(6):GOSUB200:GOSUB210:PRINT@320,"    RED SCREEN   HIT ENTER        GREEN SCREEN   HIT SPACEBAR"
20 A=RND(TIMER):A$=INKEY$:IFA$=""THEN20ELSEIFA$=CHR$(32)THENC1=7:C2=6ELSEIFA$=CHR$(13)THENC1=6:C2=7ELSEGOTO20
30 CLS:A=USR1(0):DIMS0(6),S1(6),S2(6),S3(6),S4(6),S5(3),S6(3),R1(4),A$(1),V1$(21),AF(5),AL$(5),OC(8),OT(8):FORI=0TO3:READS5(I),S6(I):NEXT:FORI=0TO21:READV1$(I):NEXT:FORI=0TO5:READAL$(I):NEXT
40 DATA 78,100,160,79,160,43,212,100,RODS,P1ON,P1OFF,P2ON,P2OFF,P3ON,P3OFF,P4IN,P4OUT,P4OFF,HEATON,HEATOFF,V1OPEN,V1CLOSE,V2OPEN,V2CLOSE,MON1,MON2,AL,LIST,STOP,EXIT
50 DATAREACTOR TRIPPED,PRESSURE RELIEF VALVE OPEN,LOW COOLANT IN STEAM GENERATOR,PRESSURIZER HEATER TRIPPED,SECONDARY FEEDWATER PUMP OFF,TURBINES TRIPPED
60 TIMER=0:OT=0:RH=32:CTP=97:PP=2155:P1=2155:PT=580:PW=200:GW=288:SP=1010:ST=547:OC(1)=1:OC(2)=1:R=2129.9955:SR=2059.1161:PV=2121.1:VS=1060.55:GV=3700:TC=547:TH=613:A1$="V31L100O4GL5G-":A2$="L100BL5C"
70 A3$="L255V20O1ADCFBP155V31ADCFBAGEDV15ADCFBAGEDV6ADCFBV4AGED":GOTO1160
80 PMODE3,1:COLOR4,1:V$="L2D1G1D4F1D1R2BR11R2U1E1U4H1U1L2":P$="D10L24U10R6E6R6F6":FORI=1TO4:PCLS1:DRAW"BM24,6XP$;":ONI GOTO90,100,110,120
90 GET(6,1)-(22,15),S0,G:DRAW"BM15,1D14R2U14":GET(6,1)-(22,15),S1,G:NEXT
100 DRAW"BM8,8R14D1L14D1R14":GET(6,1)-(22,15),S2,G:NEXT
110 DRAW"BM11,3M+12,+10D1M-12,-10D1M+12,+10":GET(6,1)-(22,15),S3,G:NEXT
120 DRAW"BM22,3M-12,+10D1M+12,-10D1M-12,+10":GET(6,1)-(22,15),S4,G:PCLS1
130 DRAW"C1;BM0,0R2D1;C4D33L2NU33D1":COLORC1:DRAW"R2":GET(0,0)-(3,35),R1,G:COLOR4:PCLS1:GOSUB140:GOSUB150:GOSUB370:GOSUB400:GOSUB160:GOSUB260:GOSUB430:GOSUB510:PAINT(31,112),C1,4:GOSUB200:GOTO210
140 DRAW"BM73,107D6L44U10L15U40R15U58R104D102R74D6L110U6R28U96L89D43R28D32R20U6L4H8U21L14U40R6D36R8E8R4U28R6D28R4F8D25G8L4D10L31U32L22D5R14D40L14D4R35BM80,70R14D5L14U5BM84,0D5R6U5BM255,107L24D6R24BM58,0D5R6U5":RETURN
150 DRAW"BM124,100NU80L6H8U65E8R6BR8ND80R7F8D3R8U6R8D12L16D14R8D6L8D30R8D6L9G8L5BM179,24NL8D6R28U6R8D12L44U12BM222,24D62L12U5H3L8ND17L9G3D5L8D6R8D5F3R3NU17R11NU17R3E3U5R20U68L7":RETURN
160 DRAW"BM178,50R26D18R18D6L25U18L18U6BM255,68L24D6R24BM183,24L32U19R32D19U8NR19U1NR19U1NR19U1R19U8D19R32U19NL32D8R21D1L21D1R21D1L21BM230,40R10D4R15BD4L15D8R15BD4L15D4L10BL8L10U24R9"
170 DRAW"BM180,16L3G5L15U5L4U3R4U5R15F5R4":PAINT(162,15),4,4:DRAW"BM232,16L3G5L15U5L4U3R4U5R15F5R4":PAINT(228,15),4,4
180 DRAW"BM96,105XP$;BM178,48XP$;BM178,84XP$;BM230,105XP$;BM56,20XV$;BM82,20XV$;":PAINT(60,0),C2,4:PAINT(60,20),C2,4:PAINT(218,73),C2,4:PAINT(235,73),C2,4:PAINT(234,112),C2,4:LINE(215,51)-(239,51),PSET:PAINT(227,52),C1,4:PAINT(227,50),4,4
190 PAINT(194,35),4,4:PAINT(217,52),C2,4:PAINT(237,52),C2,4:PAINT(217,50),C1,4:PAINT(237,50),C1,4:COLORC1:LINE(215,51)-(221,51),PSET:LINE(233,51)-(239,51),PSET:COLOR4:RETURN
200 PRINT@320,STRING$(192," ");:RETURN
210 PMODE4,1:SCREEN1,1:PMODE3,1:RETURN
220 REM RODS UP OR DOWN
230 IFCTP>100THENRETURNELSERM=FIX((CTP+1)/3):IFRM=RH THENRETURNELSEIFRM>RH THEN250ELSEFORK=RM TORH:GOSUB260:RH=RH-1:NEXTK
240 RH=FIX((CTP+1)/3):RETURN
250 FORK=RH TORM:GOSUB260:RH=RH+1:NEXTK:GOTO240
260 PUT(20,62-RH)-(23,97-RH),R1,PSET:RETURN
270 REM PUMP MOTORS 
280 WP=WP+1:IFWP=5THENWP=1
290 FORI=0TO2:IFOC(I+1)=0THENGOSUB350:NEXTELSEONWP GOSUB310,320,330,340:NEXT
300 IFOC(I+1)=0THEN350ELSEIFOC(I+2)=1THENONWP GOTO310,320,330,340ELSEONWP GOTO310,340,330,320
310 PUT(S5(I),S6(I))-(S5(I)+16,S6(I)+14),S1,PSET:RETURN
320 PUT(S5(I),S6(I))-(S5(I)+16,S6(I)+14),S4,PSET:RETURN
330 PUT(S5(I),S6(I))-(S5(I)+16,S6(I)+14),S2,PSET:RETURN
340 PUT(S5(I),S6(I))-(S5(I)+16,S6(I)+14),S3,PSET:RETURN
350 PUT(S5(I),S6(I))-(S5(I)+16,S6(I)+14),S0,PSET:RETURN
360 REM VALVE 1 OPEN OR CLOSED
370 IFOC(7)=0THEN380ELSEDRAW"C1BM86,24R14U3D6BM90,24C4R14U3D6":A=PPOINT(86,26):COLORA:DRAW"BM86,0D4R2U4BD12D12L2U12":COLOR4:RETURN
380 DRAW"C1BM90,24R14U3D6BM86,24C4R14U3D6":DRAW"BM86,0C1D4R2U4BD12D11L2U11":COLOR4:RETURN
390 REM VALVE 2 OPEN OR CLOSED
400 IFOC(8)=0THEN410ELSEDRAW"C1BM62,24L14U3D6C4BM58,24L14U3D6":COLORC2:DRAW"BM60,24D26R2NU26R10U1L10U1R10":RETURN
410 DRAW"C1BM58,24L14U3D6C4BM62,24L14U3D6":A=PPOINT(74,48):COLORA:DRAW"BM60,25D25R2NU25R10U1L10U1R10C4":RETURN
420 REM PRESSURIZER WATER LEVEL
430 PW(1)=FIX((PW-100)/17):IFPW<101THEN460ELSEIFPW>400THEN470ELSEIFPW(1)=PW(2) THENRETURNELSEPW(2)=PW(1):PW(3)=0:COLORC2:GOSUB450:LINE(74,68-PW(1))-(102,68-PW(1)),PSET:PAINT(86,68-PW(1)+1),C1,C2:PAINT(86,68-PW(1)-1),4,C2:COLOR4
440 LINE(74,68-PW(1))-(102,68-PW(1)),PSET:GOSUB450:COLORC1:LINE(84,80)-(90,80),PSET:COLOR4:GOSUB370:GOTO400
450 DRAW"BM84,80L4H8U25E8R4U15R6D15R4F8D25G8L10BM80,70R14D5L14U5":RETURN
460 PW(2)=5:IFPW(3)=1THENRETURNELSEPW(3)=1:COLORC2:GOSUB450:PAINT(86,79),4,C2:COLOR4:GOSUB450:COLORC1:LINE(84,80)-(90,80),PSET:COLOR4:GOSUB370:GOTO400
470 PW(2)=5:IFPW(3)=1THENRETURNELSEPW(3)=1:COLORC2:GOSUB450:PAINT(86,25),C1,C2:COLOR4:GOSUB450:COLORC1:LINE(84,80)-(90,80),PSET:COLOR4:GOSUB370:GOTO400
480 REM HEATON OR HEATOFF
490 IFOC(6)=1THENPAINT(87,74),C1,4:RETURNELSEPAINT(87,74),1,4:RETURN
500 REM STEAM GENERATOR LINE 2
510 GW(1)=FIX((GW-30)/11.4):IFGW<30THEN570ELSEIFGW(1)=GW(2)THENRETURNELSEGW(2)=GW(1):IFGW>600THENRETURNELSEGW(3)=0:COLORC2:GOSUB550:LINE(113,86-GW(1))-(122,86-GW(1)),PSET:LINE(135,86-GW(1))-(144,86-GW(1)),PSET
520 A=PPOINT(146,86-GW(1)):IFA=C2 ORA=C2-4THEN530ELSELINE-(154,86-GW(1)),PSET
530 PAINT(116,86-GW(1)+1),C1,C2:PAINT(137,86-GW(1)+1),C1,C2:PAINT(116,86-GW(1)-1),4,C2:PAINT(137,86-GW(1)-1),4,C2:COLOR4:LINE-(135,86-GW(1)),PSET:LINE(113,86-GW(1))-(122,86-GW(1)),PSET:IFPPOINT(199,99)=4THENCOLORC1:GOSUB560:PAINT(199,99),C1,C2
540 IFPPOINT(199,99)=8THENCOLORC2:GOSUB560:PAINT(199,99),C1,C2:COLOR4:GOSUB560:GOTO550ELSEGOTO550
550 DRAW"BM124,100NU80L6H8U65E8R6BR8ND80R7F8D3R8U6R8D12L16D14R8D6L8D30R8D6L9G8L5":IFAF(5)=1THENDRAW"BM154,30R8":LINE(154,25)-(154,29),PRESET:LINE(162,25)-(162,29),PRESET:RETURNELSERETURN
560 DRAW"BM222,51D35L12U5H3L8ND17L9G3D5L8D6R8D5F3R3NU17R11NU17R3E3U5R20U41L7":RETURN
570 GW(2)=30:IFGW(3)=1THENRETURNELSEGW(3)=1:COLORC2:GOSUB550:PAINT(136,99),4,C2:PAINT(121,99),4,C2:GOSUB560:PAINT(199,99),4,C2:COLOR4:GOSUB550:GOTO560
580 REM PRIM LOOP WATER INLET
590 IFOC(4)=1ANDOC(5)=0THENPAINT(243,112),C1,4:COLORC1:GOTO600ELSEIFOC(4)=1THENPAINT(243,112),C2,4:COLORC2:GOTO600ELSEPAINT(243,112),C2,4:COLORC1
600 DRAW"BM204,112L70U1R70U1L70U1R70U1L70C4":RETURN
610 REM PUMP3 WATER INLET
620 IFOC(3)=1THENCOLORC2:DRAW"BM152,51L4D1R4D1L4D1R4D1L4":COLOR4:RETURNELSEDRAW"BM152,51L4D1R4D1L4D1R4D1L4":GW(2)=60:GOTO510
630 DRAW"BM46,6R9F1L12G1R15D1L15F1R12BM106,6R13F1L15D1R15D1L15F1R13":RETURN
640 COLORC1:GOSUB630:COLOR4:RETURN
650 COLOR1
660 DRAW"BM154,25R8D1L8D1R8D1L8D1R8BR8R8U1L8U1R8U1L8U1R8BR28R8D1L8D1R8D1L8D1R8BR8R8U1L8U1R8U1L8U1R8":IFPPOINT(154,25)=5THENCOLOR4ELSECOLOR1
670 DRAW"BM164,30D6R2U6R2D6BR48U6R2D6R2U6":COLOR4:RETURN
680 PO=(3411*CTP*.0032):IFAF(5)=1THENPO=0:RETURNELSERETURN
690 AT$="":CC=0
700 A$=INKEY$:IFA$=""THEN700ELSEIFLEN(AT$)>10THEN1370ELSEIFA$=CHR$(13)THENRETURNELSEIFA$=CHR$(8)THEN710ELSEIFA$<CHR$(48)THEN700ELSEAT$=AT$+A$:CC=CC+1:PRINTA$;:SOUND150,1:GOTO700
710 IFCC=0THEN700ELSECC=CC-1:SOUND150,1:PRINTA$;:AT$=LEFT$(AT$,CC):GOTO700
720 T=FIX((TIMER+OT)/60):IFTIMER=>60000THENOT=OT+TIMER:TIMER=0:RETURNELSERETURN
730 IFP1<400THENIV=1.17:RETURNELSEIV=.4:RETURN
740 PRINT@448,USING"Elapsed time: #### min  ## sec";FIX(T/60);(T-FIX(T/60)*60):RETURN
750 IFINKEY$=CHR$(12)ORPEEK(342)=247THENRETURN
760 IFP1=>2500THENGOSUB1830:PRINT@320,"**PRESSURE ABOVE DESIGN LIMITS**     ***SIMULATION OVER***":GOTO1110
770 IFP1=>2355ORPT>620THENCTP=7:GOSUB1420:GOSUB230:GOTO790ELSEIFP1<1650ANDPT>575THENCTP=7:GOSUB1420:GOSUB230:GOTO790
780 GOTO800
790 IFAF(0)=0THENGOSUB1840:FORI=1TO2:PLAYA1$:PRINT@480,"********REACTOR  TRIPPED********";CHR$(5);:PLAYA2$:NEXT:AF(0)=1
800 IFP1=>2255ANDOC(7)=0THENOC(7)=1:ET(7)=T:GOSUB370ELSE820
810 IFAF(1)=0THENGOSUB1840:FORI=1TO2:PLAYA1$:PRINT@480,"***PRESSURE RELIEF VALVE OPEN***";CHR$(5);:PLAYA2$:NEXT:AF(1)=1
820 IFEM(3)=1THENPW=PW-((T-ET(9))*.01667):ET(9)=T:VS=PV-(PW*5.3):GOSUB430:GOSUB1130:GOSUB1150
830 G2=GV-(GW*5.72):IFGW<150THENGF=GW/150ELSEIFGW>150ANDGF<300THENGF=1ELSEIFGW>300THENGF=GW/300
840 TC=TH-(CTP*.01*66*GF)
850 ST=TC:SP=(ST+460)*SR/G2:IFOC(2)=0ANDAF(5)=0THENGOSUB650:GOSUB1840:FORI=1TO2:PLAYA1$:PRINT@480,"********TURBINES TRIPPED********";CHR$(5);:PLAYA2$:NEXT:AF(5)=1
860 IFOC(2)=1ANDGW>100ANDAF(5)=1ANDSP<1110THENGOSUB660:AF(5)=0
870 IFGW<100ANDAF(2)=0THENFORI=1TO2:PLAYA1$:PRINT@480,"*LOW COOLANT IN STEAM GENERATOR*";CHR$(5);:PLAYA2$:NEXT:AF(2)=1
880 IFGW>100ANDAF(2)=1THENAF(2)=0
890 IFPW<101THENOC(6)=0:GOSUB490ELSE910
900 IFAF(3)=0THENGOSUB1840:FORI=1TO2:PLAYA1$:PRINT@480,"***PRESSURIZER HEATER TRIPPED***";CHR$(5);:PLAYA2$:NEXT:AF(3)=1
910 IFPW>100THENAF(3)=0
920 TH=TC+(CTP*.01*66):GOSUB1130:GOSUB1140
930 IFOC(1)=0THENTH=TH+(CTP*.01*66):GOSUB1130
940 IFOC(2)=0THENGW=GW-((T-ET(2))*2.4):ET(2)=T:GOSUB510ELSE960
950 IFAF(4)=0THENGOSUB1840:FORI=1TO2:PLAYA1$:PRINT@480,"**SECONDARY FEEDWATER PUMP OFF**";CHR$(5);:PLAYA2$:NEXT:AF(4)=1
960 IFOC(3)=1THENGW=FIX(GW+((T-ET(3))*3.03)):ET(3)=T:GOSUB510
970 IFOC(4)=1THEN980ELSE990
980 IFOC(5)=0THENPW=PW-((T-ET(5))*.4):VS=PV-(PW*5.3):ET(5)=T:GOSUB430:GOSUB1130:TH=TH+1ELSEIFOC(5)=1THENGOSUB730:PW=PW+((T-ET(4))*IV):VS=PV-(PW*5.3):ET(4)=T:GOSUB430:GOSUB1130:TH=TH-1
990 IFOC(7)<>0THENP1=FIX(P1*EXP(-(T-ET(7))/106.4)):ET(7)=T:GOSUB1140
1000 IFOC(7)=1ANDP1<2205THENOC(7)=0:GOSUB370:GOSUB1840:PRINT@480,"Pressure Relief Valve CLOSED";
1010 IFOC(8)=1THENPR=TH/P1:TH=TH-T+ET(8):ET(8)=T:P1=TH/PR:GOSUB1140:GOSUB430
1020 IFOC(6)=1THENPR=TH/P1:TH=TH+T-ET(6):ET(6)=T:P1=TH/PR:GOSUB1140:GOSUB430
1030 A=RND(100):IFA=20ORA=40ORA=60ORA=80THENONA/20 GOSUB1770,1780,1790,1800
1040 GOSUB740
1050 IFPW>401THENPW=401ELSEIFPW=<0THENPW=1:IFSV=1THEN1060ELSEGOSUB630:SV=1
1060 IFSV=0THEN1070ELSEIFOC(1)=1ANDOC(4)=1ANDOC(5)=1ANDPW>5THENSV=0:GOSUB640
1070 IFGW<1THENGW=0
1080 FORI=0TO5:IFAF(I)=1THENX=X+1:NEXTELSENEXT
1090 IFX<>0THENPRINT@0,CHR$(5);"AL";CHR$(5);:X=0ELSEIFX=0THENPRINTCHR$(5);:PRINT@0,"  ":PRINTCHR$(5);
1100 PT=(TC+TH)/2:IFPT=>705.2THENPAINT(31,112),4,4:GOSUB1830:PRINT@320,"***CRITICAL WATER TEMPERATURE***     ***SIMULATION OVER***":PLAYA3$ELSE1120
1110 IFINKEY$=""THEN1110ELSEPLAYA3$:GOTO1820
1120 IFINKEY$=CHR$(12)ORPEEK(342)=247THENRETURNELSE280
1130 P1=R*(TH+460)/VS:RETURN
1140 IFOC(4)=1ANDOC(5)=1ANDPW<10THENGOSUB730:PW=PW+((T-ET(4))*IV):VS=PV-(PW*5.3):ET(4)=T:GOSUB420:GOSUB1120:TH=TH-1:RETURNELSEVS=R*(TH+460)/P1:PW=(PV-VS)/5.3:GOSUB430:RETURN
1150 TH=(P1*VS/R)-460:RETURN
1160 CLS:PRINT@172,"WARNING":PRINT@227,"NUCLEAR REACTOR SIMULATOR-":PRINT@258,"CONTENTS MAY BE RADIOACTIVE!":PRINT@291,"PROCEED AT YOUR OWN RISK!":PRINT@362,"aLARM CANCEL":PRINT@390,"cONTINUE SIMULATION"
1170 FORI=1TO250:NEXT:IFINKEY$="A"THEN1190
1180 PRINT@172,"warning":PLAYA1$:PRINT@172,"WARNING":PLAYA2$:IFPEEK(339)=254THEN1190ELSEIFPEEK(341)=254THEN1200ELSE1180
1190 IFINKEY$<>"C"THEN1190
1200 CLS:PRINT@98,"NUCLEAR REACTOR SIMULATOR:":PRINT@160,"OBJECT:PRODUCE 97%+ ELECTRIC":PRINTTAB(7)"POWER":PRINT@224,"OBJECT:MAINTAIN PRIMARY LOOP":PRINTTAB(7)"TEMPERATURE @ 580 DEG F":PRINT@288,"OBJECT:MAINTAIN PRIMARY LOOP"
1210 PRINTTAB(7)"PRESSURE @ 2155 PSI":PRINT@352,"OBJECT:MAINTAIN PRESSURIZER":PRINTTAB(7)"WATER LEVEL @ 200 IN":PRINT@455,"rEADY?"
1220 IFINKEY$<>"R"THEN1220
1230 CLS:PRINT@98,"NUCLEAR REACTOR SIMULATOR:":PRINT@160,"OBJECT:MAINTAIN SECONDARY LOOP":PRINTTAB(7)"TEMPERATURE @ 547 DEG F":PRINT@224,"OBJECT:MAINTAIN SECONDARY LOOP":PRINTTAB(7)"PRESSURE @ 1010 PSI"
1240 PRINT@288,"OBJECT:MAINTAIN STEAM GENERATOR":PRINTTAB(7)"WATER LEVEL @ 288 IN":PRINT@455,"rEADY?"
1250 IFINKEY$<>"R"THEN1250
1260 CLS:PRINT@66,"NUCLEAR REACTOR SIMULATOR:":PRINT@128,"CONTROL RODS:RAISE & LOWER WITH":PRINTTAB(8)"ARROW KEYS":PRINT@192,"PUMPS:SPECIFY PUMP BY NUMBER &":PRINTTAB(8)"DIRECTIVE. EX.'P1ON'"
1270 PRINT@256,"VALVES:SPECIFY VALVE BY NUMBER":PRINTTAB(8)"& DIRECTIVE":PRINTTAB(8)"EX. 'V1OPEN'":PRINT@352,"PRESSURIZER WATER HEATER:":PRINTTAB(8)"SPECIFY DIRECTIVE":PRINTTAB(8)"EX. 'HEATON'":PRINT@456,"rEADY?";
1280 IFINKEY$<>"R"THEN1280
1290 PL=200:CLS:PRINT@261,"SIMULATION BEGINS.....":A=USR0(0):GOSUB80:PLAYA3$
1300 GOSUB1830:GOTO1690
1310 GOSUB1830
1320 PRINT@320,;:GOTO1340
1330 GOSUB1840:PRINT@480,;:
1340 PRINT"Directive?";:GOSUB690:D$=AT$:IFD$="TC"THEN1450ELSEIFD$="PRINT"THEN1460
1350 FORI=0TO21:IFD$=V1$(I)THENOC=I:GOTO1380
1360 NEXT
1370 PRINT@480,"Directive?INVALID DIRECTIVE     ";:FORI=1TO2:PLAY"L7V31O1CP10":NEXT:PRINT@490,"                 ":PRINT@480,;:GOTO1340
1380 ON OC+1GOTO1390,1540,1550,1560,1570,1580,1590,1600,1600,1630,1640,1660,1670,1680,1710,1720,1690,1750,1860,1730,1820,1810
1390 GOSUB1840:PRINT@480,"Control Rods-Manual Control";
1400 PRINT@320,USING"Core Thermal Power     ### %   ";CTP
1410 IFPEEK(341)=247THENCTP=CTP+1:GOSUB1420:GOTO1400ELSEIFPEEK(342)=247THENCTP=CTP-1:GOSUB1420:GOTO1400ELSEA$=INKEY$:IFA$=CHR$(12)THENGOSUB1840:RETURNELSE1410
1420 IFCTP<0THENCTP=0ELSEIFCTP>100THENCTP=100
1430 IFCTP>7THENAF(0)=0
1440 GOSUB230:RETURN
1450 TC$="":FORI=1TO8:TC$=TC$+STR$(OC(I)):NEXT:PRINT@480,TC$;:RETURN
1460 A=USR1(0):A$="":PMODE4,1:PRINT#-2,CHR$(18);CHR$(13);
1470 FORI=0TO6:P(I)=FIX(2^I):NEXTI
1480 FORI=0TO118STEP7:FORJ=0TO255:A=128:FORK=0TO6
1490 IFPPOINT(J,I+K)=0THENA=A+P(K)
1500 NEXTK
1510 IFJ<200THENA$=A$+CHR$(A)ELSEB$=B$+CHR$(A)
1520 IFJ=255THENPRINT#-2,A$;B$;CHR$(13);:A$="":B$=""
1530 NEXTJ,I:GOTO1820
1540 OC(1)=1:GOSUB1840:PRINT@480,"Reactor Coolant Pump ON";:RETURN
1550 OC(1)=0:GOSUB1840:PRINT@480,"Reactor Coolant Pump OFF";:RETURN
1560 OC(2)=1:AF(4)=0:GOSUB1840:PRINT@480,"Secondary Feedwater Pump ON";:RETURN
1570 OC(2)=0:AF(4)=1:GOSUB1850:GOSUB1840:PRINT@480,"Secondary Feedwater Pump OFF";:ET(2)=T:RETURN
1580 OC(3)=1:GOSUB1840:PRINT@480,"Auxiliary Makeup Pump ON";:GOSUB620:ET(3)=T:RETURN
1590 OC(3)=0:GOSUB1840:PRINT@480,"Auxiliary Makeup Pump OFF";:GOSUB620:RETURN
1600 GOSUB1840:OC(4)=1:EM(3)=0:IFD$="P4IN"THENOC(5)=1:GOSUB590ELSEIFD$="P4OUT"THENOC(5)=0:GOSUB590
1610 IFOC(5)=1THENET(4)=T:GOSUB1840:PRINT@480,"Primary Makeup Pump ON";:RETURN
1620 IFOC(5)=0THENET(5)=T:GOSUB1840:PRINT@480,"Primary Let-down Pump ON";:RETURN
1630 GOSUB1840:OC(4)=0:EM(3)=0:GOSUB590:IFOC(5)=1THENPRINT@480,"Primary Makeup Pump OFF";:OC(5)=0:RETURNELSEPRINT@480,"Primary Let-down Pump OFF";:RETURN
1640 OC(6)=1:ET(6)=T:GOSUB1840:IFPW<100THEN1650ELSEPRINT@480,"Pressurizer Heater ON";:GOSUB490:RETURN
1650 OC(6)=0:PRINT@480,"Pressurizer Heater TRIPPED";:GOSUB490:RETURN
1660 OC(6)=0:GOSUB1840:PRINT@480,"Pressurizer Heater OFF";:GOSUB490:RETURN
1670 OC(7)=2:ET(7)=T:AF(1)=1:GOSUB1840:PRINT@480,"Pressure Relief Valve OPEN";:GOSUB370:RETURN
1680 OC(7)=0:AF(1)=0:GOSUB1840:PRINT@480,"Pressure Relief Valve CLOSED";:GOSUB370:RETURN
1690 GOSUB720:PRINT@320,USING"Core Thermal Power    #### MWth";(CTP*.01*3411):PRINTUSING"Primary Loop Press    #### PSI";P1:PRINTUSING"Primary Loop Temp     #### DEG";PT:PRINTUSING"Pressurizer Level      ### IN";PW
1700 GOSUB750:IFINKEY$=CHR$(12)ORPEEK(342)=247THENGOSUB1330:GOTO1690ELSE1690
1710 GOSUB1840:OC(8)=1:ET(8)=T:PRINT@480,"Pressurizer Coolant Spray ON";:GOSUB400:RETURN
1720 GOSUB1840:OC(8)=0:PRINT@480,"Pressurizer Coolant Spray OFF";:GOSUB400:RETURN
1730 GOSUB1830:PRINT@320,;:FORI=0TO20:PRINTV1$(I)":";:NEXT:PRINT"EXIT";
1740 IFPEEK(342)<>247THENGOSUB750:GOSUB720:GOTO1740ELSEGOSUB1830:RETURN
1750 GOSUB720:GOSUB680:PRINT@320,USING"Plant Electric Output #### MWe ";PO:PRINTUSING"Secondary Loop Press  #### PSI";SP:PRINTUSING"Secondary Loop Temp   #### DEG";ST:PRINTUSING"Steam Gen Water Level  ### IN";GW
1760 GOSUB750:IFPEEK(342)=247ORINKEY$=CHR$(12)THENGOSUB1330:GOTO1750ELSE1750
1770 OC(7)=2:ET(7)=T:AF(1)=1:GOSUB370:RETURN
1780 OC(2)=0:ET(2)=T:RETURN
1790 IFOC(4)<>1THENEM(3)=1:ET(9)=T:COLORC1:DRAW"BM255,111L22D1R22":COLOR4:RETURNELSERETURN
1800 RETURN
1810 A=USR1(0):PW(2)=1000:GW(2)=1000:GOTO1200
1820 A=USR1(0):CLS:PRINT@128,;:LIST1:END
1830 PRINT@320,STRING$(192," "):RETURN
1840 PRINT@480,STRING$(32," ");:RETURN
1850 EM(3)=0:RETURN
1860 GOSUB1830:PRINT@320,;:FORI=0TO5:IFAF(I)=1THENPRINT"*"AL$(I):NEXT:GOTO1740ELSENEXT:GOTO1740