100 REM SPEEDREAD/TYPE
110 REM COPYRIGHT FREDERICK HOLTZ AND ASSOCIATES 2/22/83
120 REM PROGRAM RUNS IN TI BASIC
130 CALL CLEAR
140 PRINT "THIS GAME WILL ALLOW YOU TO"
150 PRINT "PRACTICE TYPING WHILE YOU"
160 PRINT "LEARN TO READ AND COMPREHEND"
170 PRINT "SCREEN INFORMATION QUICKLY."
180 PRINT "THE SCREEN WILL DISPLAY A"
190 PRINT "PHRASE WHICH WILL DISAPPEAR"
200 PRINT "AFTER A FEW SECONDS.  FROM"
210 PRINT "MEMORY, YOU MUST THEN RETYPE"
220 PRINT "THE PHRASE EXACTLY AS IT"
230 PRINT "APPEARED.  AT THE END OF THIS"
240 PRINT "GAME, YOUR SCORE WILL BE"
250 PRINT "COMPUTED.  GOOD LUCK!!!"
260 PRINT
270 PRINT
280 PRINT "PRESS ENTER TO CONTINUE."
290 INPUT ER$
300 CALL CLEAR
310 READ A$
320 IF A$="END" THEN 930
330 PRINT A$
340 PRINT
350 PRINT
360 PRINT
370 PRINT
380 PRINT
390 PRINT
400 PRINT
410 PRINT
420 PRINT
430 FOR X=0 TO 250
440 NEXT X
450 CALL CLEAR
460 PRINT "RETYPE THE PHRASE"
470 PRINT
480 PRINT
490 INPUT AA$
500 IF AA$=A$ THEN 510 ELSE 630
510 PRINT
520 PRINT
530 PRINT
540 PRINT "THAT IS A CORRECT ANSWER"
550 PRINT
560 PRINT
570 PRINT
580 PRINT
590 S=S+1
600 PRINT "PRESS ENTER TO CONTINUE"
610 INPUT ER$
620 GOTO 300
630 PRINT "THAT IS AN INCORRECT PHRASE!"
640 PRINT
650 PRINT
660 PRINT
670 PRINT "THE CORRECT PHRASE IS-"
680 PRINT
690 PRINT
700 PRINT A$
710 PRINT
720 PRINT
730 T=T+1
740 PRINT "PRESS ENTER TO CONTINUE"
750 INPUT ER$
760 GOTO 300
770 DATA DOWN BY THE OL' MILL RUN, SEVEN SONS FOR SEVEN DARTERS, WHEN IN ROME DUE AS THE ROAMIN'S DO
780 DATA IT WAS A VERY GOOD TEAR
790 DATA STROLLING DOWN THE MAIN
800 DATA STAUNCH IS AS STAUNCH DOES
810 DATA COMPUTER ARITHMETIC IS FRAUGHT WITH LOGIC
820 DATA HE WAS BOOLEANED OF THE STAGE
830 DATA THE COMING OF THE HESPERUS WAS A SIGHT TO BEHOLD.
840 DATA YOU DID NOT SAY I COULD GO!
850 DATA FRONT THE ROYAL OAK!!!
860 DATA 9675892165;
870 DATA DOWN IN THE VALLEY OF THE FERAL DOGS.
880 DATA IS THIS THE CORRECT ADDRESS OR IS IT ELSEWHERE?
890 DATA LATCH HATCH SATCHEL MATCH
900 DATA IN THE FIRST OF THE NINTH THERE WERE NO RUNNERS ON BASE!!!
910 DATA VERY VENTURESOME VAGABONDS VEERED VOICELESSLY
920 DATA END
930 CALL CLEAR
940 PRINT "CORRECT PHRASES=";S
950 PRINT
960 PRINT
970 PRINT
980 PRINT "INCORRECT PHRASES=";T
990 END
