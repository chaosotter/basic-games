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
150 CLS
160 IF RND < .45 THEN 260
170 A = INT(RND * 7) + 1
180 PRINT: PRINT: PRINT
190 PRINT "The unions are demanding a"
200 PRINT "pay rise of"; A; "%"
210 WA = INT(100 * (WA + WA * A / 100)) / 100
220 GOSUB 1840
230 PRINT: PRINT "Pay per employee is now $"; WA
240 GOSUB 1840
250 CLS
260 IF RND < .81 THEN 410
270 PRINT: PRINT: PRINT
280 PRINT "A fire in your warehouse has"
290 PRINT "destroyed some stock. Please"
300 PRINT "stand by for a report on"
310 PRINT "the damage caused..."
320 GOSUB 1840
330 A = INT(RND * ST / 2) + 1
340 ST = ST - A
350 PRINT: PRINT "There were"; A; A$
360 PRINT "destroyed. They were"
370 PRINT "worth $"; A * SP; "retail"
380 GOSUB 1840
390 PRINT "Stock in hand is"
400 PRINT "now"; ST; A$
410 IF RND > .3 THEN 560
420 CLS
430 PRINT: PRINT: PRINT
440 PRINT "Your main supplier has announced"
450 PRINT "a dramatic price rise..."
460 GOSUB 1840
470 A = INT(RND * 100 * CO / 7) / 100
480 IF A < .01 THEN 470
490 PRINT: PRINT "The cost of making "; A$
500 PRINT "has risen by $"; A; "each"
510 GOSUB 1840
520 CO = CO + A
530 PRINT: PRINT "It now costs $"; CO
540 PRINT "to make each one..."
550 GOSUB 1840
560 IF RND < .65 AND MA < SP THEN RETURN
570 CLS
580 PRINT: PRINT: PRINT
590 PRINT "You have a chance to raise"
600 PRINT TAB(4); "your price. Your"
610 PRINT A$; " now sell for $"; SP
620 GOSUB 1840
630 PRINT
640 PRINT "What percentage increase would"
650 INPUT "you like to impose"; A
660 RE = RE + A
670 SP = INT(100 * (SP + A * SP / 100)) / 100
680 GOSUB 1840
690 PRINT: PRINT "The "; A$; " now sell for $"; SP
700 GOSUB 1840
710 RETURN
720 REM ********************
730 REM Sales
740 PRINT: PRINT "Your total stock of"
750 PRINT A$; " is"; ST
760 GOSUB 1840
770 PRINT: PRINT "Please stand by for a"
780 PRINT "sales report..."
790 A = INT(RND * ST / (RE / 1000)) + 1
800 IF A > ST THEN 790
810 CLS
820 PRINT: PRINT: PRINT
830 PRINT "The total number of "; A$
840 PRINT "sold is "; A
850 ST = ST - A
860 ZA = A * SP
870 PRINT: PRINT "The income from that"
880 PRINT "sale was $"; ZA
890 CA = INT(A * SP * 100) / 100 + CA
900 GOSUB 1840
910 RETURN
920 REM ********************
930 REM Report to the Chairman
940 CLS
950 IF CA + ST < 1 THEN 1510: REM Bankruptcy
960 IF CA + ST > 9999 THEN PRINT "You've made $10,000 and": PRINT "can now retire...": GOSUB 1840: GOTO 1590
970 PRINT: PRINT "Shop floor report, sir,"
980 PRINT TAB(6); "for week"; WE
990 PRINT: PRINT "Capital in hand is $"; INT(CA * 100) / 100
1000 PRINT "Running costs are $"; RC; "a week"
1010 PRINT: PRINT "Your stores hold"; ST; A$
1020 PRINT TAB(6); "worth $"; INT(ST * SP * 100) / 100
1030 PRINT: PRINT "They sell for $"; SP; " each"
1040 PRINT "and cost $"; CO; "each to make"
1050 PRINT: PRINT "Your workforce is now"
1060 PRINT WO; "strong, and you are"
1070 PRINT "paying them $"; WA; "each, so"
1080 PRINT "the wages bill this week is $"; WA * WO
1090 PRINT: PRINT "Each person can make"; PR
1100 PRINT A$; " a week, a total"
1110 PRINT "output of"; PR * WO
1120 RETURN
1130 INPUT "How many do you wish to produce"; MA
1140 IF MA = 0 THEN RETURN
1150 PRINT
1160 IF MA * CO > CA THEN PRINT "You do not have enough money": GOTO 1130
1170 IF MA > PR * WO THEN PRINT "You do not have enough people": PRINT "in your workforce to make": PRINT TAB(6); "that many": GOTO 1130
1180 PRINT "Yes sir...the target for week"; WE
1190 PRINT "is"; MA; A$
1200 MA = INT(MA - RND * MA / 5)
1210 GOSUB 1840
1220 PRINT: PRINT "The number of "; A$
1230 PRINT "actually produced in week"; WE
1240 PRINT "was"; MA; "..."
1250 ST = ST + MA
1260 CA = CA - CO * MA
1270 GOSUB 1840
1280 RETURN
1290 REM ****************************
1300 REM Staff
1310 PRINT "How many people do you"
1320 INPUT "want to hire"; A
1330 WO = WO + A
1340 PRINT: PRINT "The total workforce"
1350 PRINT "is now"; WO; "strong"
1360 GOSUB 1840
1370 IF A > 0 THEN RETURN
1380 GOSUB 930
1390 PRINT "How many people do you"
1400 INPUT "wish to fire"; A
1410 IF A = 0 THEN 1480
1420 IF A > WO THEN 1390
1430 A = INT(RND * A + 1)
1440 GOSUB 1840
1450 PRINT: PRINT "The unions will allow"
1460 PRINT "you to get rid of "; A
1470 WO = WO - A
1480 GOSUB 1840
1490 RETURN
1500 REM *******************************
1510 REM The Bottom Line!
1520 PRINT: PRINT "You're bankrupt!!"
1530 GOSUB 1840
1540 PRINT: PRINT "Oh the shame of it!!"
1550 GOSUB 1840
1560 PRINT: PRINT "Still, you keep the business"
1570 PRINT "going for"; WE; "weeks"
1580 GOSUB 1840
1590 PRINT "Enter 'Y' for another stint"
1600 PRINT "as Chairman of the Board..."
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

