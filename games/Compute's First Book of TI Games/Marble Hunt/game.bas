100 CALL CLEAR
110 PRINT TAB(4);"***************"
120 PRINT TAB(4);"* MARBLE HUNT *"
130 PRINT TAB(4);"***************"
140 PRINT : : :"USE THE ARROW KEYS TO"
150 PRINT :"MOVE AROUND TO PICK UP"
160 PRINT :"ALL THE MARBLES ON THE"
170 PRINT :"PLAYGROUND."
180 PRINT : :"WATCH OUT FOR THE BULLY!": : :
190 CALL CHAR(128,"0000183C3C18")
200 CALL CHAR(96,"001C1C083E081414")
210 CALL COLOR(9,7,1)
220 CALL CHAR(104,"1C1C083E08141414")
230 PRINT "PRESS ANY KEY TO START.";
240 CALL KEY(0,K,S)
250 IF S<1 THEN 240
260 T=0
270 CALL CLEAR
280 X=1
290 Y=3
300 RANDOMIZE
310 C=INT(15*RND+2)
320 IF C=4 THEN 310
330 CALL COLOR(13,C,1)
340 CALL HCHAR(1,1,128,768)
350 A=INT(24*RND+1)
360 B=INT(25*RND+5)
370 PG=128
380 CALL SOUND(150,1497,2)
390 CALL HCHAR(X,Y,96)
400 CALL SOUND(150,110,2)
410 CALL HCHAR(A,B,104)
420 CALL KEY(1,K,S)
430 IF (K<0)+(K>5)THEN 680
440 ON K+1 GOTO 450,680,480,510,680,540
450 DX=1
460 DY=0
470 GOTO 560
480 DX=0
490 DY=-1
500 GOTO 560
510 DX=0
520 DY=1
530 GOTO 560
540 DX=-1
550 DY=0
560 CALL HCHAR(X,Y,32)
570 X=X+DX
580 Y=Y+DY
590 X=INT(24*((X-1)/24-INT((X-1)/24)))+1
600 Y=INT(32*((Y-1)/32-INT((Y-1)/32)))+1
610 CALL GCHAR(X,Y,G)
620 IF G=104 THEN 830
630 IF G=32 THEN 670
640 CALL SOUND(-100,1497,2)
650 T=T+1
660 IF T=767 THEN 870
670 CALL HCHAR(X,Y,96)
680 CALL HCHAR(A,B,PG)
690 A=A-SGN(A-X)
700 IF A>0 THEN 720
710 A=1
720 IF A<25 THEN 740
730 A=24
740 B=B-SGN(B-Y)
750 IF B>0 THEN 770
760 B=1
770 IF B<32 THEN 790
780 B=32
790 CALL GCHAR(A,B,PG)
800 IF PG=96 THEN 830
810 CALL HCHAR(A,B,104)
820 GOTO 420
830 CALL SOUND(300,-5,2)
840 PRINT "THE BULLY GOT YOU!!"
850 PRINT :"YOU GOT";T;"MARBLES."
860 GOTO 890
870 PRINT "CONGRATULATIONS!!"
880 PRINT "YOU GOT ALL THE MARBLES!!"
890 PRINT : : :"TRY AGAIN? (Y/N)";
900 CALL KEY (0,K,S)
910 IF K=89 THEN 260
920 IF K<>78 THEN 900
930 PRINT : : : : : : :
940 END