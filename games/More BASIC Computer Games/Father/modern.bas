90 CLS: COLOR 12
100 PRINT TAB(37); "Father"
110 PRINT TAB(31); "Creative Computing"
120 PRINT TAB(29); "Morristown, New Jersey"
130 PRINT: PRINT: PRINT: COLOR 15
135 RANDOMIZE TIMER
140 PRINT "Want to have a debate with your father, eh??": PRINT
150 DIM M$(2)
160 A = 2
170 M$(2) = "father"
180 COLOR 10: PRINT "Do you want instructions (Y/N)";
190 INPUT Q1$: COLOR 15
200 IF LEFT$(Q1$, 1) = "Y" OR LEFT$(Q1$, 1) = "y" THEN 220
210 GOTO 450
220 COLOR 14: PRINT
225 PRINT "You are going to play in a game in which you will discuss a program with your"
230 PRINT M$(A); " and attempt to get him to agree with you in three tries."
250 PRINT
260 PRINT "For each statement you make, I will tell you what your "; M$(A); " replied."
280 PRINT
290 PRINT "You must select your statement from one of the following six:"
310 COLOR 11: PRINT
320 PRINT "    1. Okay, I will stay home."
330 PRINT "    2. But I'd really like to go.  All my friends are going."
340 PRINT "    3. If all my work is done, I should be able to go."
350 PRINT "    4. If you let me go out, I'll babysit all next week."
360 PRINT "    5. You never let me do what I want to do."
370 PRINT "    6. I'm going anyway!"
390 PRINT: COLOR 14
400 PRINT "When a question mark appears, type the number of your response followed by a"
410 PRINT "return.  You will receive points based on how successful you are at convincing"
420 PRINT "your "; M$(A); "."
430 PRINT: COLOR 13: PRINT "(Press any key.)"
440 A$ = INKEY$: IF A$ = "" THEN 440
450 PRINT: COLOR 15
460 PRINT "The issue is that you want to go out Saturday night."
480 PRINT "Your "; M$(A); " opposed the idea."
490 PRINT
500 PRINT "When you first bring up the idea, your "; M$(A); " states:"
510 P1 = -P1
520 P3 = 2
530 P5 = -1
540 c = 1
550 P6 = -2
560 X = 0
570 I6 = 0
580 REM
590 COLOR 12: PRINT "No, you can't go out on a date Saturday night, and that's that.": COLOR 15
600 PRINT: PRINT "How would you approach your "; M$(A); "..."
610 COLOR 10: PRINT "What would you say first";: INPUT I1: COLOR 15: PRINT
620 ON I1 GOTO 720, 760, 1070, 1070, 750, 700
630 COLOR 12: PRINT "No, you cannot go out on Saturday night.": COLOR 15
640 X = X - 2: I6 = I6 + I1
650 IF I6 = I2 THEN 830
660 c = c + 1
670 IF c = 3 THEN 1040
680 IF I2 = 6 THEN 840
690 GOTO 780
700 PRINT "Your "; M$(A); " said:"
710 GOTO 630
720 PRINT "Agreement reached!"
730 X = X + P1
740 GOTO 1040
750 X = X + P5
760 PRINT "Your "; M$(A); " said:"
770 COLOR 12: PRINT "I don't think you deserve to go out Saturday night.": COLOR 15
780 COLOR 10: PRINT "What is your reply";
790 INPUT I2: COLOR 15
800 ON I2 GOTO 720, 960, 1010, 1010, 950, 700
810 PRINT "Your "; M$(A); " said:"
820 X = X + P3
830 COLOR 10: PRINT "What is your reply";
840 INPUT I3: COLOR 15: PRINT
850 ON I3 GOTO 910, 1050, 890, 890, 910, 920
860 X = X + P1
870 X = X + P1
880 GOTO 1050
890 X = X + 2
900 GOTO 1050
910 X = X - 1: GOTO 1050
920 X = X - 2
930 PRINT "Discussion ended.  No agreement reached."
940 GOTO 1040
950 X = X + P5
960 PRINT "Your "; M$(A); " said:"
970 COLOR 12: PRINT "No, I'm sorry, but you really don't deserve to go out Saturday night.": COLOR 15
990 COLOR 10: PRINT "What is your reply";: INPUT I3: COLOR 15
1000 ON I3 GOTO 720, 890, 1010, 1010, 870, 860
1010 PRINT "Your "; M$(A); " said:"
1020 X = X + P3
1030 COLOR 12: PRINT "Okay.  If you do that, you can go out Saturday night.": COLOR 15
1040 PRINT
1050 PRINT "On a scale of -7 to 4, your score was";
1055 IF X < 0 THEN PRINT " ";
1056 PRINT STR$(X); " points."
1060 GOTO 1120
1070 PRINT "Your "; M$(A); " said:"
1080 X = X + P3
1090 COLOR 12: PRINT "Well, maybe, but I don't think you should go.": COLOR 15
1100 COLOR 10: PRINT "What is your reply";: GOTO 790
1110 REM
1120 PRINT: PRINT "It is now Saturday night."
1130 COLOR 10: PRINT "Which do you do (1=Go Out, 2=Stay Home)";
1150 INPUT Q3: COLOR 15: PRINT
1160 IF Q3 > 1 THEN 1180
1170 GOTO 1220
1180 IF I2 > 1 THEN 1200
1190 GOTO 1220
1200 IF I3 < 5 THEN 1220
1210 GOTO 1230
1220 IF RND(1) > .5 THEN 1250
1230 PRINT "Your father checked up on you."
1240 GOTO 1270
1250 PRINT "You father didn't check up on you."
1260 GOTO 1270
1270 ON Q3 GOTO 1360, 1280
1280 PRINT "Your score is now";
1285 IF X < 0 THEN PRINT " ";
1286 PRINT STR$(X); " points."
1290 GOTO 1410
1300 IF I2 = 3 THEN 1330
1310 IF I2 = 4 THEN 1330
1320 GOTO 1350
1330 X = X + 1
1340 GOTO 1280
1350 ON I3 GOTO 1280, 1280, 1330, 1330, 1280, 1280
1360 IF I1 = 1 THEN 1390
1370 ON I2 GOTO 1390, 1380, 1280, 1280, 1380, 1380
1380 ON I3 GOTO 1390, 1390, 1280, 1280, 1390, 1390
1390 X = X - 1
1400 GOTO 1280
1410 ON X + 8 GOTO 1420, 1420, 1420, 1420, 1450, 1450, 1450, 1450, 1470, 1500, 1500, 1500
1420 PRINT "You didn't really succeed in changing your "; M$(A); "'s ideas at all."
1440 GOTO 1510
1450 PRINT "You didn't succeed in convincing your "; M$(A); "."
1460 GOTO 1510
1470 PRINT "Your convinced you "; M$(A); ", but it took you too many tries."
1490 GOTO 1510
1500 PRINT "Well done!"
1510 PRINT
1520 T1 = T1 + 1
1530 COLOR 10: PRINT "Would you like to try again";: INPUT Q5$: COLOR 15
1540 IF LEFT$(Q5$, 1) = "Y" OR LEFT$(Q5$, 1) = "y" THEN 500
1550 END

