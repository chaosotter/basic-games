
1 '   NOTECARD
2 '   BY R.F.MILLER,JR.
3 '
10 CLS
20 PCLEAR 4:PMODE 4,1:COLOR 4,1:PCLS
30 DIM N$(14),B(6,6)
32 DATA 8,20,34,34,62,34,34,60,18,18,28,18,18,60,28,34,32,32,32,34,28,60,18,18,18,18,18,60,62,32,32,60,32,32,62,62,32,32,60,32,32,32,30,32,32,38,34,34,28
34 FOR I=0 TO 6:CLS I+2
36 FOR J=0 TO 6:READ B(I,J):NEXT J
38 NEXT I
40 DATA CB,DB,EB,FB,GB,AB,BB,C,D,E,F,G,A,B,CA
50 FOR I = 0 TO 14: READ N$(I): NEXT I
60 CLS:PRINT@39, STRING$(17,"*")
70 PRINT@103, "MUSIC FLASH CARDS"
75 PRINT@135, "BY R.F.MILLER,JR."
80 PRINT@199, STRING$(17,"*")
90 PRINT@261, "THE COMPUTER WILL SHOW"
100 PRINT@293, "YOU NOTES.  YOU MUST"
110 PRINT@325, "ENTER THE CORRECT NOTE"
120 PRINT@357, "IN THE TIME ALLOWED."
130 PRINT@421, "HIT ANY KEY TO CONTINUE":Q$=INKEY$:IF Q$="" THEN 130
140 CLS:PRINT@101, "FOR THE NOTES c TO b,"
150 PRINT@133, "JUST TYPE THE LETTER AND"
160 PRINT@165, "HIT <ENTER>.  FOR NOTES"
170 PRINT@197, "BELOW c, TYPE THE LETTER"
180 PRINT@229, "AND <B> FOR 'BELOW'."
190 PRINT@261, "FOR HIGH c, TYPE <CA>."
200 PRINT@293, "IF YOU WANT TO ERASE, HIT"
210 PRINT@325, "<BACKSPACE>.  IT WILL"
220 PRINT@357, "ERASE ALL THE LETTERS"
230 PRINT@389, "YOU HAVE TYPED.":GOSUB 2000
240 PRINT@453, "HIT ANY KEY TO CONTINUE":Q$=INKEY$:IF Q$="" THEN 240
250 CLS: AC=0
260 PRINT@37, "HOW MANY NOTES DO YOU"
270 PRINT@69, "WANT TO TRY?  ENTER THE"
280 PRINT@101, "NUMBER."
290 INPUT MX
300 PRINT@197, "YOU HAVE 5 SECONDS FOR"
310 PRINT@229, "EACH ANSWER, UNLESS YOU"
320 PRINT@261, "WANT A DIFFERENT TIME."
330 PRINT@293, "IF SO, ENTER THAT TIME."
340 PRINT@325, "IF 5 SECONDS IS OK,"
345 PRINT@357, "JUST HIT <ENTER>"
350 INPUT IT
360 IF IT>0 THEN T=IT*60 ELSE T=300
370 PRINT@453, "READY?"
380 PRINT@485, "TO START, PRESS ANY KEY"
390 S$=INKEY$:N=RND(15)
400 IF S$="" THEN 390
430 SCREEN 1,1
450 FOR M = 1 TO MX
460 N = RND(15)-1
480 GOSUB 3000:GOSUB 5000
490 TIMER=0:A$="":K$="":POKE 135,0:LO=2351
500 IF TIMER>T THEN 570
510 K$ = INKEY$
520 IF K$ = "" THEN 500
530 IF K$ = CHR$(13) OR (LEN(A$)=2 AND K$<>CHR$(8)) THEN 580
540 IF K$ = CHR$(8) THEN A$ = "":GOSUB 4090:LO=2351:GOTO 500
550 C=ASC(K$)-65:IF C>=0 AND C<7 THEN A$=A$+K$:GOSUB 6000:LO=2352
560 GOTO 500
570 CLS: PRINT@101, "TIME'S UP!  THE CORRECT"
575 PRINT@133, "ANSWER IS "N$(N):GOTO 650
580 CLS
590 IF A$<>N$(N) THEN 630
600 PRINT@101, "RIGHT!!"
610 AC=AC+1
620 GOTO 650
630 PRINT@101, "WRONG!!  THE CORRECT"
640 PRINT@133, "ANSWER IS "N$(N)
650 PRINT@165, "YOUR SCORE IS"
660 PRINT@197, AC" RIGHT"
670 PRINT@229, M-AC" WRONG"
675 FOR I=1 TO 1200:NEXT I
680 GOSUB 4000
685 IF M<MX THEN SCREEN 1,1
690 NEXT M
700 PRINT@293, "DO YOU WANT TO TRY"
710 PRINT@325, "AGAIN?  HIT <Y> OR <N>."
720 Q$=INKEY$
730 IF Q$="" THEN 720
740 IF Q$="Y" THEN 250
750 IF Q$="N" THEN 780
760 PRINT "YOU MUST PRESS <Y> OR <N>"
770 GOTO 720
780 CLS 3
790 PLAY "O3T4L4.DL8DL1.GL4.DL8GL1.BL4.DL8GL2BL4.DL8GL2BL4.DL8GL1.BL4.GL8BO4L1DO3L2BL2GL1DL2.DL4DL1.G"
800 CLS
810 END
2000 'SUB TO DRAW STAFF
2010 LINE(75,56)-(75,152),PSET
2020 FOR W=56 TO 120 STEP 64
2030 FOR Y=0 TO 32 STEP 8
2040 LINE(75,W+Y)-(175,W+Y),PSET
2050 NEXT Y
2060 LINE(175,W)-(175,W+32),PSET
2070 NEXT W
2080 T1$="BM87,91;H1L1G2D3F2R3E2U1E1U3H1U6H1U6H1U5H1U5H1U2H1U4H1U4E1U2E2"
2090 T2$="BM88,47;F1D2F1D4G1D5G1D1G3D1G4D1G1D8F1D1F3R1F1R5E1R1E2U5H3L4G1L1G1D1F1"
2100 B$="BM81,149;E1R1E1R1E3R1E3U1E2U1E1U9H1U1H3L1H1L5G1L1G1D1G1D4F1D1F1R1F1R2E1R1E1"
2110 DRAW T1$:DRAW T2$:DRAW B$
2120 CIRCLE(101,124),3
2130 CIRCLE(101,132),3
2140 RETURN
3000 'SUB TO DRAW NOTES
3010 IF N=7 THEN LINE(115,96)-(135,96),PSET
3020 IF N>6 THEN SL=124 ELSE SL=140
3030 CIRCLE(125,SL-4*N),4
3040 LINE(129,SL-4*N)-(129,SL-20-4*N),PSET
3050 RETURN
4000 'SUB TO ERASE NOTES AND CHARACTERS
4030 FOR W=49 TO 145 STEP 8
4040 LINE(121,W)-(129,W+6),PRESET,BF
4050 NEXT W
4060 LINE(121,89)-(121,119),PRESET,BF
4070 LINE(121,48)-(129,48),PRESET
4080 LINE(115,96)-(135,96),PRESET
4090 LINE(120,24)-(135,35),PRESET,BF
4100 RETURN
5000 'SUB TO PLAY NOTES
5010 IF N>6 AND N<14 THEN P$="O3"+N$(N)
5020 IF N<7 THEN P$="O2"+LEFT$(N$(N),1)
5030 IF N=14 THEN P$="O4;C"
5040 PLAY P$:RETURN
6000 'SUB TO PRINT CHARACTERS
6010 FOR J=0 TO 6
6020 POKE LO+32*J,255-B(C,J)
6030 NEXT J
6040 RETURN
