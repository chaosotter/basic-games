
1 '**      TRIGSHOW       **
3 '**  BY CARLOS RUMBAUT  **
4 '**     JULY, 1982      **
10 DIM N$(6):N$(0)="E2F2G2H2"
11 N$(1)="BR2U2D4"
12 N$(2)="BD3L3U3R3U3L3"
13 N$(3)="D3L3BU6R3D3L2"
14 N$(4)="D6U3L3U3"
15 N$(5)="R3L3D2R3D3L3"
16 N$(6)="D6R3U3L3"
18 AN$="U8R4D4L4R4D4BR4BU3R3BU3L3R3BU2BR3":S$="D8R4U3L4":F$="BD8R4U4L4U4R4BR4R4D8BR3R1BR3R4U4L2R2U4L4"
20 PI=3.1416:PI$="BU2R3D4U4R4D4U4R3":P2$="R2D3L2D3R2BU3BR3"+PI$
21 PMODE4,1:CLS
25 PRINTSTRING$(10,168)" TRIG SHOW "STRING$(11,164);
30 PRINTSTRING$(32,227)
35 PRINT:PRINT:PRINT"     THIS PROGRAM EXPLAINS AND"
40 PRINT"ILLUSTRATES SOME  FUNDAMENTAL"
45 PRINT"CONCEPTS IN TRIGONOMETRY, THEN"
50 PRINT"GIVES A SHORT QUIZ AFTER EACH   SECTION."
55 PRINT:PRINT" TO 'TURN THE PAGE', PRESS THE  SPACE BAR.  PRESSING <SHIFT @>  FREEZES CURRENT DISPLAY UNTIL   ANOTHER KEY IS PRESSED."
60 IF INKEY$=""THEN60
65 CLS:PRINT@10,"- FOREWORD -"
70 PRINT:PRINT:PRINT"  TRIGONOMETRY WAS FIRST THOUGHTUP TO MEASURE RATIOS WITHIN TRI-ANGLES."
75 PRINT"   A VERY HANDY APPLICATION IT  HAS COME TO HAVE IS TO RELATE   CIRCULAR MEASUREMENTS TO LINEAR ONES."
80 PRINT:PRINT"  THIS MAKES CIRCLES AND CURVES MUCH MORE MANAGEABLE."
90 IF INKEY$=""THEN90
200 CLS:PRINT:PRINT:PRINT"SELECTIONS:"
205 PRINTSTRING$(11,204)
210 PRINT:PRINTTAB(10)"1. PI"
220 PRINTTAB(10)"2. RADIANS"
230 PRINTTAB(10)"3. SINE"
240 PRINTTAB(10)"4. COSINE"
255 PRINT:PRINT"TO RETURN TO THIS LIST, TYPE <L>";
260 PRINTSTRING$(32,195)+STRING$(32,236);
270 INPUT "WHICH WOULD YOU LIKE";I
280 ON I GOTO 1000,2000,3000,4000:END
999 '
1000 CLS:T$="PI":GOSUB 6000
1005 PRINT:PRINT"WHERE DOES PI COME FROM?"
1010 PRINT" PI IS THE NUMBER OF DIAMETERS  THAT FIT ALONG THE CIRCUMFERENCE OF A CIRCLE."
1020 PRINT:PRINT"THE NEXT PAGE SHOWS A CIRCLE OF DIAMETER 1 ROLLED OUT THE LENGTH OF ITS CIRCUMFERENCE, 3.14159  (APPROXIMATELY)."
1055 GOSUB 6160
1095 PCLS:SCREEN 1,1
1100 LINE(32,150)-(220,150),PSET
1105 LINE(34,90)-(34,150),PSET
1110 CIRCLE(34,158),3
1120 DRAW "BM216,157"+PI$
1130 FOR X=0 TO 2*PI STEP PI/12
1140 C=34+30*X:S=.25+X/(2*PI)
1145 IF S>1 THEN S=S-1
1160 CIRCLE(C,120),30,1,1,S,.25
1165 SOUND C,1
1170 IF X=0 THEN 1200
1190 CIRCLE(C,120),30,0,1,S,.25
1200 NEXT X
1210 GOSUB 6160
1220 CLS:T$="QUIZ":GOSUB 6000
1225 IF LEFT$(R$,1)="Y"THEN1095
1230 PRINT:PRINT"   HOW MANY RADII WILL FIT ALONG THE CIRCUMFERENCE OF A CIRCLE?"
1240 A$="6":B$="2*PI":C$="PI/2":R$="B":GOSUB6060
1280 PRINT:PRINT"WHAT IS THE DIAMETER OF A CIRCLEWITH A CIRCUMFERENCE OF 31.4159?"
1290 A$="10":B$="2*PI":C$="20":R$="A":GOSUB6060
1320 PRINT:PRINT"   WHICH FORMULA FOR THE CIRCUM-FERENCE OF A CIRCLE IS CORRECT?"
1321 PRINT"(R=RADIUS)"
1330 A$="C=PI*R^2":B$="C=PI*R/2":C$="C=PI*R*2":R$="C":GOSUB6060
1410 IF INKEY$="" THEN 1410 ELSE 200
1999 '
2000 CLS:T$="RADIANS":GOSUB 6000
2010 PRINT:PRINT"    AN ANGLE IS THE SIZE OF ONE RADIAN WHEN IT MARKS OFF AN ARC THE SIZE OF ONE RADIUS."
2020 PRINT"REMEMBER YOU CAN FIT 2*PI RADII ALONG THE CIRCUMFERENCE.  THERE-FORE, 2*PI RADIANS WILL FIT IN- SIDE OF A CIRCLE."
2025 GOSUB 6160
2030 CLS:PRINT:PRINT"   THE NEXT PAGE SHOWS A CIRCLE MARKED FIRST IN WHOLE RADIANS,  THEN IN FRACTIONS OF PI RADIANS."
2035 PRINT"THESE LATTER CORRESPOND TO THE  STANDARD ANGLES OF 45, 60, 90,  ETC., DEGREES."
2040 GOSUB 6160
2045 PCLS:SCREEN 1,1
2050 CIRCLE(128,96),45
2053 FOR X=4 TO 104 STEP 4
2055 FOR X=0 TO 6
2060 LINE(128,96)-(128+COS(X)*45,96-SIN(X)*45),PSET
2061 NEXT X
2062 CIRCLE(180,96),3:PLAY"C"
2063 DRAW"BM155,54"+N$(1):PLAY"D"
2064 DRAW"BM107,51"+N$(2):PLAY"E"
2065 DRAW"BM78,89"+N$(3):PLAY"F"
2066 DRAW"BM95,134"+N$(4):PLAY"G"
2067 DRAW"BM142,144"+N$(5):PLAY"A"
2068 DRAW"BM176,110"+N$(6):PLAY"B"
2075 FOR T=1 TO 1500:NEXTT
2080 PCLS:CIRCLE(128,96),45
2085 DRAW"BM128,96;R45":CIRCLE(180,96),2
2090 DRAW"BM128,96;E32;BU4"+PI$+"BR4NG3BR6"+N$(4)
2091 SOUND 91,4
2095 LINE(128,96)-(151,57),PSET:DRAW"BM151,52"+PI$+"BR4NG3BR6BD2"+N$(3)
2096 SOUND 96,4
2100 DRAW"BM128,96;U45BU7BL7"+PI$+"BR4NG3BR6BD2"+N$(2)
2101 SOUND 101,4
2105 DRAW"BM128,96;L45BL13"+PI$
2106 SOUND 106,4
2110 DRAW"BM128,96;D45;BD6BL8"+N$(3)+"R2BR2"+PI$+"BR4NG3BR6BD2"+N$(2)
2111 SOUND 111,4
2115 CIRCLE(180,96),2,0
2120 DRAW"BM178,96"+P2$
2121 SOUND 121,4
2130 GOSUB 6160
2160 CLS:T$="QUIZ":GOSUB6000
2165 IF LEFT$(R$,1)="Y"THEN2045
2170 PRINT:PRINT"   HOW MANY DEGREES ARE THERE INPI RADIANS?"
2180 A$="180":B$="60*PI":C$="90":R$="A":GOSUB 6060
2220 PRINT:PRINT"HOW MANY RADIANS ARE THERE IN A 90-DEGREE ANGLE?"
2230 A$="1.5":B$="90-PI":C$="PI/2":R$="C":GOSUB 6060
2235 PRINT:PRINT"HOW MANY DEGREES ARE THERE IN A RADIAN?"
2240 A$="180/PI":B$="2*PI":C$="PI/180":R$="A":GOSUB 6060
2250 IF INKEY$="" THEN 2250 ELSE 200
2999 '
3000 CLS:T$="SINE":GOSUB 6000
3010 PRINT@53,CHR$(140):PRINT@83,CHR$(140)+STRING$(2,128):PRINT@113,CHR$(140)+STRING$(4,128)
3020 PRINT@132,"HYPOTENUSE "+CHR$(140)+STRING$(6,128)
3030 PRINT@173,CHR$(140)+STRING$(8,128)+" OPPOSITE"
3040 PRINT@203,CHR$(140)+STRING$(10,128)
3050 PRINT@229,"(A) "+CHR$(140)+STRING$(12,128)
3060 PRINT@267,"ADJACENT"
3070 PRINT:PRINT"    THE TRIGONOMETRIC FUNCTIONS,LIKE SINE, RELATE AN ANGLE(A) TOTHE LENGTHS OF THE SIDES OF ITS RIGHT TRIANGLE."
3080 GOSUB 6160
3100 CLS:PRINT:PRINT"THE SINE OF AN ANGLE IS EQUAL TOTHE RATIO OF THE LENGTHS OF THE OPPOSITE SIDE TO THE HYPOTENUSE.  SINE = OPPOSITE / HYPOTENUSE"
3200 PRINT:PRINT"  IN A CIRCLE OF RADIUS ONE, THEHYPOTENUSE IS 1 AND SO THE SINE OF AN ANGLE EQUALS ITS OPPOSITE SIDE."
3210 PRINT"THE NEXT PAGE PLOTS THE OPPOSITESIDE ALONG A LINE WHICH LINEARLYREPRESENTS RADIANS."
3220 GOSUB 6160
3250 PCLS:SCREEN1,1
3300 LINE(10,90)-(240,90),PSET
3310 LINE(82,90)-(95,90),PRESET
3320 LINE(10,175)-(240,175),PSET
3330 LINE(82,175)-(95,175),PRESET
3340 DRAW"BM12,179;R1;BR3;U2D4"
3350 CIRCLE(45,179),3:CIRCLE(97,179),3
3360 DRAW"BM75,177;D4"
3370 DRAW"BM167,179"+PI$:DRAW"BM235,177"+P2$
3380 CIRCLE(45,90),30
3390 FOR X=0 TO PI*2 STEP PI/15
3395 H=45+COS(X)*30:V=90-SIN(X)*30
3400 LINE(H,90)-(H,V),PSET
3405 LINE(95+23*X,V)-(95+23*X,90),PSET
3410 LINE(H,V)-(45,90),PSET
3415 SOUND 150+SIN(X)*60,1
3420 IF X>0 THEN LINE(45,90)-(H,V),PRESET
3425 IFX>PI THEN LINE(10,90)-(82,90),PSET
3428 LINE(H,V)-(H,90),PRESET
3430 NEXT X
3440 GOSUB 6160
3450 CLS:T$="QUIZ":GOSUB 6000
3455 IF LEFT$(R$,1)="Y"THEN3250
3460 PRINT:PRINT"   AFTER WHAT NUMBER OF RADIANS DOES THE VALUE OF SINE TURN NEG-ATIVE?"
3470 A$="0":B$="PI":C$="2*PI":R$="B":GOSUB 6060
3480 PRINT:PRINT"   AT WHAT ANGLE IS SINE AT ITS HIGHEST POINT?"
3490 A$="0":B$="PI/2":C$="-PI/2":R$="B":GOSUB 6060
3500 PRINT:PRINT"WHAT IS THE SINE OF 3*PI/2?"
3510 A$="0":B$="1":C$="-1":R$="C":GOSUB6060
3520 IF INKEY$=""THEN 3520 ELSE 200
3999 '
4000 CLS:T$="COSINE":GOSUB 6000
4010 PRINT:PRINT"THE COSINE OF AN ANGLE IS EQUAL  TO THE RATIO OF THE LENGTHS OF THE ADJACENT SIDE TO THAT OF THE HYPOTENUSE. THAT IS:              COSINE=ADJACENT/HYPOTENUSE"
4020 PRINT"   TO SHOW HOW ANGULAR MEASURE  CORRESPONDS TO THE COSINE ON THENEXT PAGE, THE CIRCLE IS PLOTTEDWITH A VERTICAL X-AXIS."
4030 PRINT"THIS MAKES THE ADJACENT SIDE OF THE ANGLE VERTICAL."
4040 GOSUB 6160
4050 PCLS:SCREEN 1,1
4060 LINE(95,90)-(240,90),PSET: LINE(45,57)-(45,123),PSET
4070 DRAW"BM81,120;R1;BR3;U2D4"
4080 CIRCLE(85,90),3:CIRCLE(97,149),3
4090 DRAW"BM85,60;D4":DRAW"BM167,149;"+PI$:DRAW"BM235,147"+P2$
4100 CIRCLE(45,90),30
4110 FOR X=0 TO PI*2 STEP PI/15
4115 H=45-SIN(X)*30:V=90-COS(X)*30
4120 LINE(H,V)-(45,V),PSET
4125 LINE(95+23*X,V)-(95+23*X,90),PSET
4130 LINE(45,90)-(H,V),PSET
4135 SOUND 150+COS(X)*60,1
4140 IF X>0 THEN LINE-(45,90),PRESET
4145 IF X>PI THEN LINE(45,57)-(45,123),PSET
4148 LINE(H,V)-(45,V),PRESET
4150 NEXT X
4160 GOSUB 6160
4170 CLS:PRINT:PRINT"   DEFINING THE TRIG FUNCTIONS  IN TERMS OF THE SIDES OF A RIGHTTRIANGLE INCLUDES ONLY THE ACUTEANGLES(<PI/2).  THE DEFINITIONS MUST BE EXPANDED IN TERMS OF A  CIRCLE."
4180 PRINT"   INSTEAD OF THE ADJACENT SIDE,WE USE THE HORIZONTAL DISTANCE  BETWEEN THE CENTER OF THE CIRCLEAND THE END OF THE ARC.";
4190 PRINT"  INSTEADOF THE OPPOSITE SIDE, WE USE THEVERTICAL DISTANCE BETWEEN THE   CENTER OF THE CIRCLE AND THE ENDOF THE ARC."
4260 GOSUB 6160
4270 CLS:T$="QUIZ":GOSUB 6000
4275 IF LEFT$(R$,1)="Y"THEN4050
4280 PRINT:PRINT"   THE COSINE OF 0 IS THE SAME  AS THE COSINE OF:"
4290 A$="PI":B$="2*PI":C$="PI/2":R$="B":GOSUB6060
4300 PRINT:PRINT"FOR VALUES OF X LESS THAN 0 AND GREATER THAN 2*PI, THE GRAPH OF COS(X) CONTINUES IN THE SAME RE-PEATING CURVE. WHAT VALUE DO YOUSUPPOSE THE COS(3*PI) HAS?"
4310 A$="0":B$="1":C$="-1":R$="C":GOSUB6060
4320 PRINT:PRINT"  HOW ABOUT COS(-PI/2)?"
4330 A$="0":B$="1":C$="-1":R$="A":GOSUB6060
4340 IF INKEY$=""THEN4340 ELSE 200
5999 '
6000 'TITLE ROUTINE
6010 PRINTCHR$(241)+STRING$(LEN(T$),243)+CHR$(242)
6020 PRINTCHR$(245)+T$+CHR$(250)
6030 PRINTCHR$(244)+STRING$(LEN(T$),252)+CHR$(248)
6035 IF T$="QUIZ"THEN INPUT"DO YOU WANT TO SEE THE DISPLAY  AGAIN";R$
6040 RETURN
6050 'QUIZ ROUTINE
6060 PRINT:PRINTTAB(12)"A. "+A$
6070 PRINTTAB(12)"B. "+B$
6080 PRINTTAB(12)"C. "+C$
6090 INPUT Q$:IF Q$<>R$ THEN 6090
6100 PRINT"THAT'S RIGHT":PLAY"T4A#L9EG#"
6111 RETURN
6150 'TURN-THE-PAGE ROUTINE
6160 I$=INKEY$
6170 IF I$="L" THEN 200
6175 IF I$=""THEN 6160
6180 RETURN