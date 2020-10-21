100 REM NUMBERS ALIGNMENT
110 REM COPYRIGHT FREDERICK HOLTZ AND ASSOCIATES
120 REM 4/28/83
130 REM PROGRAM RUNS IN TI-BASIC
140 CALL CLEAR
150 PRINT "THIS IS A GAME OF SKILL"
160 PRINT
170 PRINT "CALLED 'ALIGNMENT'. TO WIN"
180 PRINT
190 PRINT "YOU MUST ARRANGE THE NUMBERS"
200 PRINT
210 PRINT "DISPLAYED ON THE SCREEN"
220 PRINT
230 PRINT "IN SEQUENTIAL ORDER. THE"
240 PRINT
250 PRINT "FIRST GROUPING OF NUMBERS IS"
260 PRINT
270 PRINT "CHOSEN AT RANDOM. YOU WILL"
280 PRINT
290 FOR X=1 TO 1000
300 NEXT X
310 PRINT "DECIDE THE FUTURE ORDERS."
320 PRINT
330 PRINT "WHEN YOU INPUT A NUMBER, IT"
340 PRINT
350 PRINT "AND ALL NUMBERS TO ITS LEFT"
360 PRINT
370 PRINT "WILL BE DISPLACED FROM LEFT"
380 PRINT
390 PRINT "TO RIGHT. THE COMPUTER WILL"
400 PRINT
410 PRINT "BE CONSTANTLY CHECKING FOR A"
420 PRINT 
430 PRINT "WIN. IT WILL TELL YOU YOUR"
440 PRINT
450 PRINT "SCORE WHEN YOU GET AN"
460 PRINT
470 PRINT "ALIGNMENT. GOOD LUCK!!"
480 PRINT
490 PRINT
500 INPUT "PRESS (ENTER) TO CONTINUE.":ER$
510 CALL CLEAR
520 DIM A(10)
530 DIM B(10)
540 RANDOMIZE
550 FOR X=1 TO 9
560 A(X)=X
570 NEXT X
580 Q=0
590 R=0
600 Y=INT(RND*9)+1
610 IF A(Y)=0 THEN 600
620 PRINT A(Y);
630 Q=Q+1
640 B(Q)=A(Y)
650 A(Y)=0
660 IF Q=9 THEN 680
670 GOTO 600
680 PRINT
690 PRINT
700 PRINT 
710 PRINT
720 PRINT
730 PRINT
740 PRINT "WHAT NUMBER?"
750 INPUT C
760 PRINT
770 PRINT
780 PRINT
790 PRINT
800 PRINT
810 R=R+1
820 IF C=B(R) THEN 840
830 GOTO 810
840 FOR X=R TO 1 STEP -1
850 Z=Z+1
860 PRINT B(X);
870 A(Z)=B(X)
880 NEXT X
890 FOR YY=R+1 TO 9
900 A(YY)=B(YY)
910 PRINT B(YY);
920 NEXT YY
930 FOR T=1 TO 9
940 B(T)=A(T)
950 NEXT T
960 NT=NT+1
970 R=0
980 Q=0
990 Z=0
1000 FOR XYZ=1 TO 9
1010 IF B(XYZ)<>XYZ THEN 1190
1020 NEXT XYZ
1030 CALL CLEAR
1040 PRINT "1  2  3  4  5  6  7  8  9"
1050 FOR TONE=1000 TO 3000 STEP 20
1060 CALL SOUND(10,TONE,0)
1070 NEXT TONE
1080 PRINT
1090 PRINT
1100 PRINT
1110 PRINT
1120 PRINT
1130 PRINT
1140 PRINT
1150 PRINT "IT TOOK YOU";NT;"TRYS!"
1160 PRINT
1170 PRINT
1180 END
1190 GOTO 680