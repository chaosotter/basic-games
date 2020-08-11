5 CLS: COLOR 12
10 PRINT TAB(32); "Life Expectancy"
20 PRINT TAB(31); "Creative Computing"
30 PRINT TAB(29); "Morristown, New Jersey"
270 PRINT: PRINT: PRINT: COLOR 15
280 PRINT "This is a life expectancy test."
290 COLOR 10: PRINT "Do you wish instructions (Y/N)";
300 INPUT I$: COLOR 15
310 IF LEFT$(I$, 1) = "N" OR LEFT$(I$, 1) = "n" THEN 470
320 COLOR 14: PRINT: PRINT
340 PRINT "This is a test to predict your life expectancy.  I will ask you a series of"
350 PRINT "short questions, which you will reply to by typing in the corresponding answer"
360 PRINT "to the question."
380 PRINT
390 PRINT "    Example:  ";: COLOR 15: PRINT "Are you male or female?"
400 COLOR 11: PRINT "                M";: COLOR 15: PRINT " = Male"
410 COLOR 11: PRINT "                F";: COLOR 15: PRINT " = Female"
415 PRINT: COLOR 14
420 PRINT "'M' and 'F' are the possible replies to the question.  Answer like this:"
425 PRINT
440 COLOR 10: PRINT "              Choose one of the letters above? M"
445 PRINT: COLOR 14
450 PRINT "Typing an 'M' signifies you are a male."
460 PRINT: PRINT
470 PRINT: PRINT: R5 = 1
480 Z = 72
490 A$ = "ABCDEMGHIKJLFNO"
500 GOTO 1700
510 R5 = R5 + 1
520 IF R5 > 21 THEN 1900
530 DATA "[Sex]"
540 DATA "Are you male or female?"
550 DATA "M= male."
560 DATA " F= female."
570 DATA 2,"MF"
580 DATA "[Lifestyle]"
590 DATA "Where do you live?"
600 DATA "G= If you live in an urban area with a population over 2 million."
610 DATA "K= If you live in a town under 10,000, or on a farm."
620 DATA " I= Neither."
630 DATA 3,"GKI"
640 DATA "How do you work?"
650 DATA "M= If you work behind a desk."
660 DATA "L= If your work requires heavy physical labor."
670 DATA " I= None of the above."
680 DATA 3,"MLI"
690 DATA "How long do you exercise strenuously (tennis, running, swimming, etc.)?"
710 DATA "F= Five times a week for at least half an hour."
720 DATA "K= Just two or three times a week."
730 DATA " I= Do not exercise in this fashion."
740 DATA 3,"FKI"
750 DATA "Who do you live with?"
760 DATA "N= If you live with a spouse, friend, or in a family."
770 DATA "H= If you've lived alone for 1-10 years since age 25."
780 DATA "G= For 11-20 years."
790 DATA "M= For 21-30 years."
800 DATA "E= For 31-40 years."
810 DATA " D= More than 40 years."
820 DATA 6,"NHGMED"
830 DATA "[Psyche]"
840 DATA "Do you sleep more than 10 hours a night?"
850 DATA "I= No."
860 DATA " E= Yes."
870 DATA 2,"IE"
880 DATA "[Mental State]"
890 DATA "M= If you are intense, aggressive, or easily angered."
900 DATA "L= If you are easygoing, relaxed, or a follower."
910 DATA " I= Neither."
920 DATA 3,"MLI"
930 DATA "[How You Feel]"
940 DATA "Are you happy or unhappy?"
950 DATA "J= Happy."
960 DATA "G= Unhappy."
970 DATA " I= Neither."
980 DATA 3,"JGI"
990 DATA "[Factors]"
1000 DATA "Have you had a speeding ticket in the last year?"
1010 DATA "H= Yes."
1020 DATA " I= No."
1030 DATA 2,"HI"
1040 DATA "[Income]"
1050 DATA "Do you earn more than $50,000 a year?"
1060 DATA "G= Yes."
1070 DATA " I= No."
1080 DATA 2,"GI"
1090 DATA "[Schooling]"
1100 DATA "J= If you have finished college."
1110 DATA "L= If you have finished college with a graduate or professional degree."
1130 DATA " I= Nothing listed."
1140 DATA 3,"JLI"
1150 DATA "[Age]"
1160 DATA "Are you 65 or older and still working?"
1170 DATA "L= Yes."
1180 DATA " I= No."
1190 DATA 2,"LI"
1200 DATA "[Heredity]"
1210 DATA "K= If any grandparents lived to 85 years old."
1220 DATA "O= If all four grandparents lived to 80 years old."
1230 DATA " I= No grandparents qualify in the above."
1240 DATA 3,"KOI"
1250 DATA "Has any parent died of a stroke or heart attack before the age of 50?"
1270 DATA "E= Yes."
1280 DATA " I= No."
1290 DATA 2,"EI"
1300 DATA "[Family Diseases]"
1310 DATA "Any parent, brother, or sister under 50 has (or had) cancer, a heart"
1320 DATA "condition, or diabetes since childhood?"
1330 DATA "M= Yes."
1340 DATA " I= No."
1350 DATA 2,"MI"
1360 DATA "[Health]"
1365 DATA "How much do you smoke?"
1370 DATA "A= If you smoke more than two packs a day."
1380 DATA "C= One to two packs a day."
1390 DATA "M= One half to one pack a day."
1400 DATA " I= Don't smoke."
1410 DATA 4,"ACMI"
1420 DATA "[Drink]"
1430 DATA "Do you drink the equivalent of a quarter bottle of alcoholic beverage a day?"
1450 DATA "H= Yes."
1460 DATA " I= No."
1470 DATA 2,"HI"
1480 DATA "[Weight]"
1490 DATA "A= If you are overweight by 50 pounds or more."
1500 DATA "E= Over by 30-50 pounds."
1510 DATA "G= Over by 10-30 pounds."
1520 DATA " I= Not overweight."
1530 DATA 4,"AEGI"
1540 DATA "[Checkups]"
1550 DATA "If you are a male over 40, do you have an annual checkup?"
1560 DATA "K= Yes."
1570 DATA " I= If no, or not a male, or under 40 years old."
1580 DATA 2,"KI"
1590 DATA "If you are a woman, do you see a gynecologist once a year?"
1600 DATA "K= Yes."
1610 DATA " I= If no, or not a woman."
1620 DATA 2,"KI"
1630 DATA "[Current Age]"
1640 DATA "K= If you are between 30 and 40 years old."
1650 DATA "L= Between 40 and 50."
1660 DATA "F= Between 50 and 70."
1670 DATA "N= Over 70."
1680 DATA " I= Under 30."
1690 DATA 5,"KLFNI"
1700 FOR Q = 1 TO 7
1710 READ Q$
1720 IF LEFT$(Q$, 1) = " " THEN 1750
1725 IF LEFT$(Q$, 1) = "[" THEN COLOR 13: PRINT Q$: GOTO 1740
1726 IF MID$(Q$, 2, 1) = "=" THEN COLOR 11: PRINT "  "; LEFT$(Q$, 1);: COLOR 15: PRINT " ="; RIGHT$(Q$, LEN(Q$) - 2): GOTO 1740
1730 COLOR 15: PRINT Q$
1740 NEXT Q
1750 COLOR 11: PRINT "  "; MID$(Q$, 2, 1);: COLOR 15: PRINT " ="; RIGHT$(Q$, LEN(Q$) - 3)
1760 READ C, C$
1770 COLOR 10: PRINT "Choose one of the letters above";
1780 INPUT G$: COLOR 15
1785 G$ = LEFT$(G$, 1): IF G$ >= "a" OR G$ <= "z" THEN G$ = CHR$(ASC(G$) - 32)
1790 FOR C2 = 1 TO C
1800 IF G$ = MID$(C$, C2, 1) THEN 1830
1810 NEXT C2
1820 GOTO 1770
1830 PRINT
1840 FOR N = 1 TO 15
1850 IF G$ = MID$(A$, N, 1) THEN 1870
1860 NEXT N
1870 M = N - 9
1880 Z = Z + M
1890 GOTO 510
1900 PRINT "You are expected to live to the age of"; Z; "years."
1910 IF Z < 60 THEN 1980
1920 FOR Y = 60 TO Z STEP 5
1930 READ M$, F$
1940 NEXT Y
1950 DATA "26%","15%","36%","20%","48%","30%","61%","39%"
1960 DATA "75%","53%","87%","70%","96%","88%","99.9%","99.6%"
1970 PRINT "(Out-living "; M$; " of the men and "; F$; " of the women.)"
1980 END
