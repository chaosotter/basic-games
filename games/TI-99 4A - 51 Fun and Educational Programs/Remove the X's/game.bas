100 REM -REMOVE X'S
110 CALL CLEAR
120 PRINT "******* REMOVE X'S *******"
130 GOSUB 350
140 PRINT "WE WILL START WITH 17 X'S."
150 PRINT
160 PRINT "YOU WILL REMOVE 1, 2, OR 3 "
170 PRINT "X'S. THE COMPUTER WILL THEN DO THE SAME."
180 PRINT
190 PRINT "THE ONE TO REMOVE THE LAST X LOSES THE GAME."
200 PRINT
210 PRINT "CAN YOU BEAT THE COMPUTER?"
220 GOSUB 350
230 PRINT "TO FIND OUT, HIT ENTER TO START."
240 INPUT ENTER$
250 CALL CLEAR
260 RANDOMIZE
270 Q=INT(RND*2)+1
280 LEFT=17
290 GOSUB 400
300 GOSUB 460
310 IF LEFT=0 THEN 790
320 GOSUB 590
330 IF LEFT=0 THEN 840
340 GOTO 290
350 REM -SKIP 3 LINES
360 FOR I=1 TO 3
370 PRINT
380 NEXT I
390 RETURN
400 CALL CLEAR
410 FOR I=1 TO LEFT
420 PRINT "X";
430 NEXT I
440 PRINT "   (";LEFT;")"
450 RETURN
460 REM -PERSON INPUT
470 GOSUB 350
480 PRINT "HOW MANY DO YOU WANT TO REMOVE? (ENTER 1, 2, OR 3)"
490 INPUT P
500 IF P=0 THEN 520
510 IF P<4 THEN 540
520 PRINT "MUST REMOVE 1, 2, OR 3"
530 GOTO 470
540 IF LEFT-P>=0 THEN 570
550 PRINT "CANNOT REMOVE MORE THAN";LEFT
560 GOTO 470
570 LEFT=LEFT-P
580 RETURN
590 REM -COMPUTER MOVE
600 IF Q=1 THEN 680
610 IF LEFT>4 THEN 660
620 C=LEFT-1
630 IF C>0 THEN 690
640 C=1
650 GOTO 690
660 C=INT(RND*3)+1
670 GOTO 690
680 C=4-P
690 PRINT
700 PRINT "YOU HAVE REMOVED ";P
710 FOR I=1 TO 500
720 NEXT I
730 PRINT
740 PRINT "COMPUTER WILL REMOVE";C
750 LEFT=LEFT-C
760 FOR I=1 TO 1000
770 NEXT I
780 RETURN
790 REM -PERSON LOSES
800 CALL CLEAR
810 PRINT "SORRY-YOU LOSE"
820 GOSUB 350
830 GOTO 900
840 REM -COMPUTER LOSES
850 CALL CLEAR
860 PRINT "I LOSE-DARN IT"
870 PRINT
880 PRINT "YOU HAVE BEATEN A COMPUTER"
890 GOSUB 350
900 END
