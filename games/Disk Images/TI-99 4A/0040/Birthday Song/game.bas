100 REM  "BIRTHDAY SONG" 
110 REM   
120 REM    WRITTEN BY                    
130 REM    A.J. MCALLISTER 
140 REM   
150 REM    TI BASIC 
160 REM  
170 CALL CLEAR
180 CALL SCREEN(11)
190 PGM$="B I R T H D A Y  S O N G"
200 PGMR$="  BY    A.J. McALLISTER"
210 FOR I=1 TO LEN(PGM$)
220 CALL HCHAR(5,4+I,ASC(SEG$(PGM$,I,1)))
230 NEXT I
240 FOR I=1 TO LEN(PGMR$)
250 CALL HCHAR(8,4+I,ASC(SEG$(PGMR$,I,1)))
260 NEXT I
270 FOR DELAY=1 TO 1000
280 NEXT DELAY
290 CALL CLEAR
300 PRINT "NAME OF BIRTHDAY"
310 INPUT "PERSON ?  ":NAME$
320 CALL CLEAR
330 DIM N(25)
340 FOR I=1 TO 25
350 READ N(I)
360 NEXT I
370 DATA 294,294,330,294,392,370,294,294,330,294,440,392,294,294,587,494,392,370,330,523,523,494,392,440,392
380 CALL SCREEN(6)
390 FOR I=3 TO 8
400 CALL COLOR(I,2,16)
410 NEXT I
420 CALL COLOR(1,6,6)
430 CALL COLOR(12,2,16)
440 CALL COLOR(14,16,16)
450 CALL COLOR(13,7,1)
460 CALL COLOR(9,11,6)
470 CALL CHAR(96,"0018182424242418")
480 CALL CHAR(132,"FFFFFFFFFFFFFFFF")
490 CALL CHAR(136,"0000000000000000")
500 HBA$="H A P P Y   B I R T H D A Y"
510 FOR I=1 TO LEN(HBA$)
520 CALL HCHAR(5,4+I,ASC(SEG$(HBA$,I,1)))
530 NEXT I
540 FOR I=1 TO LEN(NAME$)
550 CALL HCHAR(7,12+I,ASC(SEG$(NAME$,I,1)))
560 NEXT I
570 FOR I=13 TO 19
580 CALL HCHAR(I,6,136,25)
590 NEXT I
600 CALL HCHAR(16,6,126,25)
610 FOR I=10 TO 26 STEP 2
620 CALL VCHAR(10,I,132,4)
630 NEXT I
640 FOR I=10 TO 26 STEP 2
650 CALL HCHAR(9,I,96)
660 NEXT I
670 FOR DELAY=1 TO 1000
680 NEXT DELAY
690 HBTY$="HAPPY BIRTHDAY TO YOU"
700 FOR I=1 TO LEN(HBTY$)
710 CALL HCHAR(22,5+I,ASC(SEG$(HBTY$,I,1)))
720 NEXT I
730 FOR I=1 TO 6
740 CALL SOUND(350,N(I),2)
750 NEXT I
760 CALL HCHAR(22,6,32,25)
770 FOR I=1 TO LEN(HBTY$)
780 CALL HCHAR(22,5+I,ASC(SEG$(HBTY$,I,1)))
790 NEXT I
800 FOR I=7 TO 12
810 CALL SOUND(350,N(I),2)
820 NEXT I
830 CALL HCHAR(22,6,32,25)
840 HBN$="HAPPY BIRTHDAY DEAR "&NAME$
850 FOR I=1 TO LEN(HBN$)
860 CALL HCHAR(22,2+I,ASC(SEG$(HBN$,I,1)))
870 NEXT I
880 FOR I=13 TO 19
890 CALL SOUND(350,N(I),2)
900 NEXT I
910 CALL HCHAR(22,2,32,31)
920 FOR I=1 TO LEN(HBTY$)
930 CALL HCHAR(22,5+I,ASC(SEG$(HBTY$,I,1)))
940 NEXT I
950 FOR I=20 TO 25
960 CALL SOUND(350,N(I),2)
970 NEXT I
980 CALL HCHAR(22,6,32,25)
990 FOR DELAY=1 TO 500
1000 NEXT DELAY
1010 END
