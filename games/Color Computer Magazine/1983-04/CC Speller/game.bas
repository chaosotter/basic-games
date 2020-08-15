7 REM8 REM  TRS-80 COLOR COMPUTER9 REM  16K COLOR BASIC11 REM (EXT. BASIC NOT REQUIRED)12 REM CASSETTE TAPE RECORDER13 REM14 REM    DECEMBER 7, 198215 REM16 REM**************************20 CLEAR 102030 DIM W$(21,1):DIM N(21,3):DIM WL$(14)40 DIM WA(14):DIM SA(14,1)50 GOSUB 468055 REM INTRODUCTORY SCREEN60 CLS(0):GOSUB 502070 GOSUB 508080 PRINT@203,"cc";R3$;"speller";90 PRINT@265,"by";:POKE1291,58:PRINT@268,R3$;"lynn";R3$;"davis";100 FOR J=1 TO 5110 GOSUB 4780120 GOSUB 4790130 NEXT J140 GOSUB 5020145 REM MENU I150 CLS160 PRINT"initial menu"170 PRINT:PRINT"WHICH WOULD YOU PREFER?"180 PRINT"  1. TYPE IN YOUR OWN WORDS"190 PRINT"  2. LOAD WORDS SAVED ON TAPE"200 PRINT:PRINT"TYPE IN THE NUMBER AND PRESS"210 INPUT"THE <enter> KEY";D1220 IF D1<1 OR D1>2 THEN 150230 ON D1 GOSUB 3770,3410240 CLS250 PRINT"organizational menu"260 PRINT:PRINT"  1. PRINT WORDS ON SCREEN"270 PRINT"  2. ADD OR DELETE WORDS FROM"280 PRINT"     YOUR LIST"290 PRINT"  3. COMPUTER SELECTED RANDOM"300 PRINT"     ORDER OF WORDS"310 PRINT"  4. FINISHED WITH THIS MENU"320 PRINT:PRINT"TYPE IN THE NUMBER OF YOUR "330 INPUT"CHOICE AND PRESS <enter>";D2340 IF D2<1 OR D2>4 THEN 240350 IF D2=4 THEN 380360 ON D2 GOSUB 3570,3770,4270370 GOTO 240375 REM MENU III380 CLS390 PRINT"tape save menu"400 PRINT:PRINT"WOULD YOU LIKE TO SAVE THIS"410 PRINT"SPELLING LIST ON TAPE?"420 PRINT:PRINT"  1. YES"430 PRINT"  2. NO"440 PRINT:PRINT"TYPE IN THE NUMBER OF YOUR"450 INPUT"CHOICE AND PRESS <enter>";D3460 IF D3<1 OR D3>2 THEN 380470 IF D3=1 THEN GOSUB 4490480 CLS490 PRINT:PRINT"THE SPELLING LESSON IS NOW"500 PRINT"READY FOR STUDENT USE."510 PRINT:INPUT"PRESS <enter> TO BEGIN";Z$515 REM INTRODUCTION TO THE STUDENT520 CLS530 PRINT:PRINT"HELLO!"540 PRINT:PRINT"PLEASE TYPE IN YOUR NAME AND"550 PRINT"PRESS THE ENTER KEY."560 PRINT:INPUT NA$570 CLS:PRINT:PRINTNA$","580 PRINT"PLEASE READ AND FOLLOW ALL THE"590 PRINT"DIRECTIONS."600 PRINT:PRINT"THE COMPUTER WILL BE KEEPING"610 PRINT"TRACK OF HOW WELL YOU DO."620 PRINT:PRINT"GOOD LUCK!"630 PRINT:INPUT"PRESS ENTER WHEN READY";Z$635 REM ACTIVITY I640 F=0650 FOR NU=1 TO 20660 N(NU,2)=0:N(NU,3)=0670 IF N(NU,1)=0 THEN 690680 NEXT NU690 NU=NU-1700 IF NU<10 THEN CLS:PRINT"you do not have ten words!":SOUND 40,15:PRINT:GOTO 250710 CLS(0):F=F+1:RC=0:C2=0:C3=0:C4=0:C5=0:C6=0720 FOR X=0 TO 1730 FOR Y=1 TO 14740 WA(Y)=0750 SA(Y,X)=0760 NEXT Y,X770 FOR WO=1 TO 20780 IF N(WO,1)=F THEN 800790 NEXT WO800 RE=0:RC=RND(7)810 RE=RC*16820 R1$=CHR$(143+RE):R2$=CHR$(140+RE):R4$=CHR$(131+RE)825 REM RANDOM SELECTION OF CORRECT AND INCORRECT RESPONSES830 FOR X=1 TO 5840 RA=RND(14)850 IF WA(RA)=WO THEN 840860 WA(RA)=WO870 RB(X)=RA880 NEXT X890 FOR X=1 TO 9900 RF=RND(NU)910 IF RF=WO THEN 900920 FOR Y=1 TO 14930 IF WA(Y)=WO THEN 950940 IF WA(Y)=RF THEN 900950 NEXT Y960 FOR Z=1 TO 14970 IF WA(Z)=0 THEN WA(Z)=RF:GOTO 990980 NEXT Z990 NEXT X1000 CLS(0):PRINT@0,R1$;1010 FOR X=1 TO 30:PRINT@X,R2$;:NEXT X1020 PRINT@31,R1$;:PRINT@32,R1$;1030 PRINT@63,R1$;:PRINT@64,R1$;1040 PRINT@95,R1$;:PRINT@96,R1$;1050 FOR X=97 TO 126:PRINT@X,R4$;:NEXT X1060 PRINT@127,R1$;1070 PRINT@38,"find";R3$;"the";R3$;"five";R3$;"words";1080 PRINT@71,"that";R3$;"are";R3$;"the";R3$;"same";1090 FOR X=128 TO 415:PRINT@X,CHR$(143);:NEXT X1100 CV=01110 GOSUB 48001120 FOR X=384 TO 415:PRINT@X,CHR$(143);:NEXT X1130 FOR X=143 TO 399 STEP 32:PRINT@X,CHR$(128);:NEXT X1140 FOR X=416 TO 447:PRINT@X,R2$;:NEXT X1150 GOSUB 50301160 IF C3=5 THEN 14701170 GOSUB 50601180 INPUT A11185 REM CHECK AND CORRECT STUDENT RESPONSES1190 IF A1<1 OR A1>14 THEN 1200 ELSE 12601200 CLS(2)1210 PRINT@163,NA$;",";1220 PRINT@227,"YOUR ANSWER MUST BE BETWEEN";1230 PRINT@262,"THE NUMBERS 1 AND 14.";1240 GOSUB 50201250 GOTO 10001260 FOR X=1 TO 141270 IF A1=SA(X,0) THEN 13001280 NEXT X1290 GOTO 13301300 CLS(3):PRINT@226,"YOU ALREADY USED THAT ANSWER!";1310 GOSUB 50201320 GOTO 10001330 C2=C2+11340 SA(C2,0)=A11350 FOR X=1 TO 51360 IF A1=RB(X) THEN 14201370 NEXT X1380 N(WO,3)=N(WO,3)+11390 SA(A1,1)=21400 GOSUB 47901410 GOTO 10001420 N(WO,2)=N(WO,2)+11430 C3=C3+11440 SA(A1,1)=11450 GOSUB 47801460 GOTO 10001465 REM ACTIVITY II1470 CS=RND(7)+1:CLS(CS)1480 FOR X=1 TO 14:WL$(X)="":NEXT X1490 C2=0:C3=01500 FOR X=1 TO5:RB(X)=0:NEXT X1510 FOR X=0 TO 11520 FOR Y=1 TO 141530 SA(Y,X)=01540 NEXT Y,X1545 REM RANDOM PLACEMENT OF CORRECT AND INCORRECT REPSONSES1550 FOR X=1 TO 51560 RA=RND(14)1570 FOR Y=1 TO 51580 IF RB(Y)=RA THEN 15601590 NEXT Y1600 RB(X)=RA1610 WL$(RA)=W$(WO,1)1620 NEXT X1625 REM CREATION OF NINE INCORRECTLY SPELLED WORDS1630 FOR X=1 TO 141640 IF WL$(X)<>"" THEN 1650 ELSE GOSUB 16701650 NEXT X1660 GOTO 17701670 K=LEN(W$(WO,1))1680 L=RND(K)1690 M=RND(K)1700 WL$(X)=LEFT$(W$(WO,1),2)+MID$(W$(WO,1),M,L)+MID$(W$(WO,1),L,M)+RIGHT$(W$(WO,1),1)1710 IF LEN(W$(WO,1))<4 THEN 17401720 IF LEN(WL$(X))>LEN(W$(WO,1))+2 THEN 16801730 IF LEN(WL$(X))<LEN(W$(WO,1))-1 THEN 16801740 IF LEN(WL$(X))>13 THEN 16801750 IF WL$(X)=W$(WO,1) THEN 16801760 RETURN1770 CLS(CS)1780 PRINT@34,R3$;R3$;"find";R3$;"the";R3$;"five";R3$;"words";R3$;"that";R3$;R3$;1790 PRINT@66,R3$;R3$;R3$;"are";R3$;"spelled";R3$;"correctly";R3$;R3$;R3$;R3$;1800 FOR X=128 TO 415:PRINT@X,CHR$(143);:NEXT X1810 CV=11820 GOSUB 48001830 FOR X=143 TO 399 STEP 32:PRINT@X,CHR$(143+((CS*16)-16));:NEXT X1840 GOSUB 50301850 IF C3=5 THEN 21701860 GOSUB 50601870 INPUT A21880 IF A2<1 OR A2>14 THEN 1890 ELSE 19501890 CLS(2)1900 PRINT@163,NA$;",";1910 PRINT@227,"YOUR ANSWER MUST BE BETWEEN";1920 PRINT@262,"THE NUMBERS 1 AND 14.";1930 GOSUB 50201940 GOTO 17701950 FOR X=1 TO 141960 IF A2=SA(X,0) THEN 19901970 NEXT X1980 GOTO 20301990 CLS(3):PRINT@194,NA$;",";2000 PRINT@226,"YOU ALREADY USED THAT ANSWER!";2010 GOSUB 50202020 GOTO 17702030 C2=C2+12040 SA(C2,0)=A22050 FOR X=1 TO 52060 IF A2=RB(X) THEN 21202070 NEXT X2080 N(WO,3)=N(WO,3)+12090 SA(A2,1)=22100 GOSUB 47902110 GOTO 17702120 N(WO,2)=N(WO,2)+12130 C3=C3+12140 SA(A2,1)=12150 GOSUB 47802160 GOTO 17702165 REM ACTIVITY III2170 GOSUB 50802180 PRINT@163,NA$;",";2190 PRINT@195,"  HOW MANY SYLLABLES ARE  ";2200 PRINT@227,"  IN THE WORD THAT YOU    ";2210 FOR X=259 TO 284:PRINT@X,CHR$(143);:NEXT X2220 PRINT@259,"  HAVE BEEN WORKING ON";2230 INPUT A32240 FOR X=1 TO 3:PRINT@284+X,CHR$(G2);:NEXT X2250 IF A3=N(WO,0) THEN 2260 ELSE 23102260 N(WO,2)=N(WO,2)+12270 GOSUB 47802280 PRINT@324,"GOOD JOB, ";NA$;"!";2290 GOSUB 50202300 GOTO 24602305 REM INCORRECT ANSWER TRAP - THREE TRIES THEN ANSWER IS GIVEN2310 c4=c4+1:N(WO,3)=N(WO,3)+12320 GOSUB 47902330 IF C4>2 THEN 23802340 PRINT@321,"SORRY, ";NA$;". TRY AGAIN.";2350 GOSUB 50202360 FOR X=321 TO 351:PRINT@X,CHR$(G2);:NEXT X2370 GOTO 21902380 CLS(4)2390 PRINT@128,NA$;","2400 PRINT@160,"THE WORD YOU HAVE BEEN WORKING"2410 PRINT@192,"ON IS ";W$(W0,1);"."2420 PRINT@256,"THE WORD HAS";N(WO,0);"SYLLABLES, AND"2430 PRINT@288,"IS WRITTEN AS ";W$(WO,0);"."2440 PRINT@352,"PRESS ENTER TO CONTINUE";2450 INPUT Z$2455 REM ACTIVITY IV2460 CLS(0)2470 V1=RND(7)+12480 V2=RND(7)+12490 IF V2=V1 THEN 24802500 FOR Y=0 TO 31 STEP 42510 FOR X=0 TO 632520 SET(X,Y+1,V1)2530 IF Y+3>31 THEN 25502540 SET(X,Y+3,V2)2550 NEXT X,Y2560 FOR Y=1 TO 282570 FOR X=97 TO 257 STEP 322580 PRINT@X+Y,CHR$(143);2590 NEXT X,Y2600 FOR X=256 TO 383:PRINT@X,CHR$(143):NEXT X2610 PRINT@99,NA$;",";2620 PRINT@131,"TYPE THE WORD IN USING A";2630 PRINT@163,"'/' TO SHOW WHERE THE";2640 PRINT@195,"SYLLABLES ARE FOUND. PRESS";2650 PRINT@227,"<ENTER> WHEN YOU ARE DONE.";2660 PRINT@288,;2670 INPUT A4$2680 IF A4$=W$(WO,0) THEN 2690 ELSE 27402690 GOSUB 47802700 PRINT"VERY GOOD, ";NA$;"."2710 N(WO,2)=N(WO,2)+12720 GOSUB 50202730 GOTO 28302735 REM WRONG ANSWER TRAPS2740 GOSUB 47902750 C5=C5+1:N(WO,3)=NO(WO,3)+12760 IF C5=1 THEN PRINT"WRONG, ";NA$;".";" TRY AGAIN.":GOTO 26702770 IF C5=2 THEN PRINT"WRONG AGAIN. ONE LAST TRY.":FOR X=416 TO 447:PRINT@X,CHR$(143);:NEXT X:PRINT@416,;:INPUT A4$:GOTO 26802780 IF C5=3 THEN CLS(2)2790 PRINT@160,"YOU STILL DON'T HAVE IT CORRECT,";2800 PRINT NA$". THE WORD SHOULD"2810 PRINT"BE TYPED AS "W$(WO,0);"."2820 PRINT:INPUT"PRESS <ENTER> WHEN READY";Z$2825 REM ACTIVITY V2830 CLS2840 RK=02850 R=RND(7)+12860 RK=R*162870 G3$=CHR$(122+RK)2880 FOR X=5 TO 26:PRINT@X,G3$:NEXT X2890 FOR X=32 TO 99:PRINT@X,G3$:NEXT X2900 FOR X=124 TO 131:PRINT@X,G3$:NEXT X2910 FOR X=156 TO 159:PRINT@X,G3$:NEXT X2920 FOR X=352 TO 355:PRINT@X,G3$:NEXT X2930 FOR X=380 TO 387:PRINT@X,G3$:NEXT X2940 FOR X=412 TO 479:PRINT@X,G3$;:NEXT X2950 FOR X=485 TO 506:PRINT@X,G3$;:NEXT X2960 PRINT@101,"TYPE THE WORD, SPELLED";2970 PRINT@134,"CORRECTLY, THAT YOU";2980 PRINT@165,"HAVE BEEN WORKING ON.";2990 PRINT@192,;3000 INPUT A5$3010 IF A5$=W$(WO,1) THEN 3020 ELSE 30703020 GOSUB 47803030 PRINT"THAT'S RIGHT, ";NA$;"!";3040 N(WO,2)=N(WO,2)+13050 GOSUB 50203060 GOTO 31603065 REM WRONG ANSWER TRAPS3070 GOSUB 47903080 C6=C6+1:N(WO,3)=N(WO,3)+13090 IF C6=1 THEN PRINT"WRONG, ";NA$;". TRY AGAIN.":GOTO 30003100 IF C6=2 THEN PRINT"WRONG AGAIN. ONE LAST TRY.":GOTO 30003110 IF C6=3 THEN CLS(5)3120 PRINT@160,"YOU STILL DON'T HAVE IT CORRECT,";3130 PRINT NA$;".  THE WORD SHOULD"3140 PRINT"BE TYPED AS "W$(WO,1);"."3150 PRINT:INPUT"PRESS <ENTER> WHEN READY";Z$3155 REM PROGRESS REPORT3160 CLS:T1=0:T2=03170 PRINT"progress report for: "NA$3180 FOR X=1 TO NU3190 T1=N(X,2)+T13200 T2=N(X,3)+T23210 NEXT X3220 T3=T1+T2:T4=INT(((T1/T3)*100)+.5)3230 PRINT" FOR THE"F;:IF F=1 THEN PRINT"WORD YOU HAVE BEEN" ELSE PRINT "WORDS YOU HAVE BEEN"3240 PRINT"WORKING ON, YOU GOT"T2"WRONG"3250 PRINT"AND"T1"RIGHT ANSWERS, FOR AN"3260 PRINT"AVERAGE OF"T4"PERCENT."3270 PRINT3280 IF T4=100 THEN PRINT"you are doing perfect work!":3290 IF T4>75 AND T4=<99 THEN PRINT"YOU ARE DOING A GOOD JOB, KEEP  IT UP!"3300 IF T4=<75 THEN PRINT"YOU SHOULD CONSIDER PRACTICING  THERE WORDS AGAIN."3310 PRINT:PRINT"number of words left ="NU-F3320 PRINT:PRINT"WHICH WOULD YOU PREFER:"3330 PRINT"  1. STOP HERE"3340 PRINT"  2. START OVER"3350 IF NU-F<>0 THEN PRINT"  3. next word"3360 INPUT"TYPE AND <ENTER> THE NUMBER";AG3370 IF NU-F=0 AND AG=3 THEN 31603380 IF AG<1 OR AG>3 THEN 31603390 ON AG GOTO 3400,640,7103400 END3405 REM**TAPE LOADING SECTION**3410 CLS3420 PRINT"loading words from tape"3430 PRINT:PRINT"TYPE IN THE NAME OF THE FILE"3440 INPUT"AND PRESS <enter>";NF$3450 PRINT:PRINT"PRESS <enter> WHEN YOU ARE READY";3460 INPUT"TO LOAD THE FILE";Z$3470 CLS:PRINT"scanning for ";NF$3480 OPEN "I",#-1,NF$3490 CLS:PRINT"loading "NF$3500 FORA=1 TO 203510 INPUT #-1,W$(A,0),W$(A,1),N(A,0),N(A,1)3520 NEXT A3530 CLOSE #-13540 CLS:PRINT"file is ready"3550 GOSUB 50203560 RETURN3565 REM SCREEN PRINT SPELLING  WORDS3570 CLS3580 FOR WN=1 TO 203590 IF N(WN,1)=0 THEN 36103600 NEXT WN3610 PRINT@43,"word list"3620 PRINT3630 Q=63:W=79:F1=03640 F1=F1+13650 FOR Y=1 TO 203660 IF N(Y,1)=F1 THEN 36903670 NEXT Y3680 GOTO 37503690 F1$=STR$(F1)3700 IF F1>10 THEN 37303710 Q=Q+323720 PRINT@Q,F1$;".";W$(Y,1);:GOTO 36403730 W=W+323740 PRINT@W,F1$;".";W$(Y,1);:GOTO 36403750 PRINT@448,;:INPUT"PRESS <ENTER> FOR MENU";Z$3760 RETURN3765 REM ADD OR DELTE WORDS3770 CLS3780 PRINT"add or delete spelling words"3790 FOR WD=1 TO 203800 IF W$(WD,0)="" THEN 38203810 NEXT WD3820 PRINT:PRINT"DIRECTIONS:"3830 PRINT:PRINT"<enter> : A -TO ADD A WORD"3840 PRINT"          D -TO DELETE A WORD"3850 PRINT"          F -IF FINISHED"3860 PRINT:INPUT"<A OR D OR F>";AD$3870 IF AD$="A" THEN 39103880 IF AD$="D" THEN 41103890 IF AD$="F" THEN RETURN3900 GOTO 37703910 PRINT:PRINT"adding word:"WD3920 IF WD>20 THEN PRINT:PRINT"2O word maximum":GOSUB 50203930 IF WD>20 THEN GOTO 37703940 PRINT:PRINT"TYPE IN THE WORD BY SYLLABLES,"3950 PRINT"I.E. AD/VER/TISE, AND THEN"3960 INPUT"PRESS <enter>";W$(WD,0)3970 N(WD,1)=WD3980 L=LEN(W$(WD,0))3990 C=1:J=04000 FOR Y=1 TO L4010 IF MID$(W$(WD,0),Y,1)="/" THEN C=C+14020 IF MID$(W$(WD,0),Y,1)<>"/" THEN J=J+1:WL$(J)=MID$(W$(WD,0),Y,1)4030 NEXT Y4040 N(WD,0)=C4050 FOR Y=1 TO J4060 W$(WD,1)=W$(WD,1)+WL$(Y)4070 NEXT Y4080 L1=LEN(W$(WD,1)):IF L1>13 THEN 4090 ELSE 41004090 SOUND 40,8:PRINT"word has more than 13 letters!":FOR X=1 TO 2000:NEXT X:W$(WD,0)="":W$(WD,1)=""4100 GOTO 37704110 PRINT:PRINT"delete a word:"4120 PRINT:PRINT"TYPE IN THE WORD, WITHOUT"4130 PRINT"SYLLABLES, YOU WISH TO DELETE."4140 INPUT DW$4150 FOR X=1 TO 204160 IF W$(X,1)=DW$ THEN 42004170 IF X=20 THEN CLS:SOUND 40,8:PRINT:PRINT"THE WORD "DW$4180 IF X=20 THEN PRINT"IS NOT IN YOUR LIST.":FOR Z=1 TO 2000:NEXT Z:GOTO 37704190 NEXT X4200 FOR B=1 TO WD-14210 IF N(B,1)>N(X,1) THEN N(B,1)=N(B,1)-14220 NEXT B4230 FOR CW=X TO WD-14240 W$(CW,0)=W$(CW+1,0):W$(CW,1)=W$(CW+1,1):N(CW,0)=N(CW+1,0):N(CW,1)=N(CW+1,1)4250 NEXT CW4260 GOTO 37704265 REM COMPUTER SELECTED RANDOM ORDER4270 CLS4280 FOR WN=1 TO 204290 IF W$(WN,0)="" THEN 43104300 NEXT WN4310 WN=WN-14320 PRINT"COMPUTER SELECTED RANDOM ORDER"4330 PRINT@105,WN;"total words"4340 PRINT@160+WN,CHR$(175);4350 FOR Z=1 TO WN4360 N(Z,1)=04370 NEXT Z4380 FOR X=1 TO WN4390 R=RND(WN)4400 N(X,1)=R4410 FOR Y=1 TO X4420 IF X=Y THEN 44504430 IF N(X,1)=N(Y,1) THEN 43904440 NEXT Y4450 PRINT@X+159,CHR$(255);4460 NEXT X4470 GOSUB 50204480 RETURN4485 REM TAPE STORAGE SECTION4490 CLS4500 PRINT"TAPE STORAGE OF SPELLING LIST"4510 PRINT:PRINT"TYPE IN THE NAME OF THE FILE"4520 PRINT"AND PRESS THE <enter> KEY."4530 PRINT:INPUT"<enter> NAME";NF$4540 CLS4550 PRINT:PRINT"PRESS <enter> WHEN YOU ARE READY";4560 INPUT"TO RECORD THE FILE";Z$4570 CLS:PRINT"saving information on tape"4580 OPEN"O",#-1,NF$4590 FOR A=1 TO 204600 PRINT#-1,W$(A,0),W$(A,1),N(A,0),N(A,1)4610 NEXT A4620 CLOSE #-14630 CLS:PRINT"FILE SAVED UNDER NAME ";NF$4640 PRINT:PRINT"WOULD YOU LIKE A BACK-UP FILE"4650 PRINT"TYPE <Y OR N> AND PRESS THE"4660 INPUT"<enter> KEY";D$4670 IF D$="Y" THEN 4490 ELSE RETURN4675 REM STRING GRAPHICS4680 R5$=CHR$(175)+CHR$(175)+CHR$(175)+CHR$(175)4690 R3$=CHR$(128)4700 FOR X=1 TO 54710 R6$=CHR$(191)+R6$4720 R7$=CHR$(175)+R7$4730 NEXT X4740 FOR X=1 TO 64750 R8$=CHR$(191)+R8$4760 NEXT X4770 RETURN4775 REM SOUNDS FOR CORRECT AND INCORRECT RESPONSES4780 SOUND150,5:SOUND200,3:RETURN4790 SOUND100,3:SOUND50,5:RETURN4795 REM PRINT ROUTINES FOR ACTIVITIES I AND II4800 PN=127:PP=1444810 FOR X=1 TO 74820 PN=PN+324830 X$=STR$(X)4840 IF SA(X,1)=0 AND CV=0 THEN PRINT@PN,X$;".";W$(WA(X),1);4850 IF SA(X,1)=0 AND CV=1 THEN PRINT@PN,X$;".";WL$(X);4860 IF SA(X,1)=1 THEN PRINT@PN+1,R5$;"correct";R5$;4870 IF SA(X,1)=2 THEN PRINT@PN+1,R6$;"wrong";R6$;4880 NEXT X4890 FOR X=8 TO 144900 X$=STR$(X)4910 PP=PP+324920 IF SA(X,1)=0 AND X<=9 AND CV=0 THEN PRINT@PP,X$;".";W$(WA(X),1);4930 IF SA(X,1)=0 AND X<=9 AND CV=1 THEN PRINT@PP,X$;".";WL$(X);4940 IF SA(X,1)=1 AND X<=9 THEN PRINT@PP,R7$;"correct";R5$;4950 IF SA(X,1)=2 AND X<=9 THEN PRINT@PP,R8$;"wrong";R6$;4960 IF SA(X,1)=0 AND X>9 AND CV=0 THEN PRINT@PP-1,X$;".";W$(WA(X),1);4970 IF SA(X,1)=0 AND X>9 AND CV=1 THEN PRINT@PP-1,X$;".";WL$(X);4980 IF SA(X,1)=1 AND X>9 THEN PRINT@PP,R7$;"correct";R5$;4990 IF SA(X,1)=2 AND X>9 THEN PRINT@PP,R8$;"wrong";R6$;5000 NEXT X5010 RETURN5015 REM TIMER5020 FOR X=1 TO 1800:NEXT X:RETURN5025 REM REPORT TO STUDENT FOR  ACTIVITIES I AND II5030 IF C3=5 THEN PRINT@450,NA$;",";5040 IF C3=5 THEN PRINT@482,"YOU GOT";C3;"RIGHT AND";C2-C3;"WRONG";:FOR X=1 TO 2000:NEXT X5050 RETURN5055 REM DIRECTIONS FOR ACTIVITIES I AND II5060 PRINT@449,"type";R3$;"one";R3$;"number";R3$;"and";R3$;"enter";5070 RETURN5075 REM INTRODUCTION SCREEN AND ACTIVITY III GRAPHICS5080 CLS(0)5090 G2=RND(7)+9:G2=(G2*16)-15100 M1=1023:M2=15365110 M1=M1+1:M2=M2-15120 G1=RND(7)+95130 G1=(G1*16)-105140 IF M1<1152 THEN POKE M1,G1 ELSE POKE M1,G25150 IF M1<1152 THEN POKE M2,G1 ELSE POKE M2,G25160 IF M1<1279 THEN 51105170 RETURN