100 REM -HORSE RACE
110 CALL CLEAR
120 PRINT "*** HORSE RACE ***"
130 PRINT
140 PRINT
150 PRINT "IT'S NOW POST TIME"
160 PRINT
170 PRINT "THERE ARE 4 HORSES A, B, C,"
180 PRINT "AND D. ONLY ONE CAN WIN."
190 PRINT
200 PRINT "YOU WILL START WITH $500."
210 PRINT "YOU WILL PICK A, B, C, OR D"
220 PRINT "IF YOU PICK THE WINNER YOUR BET WILL BE ADDED."
230 PRINT "IF YOU PICK A LOSER YOUR BET WILL BE SUBTRACTED."
240 PRINT
250 PRINT "THE OBJECT IS TO TRY TO GET TO $1000 BEFORE GOING BROKE."
260 PRINT
270 PRINT "GOOD LUCK."
280 PRINT
290 PRINT "HIT ENTER TO START"
300 INPUT E$
310 Z$(1)="A"
320 Z$(2)="B"
330 Z$(3)="C"
340 Z$(4)="D"
350 R(1)=8
360 R(2)=11
370 R(3)=14
380 R(4)=17
390 HORSE=1
400 AVAIL=500
410 REM =MAIN
420 GOSUB 480
430 GOSUB 540
440 GOSUB 1020
450 GOSUB 760
460 GOSUB 830
470 GOTO 450
480 REM =INITIALIZE
490 ACOL=5
500 BCOL=5
510 CCOL=5
520 DCOL=5
530 RETURN
540 REM =PLACE BET
550 CALL CLEAR
560 PRINT "AVAILABLE TO BET= $ ";AVAIL
570 PRINT
580 INPUT "ENTER YOUR BET   ":BET
590 IF BET<=AVAIL THEN 630
600 PRINT "YOU BET MORE THAN AVAILABLE"
610 PRINT
620 GOTO 560
630 PRINT
640 INPUT "WHICH HORSE: A, B, C, OR D   ":H$
650 IF ASC(H$)<65 THEN 630
660 IF ASC(H$)>68 THEN 630
670 CALL CLEAR
680 PRINT "THEY'RE OFF"
690 FOR I=1 TO 10
700 PRINT
710 NEXT I
720 FOR I=1 TO 300
730 NEXT I
740 CALL CLEAR
750 RETURN
760 REM =DISPLAY POSITIONS
770 CALL HCHAR(R(HORSE),1,ASC(" "),25)
780 CALL HCHAR(8,ACOL,ASC("A"))
790 CALL HCHAR(11,BCOL,ASC("B"))
800 CALL HCHAR(14,CCOL,ASC("C"))
810 CALL HCHAR(17,DCOL,ASC("D"))
820 RETURN
830 REM =MOVE HORSES
840 RANDOMIZE
850 HORSE=INT(RND*4)+1
860 CALL SOUND(100,800,2)
870 ON HORSE GOTO 880,920,950,980
880 ACOL=ACOL+1
890 IF ACOL<26 THEN 1010
900 IF H$="A" THEN 1080 ELSE 1150
910 REM
920 BCOL=BCOL+1
930 IF BCOL<26 THEN 1010
940 IF H$="B" THEN 1080 ELSE 1150
950 CCOL=CCOL+1
960 IF CCOL<26 THEN 1010
970 IF H$="C" THEN 1080 ELSE 1150
980 DCOL=DCOL+1
990 IF DCOL<26 THEN 1010
1000 IF H$="D" THEN 1080 ELSE 1150
1010 RETURN
1020 REM -TRACK
1030 PRINT "YOU BET $";BET;" ON ";H$
1040 CALL HCHAR(3,1,35,32)
1050 CALL HCHAR(22,1,35,32)
1060 CALL VCHAR(5,26,ASC("."),15)
1070 RETURN
1080 REM =WON RACE
1090 CALL SOUND(800,150,2)
1100 GOSUB 1320
1110 PRINT
1120 AVAIL=AVAIL+BET
1130 IF AVAIL>=1000 THEN 1220
1140 GOTO 410
1150 REM =LOST RACE
1160 CALL SOUND(800,150,2)
1170 GOSUB 1320
1180 PRINT
1190 AVAIL=AVAIL-BET
1200 IF AVAIL<=0 THEN 1270
1210 GOTO 410
1220 REM =WON THE DAY
1230 CALL CLEAR
1240 PRINT "YOU HAVE WON $ ";AVAIL
1250 PRINT "NICE GOING"
1260 GOTO 1410
1270 REM =WIPED OUT
1280 CALL CLEAR
1290 PRINT "YOU ARE OUT OF MONEY."
1300 PRINT "BETTER LUCK NEXT TIME."
1310 GOTO 1410
1320 REM =PRINT WINNER
1330 CALL CLEAR
1340 PRINT "THE WINNER IS ";Z$(HORSE)
1350 FOR I=1 TO 10
1360 PRINT
1370 NEXT I
1380 FOR I=1 TO 300
1390 NEXT I
1400 RETURN
1410 END
