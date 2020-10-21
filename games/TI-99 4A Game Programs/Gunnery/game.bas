100 REM GUNNERY
110 REM COPYRIGHT FREDERICK HOLTZ AND ASSOCIATES
120 REM 5/1/83
130 REM PROGRAM RUNS IN TI-BASIC
140 CALL CLEAR
150 CALL CLEAR
160 PRINT "WELCOME TO THE GAME OF GUN-"
170 PRINT
180 PRINT "NERY. YOU ARE THE GUNNERY"
190 PRINT
200 PRINT "OFFICER AND ARE TO FIRE ON"
210 PRINT
220 PRINT "A DISTANT TARGET. TO DO"
230 PRINT
240 PRINT "THIS, YOU MUST CONSIDER"
250 PRINT
260 PRINT "THE RANGE AND INPUT THE"
270 PRINT
280 PRINT "PROPER ELEVATION WHICH"
290 PRINT
300 PRINT "IS OFTEN A DECIMAL SUCH AS"
310 PRINT
320 PRINT "65.3 FOR INSTANCE. THE COM-"
330 PRINT
340 PRINT "PUTER WILL TELL YOU WHETHER"
350 PRINT
360 PRINT "YOUR SHOT IS LONG OR SHORT"
370 PRINT
380 PRINT "AND BY HOW MANY METERS."
390 FOR DLAY=1 TO 2000
400 NEXT DLAY
410 CALL CLEAR
420 PRINT "WHEN YOU STRIKE THE TARGET,"
430 PRINT
440 PRINT "THE COMPUTER WILL TELL YOU"
450 PRINT
460 PRINT "HOW MANY SHOTS YOU FIRED."
470 PRINT
480 PRINT "GOOD LUCK!!!"
490 PRINT
500 PRINT
510 PRINT
520 PRINT "PRESS (ENTER) TO CONTINUE."
530 INPUT ER$
540 RANDOMIZE
550 Y=59000-INT(RND*24000)+1
560 CALL CLEAR
570 PRINT "MAXIMUM RANGE IS 60,000"
580 PRINT "METERS. DISTANCE TO TARGET"
590 PRINT "IS";Y;"METERS."
600 PRINT
610 PRINT "ELEVATION"
620 INPUT E
630 CALL SOUND(250,-6,0)
640 NJ=NJ+1
650 IF E<85 THEN 1040
660 IF E>95 THEN 860
670 CALL CLEAR
680 PRINT "YOUR SHOT WENT STRAIGHT UP!"
690 PRINT
700 FOR I=1 TO 10
710 FOR DLAY=1 TO 150
720 NEXT DLAY
730 PRINT TAB(15);"."
740 CALL SOUND(100,1500,0)
750 NEXT I
760 PRINT TAB(13);"BOOM!!"
770 FOR DLAY=1 TO 50
780 NEXT DLAY
790 CALL SOUND(2000,-6,0)
800 CALL SCREEN(1)
810 FOR DLAY=1 TO 100
820 NEXT DLAY
830 CALL SCREEN(8)
840 CALL CLEAR
850 GOTO 610
860 CALL CLEAR
870 PRINT "THAT SHOULD MAKE YOU A HERO!"
880 PRINT "THAT ROUND MIGHT HIT MARS!"
890 C=1
900 FOR DLAY=1 TO 750
910 NEXT DLAY
920 GOTO 840
930 CALL CLEAR
940 PRINT TAB(3);"NEWS FLASH!!!"
950 PRINT
960 PRINT
970 PRINT "MARS STRUCK"
980 PRINT "BY MYSTERY PROJECTILE!!"
990 PRINT
1000 C=0
1010 RETURN
1020 PRINT "ILLEGAL!!"
1030 GOTO 840
1040 IF C<>1 THEN 1060
1050 GOSUB 930
1060 IF E<1 THEN 1020
1070 E2=2*E/57.2958
1080 J=60000*SIN(E2)
1090 N=Y-J
1100 D=INT(N)
1110 IF ABS(D)<100 THEN 1140
1120 IF Y-J<0 THEN 1330
1130 IF Y-J>0 THEN 1350
1140 CALL CLEAR
1150 CALL SOUND(4000,-6,0)
1160 CALL SCREEN(2)
1170 FOR DLAY=1 TO 850
1180 NEXT DLAY
1190 CALL CLEAR
1200 CALL SCREEN(8)
1210 PRINT "TARGET DESTROYED!!!"
1220 PRINT
1230 PRINT
1240 PRINT
1250 PRINT
1260 PRINT "YOU FIRED";NJ;"ROUNDS!!"
1270 PRINT
1280 PRINT
1290 PRINT
1300 INPUT "PRESS (ENTER) TO CONTINUE":ER$
1310 NJ=0
1320 GOTO 560
1330 PRINT "SHORT BY";ABS(D);"YARDS"
1340 GOTO 610
1350 PRINT "LONG BY";ABS(D);"YARDS"
1360 GOTO 610
