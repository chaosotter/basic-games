10 QA=600
20 QZ=1
40 CALL CLEAR
50 GOTO 300
60 FOR Q=1 TO QA*QZ
70 NEXT Q
80 RETURN
90 R=INT(LC)
100 QQ=0
110 C=100*(LC-R)
120 FOR Q=1 TO LEN(A$)
130 QQ=QQ+1
140 IF C+QQ<31 THEN 170
150 R=R+1
160 QQ=1
170 CALL HCHAR(R,C+QQ,ASC(SEG$(A$,Q,1)))
180 NEXT Q
190 RETURN
200 INPUT "       (PRESS ENTER)":Q$
210 CALL CLEAR
220 RETURN
300 CALL CHAR(96,"FF")
310 CALL SCREEN(2)
320 PRINT "IN THE LAST CHAPTER,": :"YOU SAW HOW WE COMPUTERS": :"CALCULATE NUMBERS.": : :
330 PRINT "NOW WE WILL DO A LITTLE": :"MORE WORK WITH NUMBERS": :"AND EXPRESSIONS.": : :"THEN YOU WILL BE READY FOR": :
340 PRINT "REAL COMPUTER PROGRAMMING!": : :
350 CALL SCREEN(8)
360 CALL CHAR(97,"FFFF")
370 CALL CHAR(98,"FFFFFF")
380 CALL CHAR(99,"FFFFFFFF")
390 CALL CHAR(100,"FFFFFFFFFF")
400 CALL CHAR(101,"FFFFFFFFFFFF")
410 CALL CHAR(102,"FFFFFFFFFFFFFF")
420 CALL CHAR(103,"FFFFFFFFFFFFFFFF")
430 CALL CHAR(104,"8142241818244281")
440 CALL COLOR(10,16,16)
450 GOSUB 60
460 CALL SCREEN(6)
470 CALL COLOR(9,7,1)
480 FOR I=1 TO 24
490 FOR K=1 TO 8
500 CALL HCHAR(I,1,95+K,32)
510 NEXT K
520 NEXT I
530 FOR I=1 TO 5
540 CALL HCHAR(9+I,6,104,20)
550 NEXT I
560 A$=" LEARNING BASIC "
570 LC=11.07
580 GOSUB 90
590 A$="  CHAPTER  TWO  "
600 LC=12.07
610 GOSUB 90
620 A$="  MORE NUMBERS  "
630 LC=13.07
640 GOSUB 90
650 CALL SCREEN(12)
660 GOSUB 60
670 CALL CLEAR
680 PRINT "LET'S SEE HOW MUCH YOU":"REMEMBER FROM CHAPTER ONE.": : :
690 GOSUB 200
700 PRINT "PRETEND THAT YOU ARE":"A COMPUTER"
710 GOSUB 60
720 PRINT "  (EVEN THOUGH YOU DON'T":"LOOK LIKE A COMPUTER).": :
730 PRINT "WHAT IS  1+2^2":"EQUAL TO?": :"TYPE A NUMBER AND":"PRESS ENTER."
740 PRINT:"(BY THE WAY":"IF YOU TYPE A LETTER INSTEAD":"OF A NUMBER, I WILL PRINT":"* WARNING:":"INPUT ERROR"
750 PRINT "TRY AGAIN:":"THIS IS MY WAY OF TELLING":"YOU TO TYPE A "NUMBER".)"
760 INPUT S
770 IF S<>5 THEN 820
780 PRINT "VERY GOOD!":"YOU'RE A GOOD COMPUTER."
790 GOSUB 60
800 PRINT "....AND I SHOULD KNOW!"
810 GOTO 1070
820 IF S<>9 THEN 860
830 PRINT "NO ";B$:"THAT'S NOT QUITE RIGHT.":"REMEMBER":"WE CALCULATE POWERS FIRST":"SO THAT WE FIRST CALCULATE"
840 PRINT "2^2 (WHICH EQUALS 4)":"TRY IT AGAIN."
850 GOTO 730
860 PRINT "I DON'T KNOW HOW YOU GOT":"THAT NUMBER.":"LET'S TRY ANOTHER EXAMPLE."
870 GOSUB 200
880 PRINT "WHAT IS 9-2^3":"EQUAL TO?"
890 INPUT ST
900 IF ST<>1 THEN 930
910 PRINT "RIGHT YOU ARE!"
920 GOTO 1060
930 PRINT "NO.  TRY SOMETHING EASIER":"WHAT IS 2^3 EQUAL TO?"
940 INPUT SS
950 IF SS<>8 THEN 1030
960 PRINT "O.K.  THEN WHAT IS 9-2^3":"EQUAL TO?"
970 INPUT SB
980 IF SB<>1 THEN 1010
990 PRINT "I THINK YOU'VE GOT IT.":"I THINK YOU'VE GOT IT!"
1000 GOTO 730
1010 PRINT "NO ";B$:"THE ANSWER IS 9 MINUS 2^3":"WHICH IS EQUAL TO 1."
1020 GOTO 1170
1030 PRINT "I THINK YOU ARE HAVING":"TROUBLE WITH POWERS.":"2^3 MEANS 2 TO THE THIRD":"POWER. WHICH MEANS"
1040 PRINT "2*2*2 (2 TIMES 2 TIMES 2)"
1050 GOTO 1170
1060 REM  
1070 PRINT "LET'S TRY ANOTHER EXAMPLE.":"WHAT IS":"2*3+3-4/2":"EQUAL TO?"
1080 INPUT S
1090 IF S<>7 THEN 1130
1100 PRINT "RIGHT AGAIN."
1110 GOSUB 60
1120 GOTO 1190
1130 PRINT "I'M AFRAID THAT'S NOT QUITE":"RIGHT.":"WE CALCULATE 2*3 FIRST,":"WHICH EQUALS 6"
1140 PRINT "AND THEN CALCULATE 4/2":"WHICH EQUALS 2.": :"THEN WE CALCULATE 6+3-2":"WHICH EQUALS 7.":
1150 PRINT "BE CAREFUL WITH THE":"ORDER THAT WE COMPUTERS":"DO CALCULATIONS."
1160 GOTO 1190
1170 PRINT "I THINK YOU'D BETTER REVIEW":"CHAPTER ONE AGAIN.":"I AM GOING TO STOP HERE AND"
1180 PRINT "LET YOU PUT CHAPTER ONE":"ON AGAIN.": : :
1182 PRINT "TYPE":"   OLD DSK1.B1":"AND PRESS "ENTER".": :"THEN TYPE":"     RUN":"AND PRESS "ENTER"."
1183 END
1190 GOSUB 200
1200 PRINT "WE KNOW THAT 7-2*3=1,": :
1210 PRINT "AND WE KNOW THAT COMPUTERS":"CALCULATE PRODUCTS BEFORE":"THEY DO SUMS.": :
1220 PRINT "THE ORDER OF CALCULATING":"IS CALLED:": :"THE HIERARCHY OF OPERATIONS.":
1230 GOSUB 200
1240 PRINT "THE HIERARCHY OF OPERATIONS":"IS USUALLY WRITTEN THIS WAY:": :"^":"* /":"+ -"
1250 GOSUB 60
1260 PRINT:"WHICH MEANS": :
1270 LC=18.05
1280 A$="POWERS FIRST             PRODUCTS & QUOTIENTS NEXTSUMS AND DIFFERENCES LAST"
1290 GOSUB 90
1300 GOSUB 60
1310 PRINT "THERE ARE ACTUALLY A FEW":"MORE OPERATORS THAN ^/*+- ;":"WE'LL GET TO THEM LATER."
1320 GOSUB 200
1330 PRINT "SO   7-3*2 EQUALS 1,": :"BUT WHAT IF WE WANT TO":"TAKE 3 AWAY FROM 7":"AND MULTIPLY BY 2?": :
1340 PRINT "HOW DO WE DO THAT?":
1350 GOSUB 60
1360 PRINT "WE USE PARENTHESES!": :
1370 GOSUB 60
1380 PRINT "WE COMPUTERS ALWAYS":"CALCULATE THINGS INSIDE":"PARENTHESES FIRST.": :
1390 GOSUB 60
1400 PRINT "THIS IS VERY IMPORTANT":"SO I'LL SAY IT AGAIN.": : :
1410 GOSUB 60
1420 CALL HCHAR(24,1,100,32)
1430 PRINT:"COMPUTERS ALWAYS CALCULATE":"THINGS INSIDE PARENTHESES":"FIRST!!"
1440 CALL HCHAR(24,1,100,32)
1450 GOSUB 60
1460 CALL COLOR(9,6,6)
1470 PRINT: : : : : : : : : : : : : : : : : : :
1480 GOSUB 60
1490 LC=9.1
1500 A$=" 7-3 *2=1  BUT"
1510 GOSUB 90
1520 LC=10.1
1530 A$="(7-3)*2=8"
1540 GOSUB 90
1550 GOSUB 60
1560 PRINT: :"TRY AN EXAMPLE":"WHAT IS 2*(4-3) EQUAL TO?"
1570 INPUT S
1580 IF S<>2 THEN 1610
1590 PRINT "RIGHT YOU ARE!"
1600 GOTO 1700
1610 IF S<>5 THEN 1660
1620 PRINT "NO. REMEMBER, COMPUTERS":"ALWAYS CALCULATE THINGS":"INSIDE PARENTHESES FIRST.": :"TRY ANOTHER EXAMPLE"
1630 PRINT "WHAT IS 3*(2+1) EQUAL TO?"
1640 INPUT SB
1650 IF SB=9 THEN 1680
1660 PRINT "NO. WE HAD BETTER REVIEW."
1670 GOTO 1330
1680 PRINT "RIGHT!  NOW--"
1690 GOTO 1560
1700 GOSUB 60
1710 CALL CLEAR
1720 PRINT "PARENTHESES ALWAYS COME":"IN SETS..."
1730 GOSUB 60
1740 PRINT "....A LEFT PARENTHESIS ( ...":"AND A RIGHT PARENTHESIS ).": :"AN EXPRESSION CAN HAVE MANY"
1750 PRINT "SETS OF PARENTHESIS IN IT.":"FOR EXAMPLE:": :"2*(3+2*(3-1))": :"WE EVALUATE THE INNERMOST"
1760 PRINT "PARENTHESES FIRST":"AND WORK OUR WAY OUT.": :
1770 GOSUB 200
1780 PRINT "WE COMPUTERS WOULD EVALUATE":"2*(3+2*(3-1))":"LIKE THIS:": : : : : : : : : : : : : : : : : : :
1790 LC=10.1
1800 A$="2*(3+2*(3-1))"
1810 GOSUB 90
1820 LC=11.1
1830 A$="2*(3+2*(2  ))"
1840 GOSUB 90
1850 LC=12.1
1860 A$="2*(3+2* 2   )"
1870 GOSUB 90
1880 LC=13.1
1890 A$="2*(3+4      )"
1900 GOSUB 90
1910 LC=14.1
1920 A$="2*(7        )"
1930 GOSUB 90
1940 LC=15.1
1950 A$="2* 7"
1960 GOSUB 90
1970 LC=16.1
1980 A$="14"
1990 GOSUB 90
2000 GOSUB 200
2010 PRINT "WHAT ABOUT THIS EXAMPLE?": : :"2*(3+2*(3-1)": : :
2020 GOSUB 60
2030 PRINT "T H I S  I S  W R O N G ! !": : :
2040 PRINT "HERE THERE ARE TWO LEFT (":"PARENTHESES AND ONLY ONE":"RIGHT ) PARENTHESIS.":"WE CAN'T HANDLE THAT."
2050 CALL COLOR(10,16,1)
2060 LC=13.01
2070 A$=""
2080 FOR I=1 TO 87
2090 A$=A$&CHR$(104)
2100 NEXT I
2110 GOSUB 90
2120 GOSUB 200
2130 PRINT "LET'S TALK A BIT ABOUT":"NUMBERS NOW.": : :"NUMBERS ARE VERY IMPORTANT":"TO US COMPUTERS.": : :
2140 GOSUB 60
2150 PRINT "EVERYTHING THAT WE DO IS":"DONE BY MOVING AROUND":"NUMBERS.":"EVEN WHEN I AM PRINTING"
2160 PRINT "LETTERS OF THE ALPHABET,":"I AM REALLY WORKING WITH":"NUMBERS.": :
2170 PRINT "FOR US COMPUTERS, EVERY":"LETTER OF THE ALPHABET IS":"REPRESENTED BY A NUMBER."
2180 PRINT "FOR EXAMPLE, THE LETTER "A"":"IS REPRESENTED BY THE":"NUMBER 65.": :
2190 GOSUB 200
2200 PRINT "THERE ARE BIG NUMBERS": : : : : : : : : :"AND SMALL NUMBERS"
2210 LC=17.03
2220 A$="10,000,000,000  BIG NUMBER"
2230 GOSUB 90
2240 A$=".000000000001  SMALL NUMBER"
2250 LC=19.03
2260 GOSUB 90
2270 GOSUB 60
2280 CALL CLEAR
2290 PRINT: : : : :"10,000,000,000  BIG NUMBER": : :
2300 GOSUB 60
2310 CALL COLOR(2,7,16)
2320 PRINT "COMMAS , ARE BAD;":"DO NOT USE THEM IN NUMBERS."
2330 CALL COLOR(2,5,16)
2340 GOSUB 60
2350 CALL COLOR(2,1,1)
2360 A$="10000000000    "
2370 LC=19.02
2380 GOSUB 90
2390 CALL COLOR(2,2,1)
2400 GOSUB 60
2410 GOSUB 200
2420 PRINT "NUMBERS LIKE 40000000000 OR":".0000000001 TAKE TOO MUCH":"SPACE TO PRINT.": :
2430 PRINT "THEREFORE, WE USE A":"SHORTHAND METHOD OF WRITING":"THESE TYPES OF NUMBERS.": :
2440 GOSUB 60
2450 PRINT "THE NUMBER 40 MILLION":"40000000 IS THE SAME THING":"AS 4*10^7.": :"THE NUMBER .00000004 IS"
2460 PRINT "THE SAME AS 4*10^(-8).": :
2470 GOSUB 200
2480 PRINT "HERE ARE A FEW MORE EXAMPLES": :
2490 PRINT " 5000000=5*10^6"
2500 PRINT "  500000=5*10^5"
2510 PRINT "   50000=5*10^4"
2520 PRINT "    5000=5*10^3"
2530 PRINT "     500=5*10^2"
2540 PRINT "      50=5*10^1    (10^1=10)"
2550 PRINT "       5=5*10^0  (10^0 IS 1)"
2560 PRINT "      .5=5*10^-1"
2570 PRINT "     .05=5*10^-2"
2580 PRINT "    .005=5*10^-3": :
2590 INPUT "**PRESS ENTER**":Q$
2600 LC=12.03
2610 A$=" 123456=1.23456*10^5         12345.6=1.23456*10^4         1234.56=1.23456*10^3           ETCETERA     "
2620 GOSUB 90
2630 GOSUB 200
2640 PRINT "WRITING THE NUMBER":"5000000 AS 5*10^6":"IS KNOWN AS WRITING IT IN":"SCIENTIFIC NOTATION.": : : :
2650 GOSUB 60
2660 PRINT "WE COMPUTERS HAVE OUR OWN":"VERSION OF":"SCIENTIFIC NOTATION.": :"WE PRINT 5*10^6 AS 5E6":"SO THAT-": :
2670 PRINT "50000 = 5E4":"  500 = 5E2":"  .05 = 5E-2":"SO THAT":"5000000=5*10^6=5E6"
2680 GOSUB 200
2690 PRINT "AN EASY WAY OF REMEMBERING":"THIS IS AS FOLLOWS:": :"IF YOU SEE A NUMBER LIKE":"1.43567E4"
2700 PRINT "JUST MOVE THE DECIMAL POINT":"4 PLACES TO THE RIGHT.":"1.43567E4=14356.7": :"IF YOU SEE A NUMBER LIKE"
2710 PRINT "1.32698E-3":"JUST MOVE THE DECIMAL POINT":"3 PLACES TO THE LEFT.":"1.32698E-3=.00132698": :
2720 GOSUB 200
2730 PRINT "BIG NUMBERS ARE NOW VERY":"EASY TO WRITE.": :"2E22=20000000000000000000000": : :
2740 PRINT "WHEN WE COMPUTERS NEED":"TO WRITE A NUMBER WITH MORE":"THAN 10 DIGITS, WE USE":"SCIENTIFIC NOTATION."
2750 GOSUB 200
2760 LC=10.03
2770 A$="NOW YOU TRY IT."
2780 GOSUB 90
2790 LC=12.03
2800 A$="WHAT IS 1.25E2 EQUAL TO?"
2810 GOSUB 90
2820 INPUT A
2830 IF A=125 THEN 2920
2840 PRINT "NO!  1.25E2 MEANS":"1.25 TIMES 10^2 WHICH IS":"1.25 TIMES 100":"(1.25*100=125)"
2850 PRINT "LET'S TRY AGAIN": :"WHAT IS 1.5E5 EQUAL TO?"
2860 INPUT "(NO COMMAS PLEASE) ":A
2870 IF A=150000 THEN 2900
2880 PRINT "NOT QUITE.":"1.5E5 MEANS 1.5*100000":"WHICH IS 150000": :"LET'S GO BACK"
2890 GOTO 2190
2900 PRINT "WELL DONE"
2910 GOTO 2800
2920 PRINT "RIGHT!"
2930 GOSUB 60
2940 CALL CLEAR
2950 PRINT "LET'S TRY ANOTHER ONE.": :"WHAT IS 17E-3 EQUAL TO?"
2960 INPUT A
2970 IF A<>.017 THEN 3000
2980 PRINT "O.K.  YOU KNOW ALL THIS."
2990 GOTO 3070
3000 PRINT "NO.  THAT IS NOT RIGHT":"17E-3 = 17*10^(-3)":"WHICH IS 17 TIMES .001":"WHICH EQUALS .017": :
3010 PRINT "IF YOU SEE A NUMBER LIKE":"134E-5 JUST MOVE":"THE DECIMAL POINT 5 PLACES":"TO THE LEFT.": :
3020 GOSUB 200
3030 PRINT "134E-5 = 13.4E-4":"13.4E-4= 1.34E-3":"1.34E-3= .134E-2":".134E-2= .0134E-1":".0134E-1=.00134": :
3040 PRINT "THEREFORE":"134E-5 = .00134": :
3050 PRINT "LET'S REVIEW IT AGAIN."
3060 GOTO 2190
3070 GOSUB 60
3080 CALL CLEAR
3090 PRINT "THIS IS THE END OF CHAPTER 2"
3100 GOSUB 60
3110 LC=10.03
3120 A$="THE NEXT CHAPTER WILL      ACTUALLY BE ABOUT COMPUTERSAND "BASIC"."
3130 QA=40
3140 GOSUB 90
3150 FOR I=3 TO 16
3160 GOSUB 60
3170 CALL SCREEN(I)
3180 NEXT I
3190 GOSUB 60