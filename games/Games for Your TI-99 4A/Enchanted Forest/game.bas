5 RANDOMIZE
10 REM  ENCHANTED FOREST
20 DIM A(30),B(30)
30 CALL CLEAR
40 G=5
50 GOSUB 1000
60 PRINT : :
70 FOR Z=0 TO 30
80 A(Z)=0
90 NEXT Z
100 FOR Z=0 TO 10
110 Q=INT(RND*30)+1
120 IF A(Q)=1 THEN 110
130 A(Q)=1
140 B(Z)=Q+35
150 NEXT Z
160 FOR I=1 TO 20
170 PRINT "***************************"
180 NEXT I
190 GOSUB 1000
200 PRINT : :"THERE ARE FAIRIES HERE "
210 FOR Z=1 TO 500
220 NEXT Z
230 X=34+2*(RND*16)+1
240 X=INT(X)
250 Y=7
260 CALL CLEAR
270 FOR I=1 TO 15
280 PRINT
290 NEXT I
300 PRINT : : :"YOU ARE NOW IN SECTOR";X
310 FOR J=1 TO 200
320 NEXT J
330 GOSUB 1000
340 Q=-1
350 FOR Z=0 TO 10
360 IF B(Z)<>X THEN 380
370 Q=INT(Z/5)
380 NEXT Z
390 IF Q=0 THEN 200
400 IF Q=1 THEN 850
410 IF Q=2 THEN 880
420 FOR U=1 TO 5
430 PRINT
440 NEXT U
450 PRINT "***************************"
460 PRINT : :
470 PRINT "YOU CAN MOVE TO";X-1;X+1;X+Y
480 GOSUB 1000
490 PRINT : :
500 FOR Z=0 TO 2
510 A(Z)=0
520 NEXT Z
530 FOR Z=0 TO 10
540 D=B(Z)-X
550 IF ABS(D)=1 THEN 900
560 IF D=Y THEN 900
570 NEXT Z
580 D=ABS(D)
590 IF (D=1)+(D=6)+(D=8)<0 THEN 920
600 PRINT : :"###########################"
610 FOR J=1 TO 500
620 NEXT J
630 PRINT : :
640 IF A(0)=1 THEN 940
650 IF A(1)=1 THEN 960
660 GOSUB 1000
670 IF A(2)=1 THEN 980
680 Q=2
690 PRINT :
700 INPUT "YOUR MOVE? ":M
710 FOR J=1 TO 500
720 NEXT J
730 IF M<0 THEN 770
740 X=M
750 Y=-Y
760 GOTO 260
770 IF M=-B(10)THEN 410
780 G=G-1
790 PRINT : :
800 PRINT "YOU HAVE";G;" ARROWS LEFT"
810 PRINT
820 IF G>0 THEN 700
830 PRINT :"SO THE GAME IS OVER"
840 END
850 PRINT :"AND THE GOBLINS HAVE"
860 PRINT "KILLED YOU"
870 END
880 PRINT :"YOU HAVE FOUND THE DRAGON! "
890 END
900 A(INT(Z/5))=1
910 GOTO 570
920 A(2)=1
930 GOTO 600
940 PRINT "FAIRIES NEARBY"
950 GOTO 680
960 PRINT "GOBLINS NEARBY"
970 GOTO 680
980 PRINT ">> DRAGON NEARBY <<"
990 GOTO 680
1000 FOR MUSIC=1 TO INT(RND*6)+1
1010 NOTE=INT(RND*263)+262
1020 TIME=INT(RND*90)+20
1030 CALL SOUND(TIME,NOTE,0,(NOTE+9),0,(NOTE-6),0)
1040 NEXT MUSIC
1050 RETURN
