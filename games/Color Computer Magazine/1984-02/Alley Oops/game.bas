
100 REM * ALLEY OOPS! * TRS-80 COLOR BASIC 4K
110 REM * SORCERER'S PUZZLES #5 * RICHARD RAMELLA
120 QQ=10
130 CLS(3)
140 G=0
150 M=256
160 S=1024
170 B$=CHR$(128)
180 L$=CHR$(8)
190 R$=CHR$(9)
200 D$=CHR$(10)
210 U$=CHR$(94)
220 P$=CHR$(255)
230 Z$=CHR$(128)+CHR$(128)
240 FOR A=42 TO 202 STEP 32
250 PRINT @ A,Z$;
260 PRINT @ A+4,Z$;
270 PRINT @ A+8,Z$;
280 NEXT A
290 FOR A=232 TO 244 STEP 2
300 PRINT @ A,Z$;
310 NEXT A
320 PRINT @ 42,"8";
330 PRINT @ 46,"7";
340 PRINT @ 50,"9";
350 PRINT @ 106,"9";
360 PRINT @ 110,"10";
370 PRINT @ 114,"7";
380 PRINT @ 170,"7";
390 PRINT @ 174,"8";
400 PRINT @ 178,"10";
410 A=232
420 PRINT @ A,P$;
430 X$=INKEY$
440 IF X$<>U$ THEN 460 ELSE F=PEEK(S+A-32):IF F<>175 AND F=128 THEN PRINT @ A,Z$;: A=A-32
450 IF F<>128 AND F<>175 GOSUB 500
460 F=PEEK(S+A+2): IF F<>175 AND X$=R$ THEN PRINT @ A,Z$;: A=A+2
470 F=PEEK(S+A-2): IF F<>175 AND X$=L$ THEN PRINT @ A,Z$;: A=A-2
480 F=PEEK(S+A+32): IF F<>175 AND X$=D$ THEN PRINT @ A,Z$;: A=A+32
490 GOTO 420
500 PRINT @ A,Z$;
510 A=A-32
520 PRINT @ A,Z$;
530 PRINT @ A,P$;
540 M=M+32
550 Q=Q+1
560 F=F-112
570 IF F=1 THEN F=10
580 F(Q)=F
590 PRINT @ M,"TURN"Q;
600 G=G+(Q*F)
610 G(Q)=G
620 IF Q<3 THEN RETURN
630 IF G<>50 GOTO 770
640 PRINT @ 295,1"X"F(1)"= "F(1);" TOTAL - "F(1)
650 PRINT @ 327,2"X"F(2)"="2*F(2)" TOTAL -"G(2)
660 PRINT @ 359,3"X"F(3)"="3*F(3)" TOTAL -"G(3)" ";
670 PRINT @ 458,"RATING:";QQ;
680 PRINT @ 424," W-I-N-N-E-R  ";
690 GOSUB 730
700 PRINT @ 424,"  W-I-N-N-E-R ";
710 GOSUB 730
720 GOTO 680
730 SOUND 204,1
740 SOUND 193,1
750 SOUND 218,1
760 RETURN
770 PRINT @ 300,"LOSER ";
780 PRINT @ 332,"TOTAL"G;
790 GOSUB 890 
800 PRINT @ 396,"TRY AGAIN ";
810 Q=0
820 G=0
830 GOSUB 890
840 FOR T=1 TO 1000
850 NEXT T
860 QQ=QQ-1
870 IF QQ=0 THEN PRINT @ 416,"RATING ZERO. THAT'S ALL.": END
880 GOTO 130
890 FOR T=1 TO 20
900 SOUND RND(8)*13,1
910 NEXT
920 RETURN
930 END
