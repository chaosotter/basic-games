10 QA=600
20 RD$="TO GET THE ANSWER IN DEGREES  MULTIPLY 'A' BY PI/180,   (ABOUT 57.29779513079)."
30 RR$="TO CONVERT FROM DEGREES TO  RADIANS, MULTIPLY THE ANGLE BY PI/180 (.01745329251994)."
40 CALL CHAR(100,"0038447C40443800")
50 CALL CLEAR
70 RANDOMIZE
80 CALL CHAR(102,"C0F0FCFFFFFCF0C0")
90 CALL COLOR(9,2,2)
100 CALL COLOR(10,3,3)
110 CALL COLOR(11,5,5)
120 CALL COLOR(12,6,6)
130 CALL COLOR(13,7,7)
140 CALL COLOR(16,16,16)
150 CALL COLOR(15,11,11)
160 CALL COLOR(14,13,13)
170 FOR I=1 TO 8
180 CALL COLOR(I,16,1)
190 NEXT I
200 GOTO 650
210 FOR Q=1 TO QA
220 NEXT Q
230 RETURN
240 LC=16.02
250 R=INT(LC)
260 QQ=0
270 C=100*(LC-R)
280 FOR Q=1 TO LEN(A$)
290 QQ=QQ+1
300 IF C+QQ<31 THEN 330
310 R=R+1
320 QQ=1
330 CALL HCHAR(R,C+QQ,ASC(SEG$(A$,Q,1)))
340 NEXT Q
350 LC=LC+1
360 RETURN
370 INPUT "PRESS ENTER ":Q$
380 CALL CLEAR
390 RETURN
400 A$=AA$
410 GOSUB 250
420 FOR II=1 TO 5
430 CALL HCHAR(R,C+1,102,LEN(AA$))
440 LC=LC-1
450 GOSUB 250
460 NEXT II
470 RETURN
480 LC=24.02
490 A$="PRESS ENTER"
500 GOSUB 250
510 CALL KEY(G,KE,ST)
520 IF ST=0 THEN 510
530 GOSUB 550
540 RETURN
550 CALL HCHAR(16,1,32,290)
560 RETURN
570 R=VAL(SEG$(LC$,1,2))
580 LC=VAL(SEG$(LC$,3,2))
590 LN=VAL(SEG$(LC$,5,2))
600 CL=VAL(SEG$(LC$,7,1))
610 FOR II=1 TO LN
620 CALL HCHAR(R+II-1,LC,95+8*CL,LN)
630 NEXT II
640 RETURN
650 LC$="0510083"
660 CALL SCREEN(14)
670 GOSUB 570
680 LC$="0915077"
690 GOSUB 570
700 GOSUB 210
710 A$="LEARNING BASIC"
720 LC=10.10
730 GOSUB 250
740 LC$="1505042"
750 GOSUB 570
760 A$="CHAPTER SIX"
770 GOSUB 210
780 LC=12.07
790 GOSUB 250
800 LC$="0223055"
810 GOSUB 210
820 GOSUB 570
830 A$="FUNCTIONS"
840 LC=18.19
850 GOSUB 210
860 GOSUB 250
870 GOSUB 210
880 CALL SCREEN(12)
890 PRINT "FUNCTIONS ARE A BUILDING":"BLOCK OF PROGRAMMING."
900 QA=1200
910 GOSUB 210
920 CALL SCREEN(7)
930 CALL CLEAR
940 PRINT "IN AN EARLIER CHAPTER":"YOU SAW THE SQUARE ROOT":"FUNCTION:":"     SQR(A).": : : : : : :
950 QA=600
960 GOSUB 210
970 PRINT "SQR(A) IS A FUNCTION.":"IT IS A FUNCTION OF A.": :"THE PROGRAM":"10 A=5":"20 PRINT SQR(A)":"30 END": :
980 PRINT "WOULD PRINT":SQR(5): :
990 GOSUB 370
1000 PRINT "THIS IS A LIST OF THE":"FUNCTIONS THAT I CAN HANDLE.": :
1010 GOSUB 210
1020 GOSUB 1040
1030 GOTO 1180
1040 CALL SCREEN(5)
1050 PRINT "1  ABS (ABSOLUTE VALUE)"
1060 PRINT "2  ATN (ARCTANGENT)"
1070 PRINT "3  COS (COSINE)"
1080 PRINT "4  EXP (EXPONENTIAL)"
1090 PRINT "5  INT (INTEGER)"
1100 PRINT "6  LOG (NATURAL LOGARITHM)"
1110 PRINT "7  RND (RANDOM NUMBER)"
1120 PRINT "8  SGN (SIGN)"
1130 PRINT "9  SIN (SINE)"
1140 PRINT "10 SQR (SQUARE ROOT)"
1150 PRINT "11 TAN (TANGENT)"
1160 PRINT "12 DEF (USER DEFINED)": : :
1170 RETURN
1180 GOSUB 370
1190 PRINT "THESE ARE":"ARITHMETIC FUNCTIONS.":"THERE ARE OTHER TYPES":"OF FUNCTIONS---": :
1200 PRINT "CONTROL FUNCTIONS (LIKE TAB)":"STRING FUNCTIONS  (LIKE POS)": : :
1210 PRINT "IN THIS CHAPTER, THOUGH,":"WE WILL ONLY TALK ABOUT":"ARITHMETIC FUNCTIONS.": : :
1220 GOSUB 370
1230 PRINT "FUNCTIONS ARE----":"FUNCTIONS OF VARIABLES.":"LIKE---": :"   Y=SQR(A)": :"A IS THE VARIABLE.": : :
1240 PRINT "THERE ARE DIFFERENT":"KINDS OF VARIABLES---":"NUMBER VARIABLES  LIKE A"
1250 PRINT "STRING VARIABLES  LIKE A$":"ARRAY VARIABLES   LIKE A(1)":"STRING ARRAYS     LIKE A$(1)": : :
1260 GOSUB 370
1270 PRINT "WHAT CAN WE NAME VARIABLES?": : :"X CAN BE A VARIABLE NAME.":"IT IS A NUMBER VARIABLE.": : :
1280 PRINT "K3 IS ALSO A LEGAL":"VARIABLE NAME FOR A":"NUMBER VARIABLE.": : :
1290 PRINT "NUMBER VARIABLES START WITH":"A LETTER AND CAN BE":"UP TO 15 CHARACTERS LONG.": : : :
1300 GOSUB 370
1310 PRINT "STRING VARIABLES ARE NAMED":"JUST LIKE NUMBER VARIABLES":"EXCEPT THAT THEY MUST"
1320 PRINT "END WITH A DOLLAR SIGN ($).": : : :
1330 GOSUB 370
1340 CALL SCREEN(7)
1350 PRINT "W=4":"K$="CAT"":"REF(3)=9.3":"BREED$(3)="POODLE"":"KE7=5.2": : : :"THESE ARE VALID":"VARIABLE NAMES."
1360 PRINT: : : :
1370 GOSUB 370
1380 PRINT "3W=5":"R$=5.2":"$R="CAT"":"ST="DOG"":"D(3)$="M"": : :
1390 PRINT "THESE ARE WRONG!": : : :
1400 A$="LETTER FIRST!      R$ IS A STRING NAMELETTER FIRST!      ST NOT STRING NAME  D$(3) IS RIGHT"
1410 LC=13.11
1420 GOSUB 250
1430 QA=1200
1440 GOSUB 210
1450 CALL HCHAR(13,1,136,160)
1460 QA=600
1470 GOSUB 210
1480 CALL CLEAR
1490 PRINT "WELL, LET'S GET BACK":"TO FUNCTIONS,";
1500 QA=600
1510 GOSUB 210
1520 PRINT " FINALLY.": :
1530 GOSUB 210
1540 PRINT "WHAT FUNCTION WOULD YOU LIKE":"INFORMATION ABOUT? ":"(ENTER A NUMBER)":"((ENTER 13 TO GO ON))": :
1550 GOSUB 1040
1560 INPUT NU
1570 IF NU>13 THEN 1540
1580 IF NU<1 THEN 1540
1590 CALL SCREEN(13)
1600 CALL CLEAR
1610 ON NU GOTO 1620,1650,1700,1740,1790,1830,1880,2040,2090,2130,2170,2210,2310
1620 PRINT "ABS   (ABSOLUTE VALUE)": : :
1630 PRINT "ABS(A) GIVES THE ABSOLUTE":"VALUE OF 'A'.": : :"ABS(2.1)=";ABS(2.1):"ABS(-5) =";ABS(-5): : :
1640 GOTO 2480
1650 PRINT "ATN   (ARCTANGENT)": : :
1660 PRINT "ATN(A) GIVES THE ARCTANGENT":"OF 'A'. THIS MEANS THAT IF":"'A' IS THE TANGENT OF A":"CERTAIN ANGLE,"
1670 PRINT "ATN(A) IS THE ANGLE.":"THE ANGLE 'A' IS IN RADIANS.": : :RD$: : : :
1680 PRINT "ATN(.5) =";ATN(.5):"ATN(-.7)=";ATN(-.7): : : :
1690 GOTO 2480
1700 PRINT "COS   (COSINE)": : :
1710 PRINT "COS(A) GIVES THE COSINE OF":"THE ANGLE 'A', WHERE 'A' IS":"IN RADIANS.": : :RR$: : :
1720 PRINT "COS(.5)  =";COS(.5):"COS(-1.1)=";COS(-1.1): : :
1730 GOTO 2480
1740 PRINT "EXP   (EXPONENTIAL)": : :
1750 CALL COLOR(9,16,1)
1760 PRINT "EXP(A) GIVES ";CHR$(100);" RAISED TO THE POWER 'A'.": :
1765 PRINT "(";CHR$(100);" IS ROUGHLY ";EXP(1);")": :
1770 PRINT "IF A=EXP(B),":"THEN":"B=LOG(A).": : :"EXP(3)=";EXP(3): : :
1780 GOTO 2480
1790 PRINT "INT   (INTEGER)": : :
1800 PRINT "INT(A) GIVES THE LARGEST":"INTEGER THAT IS NOT GREATER":"THAN 'A'.": : :"INT(5.6) =";INT(5.6)
1810 PRINT "INT(-8.7)=";INT(-8.7): : :
1820 GOTO 2480
1830 PRINT "LOG   (NATURAL LOGARITHM)": : :
1840 PRINT "LOG(A) GIVES THE NATURAL":"LOGARITHM OF 'A'.": :"IF A=EXP(B), THEN":"   B=LOG(A).": :"NATURAL LOGARITHMS"
1850 CALL COLOR(9,16,1)
1860 PRINT "ARE ALSO KNOWN AS LOGARITHMS":"TO THE BASE ";CHR$(100);".": : :
1865 PRINT "LOG(3)=";LOG(3): :"NOTE 'A' MUST NOT BE ZERO":"OR LESS THAN ZERO.": :
1870 GOTO 2480
1880 PRINT "RND   (RANDOM NUMBER)": : :
1890 PRINT "RND GIVES A RANDOM NUMBER.":"THE NUMBER GENERATED WILL":"BE A DECIMAL THAT IS LESS"
1900 PRINT "THAN 1 (BUT NOT 0).": :"IF YOU WANT A RANDOM INTEGER":"BETWEEN X AND Y, USE":"INT((Y-X+1)*RND)+X.": :
1910 PRINT "EVERY TIME RND IS USED IN A":"PROGRAM, ANOTHER RANDOM":"NUMBER IS GENERATED. HOWEVER"
1920 PRINT "EVERY TIME THE PROGRAM IS":"RUN, THE SAME SEQUENCE OF":"RANDOM NUMBERS IS PRODUCED.": : :
1930 INPUT "PRESS ENTER--":Q$
1940 CALL CLEAR
1950 PRINT "TO GET A NEW SEQUENCE OF":"RANDOM NUMBERS EACH TIME THE":"PROGRAM IS RUN, MAKE THE"
1960 PRINT "FIRST STATEMENT":"OF THE PROGRAM,":"   "RANDOMIZE".": : : :
1970 PRINT "10 RANDOMIZE":"20 FOR I=1 TO 10":"30 PRINT RND":"40 NEXT I":"50 END": :"THIS PROGRAM MIGHT GIVE:": :
1980 INPUT "PRESS ENTER---":Q$
1990 FOR I=1 TO 10
2000 PRINT RND
2010 NEXT I
2020 PRINT: :
2030 GOTO 2480
2040 PRINT "SGN   (SIGN)": : :
2050 PRINT "SGN(A) GIVES THE SIGN":"OF THE NUMBER 'A'.": :"IF 'A' IS A POSITIVE NUMBER,":"SGN(A) GIVES 1.": :
2060 PRINT "IF 'A' IS NEGATIVE,":"SGN(A) GIVES -1.": :"IF 'A' IS ZERO,":"SGN('A') GIVES 0.": : :
2070 PRINT "SGN(2.4)=";SGN(2.4):"SGN(0)  =";SGN(0):"SGN(-24)=";SGN(-24): : :
2080 GOTO 2480
2090 PRINT "SIN   (SINE)": : :
2100 PRINT "SIN(A) GIVES THE SINE OF":"THE ANGLE 'A', WHERE 'A' IS":"EXPRESSED IN RADIANS.": : :RR$: : :
2110 PRINT "SIN(.4)  =";SIN(.4):"SIN(-1.2)=";SIN(-1.2): : :
2120 GOTO 2480
2130 PRINT "SQR   (SQUARE ROOT)": : :
2140 PRINT "SQR(A) GIVES THE":"SQUARE ROOT OF 'A'.":"'A' CAN BE ANY":"NON-NEGATIVE NUMBER.": : :
2150 PRINT "SQR(25) =";SQR(25):"SQR(9.2)=";SQR(9.2): : :
2160 GOTO 2480
2170 PRINT "TAN   (TANGENT)": : :
2180 PRINT "TAN(A) GIVES THE TANGENT OF":"THE ANGLE 'A', WHERE 'A' IS":"THE ANGLE IN RADIANS.": : :RR$: : :
2190 PRINT "TAN(1.2)=";TAN(1.2):"TAN(-.7)=";TAN(-.7): : :
2200 GOTO 2480
2210 PRINT "DEF (USER DEFINED FUNCTIONS)": :
2220 PRINT "DEF ALLOWS YOU TO DEFINE":"YOUR OWN FUNCTIONS TO USE":"IN YOUR PROGRAM.": :"FOR EXAMPLE,"
2230 PRINT "DEF IN(X)=2.54*X":"COULD BE USED TO CONVERT":"CENTIMETERS TO INCHES.":"IF IN YOUR PROGRAM, YOU HAD"
2240 PRINT "PRINT IN(10)":"THEN 25.4 WOULD BE PRINTED.": :
2250 PRINT "YOUR FUNCTION CAN BE ANY":"VALID VARIABLE NAME.": :
2260 PRINT "YOU CAN ALSO DEFINE STRING":"VARIABLES WITH THE DEF":"FUNCTION. YOU SHOULD LEARN"
2270 PRINT "ABOUT STRINGS FIRST.":"THE NEXT CHAPTER IS":"""STRINGS""."
2300 GOTO 2480
2310 CALL CLEAR
2320 CALL SCREEN(14)
2330 LC$="0505154"
2340 GOSUB 570
2350 LC$="0606133"
2360 GOSUB 570
2370 LC$="0707115"
2380 GOSUB 570
2390 LC$="0909092"
2400 GOSUB 570
2410 LC$="1111071"
2420 GOSUB 570
2430 A$="THIS IS   ALL THERE IS TO     CHAPTER 6."
2440 LC=10.20
2450 GOSUB 250
2460 QA=1200
2470 GOSUB 210
2475 END
2480 GOSUB 370
2490 CALL COLOR(9,2,2)
2500 GOTO 1540
