100 REM -MISSILE CONTROL
110 CALL CLEAR
120 PRINT
130 PRINT "ALERT! ALERT!"
140 PRINT
150 PRINT
160 PRINT "ENEMY BOMBERS ARE ABOUT"
170 PRINT "TO MAKE 10 BOMBING RUNS"
180 PRINT
190 PRINT "YOU CAN STOP THEM BY LALWCHING SAM MISSILES"
200 PRINT
210 PRINT "PRESS THE F KEY TO FIRE THE MISSILES"
220 PRINT
230 PRINT
240 PRINT "HIT ENTER TO START"
250 INPUT ENTER$
260 CALL CLEAR
270 FIRE=0 
280 RAIDS=RAIDS+1
290 GOSUB 630
300 GOSUB 360
310 CALL KEY(0,KEY,STAT)
320 IF KEY<>70 THEN 340
330 FIRE=1
340 GOSUB 430
350 GOTO 300
360 REM -MOVE PLANE
370 CALL HCHAR(RP,CP,32,2)
380 CP=CP+1
390 IF CP<32 THEN 410
400 GOTO 790
410 CALL HCHAR(RP,CP,140,2)
420 RETURN
430 REM -MOVE ROCKET
440 IF FIRE=0 THEN 530
450 CALL VCHAR(RR,CR,32)
460 RR=RR-1
470 IF RR<2 THEN 790
480 CALL VCHAR(RR,CR,130) 
490 CALL GCHAR(RR-1,CR,X)
500 IF X=140 THEN 540
510 CALL GCHAR(RR,CR-1,X)
520 IF X=140 THEN 540
530 RETURN
540 REM -HIT
550 HITS=HITS+1
560 CALL HCHAR(RR-1,CR-1,42,3)
570 CALL VCHAR(RR-2,CR,42,3)
580 FOR V=1 TO 30 STEP 4
590 CALL SOUND(100,-5,V)
600 NEXT V
610 CALL CLEAR
620 GOTO 790
630 REM -INITIAL
640 ROCKET$="081C1C1C1C1C3E7F"
650 PLANE$="404040FFFF404040"
660 RANDOMIZE
670 RP=INT(8*RND)+3
680 CP=2
690 RR=24
700 CR=29
710 CALL CHAR(140,PLANE$)
720 CALL CHAR(130,ROCKET$)
730 CALL HCHAR(RP,CP,140)
740 CALL VCHAR(RR,CR,130)
750 FOR I=1 TO 4
760 CALL SOUND(300,600,2) 
770 NEXT I
780 RETURN
790 REM -SCORE
800 CALL CLEAR
810 PRINT "*** SCORE ***"
820 FOR I=1 TO 4 
830 CALL SOUND(100,600,2)
840 CALL SOUND(100,800,2)
850 NEXT I
860 PRINT
870 PRINT "NUMBER OF RAIDS=";RAIDS
880 PRINT
890 PRINT "BOMBERS DESTROYED=";HITS
900 IF RAIDS>=10 THEN 960
910 PRINT
920 PRINT
930 PRINT "HIT ENTER TO PREPARE FOR NEXT RAID"
940 INPUT ENTER$
950 GOTO 260
960 PRINT
970 PRINT
980 PRINT "THE WAR IS OVER"
990 CALL SOUND(1000,200,5)
1000 END
