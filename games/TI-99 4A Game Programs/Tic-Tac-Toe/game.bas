100 REM TIC TAC TOE
110 REM COPYRIGHT FREDERICK HOLTZ AND ASSOCIATES 3/23/83
120 REM PROGRAM RUNS IN TI-BASIC
130 CALL CLEAR
140 CALL CHAR(33,"FFFFFFFFFFFFFFFF")
150 CALL VCHAR(3,13,33,20)
160 CALL VCHAR(3,20,33,20)
170 CALL HCHAR(9,7,33,20)
180 CALL HCHAR(16,7,33,20)
190 CALL HCHAR(6,9,49)
200 CALL HCHAR(6,16,50)
210 CALL HCHAR(6,24,51)
220 CALL HCHAR(13,9,52)
230 CALL HCHAR(13,16,53)
240 CALL HCHAR(13,24,54)
250 CALL HCHAR(20,9,55)
260 CALL HCHAR(20,16,56)
270 CALL HCHAR(20,24,57)
280 C=C+1
290 IF C/2=INT(C/2) THEN 300 ELSE 320
300 X=79
310 GOTO 330
320 X=88
330 CALL KEY(0,I,S)
340 IF S=0 THEN 330
350 IF I=49 THEN 510
360 IF I=50 THEN 560
370 IF I=51 THEN 610
380 IF I=52 THEN 660
390 IF I=53 THEN 710
400 IF I=54 THEN 760
410 IF I=55 THEN 810 
420 IF I=56 THEN 860
430 IF I=57 THEN 910
440 GOTO 330
450 FOR T=1 TO 50
460 NEXT T
470 GOTO 280
480 REM  1
490 D=D+1
500 IF D>1 IHEN 330
510 REM  1
520 B=B+1
530 IF B>1 THEN 330
540 CALL HCHAR(6,9,X)
550 GOTO 450
560 REM  2
570 E=E+1
580 IF E>1 THEN 330
590 CALL HCHAR(6,16,X)
600 GOTO 450
610 REM  3
620 F=F+1
630 IF F>1 THEN 330
640 CALL HCHAR(6,24,X)
650 GOTO 450
660 REM  4
670 G=G+1
680 IF G>1 THEN 330
690 CALL HCHAR(13,9,X)
700 GOTO 450
710 REM  5
720 H=H+1
730 IF H>1 THEN 330
740 CALL HCHAR(13,16,X)
750 GOTO 450
760 REM  6
770 J=J+1
780 IF J>1 THEN 330
790 CALL HCHAR(13,24,X)
800 GOTO 450
810 REM  7
820 K=K+1
830 IF K>1 THEN 330
840 CALL HCHAR(20,9,X)
850 GOTO 450
860 REM  8
870 L=L+1
880 IF L>1 THEN 330
890 CALL HCHAR(20,16,X)
900 GOTO 450
910 REM  9
920 M=M+1
930 IF M>1 THEN 330
940 CALL HCHAR(20,24,X)
950 GOTO 450
