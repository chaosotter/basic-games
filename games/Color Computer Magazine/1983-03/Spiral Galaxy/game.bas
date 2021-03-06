
10 REM *************************
20 REM      A SPIRAL GALAXY
30 REM
40 REM     BY: MR. LYNN DAVIS
50 REM     4316 AMBLEWOOD LANE
60 REM     CLAY, NEW YORK 13041
70 REM
80 REM    TRS-80 COLOR COMPUTER
90 REM      EXTENDED BASIC
100 REM ************************
110 REM TITLE SCREEN
120 PMODE 4,1:PCLS:SCREEN1,1
130 FOR X=1 TO 100
140 S1=RND(256):S2=RND(192)
150 PSET(S1,S2,1):NEXT X
160 FOR Z=1 TO 55:CIRCLE(128,96),Z,1,.75:NEXT Z
170 FOR Z=55 TO 1 STEP-1
180 REM DRAW THE WORD 'SPIRAL'
190 DRAW"S8;BM81,90;BU1F1R3E1U2H1L3H1U1E1R3F1BD6 BR4 U7R4F1D2G1NL4BF1BD2 BR4 BR1R2U7NL2R2BD7L2BR1 BR4 U7R4F1D1G1NL4F1D3 BR4 U6E1R3F1D2NL5D4 BR4 NU7R5"
200 REM DRAW THE WORD 'GALAXY'
210 DRAW"S8;BM80,110;BU1U5E1R3F1D1BD2NL2D2G1L3H1BF1BR4 BR4 U6E1R3F1D2NL5D4 BR4 NU7R5 BR4 U6E1R3F1D2NL5D4 BR4 U1E5U1BL5D1F5D1 BR4 BU5NU2F2ND3E2U2BD7"
220 CIRCLE(128,96),Z,0,.75:NEXT Z
230 FOR TT=1 TO 2000:NEXT TT
240 PCLS:FOR TT=1 TO 400:NEXT TT:CLS
250 REM INTRODUCTION
260 PRINT" THIS PROGRAM PRODUCES A SPIRAL"
270 PRINT"GALAXY. ONCE THE GALAXY IS"
280 PRINT"COMPLETED (AROUND 4 MINUTES),"
290 PRINT"YOU CAN SIMULATE SUPERNOVAS BY"
300 PRINT"PRESSING THE <S> KEY. YOU MAY"
310 PRINT"ALSO SEE A RESULTING NEBULA."
320 PRINT:PRINT" THE NEBULAS ARE THE COLOR OF"
330 PRINT"THE EXPLODING STARS."
340 PRINT:PRINT" WHEN DONE MAKING SUPERNOVAS"
350 PRINT"PRESS <B>, THE 'BIG BANG' KEY,"
360 PRINT"TO START OVER."
370 PRINT:INPUT"PRESS <ENTER> TO START";EN$
380 REM CONSTRUCT THE SPIRAL GALAXY
390 PMODE 1,1:PCLS3:SCREEN1,0
400 REM POLAR GRAPHICS ARE USED TO CREATE TWO SPIRALS THAT CONNECT
410 REM THE TWO SPIRALS PRODUCE A TWO-ARMED SPIRAL GALAXY
420 FOR T=1 TO 2
430 IF T=1 THEN FOR A=15 TO 1500 STEP 3
440 IF T=2 THEN FOR A=15 TO 450 STEP 3
450 TH=3.1415926*A/180
460 REM 'R' FORMULA
470 R=SQR(3600/TH)
480 X=126+R*COS(TH)
490 IF T=2 THEN X=126-R*COS(TH)
500 X=INT(X+.5)
510 Y=96-R*SIN(TH)
520 IF T=2 THEN Y=96+R*SIN(TH)
530 Y=INT(Y+.5)
540 REM SET THREE POINTS TO GIVE A THICKNESS TO THE GALAXY
550 FOR Z= 0 TO 4 STEP 2
560 CL=RND(4)
570 IF CL=3 THEN 560
580 PSET(X+Z,Y+Z,CL)
590 NEXT Z
600 NEXT A
610 REM CREATE THE CENTER OF THE GALAXY
620 CIRCLE(126,96),10,2
630 PAINT (126,96),2,2
640 NEXT T
650 PLAY"O3;V30;1;5;8;O4;1"
660 REM SPIRAL GALAXY COMPLETED- CHECK FOR INPUT OF <S> OR <B>
670 BB$=INKEY$:IF BB$="S" THEN GOTO 730
680 IF BB$="B" THEN GOTO 1040
690 GOTO 670
700 REM CREATE THE SUPERNOVA
710 REM RANDOMLY SELECT IN WHICH PART OF THE GALAXY THE SUPERNOVA WILL OCCUR
720 REM ODDS ARE APPROXIMATELY 4 TO 1 FOR IT TO OCCUR IN THE FIRST SPIRAL
730 C=RND(4)
740 U=0
750 IF C=1 THEN 830 ELSE 790
760 REM MOST OF THE 'STARS' ARE TOWARDS THE CENTER OF THE GALAXY
770 REM ONLY USE OUTERMOST 'STARS' TO EXPLODE
780 REM IF FIRST SPIRAL, DETERMINE ANGLE
790 AA=RND(500)+15
800 U=1
810 GOTO 860
820 REM IF SECOND SPIRAL, DETERMINE ANGLE
830 AA=RND(110)+15
840 U=2
850 REM ONCE ANGLE IS CHOSEN, CALCULATE WHERE THE EXPLODING STAR WILL APPEAR
860 T1=3.1415926*AA/180
870 R1=SQR(3600/T1)
880 IF U=1 THEN XX=126+R1*COS(T1) ELSE XX=126-R1*COS(T1)
890 XX=INT(XX+.5)
900 IF U=1 THEN YY=96-R1*SIN(T1) ELSE YY=96+R1*SIN(T1)
910 YY=INT(YY+.5)
920 REM FIND THE COLOR OF THE STAR THAT EXPLODES
930 CO=PPOINT(XX,YY)
940 REM IF THE COLOR OF THAT POINT IS BLUE THERE IS NO STAR AT THAT POINT
950 REM IF THE COLOR OF THE POINT IS BLUE THEN NO SUPERNOVA
960 IF CO=3 THEN 670
970 REM THE ACTUAL SUPERNOVA
980 FOR H=1 TO 15 STEP 5:CIRCLE(XX,YY),H,CO:NEXT H
990 SOUND 50,5
1000 FOR H=1 TO 100:NEXT H
1010 FOR H=15 TO 1 STEP -5:CIRCLE(XX,YY),H,3:NEXT H
1020 GOTO 670
1030 REM THE BIG BANG
1040 SCREEN1,1
1050 FOR T=1 TO 400:NEXT T
1060 PCLS3:SCREEN1,0
1070 FOR SN=170 TO 0 STEP-2:CIRCLE(128,96),SN,2:NEXT SN
1080 FOR SN=169 TO 50 STEP-4:CIRCLE(128,96),SN,4:NEXT SN
1090 FOR SN=168 TO 50 STEP-2:CIRCLE(128,96),SN,1:NEXT SN
1100 FOR SN=167 TO 0 STEP-2:CIRCLE(128,96),SN,3:NEXT SN
1110 PMODE 4,1:PCLS:SCREEN1,1
1120 FOR C1=1 TO 28 STEP 3:CIRCLE(128,96),C1,1:NEXT C1
1130 FOR C2=1 TO 150 STEP 2:CIRCLE(114,96),C2,1,.8,.4,.62:CIRCLE(142,96),C2,1,.8,.9,.12:NEXT C2
1140 FOR C3=28 TO 170 STEP 2:CIRCLE(128,96),C3,1:NEXT C3
1150 FOR T=1 TO 60 STEP 2
1160 PMODE3,1:SCREEN1,0
1170 SOUND150+T,1
1180 FOR X=1 TO 30:NEXT X
1190 PMODE3,1:SCREEN1,1
1200 SOUND150+T,1
1210 FOR X=1 TO 30:NEXT X
1220 NEXT T
1230 SOUND212,40
1240 GOTO 120
