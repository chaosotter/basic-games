10 REM Chairman of the Board
20 GOSUB 1670: REM initialise
30 WE = WE + 1
40 GOSUB 930: REM report
50 GOSUB 1300: REM staff
60 GOSUB 930: REM report
70 GOSUB 1130: REM production
80 GOSUB 930: REM report
90 GOSUB 730: REM sales
100 GOSUB 140: REM problems
110 CA = CA - WA * WO - RC
120 GOTO 30
130 REM ********************
140 REM Problems
150 CLS: COLOR 15
160 IF RND < .45 THEN 260
170 A = INT(RND * 7) + 1
180 PRINT: PRINT: PRINT
190 PRINT "The unions are demanding a pay rise of";: COLOR 11: PRINT STR$(A); "%";: COLOR 15: PRINT "."
210 WA = INT(100 * (WA + WA * A / 100)) / 100
220 GOSUB 1840
230 WA$ = STR$(WA): WA$ = RIGHT$(WA$, LEN(WA$) - 1)
235 PRINT: PRINT "Pay per employee is now ";: COLOR 11: PRINT "$"; WA$;: COLOR 15: PRINT "."
240 GOSUB 1840
250 CLS
260 IF RND < .81 THEN 410
270 PRINT: PRINT: PRINT
280 PRINT "A fire in your warehouse has destroyed some stock.  Please stand by for a"
290 PRINT "report on the damage caused..."
320 GOSUB 1840
330 A = INT(RND * ST / 2) + 1
340 ST = ST - A
350 PRINT: PRINT "There were";: COLOR 11: PRINT A;: COLOR 15: PRINT A$; " destroyed."
355 SP$ = STR$(A * SP): SP$ = RIGHT$(SP$, LEN(SP$) - 1)
360 PRINT "They were worth ";: COLOR 11: PRINT "$"; SP$;: COLOR 15: PRINT " retail."
380 GOSUB 1840
390 PRINT "Stock in hand is now";: COLOR 11: PRINT ST;: COLOR 15: PRINT A$; "."
410 IF RND > .3 THEN 560
420 CLS
430 PRINT: PRINT: PRINT
440 PRINT "Your main supplier has announced a dramatic price rise..."
460 GOSUB 1840
470 A = INT(RND * 100 * CO / 7) / 100
480 IF A < .01 THEN 470
490 AR$ = STR$(A): AR$ = RIGHT$(AR$, LEN(AR$) - 1)
500 PRINT: PRINT "The cost of making "; A$; " has risen by ";: COLOR 11: PRINT "$"; AR$;: COLOR 15: PRINT " each."
510 GOSUB 1840
520 CO = CO + A
525 CO$ = STR$(CO): CO$ = RIGHT$(CO$, LEN(CO$) - 1)
530 PRINT: PRINT "It now costs ";: COLOR 11: PRINT "$"; CO;: COLOR 15: PRINT " to make each one..."
550 GOSUB 1840
560 IF RND < .65 AND MA < SP THEN RETURN
570 CLS
580 PRINT: PRINT: PRINT
590 PRINT "You have a chance to raise your price.  Your "; A$; " now sell for ";
600 SP$ = STR$(SP): SP$ = RIGHT$(SP$, LEN(SP$) - 1): COLOR 11: PRINT "$"; SP$;: COLOR 15: PRINT "."
620 GOSUB 1840
630 PRINT
640 COLOR 10: INPUT "What percentage increase would you like to impose"; A: COLOR 15
660 RE = RE + A
670 SP = INT(100 * (SP + A * SP / 100)) / 100
680 GOSUB 1840
690 PRINT: PRINT "The "; A$; " now sell for ";
695 SP$ = STR$(SP): SP$ = RIGHT$(SP$, LEN(SP$) - 1): COLOR 11: PRINT "$"; SP$;: COLOR 15: PRINT "."
700 GOSUB 1840
710 RETURN
720 REM ********************
730 REM Sales
740 PRINT: PRINT "Your total stock of "; A$; " is";: COLOR 11: PRINT STR$(ST);: COLOR 15: PRINT "."
760 GOSUB 1840
770 PRINT: PRINT "Please stand by for a sales report..."
790 A = INT(RND * ST / (RE / 1000)) + 1
800 IF A > ST THEN 790
810 CLS
820 PRINT: PRINT: PRINT
830 PRINT "The total number of "; A$; " sold is ";: COLOR 11: PRINT STR$(A);: COLOR 15: PRINT "."
850 ST = ST - A
860 ZA = A * SP
870 PRINT: PRINT "The income from that sale was ";
880 ZA$ = STR$(ZA): ZA$ = RIGHT$(ZA$, LEN(ZA$) - 1): COLOR 11: PRINT "$"; ZA$;: COLOR 15: PRINT "."
890 CA = INT(A * SP * 100) / 100 + CA
900 GOSUB 1840
910 RETURN
920 REM ********************
930 REM Report to the Chairman
940 CLS: COLOR 15
950 IF CA + ST < 1 THEN 1510: REM Bankruptcy
960 IF CA + ST > 9999 THEN PRINT "You've made $10,000 and can now retire...": GOSUB 1840: GOTO 1590
970 PRINT: PRINT "Shop floor report, sir, for ";: COLOR 12: PRINT "week"; STR$(WE); ".": COLOR 15
980 CA$ = STR$(INT(CA * 100) / 100): CA$ = RIGHT$(CA$, LEN(CA$) - 1)
990 PRINT: PRINT "Capital in hand is ";: COLOR 11: PRINT "$"; CA$;: COLOR 15: PRINT "."
995 RC$ = STR$(RC): RC$ = RIGHT$(RC$, LEN(RC$) - 1)
1000 PRINT "Running costs are ";: COLOR 11: PRINT "$"; RC$;: COLOR 15: PRINT " a week."
1005 SP$ = STR$(INT(ST * SP * 100) / 100): SP$ = RIGHT$(SP$, LEN(SP$) - 1)
1010 PRINT: PRINT "Your stores hold";: COLOR 11: PRINT ST;: COLOR 15: PRINT A$;
1020 PRINT " worth ";: COLOR 11: PRINT "$"; SP$;: COLOR 15: PRINT "."
1025 SP$ = STR$(SP): SP$ = RIGHT$(SP$, LEN(SP$) - 1)
1026 CO$ = STR$(CO): CO$ = RIGHT$(CO$, LEN(CO$) - 1)
1030 PRINT: PRINT "They sell for ";: COLOR 11: PRINT "$"; SP$;: COLOR 15: PRINT " each";
1040 PRINT " and cost ";: COLOR 11: PRINT "$"; CO$;: COLOR 15: PRINT " each to make."
1050 PRINT: PRINT "Your workforce is now";: COLOR 11: PRINT STR$(WO);: COLOR 15: PRINT " strong, and you are";
1060 WA$ = STR$(WA): WA$ = RIGHT$(WA$, LEN(WA$) - 1)
1070 PRINT " paying them ";: COLOR 11: PRINT "$"; WA$;: COLOR 15: PRINT " each,"
1075 WA$ = STR$(WA * WO): WA$ = RIGHT$(WA$, LEN(WA$) - 1)
1080 PRINT "so the wages bill this week is ";: COLOR 11: PRINT "$"; WA$;: COLOR 15: PRINT "."
1090 PRINT: PRINT "Each person can make";: COLOR 11: PRINT PR;: COLOR 15
1100 PRINT A$; " a week, a total output of";: COLOR 11: PRINT STR$(PR * WO);: COLOR 15: PRINT "."
1120 RETURN
1130 PRINT: COLOR 10: INPUT "How many do you wish to produce"; MA: COLOR 15
1140 IF MA = 0 THEN RETURN
1150 PRINT
1160 IF MA * CO > CA THEN PRINT "You do not have enough money.": GOTO 1130
1170 IF MA > PR * WO THEN PRINT "You do not have enough people in your workforce to make that many.": GOTO 1130
1180 PRINT "Yes sir... the target for week"; WE; "is"; MA; A$; "."
1200 MA = INT(MA - RND * MA / 5)
1210 GOSUB 1840
1220 PRINT: PRINT "The number of "; A$; " actually produced in week"; WE; "was"; STR$(MA); "..."
1250 ST = ST + MA
1260 CA = CA - CO * MA
1270 GOSUB 1840
1280 RETURN
1290 REM ****************************
1300 REM Staff
1310 PRINT: COLOR 10: INPUT "How many people do you want to hire"; A: COLOR 15
1330 WO = WO + A
1340 PRINT: PRINT "The total workforce is now"; WO; "strong."
1360 GOSUB 1840
1370 IF A > 0 THEN RETURN
1380 GOSUB 930
1390 PRINT: COLOR 10: INPUT "How many people do you wish to fire"; A: COLOR 15
1410 IF A = 0 THEN 1480
1420 IF A > WO THEN 1390
1430 A = INT(RND * A + 1)
1440 GOSUB 1840
1450 PRINT: PRINT "The unions will allow you to get rid of "; STR$(A); "."
1470 WO = WO - A
1480 GOSUB 1840
1490 RETURN
1500 REM *******************************
1510 REM The Bottom Line!
1520 PRINT: PRINT "You're bankrupt!"
1530 GOSUB 1840
1540 PRINT: PRINT "Oh, the shame of it!"
1550 GOSUB 1840
1560 PRINT: PRINT "Still, you kept the business going for"; WE; "weeks."
1580 GOSUB 1840
1590 PRINT "Enter 'Y' for another stint as Chairman of the Board..."
1610 PRINT "(or 'N' if you want to quit)"
1620 A$ = INKEY$
1630 IF A$ = "" THEN 1620
1640 IF A$ = "Y" OR A$ = "y" THEN RUN
1650 END
1660 REM *****************************
1670 REM Initialise
1680 RANDOMIZE VAL(RIGHT$(TIME$, 2))
1690 FOR Z = 1 TO RND * 8 + 1
1700 READ A$
1710 NEXT Z
1720 CA = 500 + INT(RND * 500)
1730 ST = 100 + INT(RND * 500)
1740 SP = 10 + INT(RND * 5)
1750 CO = 7 + INT(RND * 5)
1760 IF CO > SP THEN 1750
1770 WO = 7 + INT(RND * 10)
1780 WA = 12 + INT(RND * SP)
1790 PR = 5 + INT(RND * 6)
1800 RC = 100 + INT(RND * 20)
1810 WE = 0
1820 RE = 1: REM RE is sales resistance factor
1830 RETURN
1840 REM delay subroutine
1850 XX = 1.5: GOSUB 2000: RETURN
1860 DATA "eponyms","bicycles","harmonicas"
1870 DATA "kazoos","lecterns","moleskins"
1880 DATA "carpetbags","pith helmets","sky hooks"
1890 DATA "barbells"
2000 ZZ = TIMER + XX
2010 IF TIMER < ZZ THEN 2010
2020 RETURN

