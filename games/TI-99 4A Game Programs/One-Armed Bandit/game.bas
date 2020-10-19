100 REM ONE ARMED BANDIT
110 REM COPYRIGHT FREDERICK HOLTZ AND ASSOCIATES 2/28/83
120 REM PROGRAM RUNS IN TI-BASIC 
130 RANDOMIZE
140 CALL COLOR(1,11,2)
150 CALL COLOR(2,10,2)
160 CALL COLOR(3,4,2)
170 CALL CLEAR
180 CALL SOUND(2400,-6,0)
190 X=INT(RND*3)+1
200 Y=INT(RND*3)+1
210 Z=INT(RND*3)+1
220 IF X=1 THEN 230 ELSE 250
230 A=34
240 GOTO 290
250 IF X=2 THEN 260 ELSE 280
260 A=40
270 GOTO 290
280 A=48
290 IF Y=1 THEN 300 ELSE 320
300 B=34
310 GOTO 360
320 IF Y=2 THEN 330 ELSE 350
330 B=40
340 GOTO 360
350 B=48
360 IF Z=1 THEN 370 ELSE 390
370 C=34
380 GOTO 440
390 IF Z=2 THEN 400 ELSE 420
400 C=40
410 GOTO 440
420 C=48
430 REM HEART
440 CALL CHAR(34,"00001C3E7F7F7F7F")
450 CALL CHAR(35,"0000387CFEFEFEFE")
460 CALL CHAR(36,"3F1F0F0703010000")
470 CALL CHAR(37,"FCF8F0E0C0B00000")
480 CALL HCHAR(9,7,A)
490 CALL HCHAR(9,8,A+1)
500 CALL HCHAR(10,7,A+2)
510 CALL HCHAR(10,8,A+3)
520 REM CHERRY
530 CALL CHAR(40,"00000000001F3F7F")
540 CALL CHAR(41,"0000060810204080")
550 CALL CHAR(42,"7F7F7F7F3F3F1F00")
560 CALL CHAR(43,"E0F0F0F0F0E0C000")
570 CALL HCHAR(9,16,B)
580 CALL HCHAR(9,17,B+1)
590 CALL HCHAR(10,16,B+2)
600 CALL HCHAR(10,17,B+3)
610 REM BAR
620 CALL CHAR(48,"00000000003F3F3F")
630 CALL CHAR(49,"0000000000FCFCFC")
640 CALL CHAR(50,"3F3F3F0000000000")
650 CALL CHAR(51,"FCFCFC0000000000")
660 CALL HCHAR(9,24,C)
670 CALL HCHAR(9,25,C+1)
680 CALL HCHAR(10,24,C+2)
690 CALL HCHAR(10,25,C+3)
700 IF X=Y THEN 710 ELSE 730
710 IF X=Z THEN 720 ELSE 730
720 PRINT "YOU WIN THE JACKPOT!!!"
730 INPUT "PRESS (ENTER) TO PLAY AGAIN":A$
740 GOTO 170