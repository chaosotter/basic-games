100 REM -"MISSING LETTERS"
110 CALL CLEAR
120 PRINT "GUESS THE MISSING LETTERS"
130 PRINT
140 PRINT
150 PRINT
160 PRINT
170 PRINT "FOR EACH CORRECT ANSWER"
180 PRINT "YOU GET 10 POINTS"
190 PRINT
200 PRINT "AFTER 3 MISSES A NEW WORD"
210 PRINT "WILL APPEAR"
220 PRINT
230 PRINT "TRY TO GET AS HIGH A SCORE"
240 PRINT "AS POSSIBLE"
250 PRINT
260 PRINT "PLEASE ENTER LETTERS"
270 PRINT "SEPARATED BY COMMAS (X,X)"
280 PRINT
290 PRINT
300 PRINT "HIT ENTER TO CONTINUE"
310 INPUT ENTER$
320 CALL CLEAR
330 RESTORE
340 GOSUB 520
350 READ A$,B$,C$
360 ERR=0
370 IF A$="END" THEN 690
380 PRINT TAB(9);A$
390 PRINT
400 PRINT
410 PRINT "GUESS THE MISSING LETTERS"
420 GOSUB 560
430 PRINT "ENTER LETTERS (X,X)"
440 INPUT X$,Y$
450 IF X$<>B$ THEN 600
460 IF Y$<>C$ THEN 600
470 GOSUB 520
480 P=P+10
490 PRINT "CORRECT-YOU HAVE";P;"POINTS"
500 GOSUB 520
510 GOTO 350
520 FOR I=1 TO 5
530 PRINT
540 NEXT I
550 RETURN
560 FOR I=1 TO 10
570 PRINT
580 NEXT I
590 RETURN
600 REM =WRONG
610 ERR=ERR+1
620 GOSUB 520
630 PRINT "SORRY-WRONG ANSWER"
640 ON ERR GOTO 650,650,340
650 PRINT "MISS # ";ERR
660 PRINT
670 GOSUB 520
680 GOTO 380
690 GOSUB 520
700 PRINT "  ***  FINAL SCORE  ***"
710 PRINT
720 PRINT
730 PRINT "TOTAL POINTS=";P
740 GOSUB 520
750 END
760 DATA M-L-IPLY,U,T 
770 DATA FO-E-T,R,S 
780 DATA FR-E-D,I,N
790 DATA S-S-ER,I,T
800 DATA S-HO-L,C,O
810 DATA P--TY,A,R
820 DATA KI--HEN,T,C
830 DATA -AD-O,R,I
840 DATA GU-T-R,I,A
850 DATA -I-RARY,L,B
860 DATA T-A-HER,E,C
870 DATA -IA-O,P,N
880 DATA END,X,X
