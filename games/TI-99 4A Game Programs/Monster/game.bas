100 REM MONSTER
110 REM COPYRIGHT FREDERICK HOLTZ AND ASSOCIATES 2/23/83
120 REM PROGRAM RUNS IN TI BASIC
130 CALL CLEAR
140 GOSUB 690
150 DIM A(100)
160 I=0 
170 RANDOMIZE
180 CALL CLEAR
190 CALL COLOR(1,3,7)
200 RN = INT(RND*9) + 1
210 A$ = "FFFFFFFFFFFFFFFF"
220 B$ = "0000000000000000"
230 CALL CHAR(33,A$)
240 CALL CHAR(34,B$)
250 CALL CLEAR
260 FOR X = 8 TO 24 STEP 2
270 CALL HCHAR(8,X,33)
280 FOR II = 1 TO 10
290 IF A(II)  = 0 THEN 320
300 CALL HCHAR(8,A(II)*2+6,34)
310 NEXT II
320 NEXT X
330 FOR Y = 8 TO 24 STEP 2
340 CALL HCHAR(6,Y,(Y/2)+45)
350 NEXT Y
360 I=I+1
370 INPUT "WHICH NUMBER?":A(I)
380 IF A(I) <= 0 THEN 370
390 IF A(I) > 9 THEN 370
400 IF A(I) = RN THEN 420
410 GOTO 250
420 CALL CLEAR
430 CALL COLOR(1,5,2)
440 CALL SOUND(4200,-3,0)
450 CALL HCHAR(8,8,33,16)
460 CALL VCHAR(8,8,33,12)
470 CALL HCHAR(20,8,33,17)
480 CALL VCHAR(8,24,33,12)
490 CALL HCHAR(12,12,33,2)
500 CALL HCHAR(12,20,33,2)
510 CALL VCHAR(13,16,33,2)
520 CALL VCHAR(13,17,33,2)
530 CALL HCHAR(17,12,33,9)
540 CALL VCHAR(17,12,33,2)
550 CALL VCHAR(17,21,33,2)
560 FOR II = 1 TO 100
570 A(II) = 0 
580 NEXT II
590 FOR TD = 0 TO 1200
600 NEXT TD
610 CALL CLEAR
620 I = INT(I/9*100)
630 IF I<15 THEN 640 ELSE 650
640 I = 0
650 PRINT "YOUR SCORE IS ";I
660 I = 0
670 INPUT "PRESS ENTER TO PLAY AGAIN":A$
680 GOTO 150
690 PRINT "WELCOME TO THE GAME CALLED"
700 PRINT "MONSTER.  THIS IS A GAME"
710 PRINT "OF CHANCE IN WHICH YOU"
720 PRINT "MUST LOOK BEHIND DOORS,"
730 PRINT "HOPING THE MONSTER IS NOT"
740 PRINT "THERE.  SIMPLY TYPE IN THE"
750 PRINT "NUMBER OF THE DOOR YOU"
760 PRINT "WISH TO OPEN.  YOU HAVE"
770 PRINT "A ONE IN NINE CHANCE OF"
780 PRINT "OPENING THE ONE WITH THE"
790 PRINT "MONSTER BEHIND IT LAST."
800 PRINT "WHEN THIS OCCURS, YOU HAVE"
810 PRINT "BEATEN THE COMPUTER!"
820 PRINT "GOOD LUCK!!!"
830 PRINT
840 PRINT
850 PRINT "PRESS ENTER TO PLAY"
860 INPUT A$
870 RETURN
