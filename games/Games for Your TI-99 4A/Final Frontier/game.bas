10 REM   ** FINAL FRONTIER **
20 REM
30 REM  ** D&D PROGRAMMING *
40 REM
50 REM   ** OF GAMETRONICS **
60 REM  **** MELBOURNE *****
70 REM
80 REM  **** WRITTEN BY ****
90 REM  ****** DAMON *******
100 REM
110 LEVEL=1
120 CALL SCREEN(2)
130 K=28
140 CALL CLEAR
150 LEVEL=LEVEL+3
160 HP=10
170 RANDOMIZE
180 DED=0
190 CALL SCREEN(2)
200 CALL COLOR(9,6,1)
210 CALL COLOR(8,3,3)
220 CALL COLOR(10,4,1)
230 CALL COLOR(3,7,1)
240 CALL COLOR(11,11,1)
250 CALL COLOR(2,14,1)
260 DIM P1(3)
270 P1(1)=10
280 P1(2)=15
290 P1(3)=22
300 CALL CHAR(49,"8151565616ABC566")
310 CALL CHAR(50,"3136380FED9BCA71")
320 CALL CHAR(51,"5554765616FE6154")
330 CALL CHAR(40,"0080C0F08F7C7FF0")
340 CALL CHAR(41,"00000000C030FF00")
350 A$="000000000F3F0100"
360 B$="003F7F8EFCF0F800"
370 CALL CHAR(96,A$)
380 CALL CHAR(97,B$)
390 CALL CHAR(90,"FFFFFFFFFFFFFFF")
400 CALL CHAR(104,A$)
410 CALL CHAR(48,"000000000000FF")
420 CALL CHAR(105,B$)
430 CALL CHAR(112,A$)
440 CALL CHAR(114,B$)
450 CALL HCHAR(1,1,90,32)
460 CALL HCHAR(22,1,90,32)
470 FOR T=K TO 1 STEP -(LEVEL/10)
480 FOR Q=1 TO INT(LEVEL/3.3333333)
490 IF P1(Q)=999 THEN 560
500 CALL HCHAR(P1(Q),T,32,4)
510 P1(Q)=P1(Q)+(INT((RND*2)-.91))
520 IF (P1(Q)>2)*(P1(Q)<22)THEN 540
530 P1(Q)=INT(RND*10)+3
540 CALL HCHAR(P1(Q),T,88+Q*8)
550 CALL HCHAR(P1(Q),T+1,89+Q*8)
560 NEXT Q
570 CALL KEY(3,X,Y)
580 IF Y=0 THEN 690
590 CALL HCHAR(HP,2,32,2)
600 IF (X=69)*(HP>2)THEN 620
610 GOTO 630
620 HP=HP-1
630 IF (X=88)*(HP<21)THEN 650
640 GOTO 660
650 HP=HP+1
660 CALL HCHAR(HP,2,40)
670 CALL HCHAR(HP,3,41)
680 IF X=32 THEN 720
690 REM  END OF YOUR MOVING LOOP
700 NEXT T
710 GOTO 980
720 CALL HCHAR(HP,4,48,28)
730 CALL SOUND(-70,-7,0,300,7)
740 FOR Y=1 TO INT(LEVEL/3.3)
750 IF P1(Y)=HP THEN 800
760 NEXT Y
770 CALL HCHAR(HP,4,32,28)
780 CALL HCHAR(HP,3,41)
790 GOTO 700
800 FOR A=1 TO 5
810 CALL HCHAR(P1(Y),T,49,2)
820 CALL HCHAR(P1(Y),T,50,2)
830 CALL HCHAR(P1(Y),T,51,2)
840 CALL SOUND(-200,-7,0)
850 NEXT A
860 CALL HCHAR(HP,4,32,28)
870 CALL SOUND(-300,-7,0)
880 DED=DED+1
890 SCORE=SCORE+(LEVEL-2)*15
900 IF DED<>INT(LEVEL/3.3)THEN 960
910 LEVEL=LEVEL+1
920 IF LEVEL<>14 THEN 950
930 K=K/1.5
940 LEVEL=4
950 GOTO 170
960 P1(Y)=999
970 GOTO 660
980 FOR H=1 TO 5
990 FOR T=1 TO 16
1000 CALL SCREEN(T)
1010 NEXT T
1020 NEXT H
1030 CALL COLOR(8,2,16)
1040 DIM X$(4)
1050 X$(1)="YOU HAVE LOST.."
1060 X$(2)="THE ALIENS HAVE WON..."
1070 X$(3)=" "
1080 X$(4)="YOUR SCORE IS "
1090 FOR Y=1 TO 4
1100 FOR T=1 TO LEN(X$(Y))
1110 CALL HCHAR(Y+1,T,ASC(SEG$(X$(Y),T,1)))
1120 NEXT T
1130 NEXT Y
1140 FOR AA=1 TO 300
1150 NEXT AA
1160 CALL CLEAR
1170 PRINT "SCORE=";SCORE:,,,,"LEVEL";LEVEL-3,,,,,,
