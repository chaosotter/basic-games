100 REM -"CHECK MATH HOMEWORK"
110 CALL CLEAR
120 PRINT "   CHECK MATH HOMEWORK"
130 PRINT
140 PRINT
150 PRINT "THIS PROGRAM CHECKS AND"
160 PRINT "GRADES YOUR MATH HOMEWORK"
170 PRINT
180 PRINT "AFTER THE ? TYPE IN"
190 PRINT "THE FIRST NUMBER(A),"
200 PRINT "THE SECOND NUMBER (B)"
210 PRINT "AND THE ANSWER"
220 PRINT
230 PRINT "WHEN YOU FINISH"
240 PRINT "TYPE 0,0,0 AFTER THE ?"
250 GOSUB 740
260 PRINT "TO CONTINUE HIT ENTER"
270 INPUT ENTER$
280 CALL CLEAR
290 PRINT "WHICH MATH OPERATION DO YOU WANT TO CHECK?"
300 GOSUB 740
310 PRINT "ADD (A+B) --- 1"
320 PRINT "SUB (A-B) --- 2"
330 PRINT "MUL (A*B) --- 3"
340 PRINT "DIV (A/B) --- 4"
350 GOSUB 740
360 INPUT "ENTER 1, 2, 3, OR 4  ":OPER
370 CALL CLEAR
380 REM =MAIN RTN
390 GOSUB 740
400 PRINT "ENTER 1ST NUMBER, 2ND NUMBER, ANSWER"
410 INPUT A,B,C
420 IF A+B+C=0 THEN 580
430 ON OPER GOTO 660,680,700,720
440 N=N+1
450 IF C=ANS THEN 520
460 PRINT
470 PRINT "SORRY - WRONG ANSWER"
480 PRINT "YOUR SCORE IS NOW"
490 PRINT SCORE;"OUT OF";N
500 PRINT
510 GOTO 380
520 REM =CORRECT ANS
530 SCORE=SCORE+1
540 PRINT
550 PRINT "CORRECT-YOUR SCORE IS NOW"
560 PRINT SCORE;"OUT OF " ;N
570 GOTO 380
580 REM =FINAL SCORE
590 PCNT=INT(SCORE/N*1000)/10
600 CALL CLEAR
610 PRINT "YOUR FINAL SCORE IS ";SCORE;" OUT OF ";N
620 PRINT
630 PRINT "WHICH IS ";PCNT;" %"
640 GOTO 790
650 REM =OPERATIONS
660 ANS=A+B
670 GOTO 440
680 ANS=A-B
690 GOTO 440
700 ANS=A*B
710 GOTO 440
720 ANS=A/B
730 GOTO 440
740 REM =3 LINES
750 FOR I=1 TO 3
760 PRINT
770 NEXT I
780 RETURN
790 END
