
100 CLS3'MAIN MENU**********
105 SOUND100,10
110 PRINT@192,"THESAURUS OF GOVERNMENT PHRASES"
112 PRINT@294,"(THE JARGON GENERATOR)";:GOSUB 500
115 PRINT@389,"(C) 1983, GLENN B KNIGHT";:GOSUB500:CLS4
120 PRINT"THIS PROGRAM WILL CREATE A      PHRASE WHICH CAN BE ADDED TO A
125 PRINT"GOVERNMENT REPORT TO ADD A RING OF AUTHORITY" : GOSUB 500
130 PRINT:PRINT"IT DOES NOT MATTER AT ALL THAT  THE PHRASE MAKES ABSOLUTELY NO  SENSE.  NO BUREAUCRAT WILL"
135 PRINT"ADMIT THAT HE OR SHE DOES NOT   UNDERSTAND WHAT IT MEANS":GOSUB 500:GOSUB 500
145 CLEAR150
150 PRINT:PRINT"DO YOU PREFER:"
160 PRINT"<1> A PURELY RANDOM PHRASE","<2> TO SELECT THE NOUN"
170 PRINT"* PRESS NUMBER OF YOUR CHOICE"
175 A$=INKEY$:IFA$=""THEN175
177 A=VAL(A$)
180 ON A GOTO 200,600
190 GOTO175
200 CLS'RANDOM PHRASE GENERATOR
205 RESTORE
210 PRINT@171,"OBFUSCATING"
215 GOSUB 550
220 N=RND(10)
230 FORX=1 TO N
240 READ N$:NEXT
245 RESTORE
250 B=RND(20)
260 IF B<11 THEN GOTO 250
270 FORX=1 TO B
280 READ B$:NEXT
285 RESTORE
290 IFP$<>""THEN GOTO 800
300 P=RND(30)
310 IF P<21 THEN GOTO 300
320 FORX=1 TO P
330 READ P$:NEXT
340 GOTO 800
500 FORX=1 TO 999:NEXT:SOUND210,5:RETURN
550 Z=RND(75):IFZ<10 THEN 550
560 FORY=1TOZ
570 S=RND(255):SOUND S,3
580 NEXT Y
590 RETURN
600 CLS'SELECTED NOUN**********
605 RESTORE
610 FORQ=1 TO 30
620 READ Q$
630 IF Q<21 THEN GOTO 640 ELSE PRINTQ$
640 NEXT
650 PRINT:PRINT"TYPE A NOUN FROM THE ABOVE LIST OR TYPE IN YOUR OWN NOUN TO BE  USED."
660 INPUT P$
665 RESTORE
670 GOTO 200
800 CLS0'DISPLAY ROUTINE*******
810 PRINT:PRINT:PRINT"YOUR INTEGRATED RESPONSE PHRASE IS:
815 SOUND200,5
820 PRINT@162,N$:PRINT@196,B$:PRINT@230,P$
830 GOSUB 500:PRINT@384,"ANOTHER PHRASE? (Y OR N)"
855 T$=INKEY$:IF T$=""THEN 855
860 IFT$="Y" THEN GOTO 145
870 FORX=255 TO 1 STEP-15
871 SOUND X,1
872 NEXTX
890 END
900 DATAINTEGRATED,TOTAL,SYSTEMATIZED
910 DATAPARALLEL,FUNCTIONAL,RESPONSIVE
920 DATAOPTIONAL,SYNCHRONIZED,COMPATIBLE
930 DATABALANCED,MANAGEMENT,ORGANIZATIONAL
940 DATAMONITORED,RECIPROCAL,DIGITAL
950 DATALOGISTICAL,TRANSITIONAL,INCREMENTAL
960 DATATHIRD-GENERATION,POLICY,FLEXIBILITY
970 DATAOPTIONS,CAPABILITY,MOBILITY
980 DATAPROGRAMMING,CONCEPT,TIME-PHASE
990 DATAPROJECTION,HARDWARE,CONTINGENCY
