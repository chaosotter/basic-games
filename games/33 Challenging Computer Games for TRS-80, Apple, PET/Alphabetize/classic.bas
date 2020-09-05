10 DIM Q$(11), W$(11)
20 RANDOMIZE TIMER
1000 CLS: PRINT TAB(20); "***** ALPHABETIZE *****"
1010 R = 1: TW = 0: PRINT
1020 PRINT "ARE INSTRUCTIONS REQUIRED?";
1030 INPUT I$
1040 IF RIGHT$(I$, 1) <> "S" THEN CLS: PRINT: GOTO 1090
1045 PRINT
1050 PRINT "THIS IS THE GAME OF ALPHABETIZE, WHERE ALL YOU"
1060 PRINT "HAVE TO DO IS ARRANGE A GIVEN LIST OF WORDS IN"
1070 PRINT "ALPHABETICAL ORDER, SOUNDS SIMPLE YOU SAY?"
1080 PRINT "LET'S TRY IT."
1085 FOR I = 1 TO 3500: NEXT: PRINT: PRINT
1090 REM GET FIRST SET OF WORDS
1100 FOR I = 1 TO 10: READ W$(I): NEXT
1110 DATA HELLO,HELP,AFTER,MODULE,MODULAR,SUSPENSE,MR.,MRS.,BETA,BET
1120 REM NOW ALPHABETIZE THEM BY NUMBER
1130 FOR I = 1 TO 10: READ N(I): NEXT
1140 DATA 3,10,9,1,2,5,4,7,8,6
1150 REM SET COUNTERS FOR ROUND
1160 W = 10: WT = (W + WT)
1170 PRINT "INPUT THE WORDS IN THEIR CORRECT ORDER BY"
1180 PRINT "NUMBER ONLY."
1185 IF R > 1 THEN 1200
1190 PRINT "EXAMPLE: "; W$(3); " WOULD BE THE FIRST WORD SO"
1195 PRINT "INPUT #3, ETC."
1200 PRINT: REM LIST THE WORDS
1210 I = 1: U = 2: P = 5
1215 PRINT TAB(P - 5); I; W$(I); TAB(P * 2 + P); U; W$(U)
1220 I = U + 1: U = I + 1: IF U <> 12 THEN 1215
1260 REM INPUT THE LIST / CHECK IF CORRECT
1270 PRINT "INPUT YOUR ALPHABETIZED LIST (BY NUMBER ONLY)"
1280 FOR I = 1 TO 10
1290 INPUT W(I)
1295 Q$ = W$(N(I))
1300 IF W(I) <> N(I) THEN 1320
1310 NEXT: R = R + 1: PRINT: GOTO 1340
1320 PRINT TAB(P * 3); "NOT CORRECT !!"
1330 W = W - 1: TW = TW + 1: GOTO 1310
1340 IF W = 10 THEN 1370
1350 IF W >= 7 THEN 1400
1360 IF W < 7 THEN 1430
1370 PRINT "THAT'S EXCELLENT, ALL"; W; "WORDS IN THEIR CORRECT ORDER."
1380 PRINT "MUST'VE BEEN TOO EASY...."
1390 PRINT "PRESS A KEY....": GOSUB 2000: GOTO 1460: REM NEXT ROUND
1400 PRINT "THAT'S NOT BAD, "; W; "OUT OF A POSSIBLE 10."
1410 IF R <= 3 THEN PRINT "IT'LL BE HARDER NEXT ROUND. "
1420 GOTO 1390
1430 PRINT "THAT SCORE DOESN'T EVEN DESERVE AN HONORABLE MENTION !!"
1440 PRINT "ONLY"; W; "WORDS CORRECT !! OUT OF A POSSIBLE 10 !!"
1450 GOTO 1390
1460 REM USE SAME STRING
1470 IF R = 3 GOTO 1560: REM BRANCH TO ROUND #3
1475 IF R = 4 GOTO 1700: REM STOP / CONT LOOP
1480 REM GET 10 MORE WORDS
1490 FOR I = 1 TO 10: READ W$(I): NEXT
1500 DATA WENT,DOZE,CALIFORNIA,SAMOLA,CALLAO,RESPIRATOR
1510 DATA RESPOND,COMPUTER,COMPUTE,ZOOLOGY
1520 REM ALPHABETIZE BY NUMBER
1530 FOR I = 1 TO 10: READ N(I): NEXT
1540 DATA 3,5,9,8,2,6,7,4,1,10
1550 GOTO 1150
1560 PRINT: PRINT "THIS WILL BE YOUR THIRD AND FINAL ROUND."
1570 REM GET FINAL SET OF WORDS
1580 FOR I = 1 TO 10: READ W$(I): NEXT
1590 DATA ZEPHYR,ZEPPELIN,ZENER,ZAP,WITTY,BROUGHT,BOUGHT
1600 DATA LESSON,TRADE,RESTRAIN
1610 REM ALPHABETIZE
1620 FOR I = 1 TO 10: READ N(I): NEXT
1630 DATA 7,6,8,10,9,5,4,3,1,2
1640 GOTO 1150
1700 REM FINAL MESSAGE
1710 TS = (WT - TW): REM TOTAL SCORE
1715 PRINT: PRINT
1720 IF TS <= 15 THEN 1820
1730 IF TS > 15 AND TS < 20 THEN 1800
1740 IF TS > 20 AND TS < 25 THEN 1780
1750 PRINT
1760 PRINT "THAT'S REALLY A GOOD SCORE, GOING THAT FAR THOUGH,"
1770 PRINT "YOU PROBABLY COULD'VE GOTTEN ALL OF THEM CORRECT."
1775 GOTO 1850
1780 PRINT "I KNOW YOU COULD'VE MADE A BETTER SCORE THAN"; TS
1790 PRINT "CORRECT. THAT'S NOT BAD THOUGH...."
1795 GOTO 1850
1800 PRINT "HOW FAR DID YOU SAY YOU WENT THROUGH SCHOOL ?"
1810 PRINT "OH I SEE, YOU'RE ONLY IN THE THIRD GRADE !!"
1815 GOTO 1850
1820 PRINT "ONLY"; TS; "RIGHT, OUT OF"; WT; ". WHY DON'T YOU SEE IF"
1830 PRINT "YOU CAN GET YOUR FIRST, MIDDLE AND LAST NAME IN"
1840 PRINT "ALPHABETICAL ORDER. THEN TRY THIS PROGRAM AGAIN !!"
1845 GOTO 1875
1850 PRINT: PRINT "WOULD YOU LIKE TO RUN THIS PROGRAM AGAIN";
1860 INPUT I$
1870 IF RIGHT$(I$, 1) = "S" THEN RESTORE: GOTO 1000
1875 PRINT "SEE YA NEXT TIME I!"
1900 END
2000 A$ = INKEY$: IF A$ = "" THEN 2000
2010 CLS: RETURN

