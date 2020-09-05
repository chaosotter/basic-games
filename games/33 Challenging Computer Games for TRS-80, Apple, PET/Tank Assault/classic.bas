10 CLS
20 REM IF YOU HAVE TROUBLE HITTING THE TARGET
30 REM TRY SOME MULTIPLICATION USING THE FACTOR
40 REM OF COURSE YOU SHOULD FIGURE THAT OUT BY
50 REM YOURSELF
60 PRINT: PRINT TAB(15); "*** TANK ASSAULT ***"
62 PRINT: PRINT: RANDOMIZE TIMER
65 PRINT TAB(10); "DO YOU NEED INSTRUCTIONS PRINTED";: INPUT A$
68 IF RIGHT$(A$, 1) = "0" THEN CLS: GOTO 200
70 PRINT: PRINT "THIS IS THE GAME OF TANK ASSAULT IN WHICH YOU"
80 PRINT "AND THE ENEMY (YOUR COMPUTER) WILL BATTLE ONE"
90 PRINT "ANOTHER. BEFORE YOU FIRE A SHELL YOU'LL INPUT"
100 PRINT "THE DEGREES TO WHICH YOUR CANNON WILL BE SET."
110 PRINT "AFTER YOU FIRE (IF YOU MISS) THE COMPUTER WILL FIRE"
120 PRINT "AT YOUR TANK. YOU'LL BOTH START WITH AT LEAST 20"
130 PRINT "SHELLS. IF THE RANDOM TARGET SELECTED IS NOT"
140 PRINT "AN ENEMY TANK, HAVE NO FEAR; THE COMPUTER'S TANK"
150 PRINT "WILL STILL FIRE AT YOURS."
160 PRINT "PRESS ANY KEY TO BEGIN ASSAULT."
170 A$ = INKEY$: IF A$ = "" THEN 170
180 CLS
200 REM GET DISTANCE TO TARGET
205 D = INT(1000 * RND(1) + 500): IF D < 1000 THEN 205
210 REM GET NAME OF ENEMY TANK
220 FOR I = 1 TO 3: READ T$(I): NEXT: N = 1: L = 0
230 DATA ASSAULT III,PANTHER,ARMOR PLATED
240 TA$ = T$(INT(4 * RND(1))): IF TA$ = "" THEN 240
250 REM GET ENEMY SHELLS
260 ES = INT(20 * RND(1) + 10): IF ES < 20 THEN 260
270 REM GET OTHER ENEMY TARGET
280 FOR I = 1 TO 4: READ P$(I): NEXT
290 DATA FACTORY,ENEMY HIDEOUT,MOTOR POOL,BRIDGE
300 PL$ = P$(INT(4 * RND(1))): IF PL$ = "" THEN 300
305 IF R = 1 GOTO 330
310 REM GET YOUR SHELLS
320 YS = INT(20 * RND(1) + 10): IF YS < 20 THEN 320
330 REM NOW SET ENEMY TANK OR OTHER TARGET
335 IF M = 1 GOTO 370
340 I = INT(2 * RND(1) + 1): ON I GOTO 350, 360
350 PRINT: PRINT "YOU'RE GOING TO BATTLE A "; TA$; " TANK.": GOTO 370
360 PRINT: PRINT "TARGET FOR THIS ROUND IS THE "; PL$
370 PRINT "DISTANCE TO ENEMY IS"; D; "YARDS."
375 IF BB = 1 GOTO 420
380 PRINT "YOU HAVE"; YS; "SHELLS TO GET YOUR TARGET."
390 REM THRUST FACTOR FOR EACH SHELL
400 TF = INT(50 * RND(1) + 15)
410 IF TF < 30 THEN 400
420 PRINT "THRUST FACTOR FOR EACH SHELL IS"; TF; "FT. P.S.I."
430 PRINT "THE ANGLE OF YOUR CANNON CAN BE"
440 PRINT "BETWEEN 0 AND 45 DEGREES....."
450 REM GET DEGREES
460 PRINT: PRINT "SET DEGREES OF CANNON";
470 INPUT DG
480 IF DG < 0 OR DG > 45 THEN PRINT "KEEP WITHIN RANGE OF CANNON !!": GOTO 460
490 YS = YS - 1: BB = 1: QQ = DG * TF
495 IF YS < 1 THEN 940
500 IF QQ = D THEN 530
510 IF QQ < D - 50 THEN 540
520 IF QQ > D + 50 THEN 550
530 BB = 0: GOTO 820
535 RESTORE: FOR I = 1 TO 2000: NEXT: PRINT: GOTO 200
540 PRINT "YOU UNDERSHOT YOUR TARGET, WASTED A SHELL.": GOTO 560
550 PRINT "YOU OVERSHOT THE TARGET....."
560 PRINT: PRINT "NOW IT'S MY TURN...."
570 ES = ES - 1: FOR I = 1 TO 1500: NEXT: M = 1: R = 1
575 IF ES < 1 THEN 970
580 ET = TF * RND(1)
590 EQ = INT(ET * TF): IF EQ < QQ - 100 OR EQ > QQ + 100 GOTO 580
595 IF (D - EQ) > 1 AND (D - EQ) < 100 THEN 620
597 IF (EQ - D) > 1 AND (EQ - D) < 100 THEN 620
600 IF EQ < D THEN 730
610 IF EQ > D THEN 770
620 I = INT(3 * RND(1) + 1)
625 ON I GOTO 630, 660, 690
630 PRINT: PRINT "YOU'VE JUST TAKEN A DIRECT HIT TO ONE"
640 PRINT "OF YOUR TRACKS, YOUR TANK IS IMMOBILE. BUT"
650 PRINT "YOU CAN STILL FIRE."
655 GOTO 685
660 PRINT: PRINT "HOW DID YOU LIKE THAT SHOT? A DIRECT HIT"
670 PRINT "TO YOUR ENGINE COMPARTMENT, IT DIDN'T DAMAGE"
680 PRINT "YOUR TURRENT OR CANNON...": L = L + 1
683 IF L > 0 AND L < 2 THEN 1070
685 FOR I = 1 TO 2000: NEXT: GOSUB 900: GOTO 330
690 PRINT: PRINT "THAT'S IT..... YOU'RE OUT OF ACTION. I JUST"
700 PRINT "DEMOLISHED YOUR TANK... COMPLETELY !!!"
710 PRINT "NOT BAD FOR A COMPUTER CONTROLLED SHOT... HUH ??"
720 GOTO 1000
730 REM COMPUTER SHOT TOO SHORT
735 PRINT
740 PRINT "IT'S YOUR TURN AGAIN... I WASTED ANOTHER"
750 PRINT "SHELL... ";: IF N = 1 THEN PRINT "(LUCKY YOU).": N = 0
760 GOTO 685
770 REM COMPUTER SHOT TOO LONG
775 PRINT
780 PRINT "DRAT !! MY SHOT WAS TOO LONG THAT TIME. YOU"
790 PRINT "CAN BE SURE I'LL DO BETTER NEXT SHOT."
800 PRINT "IF I GET ANOTHER... SHOT."
810 GOTO 685
820 I = INT(2 * RND(1) + 1): ON I GOTO 830, 860
830 PRINT: PRINT "GOOD GOING... YOU'VE HIT THE TARGET RIGHT ON"
840 PRINT "THE BULLS EYE, NOT BAD SHOOTING....."
850 GOTO 535
860 PRINT: PRINT "HEY NOT BAD... NOT BAD AT ALL. YOU'VE "
870 PRINT "TAKEN CARE OF THAT TARGET, BUT YOU'RE NOT FINISHED"
875 PRINT "YOU STILL HAVE"; YS; "SHELLS LEFT."
880 GOTO 535
900 REM SUBTRACT DISTANCE BY RANDOM (10) YARDS
910 D = D - INT(10 * RND(1) + 1)
920 PRINT: PRINT: PRINT
930 RETURN
940 REM YOUR OUT OF SHELLS
945 PRINT
950 PRINT "SORRY MAC... YOU'RE COMPLETELY OUT OF SHELLS. YOU CAN"
960 PRINT "EITHER SURRENDER OR START OVER...."
965 GOTO 1000
970 REM ENEMY OUT OF SHELLS
975 PRINT
980 PRINT "I SURRENDER (THIS TIME). I'M OUT OF SHELLS !!"
990 PRINT "I'LL GIVE YOU ANOTHER BATTLE THOUGH."
1000 PRINT: PRINT "WOULD YOU LIKE TO TRY YOUR HAND AT THE"
1010 PRINT "CONTROLS AGAIN? I'LL EVEN GIVE YOU ANOTHER TANK.";
1020 INPUT A$
1030 IF LEFT$(A$, 1) = "Y" THEN BB = 0: M = 0: R = 0: GOTO 535
1040 PRINT
1050 PRINT "CAN'T HANDLE THE CONTINUOUS SOUND OF"
1055 PRINT "ROCKETS SAILING OVER YOUR HEAD ?"
1060 END
1070 FOR I = 1 TO 1000: NEXT
1080 PRINT "YOU HAVE A FIRE STARTING IN YOUR ENGINE"
1090 PRINT "NOW. WON'T BE LONG YOU'LL HAVE TO ABANDON"
1100 PRINT "THAT TANK."
1110 L = 0: GOTO 685

