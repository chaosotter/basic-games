10 CLS: DIM X$(51)
15 RANDOMIZE TIMER
20 READ A$(1), A$(2), B$(1), B$(2), C$(1), C$(2), D$(1), D$(2), E$(1), E$(2), F$(1), F$(2), G$(1), G$(2)
30 READ H$(1), H$(2), I$(1), I$(2), J$(1), J$(2), K$(1), K$(2), L$(1), L$(2), M$(1), M$(2)
35 READ N$(1), N$(2), P$(1), P$(2), Q$(1), Q$(2), R$(1), R$(2)
36 PRINT: C = 0: Q = 0: IF R = 1 THEN 110
40 PRINT "IN THIS PROGRAM YOU WILL BE ASKED TO UNSCRAMBLE A WORD."
50 PRINT "UNDER THE SCRAMBLED WORDS WILL BE A SENTENCE"
60 PRINT "TO HELP YOU UNSCRAMBLE THIS WORD (OR WORDS)."
70 PRINT "THESE WORDS WILL BE ABOUT NAMES, PLACES AND OR THINGS,"
80 PRINT " ALL YOU HAVE TO DO IS SELECT A NUMBER BETWEEN 1 AND 17."
90 PRINT "THEN YOU'LL HAVE 2 CHANCES TO RESPOND CORRECTLY, AFTER"
100 PRINT "THIS YOU'LL BE ASKED TO SELECT ANOTHER."
105 PRINT "IF YOU THINK THERE ARE 2 WORDS TO UNSCRAMBLE"
106 PRINT "BE SURE TO ADD THE SPACE WHEN ENTERING IT, OR YOU'LL"
107 PRINT "RECEIVE AN INCORRECT RESPONSE.": PRINT
110 INPUT "SELECT A NUMBER BETWEEN 1 AND 17 TO EXECUTE GENERATOR"; X
111 Q = Q + 1: IF Q = 17 THEN 5020
115 IF X < 1 OR X > 17 THEN PRINT "OUT OF RANGE... TRY AGAIN.": Q = Q: GOTO 110
120 CLS: ON X GOTO 130, 200, 280, 370, 460, 550, 640, 730, 820, 910, 1000, 1090, 1180, 1270, 1360, 1450, 1540
130 A = 0
140 GOSUB 3020: PRINT A$(1): GOSUB 3040
150 PRINT "THE BEATLES ORIGINATED IN THIS ENGLISH TOWN";
160 INPUT X$
165 GOSUB 3045
170 IF X$ <> A$(2) THEN 180
175 GOTO 190
180 GOSUB 2000: IF A <> 2 THEN 140
184 GOSUB 2050
185 GOTO 110
190 GOSUB 2090: GOTO 110
200 A = 0
210 GOSUB 3020: PRINT B$(1): GOSUB 3040
220 PRINT "IN 1976 THIS 4 TON SPACE CRAFT SET DOWN SAFELY ON MARS";
230 INPUT X$
240 GOSUB 3045
250 IF X$ <> B$(2) THEN 260
255 GOTO 190
260 GOSUB 2000: IF A <> 2 THEN 210
264 GOSUB 2050
265 GOTO 110
280 A = 0
290 GOSUB 3020: PRINT C$(1): GOSUB 3040
300 PRINT "THIS SMALL COMPONENT WAS INVENTED IN 1948";
310 INPUT X$
320 GOSUB 3045
330 IF X$ <> C$(2) THEN 340
335 GOTO 190
340 GOSUB 2000: IF A <> 2 THEN 290
350 GOTO 110
370 A = 0
380 GOSUB 3020: PRINT D$(1): GOSUB 3040
390 PRINT "THIS PRESIDENT, IN 1862, GAVE THE SLAVES FREEDOM";
400 INPUT X$
410 GOSUB 3045
420 IF X$ <> D$(2) THEN 430
425 GOTO 190
430 GOSUB 2000: IF A <> 2 THEN 380
440 GOTO 110
460 A = 0
470 GOSUB 3020: PRINT E$(1): GOSUB 3040
480 PRINT "AMERICAN ASTRONAUT FIRST TO STEP ON MOON";
490 INPUT X$
500 GOSUB 3045
510 IF X$ <> E$(2) THEN 520
515 GOTO 190
520 GOSUB 2000: IF A <> 2 THEN 470
525 GOSUB 2050
530 GOTO 110
550 A = 0
560 GOSUB 3020: PRINT F$(1): GOSUB 3040
570 PRINT "IN 1927, FOR THE FIRST TIME, THIS WAS USED IN A MOVIE";
580 INPUT X$
590 GOSUB 3045
600 IF X$ <> F$(2) THEN 610
605 GOTO 190
610 GOSUB 2000: IF A <> 2 THEN 560
615 GOSUB 2050
620 GOTO 110
640 A = 0
650 GOSUB 3020: PRINT G$(1): GOSUB 3040
660 PRINT "THIS APPLIANCE WAS FIRST INTRODUCED 72 YEARS AGO";
670 INPUT X$
680 GOSUB 3045
690 IF X$ <> G$(2) THEN 700
695 GOTO 190
700 GOSUB 2000: IF A <> 2 THEN 650
705 GOSUB 2050
710 GOTO 110
730 A = 0
740 GOSUB 3020: PRINT H$(1): GOSUB 3040
750 PRINT "THE FIRST LONG SUSPENSION BRIDGE, BUILT 1937";
760 INPUT X$
770 GOSUB 3045
780 IF X$ <> H$(2) THEN 790
785 GOTO 190
790 GOSUB 2000: IF A <> 2 THEN 740
795 GOSUB 2050
800 GOTO 110
820 A = 0
830 GOSUB 3020: PRINT I$(1): GOSUB 3040
840 PRINT "HE WAS CALLED THE KING OF ROCK & ROLL";
850 INPUT X$
860 GOSUB 3045
870 IF X$ <> I$(2) THEN 880
875 GOTO 190
880 GOSUB 2000: IF A <> 2 THEN 830
885 GOSUB 2050
890 GOTO 110
910 A = 0
920 GOSUB 3020: PRINT J$(1): GOSUB 3040
930 PRINT "OFTEN CALLED THE HEART OF YOUR COMPUTER";
940 INPUT X$
950 GOSUB 3045
960 IF X$ <> J$(2) THEN 970
965 GOTO 110
970 GOSUB 2000: IF A <> 2 THEN 920
975 GOSUB 2050
980 GOTO 110
1000 A = 0
1010 GOSUB 3020: PRINT K$(1): GOSUB 3040
1020 PRINT "COOKING TIME WAS CUT WHEN THIS APPLIANCE WAS INVENTED";
1030 INPUT X$
1040 GOSUB 3045
1050 IF X$ <> K$(2) THEN 1060
1055 GOTO 190
1060 GOSUB 2000: IF A <> 2 THEN 1010
1065 GOSUB 2050
1070 GOTO 110
1090 A = 0
1100 GOSUB 3020: PRINT L$(1): GOSUB 3040
1110 PRINT "USED FOR COMMUNICATION IN MILLIONS OF PLACES";
1120 INPUT X$
1130 GOSUB 3045
1140 IF X$ <> L$(2) THEN 1150
1145 GOTO 190
1150 GOSUB 2000: IF A <> 2 THEN 1100
1155 GOSUB 2050
1160 GOTO 110
1180 A = 0
1190 GOSUB 3020: PRINT M$(1): GOSUB 3040
1200 PRINT "THIS IS WHAT PEOPLE LIKE TO RELAX IN FRONT OF";
1210 INPUT X$
1220 GOSUB 3045
1230 IF X$ <> M$(2) THEN 1240
1235 GOTO 190
1240 GOSUB 2000: IF A <> 2 THEN 1190
1245 GOSUB 2050
1250 GOTO 110
1270 A = 0
1280 GOSUB 3020: PRINT N$(1): GOSUB 3040
1290 PRINT "CALLED THE WINDY CITY";
1300 INPUT X$
1310 GOSUB 3045
1320 IF X$ <> N$(2) THEN 1330
1325 GOTO 190
1330 GOSUB 2000: IF A <> 2 THEN 1280
1340 GOSUB 2050
1350 GOTO 110
1360 A = 0
1370 GOSUB 3020: PRINT P$(1): GOSUB 3040
1380 PRINT "IT CAN DO JUST ABOUT ANYTHING, GIVEN THE INFORMATION";
1390 INPUT X$
1400 GOSUB 3045
1410 IF X$ <> P$(2) THEN 1420
1415 GOTO 190
1420 GOSUB 2000: IF A <> 2 THEN 1370
1430 GOSUB 2050
1440 GOTO 110
1450 A = 0
1460 GOSUB 3020: PRINT Q$(1): GOSUB 3040
1470 PRINT "DEEMED DANGEROUS FOR YOUR HEALTH";
1480 INPUT X$
1490 GOSUB 3045
1500 IF X$ <> Q$(2) THEN 1510
1505 GOTO 190
1510 GOSUB 2000: IF A <> 2 THEN 1460
1520 GOSUB 2050
1530 GOTO 110
1540 A = 0
1550 GOSUB 3020: PRINT R$(1): GOSUB 3040
1560 PRINT "THIS ACTOR PLAYED THE SUNDANCE KID";
1570 INPUT X$
1580 GOSUB 3045
1590 IF X$ <> R$(2) THEN 1600
1595 GOTO 190
1600 GOSUB 2000: IF A <> 2 THEN 1550
1605 GOSUB 2050
1610 GOTO 110
2000 GOSUB 3020: PRINT "INCORRECT RESPONSE": FOR I = 1 TO 1500: NEXT
2010 CLS: RETURN
2050 GOSUB 3040: PRINT "YOU'VE HAD 2 TRIES AT THE SAME QUESTION, SORRY"
2060 FOR I = 1 TO 1500: NEXT
2070 PRINT: PRINT
2080 Q = Q - 1: RETURN
2090 GOSUB 3020: PRINT "VERY GOOD !!": FOR I = 1 TO 1500: NEXT
3000 PRINT: PRINT
3010 C = C + 1: RETURN
3020 PRINT: PRINT: PRINT: PRINT TAB(15);
3030 RETURN
3040 PRINT: PRINT: PRINT: RETURN
3045 A = A + 1: RETURN
3050 DATA IVPLOROEL,LIVERPOOL
3060 DATA IKGIVNTRBOO,VIKING ROBOT
3070 DATA RSTANORTIS,TRANSISTOR
3080 DATA MAARABHNCOLINL,ABRAHAM LINCOLN
3090 DATA LINETRRAMGSNO,NEIL ARMSTRONG
4000 DATA DOSUN,SOUND
4010 DATA HASISDHREW,DISHWASHER
4020 DATA NDLOETAGEG,GOLDEN GATE
4030 DATA SLEIVSPERELY,ELVIS PRESLEY
4040 DATA RPORMCISSRCEOO,MICROPROCESSOR
4050 DATA ROMCIAWVE,MICROWAVE
4060 DATA EPHENOTLE,TELEPHONE
4070 DATA NTLEEVSIOI,TELEVISION
4080 DATA GAHCICO,CHICAGO
4090 DATA RPUMCOTE,COMPUTER
5000 DATA RATETGICE,CIGARETTE
5010 DATA BRORETFDERDOR,ROBERT REDFORD
5020 FOR I = 1 TO 2000: NEXT
5030 CLS
5040 PRINT
5050 PRINT "YOU'VE ANSWERED"; Q; "OF THE 17 QUESTIONS"
5060 PRINT "TOTAL CORRECT OF THESE ARE"; C
5070 PRINT
5080 PRINT "WOULD YOU LIKE TO TRY SOME MORE";
5090 INPUT X$
5100 IF X$ = "YES" THEN RESTORE: GOTO 5130
5110 PRINT "YOU CHICKEN !!"
5120 END
5130 PRINT "DO YOU NEED INSTRUCTIONS";
5140 INPUT X$
5150 IF X$ = "YES" THEN 20
5160 R = 1: GOTO 20
