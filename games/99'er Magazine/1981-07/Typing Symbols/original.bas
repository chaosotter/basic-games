100 REM ****************** 
110 REM * TYPING SYMBOLS *  
120 REM ******************  
130 REM  99'ER VERSION 7.81.1      
140 REM  BY REGENA 
150 REM  
160 REM  
170 DIM P$(14)
180 CALL CLEAR
190 CALL CHAR(152,"0")
200 CALL CHAR(153,"FFFFFFFFFFFFFFFF")
210 CALL CHAR(154,"00FFFF0000FFFF")
220 PRINT TAB(9);"T Y P I N G": :TAB(11);"ON  THE": :TAB(11);"TI 99/4": : : : : : : : : : : : : : : :
230 CALL CHAR(155,"000000FFFF")
240 CALL CHAR(156,"FF8F8F8FFFFF8F8F8")
250 CALL CHAR(157,"FFFFFFFF")
260 CALL CHAR(158,"F0F0F0F0F0F0F0F")
270 CALL COLOR(16,2,12)
280 FOR X=13 TO 23
290 CALL HCHAR(X,7,152,18)
300 NEXT X
310 CALL HCHAR(15,7,155,18)
320 CALL HCHAR(13,20,154,4)
330 CALL HCHAR(14,20,154,4)
340 FOR Y=20 TO 23
350 CALL VCHAR(16,Y,153,7)
360 CALL HCHAR(Y-2,8,153,11)
370 NEXT Y
380 CALL HCHAR(22,8,153,11)
390 CALL HCHAR(19,9,156,9)
400 CALL HCHAR(20,9,156,9)
410 CALL HCHAR(21,10,157,7)
420 T=200
430 CALL SOUND(6*T,440,5)
440 CALL CHAR(96,"FFFFFFFFFFFFFFFF")
450 CALL CHAR(97,"00000000003C7EFF")
460 CALL CHAR(104,"0F0F0F0F0F0F0F0F")
470 CALL CHAR(105,"03070F0F0F0F0F0F")
480 CALL CHAR(106,"C0E0F0F0F0F0F0F")
490 CALL CHAR(107,"F0F0F0F0F0F0F0F")
500 CALL SOUND(40,494,5)
510 CALL SOUND(40,554,5)
520 CALL SOUND(2*T,494,4)
530 CALL CHAR(124,"00000000003C7EFF")
540 CALL SOUND(T,440,4)
550 CALL CHAR(120,"0F0F0F0F0F0F0F0F")
560 CALL SOUND(2*T,587,3)
570 CALL CHAR(121,"03070F0F0F0F0F0F")
580 CALL CHAR(122,"C0E0F0F0F0F0F0F")
590 CALL SOUND(T,659,3)
600 CALL CHAR(123,"F0F0F0F0F0F0F0F")
610 CALL SOUND(6*T,740,2)
620 CALL CHAR(128,"007446654474")
630 CALL CHAR(129,"00BE88888888")
640 CALL CHAR(130,"00EE8ACC8AEA")
650 CALL CHAR(131,"007A427B0A7A")
660 CALL SOUND(6*T,880,1)
670 CALL CHAR(132,"005754D75454")
680 CALL CHAR(133,"00BE08080808")
690 CALL CHAR(134,"0")
700 CALL CHAR(135,"FFFFFFFFFFFFFFFF")
710 CALL SOUND(3*T,784,2)
720 CALL COLOR(13,2,7)
730 CALL COLOR(9,12,1)
740 CALL COLOR(10,12,1)
750 CALL SOUND(3*T,740,2)
760 CALL COLOR(12,12,1)
770 CALL SOUND(3*T,659,2)
780 CALL SOUND(2*T,740,2)
790 CALL SOUND(T,587,3)
800 CALL SOUND(6*T,440,4)
810 R$=CHR$(152)
820 FOR I=1 TO 9
830 R$=R$&" "&CHR$(152)
840 NEXT I
850 R1$="   "&R$
860 CALL SOUND(8*T,494,2)
870 CALL SCREEN(8)
880 GOSUB 4370
890 PRINT: : : :"   LEARNING THE KEYBOARD": : :TAB(11);"SYMBOLS": : : : :
900 CALL SOUND(40,523,3)
910 CALL SOUND(40,587,3)
920 CALL SOUND(2*T,523,3)
930 CALL SOUND(T,494,3)
940 CALL HCHAR(11,23,44)
950 CALL SOUND(2*T,659,2)
960 CALL HCHAR(7,23,43)
970 CALL HCHAR(7,21,45)
980 CALL SOUND(T,740,2)
990 CALL HCHAR(5,22,40)
1000 CALL SOUND(3*T,784,1)
1010 CALL HCHAR(5,24,41)
1020 CALL HCHAR(5,20,42)
1030 CALL HCHAR(9,22,47)
1040 CALL HCHAR(9,20,94)
1050 CALL SOUND(3*T,740,1)
1060 CALL HCHAR(9,24,61)
1070 CALL HCHAR(7,17,62)
1080 CALL HCHAR(9,18,60)
1090 CALL HCHAR(7,25,34)
1100 CALL SOUND(3*T,659,1)
1110 CALL HCHAR(5,12,36)
1120 CALL HCHAR(5,18,38)
1130 CALL HCHAR(11,21,59)
1140 CALL HCHAR(11,19,58)
1150 CALL SOUND(3*T,740,2)
1160 CALL HCHAR(11,17,63)
1170 CALL HCHAR(5,16,39)
1180 CALL HCHAR(5,14,37)
1190 CALL HCHAR(5,10,35)
1200 CALL SOUND(4*T,587,3)
1210 CALL HCHAR(5,8,64)
1220 CALL HCHAR(5,6,33)
1230 CALL HCHAR(7,19,95)
1240 CALL SOUND(T/2,554,4)
1250 CALL SOUND(T/2,587,4)
1260 CALL SOUND(T/2,659,4)
1270 CALL SOUND(T/2,587,4)
1280 GOSUB 4040
1290 PRINT "THE PERIOD OR DECIMAL":"IS THE ONLY SPECIAL SYMBOL"
1300 PRINT "THAT DOES NOT REQUIRE THE   SHIFT KEY. THE MOST COMMON"
1310 PRINT "USE IS IN DECIMAL NUMBERS.": :"USE THE RIGHT MIDDLE FINGER."
1320 PRINT "CAREFUL--DO NOT HIT"&CHR$(128)&CHR$(129)&CHR$(130)&"!": : : : : : : : : : : :
1330 GOSUB 4460
1340 CALL HCHAR(14,18,46)
1350 GOSUB 4610
1360 PRINT "PRESS <.> FOR THE DRILL."
1370 CALL KEY(0,K,S)
1380 IF K<>46 THEN 1370
1390 CALL COLOR(10,12,1)
1400 GOSUB 4370
1410 CALL COLOR(2,2,12)
1420 CALL COLOR(3,2,12)
1430 CALL COLOR(4,2,12)
1440 G=49
1450 FOR Y=6 TO 22 STEP 2
1460 CALL HCHAR(17,Y,G)
1470 G=G+1
1480 NEXT Y
1490 CALL HCHAR(17,24,48)
1500 CALL HCHAR(23,23,46)
1510 PRINT: : :"   COPY THE GIVEN NUMBER":"    THEN PRESS "&CHR$(128)&CHR$(129)&CHR$(130): : : : : : : : : :
1520 RANDOMIZE
1530 FOR I=1 TO 5
1540 A=(INT(1000*(100*RND)))/1000
1550 A$=STR$(A)
1560 B$=""
1570 FOR K=1 TO LEN(A$)
1580 CALL HCHAR(18,K+8,ASC(SEG$(A$,K,1)))
1590 NEXT K
1600 CALL SOUND(150,1397,4)
1610 FOR L=1 TO 10
1620 CALL KEY(0,K,S)
1630 IF S<1 THEN 1620
1640 IF K=13 THEN 1680
1650 CALL HCHAR(19,L+8,K)
1660 B$=B$&CHR$(K)
1670 NEXT L
1680 IF B$=A$ THEN 1710
1690 GOSUB 4320
1700 GOTO 1720
1710 GOSUB 4120
1720 CALL HCHAR(18,9,32,10)
1730 CALL HCHAR(19,9,32,10)
1740 NEXT I
1750 GOSUB 3980
1760 CALL COLOR(2,2,1)
1770 CALL COLOR(3,2,1)
1780 CALL COLOR(4,2,1)
1790 PRINT "THE COMMA IS PERHAPS THE":"MOST USED SPECIAL SYMBOL"
1800 PRINT "IN PROGRAMMING.": :"IT IS USED TO SEPARATE":"NUMBERS IN SERIES."
1810 PRINT:"USE RIGHT MIDDLE FINGER":"AND SHIFT KEY.": : : : : : : : : : : :
1820 GOSUB 4460
1830 CALL HCHAR(14,18,44)
1840 GOSUB 4610
1850 PRINT "PRESS <,> FOR DRILL."
1860 CALL KEY(0,K,S)
1870 IF K<>44 THEN 1860
1880 CALL COLOR(10,12,1)
1890 DATA "PRINT I,J,K","DATA 10,12,65","ON N GOTO 130,205,340"
1900 DATA "ON J GOSUB 250,280,420,460","READ X,Y,G","RES 10,5"
1910 DATA "BREAK 120,140,180,205","UNBREAK 130,195","INPUT X,Y,T"
1920 RESTORE 1890
1930 GOSUB 4370
1940 CALL HCHAR(23,23,44)
1950 GOSUB 3840
1960 GOSUB 4370
1970 CALL HCHAR(19,23,43)
1980 CALL HCHAR(19,21,45)
1990 PRINT: : :"MINUS OR HYPHEN AND PLUS": : :"USE THE SHIFT KEY AND"
2000 PRINT "   MIDDLE FINGER FOR -":"   RING FINGER FOR +": : : : :"PRESS - OR + FOR DRILL."
2010 CALL KEY(0,K,S)
2020 IF K=45 THEN 2040
2030 IF K<>43 THEN 2010
2040 CALL CLEAR
2050 DATA "I+J-K","9-5+2","ON K+9 GOTO 150,160,210","LIST 120-250","-147.25"
2060 DATA "IF J-2 THEN 750","IF A+B THEN 150","PRINT I+J","ON J+2-B GOSUB 250,320,450"
2070 RESTORE 2050
2080 GOSUB 4370
2090 CALL HCHAR(19,23,43)
2100 CALL HCHAR(19,21,45)
2110 GOSUB 3840
2120 PRINT "PARENTHESES": : :R1$
2130 G=49
2140 CALL COLOR(3,2,12)
2150 CALL COLOR(4,2,12)
2160 FOR Y=6 TO 20 STEP 2
2170 CALL HCHAR(23,Y,G)
2180 G=G+1
2190 NEXT Y
2200 CALL HCHAR(23,22,40)
2210 CALL HCHAR(23,24,41)
2220 PRINT CHR$(131)&CHR$(132)&CHR$(133): : :"PARENTHESES MUST ALWAYS":"BE IN PAIRS"
2230 PRINT: :"USE RING   FINGER FOR (":"USE LITTLE FINGER FOR )"
2240 PRINT: :"REMEMBER TO "&CHR$(131)&CHR$(132)&CHR$(133)&CHR$(46): : : : : :
2250 PRINT "PRESS ( OR ) TO START DRILL."
2260 CALL KEY(0,K,S)
2270 IF K<40 THEN 2260
2280 IF K>41 THEN 2260
2290 CALL COLOR(3,2,1)
2300 CALL COLOR(4,2,1)
2310 GOSUB 4370
2320 CALL HCHAR(17,22,40)
2330 CALL HCHAR(17,24,41)
2340 DATA "CALL HCHAR(X,Y,G)","CALL KEY(0,K,S)","INT(A+.05)","PRINT SGN(A)","ATN(THETA)"
2350 DATA "EXP(LOG(2))","(A+B)-(D+E)","CALL SOUND(500,440,2)","DIM A(20),B(30)"
2360 RESTORE 2340
2370 GOSUB 3840
2380 GOSUB 4370
2390 CALL HCHAR(17,20,42)
2400 CALL HCHAR(21,22,47)
2410 CALL HCHAR(21,20,94)
2420 PRINT: : :"*  MULTIPLY  MIDDLE FINGER":"/  DIVIDE  MIDDLE FINGER":"^  EXPONENT  POINTER FINGER"
2430 PRINT: :"REMEMBER TO "&CHR$(131)&CHR$(132)&CHR$(133)
2440 PRINT: : : : : :"PRESS *  /  OR  ^  FOR DRILL"
2450 CALL KEY(0,K,S)
2460 IF K=42 THEN 2510
2470 IF K=47 THEN 2510
2480 IF K<>94 THEN 2450
2490 DATA "3*4/6","INT(6*RND)+1","X*Y^Z","A^B*2/K","S*R/T^2"
2500 DATA "ON INT(X3/2+1) GOTO 25,50,80","2^3/4*F","2*SIN(B)","INT(G*N*RND)"
2510 RESTORE 2490
2520 GOSUB 4370
2530 CALL HCHAR(17,20,42)
2540 CALL HCHAR(21,20,94)
2550 CALL HCHAR(21,22,47)
2560 GOSUB 3840
2570 PRINT "=  USE RING FINGER":"<  USE POINTER FINGER":">  USE POINTER FINGER"
2580 PRINT: :"=  EQUALS":"<  LESS THAN":">  GREATER THAN":"<= LESS THAN OR EQUAL TO"
2590 PRINT ">= GREATER THAN OR EQUAL TO":"<> NOT EQUAL TO": : : :"PRESS < = OR > FOR DRILL"
2600 CALL KEY(0,K,S)
2610 IF K<60 THEN 2600
2620 IF K>62 THEN 2600
2630 DATA "IF K<>84 THEN 230","LET J=A>B","IF A<=12 THEN 180","(A+B)<32","I=I+2"
2640 DATA "J=INT(24*RND)","DEF PI=4*ATN(1)","G(X,Y)=D(M,N)","FOR D=1 TO 560"
2650 RESTORE 2630
2660 GOSUB 4370
2670 CALL HCHAR(19,17,62)
2680 CALL HCHAR(21,18,60)
2690 CALL HCHAR(21,24,61)
2700 GOSUB 3840
2710 PRINT "QUOTES MUST BE IN PAIRS":"USE YOUR RIGHT PINKY FINGER."
2720 PRINT: :"THE DOLLAR SIGN IS ABOVE 4.":"THIS SYMBOL IS USED FOR"
2730 PRINT "STRING VARIABLES.": :"TRY TO SHIFT WITH YOUR"
2740 PRINT "LEFT LITTLE FINGER AND AT":"THE SAME TIME PRESS $"
2750 PRINT "WITH YOUR LEFT POINTER.": : : : : :"PRESS $ OR " FOR DRILL"
2760 CALL KEY(0,K,S)
2770 IF K=36 THEN 2790
2780 IF K<>34 THEN 2760
2790 GOSUB 4370
2800 CALL HCHAR(17,12,36)
2810 CALL HCHAR(19,25,34)
2820 DATA "PRINT "HI"","CALL CHAR(96,"FF")","A$="BOB"","P=VAL(P$)","A$=STR$(A)"
2830 DATA "POS(M$,K$,1)","K=LEN(NAME$)","PRINT CHR$(42)","CALL CHAR(104,B$)"
2840 RESTORE 2820
2850 GOSUB 3840
2860 PRINT ": ; & ARE SYMBOLS TYPED":"WITH THE POINTER FINGER.": : : : : : : : : : : : : : : :
2870 GOSUB 4460
2880 FOR I=1 TO 15
2890 CALL COLOR(9,7,1)
2900 CALL COLOR(9,12,1)
2910 NEXT I
2920 CALL COLOR(9,7,1)
2930 PRINT: :"PRESS : ; OR & FOR DRILL"
2940 CALL KEY(0,K,S)
2950 IF K=58 THEN 2980
2960 IF K=59 THEN 2980
2970 IF K<>38 THEN 2940
2980 CALL COLOR(9,12,1)
2990 GOSUB 4370
3000 CALL HCHAR(17,18,38)
3010 CALL HCHAR(23,19,58)
3020 CALL HCHAR(23,21,59)
3030 RESTORE 3040
3040 DATA "INPUT "NUMBER":N","PRINT A;B;X","PRINT X;","INPUT "PROMPT":R","PRINT "X"&CHR$(E)"
3050 DATA "LEN(NAME$&AGE$)","PRINT :"NAME = ";N$","PRINT :L,"FEET"::","N$&"E"&"12""
3060 GOSUB 3840
3070 PRINT "# IS ANOTHER SYMBOL":"THAT NEEDS FLEXIBLE FINGERS."
3080 PRINT:"PRESS SHIFT WITH THE LITTLE":"FINGR AND # WITH THE"
3090 PRINT "LEFT MIDDLE FINGER.": :"THE MAIN USE OF # IS IN"
3100 PRINT "STATEMENTS FOR FILE NUMBERS.": : :
3110 CALL COLOR(3,2,12)
3120 PRINT R1$: :CHR$(131)&CHR$(132)&CHR$(133)
3130 CALL HCHAR(21,6,49)
3140 CALL HCHAR(21,8,50)
3150 CALL HCHAR(21,10,35)
3160 CALL HCHAR(21,12,52)
3170 PRINT: : :"PRESS # FOR DRILL"
3180 CALL KEY(0,K,S)
3190 IF K<>35 THEN 3180
3200 CALL COLOR(3,2,1)
3210 GOSUB 4370
3220 CALL HCHAR(17,10,35)
3230 DATA "OPEN #2:"RS232.TW.BA=110"","CLOSE #6","OPEN #3:"CS1",INPUT","PRINT #2:X"
3240 DATA "CLOSE #4:DELETE","INPUT #2:X,Y","OPEN #1:"RS232/2.BA=9600"","PRINT #1","PRINT #1:CHR$(B)"
3250 RESTORE 3230
3260 GOSUB 3840
3270 PRINT "THESE SYMBOLS ARE USED":"LESS OFTEN:": :"_ RIGHT POINTER FINGER"
3280 PRINT "? LEFT POINTER FINGER":"' RIGHT POINTER FINGER":"% LEFT POINTER FINGER"
3290 PRINT "@ TRY LEFT MIDDLE FINGER":"! TRY LEFT MIDDLE FINGER"
3300 PRINT "(NO DRILL FOR THESE SYMBOLS)": : :"PRESS ANY SYMBOL":"TO CONTINUE."
3310 CALL KEY(0,K,S)
3320 IF S<1 THEN 3310
3330 IF K<48 THEN 3370
3340 IF K<57 THEN 3310
3350 IF K<65 THEN 3370
3360 IF K<94 THEN 3310
3370 CALL CLEAR
3380 CALL SCREEN(2)
3390 PRINT "YOU SHOULD KNOW ALL THE":"SYMBOLS NOW.": : :"PRESS": :"1 TO START OVER"
3400 PRINT:"2 FOR FINAL REVIEW": :"3 TO END PROGRAM": : : : : : : :
3410 CALL SCREEN(4)
3420 CALL KEY(0,K,S)
3430 IF K=49 THEN 870
3440 IF K=51 THEN 3830
3450 IF K<>50 THEN 3420
3460 CALL CLEAR
3470 PRINT "   SCORE:      RIGHT":TAB(16);"WRONG": : : : : : : : : : : : : : : : : : :
3480 RESTORE 3490
3490 DATA "LEN(NAME$&CITY$)","PRINT #2:AREA","PRINT :L;"IS LENGTH""
3500 DATA "PRINT :A;B;X","CALL JOYST(2,X,Y)","CALL SOUND(800,-4,2)"
3510 DATA "ON K-48 GOTO 30,150,230","IF A<=B THEN 350","CALL KEY(0,K,S)"
3520 DATA "CALL CHAR(96,A$)","PRINT STR$(VAL(P$))","PRINT "HI""
3530 DATA "CALL VCHAR(10,12,42,8)","CALL COLOR(I,F,B)","PRINT COS(Y)"
3540 FOR I=0 TO 14
3550 READ P$(I)
3560 NEXT I
3570 R=0
3580 W=0
3590 FOR I=1 TO 10
3600 J=INT(15*RND)
3610 IF P$(J)="" THEN 3600
3620 GOSUB 4180
3630 IF B$=P$(J)THEN 3670
3640 GOSUB 4330
3650 W=W+1
3660 GOTO 3690
3670 GOSUB 4110
3680 R=R+1
3690 IF R=10 THEN 3740
3700 IF W=10 THEN 3760
3710 CALL HCHAR(4,25,R+48)
3720 CALL HCHAR(5,25,W+48)
3730 GOTO 3790
3740 CALL HCHAR(4,24,49)
3750 GOTO 3770
3760 CALL HCHAR(5,24,49)
3770 CALL HCHAR(5,25,48)
3780 CALL HCHAR(18,1,32,64)
3790 NEXT I
3800 CALL HCHAR(18,1,32,64)
3810 GOSUB 3980
3820 GOTO 3370
3830 STOP
3840 PRINT: : :"COPY THE GIVEN PHRASE":"THEN PRESS <ENTER>.": : : : : : : : : :
3850 FOR I=1 TO 9
3860 READ P$(I)
3870 NEXT I
3880 FOR I=1 TO 5
3890 J=INT(9*RND)+1
3900 IF P$(J)="" THEN 3890
3910 GOSUB 4180
3920 IF B$=P$(J)THEN 3950
3930 GOSUB 4320
3940 GOTO 3960
3950 GOSUB 4110
3960 NEXT I
3970 CALL HCHAR(18,1,32,64)
3980 CALL SOUND(3*T,740,2)
3990 CALL SOUND(4*T,587,2)
4000 CALL SOUND(T/2,415,3)
4010 CALL SOUND(T/2,440,3)
4020 CALL SOUND(T/2,494,3)
4030 CALL SOUND(T/2,440,3)
4040 CALL SOUND(5*T,740,2)
4050 CALL SOUND(T,659,2)
4060 CALL SOUND(4*T,659,2)
4070 CALL SOUND(6*T,587,2)
4080 CALL SOUND(1,9999,30)
4090 CALL CLEAR
4100 RETURN
4110 P$(J)=""
4120 CALL SOUND(100,392,2)
4130 CALL SOUND(100,494,2)
4140 CALL SOUND(100,587,2)
4150 CALL SOUND(100,494,2)
4160 CALL SOUND(100,392,2)
4170 RETURN
4180 B$=""
4190 CALL HCHAR(17,1,152,128)
4200 FOR K=1 TO LEN(P$(J))
4210 CALL HCHAR(18,K+2,ASC(SEG$(P$(J),K,1)))
4220 NEXT K
4230 CALL SOUND(150,1397,4)
4240 FOR L=1 TO 28
4250 CALL KEY(0,K,S)
4260 IF S<1 THEN 4250
4270 IF K=13 THEN 4310
4280 CALL HCHAR(19,L+2,K)
4290 B$=B$&CHR$(K)
4300 NEXT L
4310 RETURN
4320 I=I-1
4330 CALL SOUND(800,-8,0,110,4)
4340 FOR E=1 TO 1000
4350 NEXT E
4360 RETURN
4370 CALL CLEAR
4380 PRINT R1$: :" "&R1$: :"  "&CHR$(152)&R$&" "&CHR$(153): :" "&R1$
4390 CALL HCHAR(23,5,131)
4400 CALL HCHAR(23,6,132)
4410 CALL HCHAR(23,7,133)
4420 CALL HCHAR(23,25,128)
4430 CALL HCHAR(23,26,129)
4440 CALL HCHAR(23,27,130)
4450 RETURN
4460 CALL HCHAR(20,16,152,5)
4470 CALL HCHAR(21,16,152,5)
4480 CALL HCHAR(15,16,97)
4490 CALL VCHAR(16,16,96,4)
4500 CALL VCHAR(15,17,105)
4510 CALL VCHAR(15,18,106)
4520 CALL VCHAR(16,17,104,4)
4530 CALL VCHAR(16,18,107,4)
4540 CALL VCHAR(15,19,124)
4550 CALL VCHAR(16,19,152,4)
4560 CALL VCHAR(17,20,121)
4570 CALL VCHAR(17,21,122)
4580 CALL VCHAR(18,20,120,2)
4590 CALL VCHAR(18,21,123,4)
4600 RETURN
4610 FOR I=1 TO 15
4620 CALL COLOR(10,7,1)
4630 CALL COLOR(10,12,1)
4640 NEXT I
4650 CALL COLOR(10,7,1)
4660 RETURN
4670 END