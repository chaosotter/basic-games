
1 CLS3:PRINT@268,"ORBIT";:PCLEAR5:GOTO10
2 POKE65494,0:END
10 FOR T=1TO600:NEXT T
30 DIM XC(4),YC(4)
40 K=0.0025:D1=0.02:D2=0.2:PI=3.141592653:AF=180/PI:G=8:R0=5000:HI=65495:LO=65494
45 HI=LO
50 PRINT@64,"  WHILE ORBIT IS RUNNING, PRESS  L -LIFTING BODY, D -DRAG BODY,  S -SCALE CHANGE, <space bar>    SWITCHES BETWEEN ORBIT AND DATA VIEWS."
60 KD=D2:LD=0:DT=1:RS=15000:VS=R0*SQR(G/RS)
70 I6$="######":I3$="####":I2$="##.##"
80 PRINT:PRINT" SELECT TYPE OF MISSION:":PRINT" (1) LAUNCH TO STATION":PRINT" (2) LAND FROM STATION":PRINT" (3) RETURN FROM DEEP SPACE      (4) SPECIAL"
90 INPUT" YOUR SELECTION";S:IF S<1 OR S>4 THEN 90
100 ON S GOTO1250,1260,1270,110
110 INPUT" F,X,Y,U,V";F,X,Y,U,V
120 INPUT"STATION RADIUS";RS:INPUT"SCALE (NORM=170)";SC
130 DS=R0*SQR(G/(RS*RS*RS))
140 AZ=0:RX=1000:R=5005
150 AL=(-180+RND(360))/AF:CLS3
160 POKE HI,0
170 PMODE 3,1
180 PCLS:CIRCLE(128,96),2*R0/SC,6:PAINT(128,96),6,6
190 CIRCLE (128,96),R0/SC,7
200 PAINT (129,97),7,7
210 XL=128+(R0/SC)*COS(AL):YL=96-(R0/SC)*SIN(AL)
220 COLOR 6,5:LINE(128,96)-(XL,YL),PSET:PMODE4,1:SCREEN 1,1
230 TA=1.4*(JOYSTK(0)-32)/32/(1+LD)
240 TR=1.4*(32-JOYSTK(1))/32/(1+LD)
250 BT=PEEK(65280)
260 IF(BT AND3)<>2THENTR=0:TA=0
270 Q=0.5*DN*VT*VT
280 IF Q>2ANDQ<510 THENPOKELO,0:SOUND (Q/2),1:POKEHI,0
290 IF Q>QM THEN QM=Q:HM=R-R0:VM=VT ELSE IF Q<.1 THEN QM=.1:HM=0:VM=0
300 F=F-0.4*SQR(TA*TA+TR*TR)*G*R0*R0/(R*R)
310 IF F<0 THEN TR=0:TA=0
315 X=X+U/2:Y=Y+V/2:R=SQR(X*X+Y*Y):U1=U:V1=V
320 IF R>11000 THEN 400
330 IF(R-R0)<3AND TR=0THENU=0:V=0:GOTO450
340 IF R<6000 THEN IF ABS(AL-O)<0.17 THEN DT=-(DT=1)-3*(DT>1)
350 IF RX<100 AND TA=0 THEN 450
360 DN=EXP(K*(R0-R))
370 VT=SQR(U*U+V*V):IF LD=0 THEN IF VR>0 THEN KD=D1 ELSE KD=D2
380 U1=U-(U-LD*V)*KD*DN*VT/2
390 V1=V-(V+LD*U)*KD*DN*VT/2
400 T1=G*R0*R0/(R*R*R):TA=TA*R0*R0/R/R:TR=TR*R0*R0/R/R
410 CO=X/R:SI=Y/R
420 U=U1+G*(TR*CO+TA*SI)-X*T1
430 V=V1+G*(TR*SI-TA*CO)-Y*T1:VO=V*CO-U*SI:VR=V*SI+U*CO
440 X=X+U/2:Y=Y+V/2
450 AZ=AZ+DS:AZ=AZ+6.28*(AZ>3.14)
460 X3=RS*COS(AZ):Y3=RS*SIN(AZ)
470 DX=X-X3:DY=Y-Y3
480 RX=SQR(0.1+DX*DX+DY*DY):IF DK=0 THEN IF RX<1000 AND O<=AZ THEN DT=1-3*(DT>1):IF RX<100 THEN DT=1:DK=1
490 DK=-DK*(RX<1000)
500 IN$=INKEY$:IF IN$="D" THEN KD=D2:LD=0 ELSE IF IN$="L" THEN KD=D1:LD=3 ELSE IF IN$=" " THEN DT=-(DT>1)-(DT=1)*2
510 ON DT GOTO 520,690,690,690
520 PRINT@32,"RADIUS=";:PRINTUSINGI6$;R:PRINT"ALTITUDE=";:PRINTUSINGI6$;R-R0
530 O=ATN(Y/X):IF X<0 THEN O=PI*SGN(Y)+O
540 PRINT"POLAR ANGLE=";:PRINTUSINGI3$;O*AF
550 PRINT"DIST TO LZ=";:PRINTUSINGI6$;R*(AL-O)
560 VE=R0*SQR(G/R):PRINT"VO=";:PRINTUSINGI3$;VO;:PRINT"      VE=";:PRINTUSINGI3$;VE
570 PRINT"VR=";:PRINTUSINGI3$;VR
580 PRINT"TO=";:PRINTUSINGI2$;-TA
590 PRINT"TR=";:PRINTUSINGI2$;TR
600 IF LD=0 THEN PRINT"DRAG BODY" ELSE PRINT"LIFTING BODY"
610 PRINT"Q=";:PRINTUSINGI3$;Q
620 PRINT"MAX Q="INT(QM)"AT H="INT(HM)"& V="INT(VM)
630 PRINT"FUEL=";:PRINTUSINGI6$;F
640 PRINT"STATION RANGE=";:PRINTUSINGI6$;RX
650 IF RX<100 AND TA=0 THEN PRINT"DOCKED":F=1000:X=X3:Y=Y3:U=-RS*DS*SIN(AZ):V=RS*DS*COS(AZ) ELSE PRINT"PRESS space FOR TRAJECTORY"
660 IF IN$="S" THEN 830
670 ON DT GOTO 690,680,880,1120
680 FOR T=1 TO 800:NEXT T
690 PMODE 4,1: IF DT=2 THEN SCREEN 1,1
700 XP=X/SC+128:YP=96-Y/SC
710 XS=X3/SC+128:YS=96-Y3/SC
720 XP=XP*(XP>0)*(XP<255)-255*(XP>=255)
730 YP=YP*(YP>0)*(YP<191)-191*(YP>=191)
740 TS=TS+1
750 IF TS>50 THEN TS=0:GOTO 520
760 PRESET(X4,Y4):X4=0:Y4=0
770 IFXS<0ORXS>255ORYS<0ORYS>191THEN800
780 PSET(XS,YS,1)
790 X4=XS:Y4=YS
800 PSET(XP,YP,1):ON DT GOTO 230,230,880,1120
810 PMODE 4,1:SCREEN 1,1
820 RETURN
830 PRINT"NOW SCALE="SC:INPUT "SCALE";SC:CLS3
860 DT=2
870 GOTO170
880 PMODE 0,5:SCREEN 1,0
890 RL=R0*(AL-O):H=R-R0
900 IFH<1THENH=1
910 XC(2)=128+(25/(RL+25))*10
920 YC(2)=96+(H/(RL+25))*10
930 XC(3)=128+(25/(RL-25))*10
940 YC(3)=96+(H/(RL-25))*10
950 IFRL<-99THENXC(2)=255:YC(2)= 190 
960 IFRL<25 THENXC(3)=255:YC(3)= 190
970 IFXC(2)>255THENXC(2)=255
980 IFYC(2)<0THENYC(2)=0
990 IFYC(3)<0THENYC(3)=0
1000 IFXC(3)>255THENXC(3)=255
1010 IFYC(3)>190THENYC(3)=190
1020 IFYC(2)>190THENYC(2)=190
1030 XC(1)=255-XC(2):YC(1)=YC(2)
1040 XC(4)=255-XC(3):YC(4)=YC(3)
1050 PCLS
1070 FORI=1TO4:J=I+1
1080 IFJ=5THENJ=1
1090 LINE(XC(I),YC(I))-(XC(J),YC(J)),PSET
1100 NEXT I
1110 GOTO230
1120 PMODE 0,5:SCREEN 1,0
1150 S=200/RX
1160 YP=96-(RS-R)*S
1170 PCLS
1190 IF YP<0ORYP>190OR(32*S)>128THEN1240
1200 LINE(128-32*S,YP)-(128+32*S,YP),PSET
1210 CIRCLE(128,YP),40*S
1220 CIRCLE(128,YP),32*S
1230 CIRCLE(128,YP),8*S
1240 GOTO230
1250 X=-R0:Y=-1:U=-0.1:V=0:SC=170:F=700:GOTO130
1260 X=RS:Y=0:U=0:V=VS:SC=170:F=1000:GOTO130
1270 F=400+10*RND(50):X=SGN(RND(2)-1.5)*(12000+80*RND(200)):Y=SGN(RND(2)-1.5)*(12000+80*RND(200)):U=-X/2000:V=-Y/2000:R=SQR(X*X+Y*Y):SC=R/90:GOTO130
