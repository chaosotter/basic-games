100 RANDOMIZE
110 REM  MAX 90 DIGITS
120 DIM N(90)
130 MA=0
140 CALL CLEAR
150 CALL SCREEN(12)
160 FOR I=5 TO 8
170 CALL COLOR(I,14,16)
180 NEXT I
190 PRINT "      MEMORY TRAINER"
200 FOR I=1 TO 3
210 PRINT
220 NEXT I
230 INPUT "DIGIT RATE (1-10) ? ":DR
240 IF (DR<1)+(DR>10)THEN 140
250 PRINT
260 INPUT "INITIAL SEQUENCE LENGTH ? ":SL
270 IF SL<2 THEN 280 ELSE 290
280 SL=2
290 IF SL>90 THEN 300 ELSE 310
300 SL=90
310 PRINT
320 PRINT
330 PRINT
340 PRINT "CURRENT DIGIT SPAN "&STR$(SL)
350 PRINT
360 PRINT
370 IF HS$<>"Y" THEN 410
380 FOR I=1 TO 6
390 PRINT
400 NEXT I
410 PRINT "get set"
420 PRINT "*"
430 FOR I=9 TO 11
440 CALL COLOR(I,10,7)
450 NEXT I
460 FOR I=1 TO 200
470 NEXT I
480 FOR I=9 TO 11
490 CALL COLOR(I,2,1)
500 NEXT I
510 CALL SOUND(150,300,10)
520 FOR I=1 TO 200
530 NEXT I
540 FOR I=1 TO SL
550 N(I)=INT(RND*10)
560 CALL HCHAR(23,3,N(I)+48)
570 FOR J=1 TO DR*20
580 NEXT J
590 CALL HCHAR(23,3,32)
600 FOR K=1 TO 10
610 NEXT K
620 NEXT I
630 CALL HCHAR(23,3,32)
640 FL=0
650 PRINT
660 PRINT
670 IF H$<>"Y" THEN 710
680 FOR I=1 TO 4
690 PRINT
700 NEXT I
710 PRINT "INPUT DIGITS"
720 INPUT "*":A$
730 PRINT
740 PRINT
750 FOR I=1 TO 200
760 NEXT I
770 IF LEN(A$)=SL THEN 800
780 FL=1
790 GOTO 870
800 FOR I=1 TO SL
810 IF VAL(SEG$(A$,I,1))=N(I)THEN 840
820 I=SL
830 FL=1
840 NEXT I
850 REM  FL=0 -CORRECT- INCREASE SEQ LEN BY ONE
860 REM  FL=1 -INCORRECT-
870 CALL CLEAR
880 IF FL=0 THEN 1000
890 PRINT "INCORRECT-TRY A SHORTER SPAN"
900 PRINT
910 SL=SL-1
920 PRINT "YOUR RESPONSE=";A$
930 H$=""
940 FOR I=1 TO SL+1
950 H$=H$&STR$(N(I))
960 NEXT I
970 PRINT
980 PRINT "ACTUAL SEQUENCE=";H$
990 GOTO 1040
1000 PRINT " CORRECT-TRY A LONGER SPAN"
1010 SL=SL+1
1020 IF MA>=SL-1 THEN 1040
1030 MA=SL-1
1040 FOR I=1 TO 10
1050 PRINT
1060 NEXT I
1070 PRINT "      AGAIN (Y OR N) ? "
1080 CALL KEY(0,F,STATUS)
1090 IF STATUS=0 THEN 1080
1100 H$=CHR$(F)
1110 CALL CLEAR
1120 IF H$="N" THEN 1140
1130 GOTO 340
1140 PRINT "HOPE YOU IMPROVED YOUR SPAN!"
1150 FOR I=1 TO 10
1160 PRINT
1170 NEXT I
1180 FOR I=3 TO 4
1190 CALL COLOR(I,13,12)
1200 NEXT I
1210 PRINT "-HIGHEST CORRECT DIGIT SPAN-"
1220 PRINT
1230 PRINT
1240 PRINT "           (";MA;")"
1250 FOR I=1 TO 500
1260 NEXT I
1270 END
