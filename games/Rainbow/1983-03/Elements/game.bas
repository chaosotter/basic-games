
10 REM"ELEMENTS"
20 'STEVE BLYN -COMPUTER ISLAND, NEW YORK-1983
30 CT=0 '***CT IS THE COUNTER
40 W=0  '***W IS THE # OF WRONG EXAMPLES
50 L=25 '***L IS THE NUMBER OF DATA PAIRS. IF YOU ADD MORE DATA,MERELY ADJUST THIS NUMBER TO MATCH.
60 DIMA$(L),B$(L)
70 FOR T=1TO L:READ A$(T),B$(T):NEXTT
80 CLS:FORT=1024TO1119:POKET,207:NEXT:PRINT@6,"elements and symbols";
90 CT=CT+1
100 IF CT>10 THEN 300
110 PRINT@67,"element";:PRINT@83,"symbol";
120 R=RND(L)
130 A$=A$(R):B$=B$(R)
140 A$(R)=A$(L):B$(R)=B$(L):L=L-1
150 PRINT@128,A$
160 PRINT@144,"";:INPUT C$
170 IF C$<>B$ THEN 210
180 IF C$=B$ THEN FORT=220TO255STEP5:SOUNDT,1:NEXTT
190 PRINT@320,CHR$(255);CHR$(255);" YAY...PRESS ENTER TO GO ON";:INPUT EN$
200 CLS:GOTO 80
210 PRINT@320,"SORRY,THE SYMBOL IS ";B$
220 SOUND20,6:SOUND10,6
230 PRINT@386,"PRESS <ENTER> TO GO ON";
240 W=W+1:'***# OF WRONG RESPONSES"
250 GOSUB 270
260 INPUT ENTER$:CLS:GOTO 80
270 'REMEMBER WRONG ANSWERS HERE
280 X$(W)=A$:Y$(W)=B$
290 RETURN
300 CLS:PRINT" HERE ARE YOUR REVIEW EXAMPLES "
310 FOR T=1 TO 32:PRINTCHR$(204);:SOUND230,1:NEXT
320 IF W=0 THEN FOR T=50TO250STEP10:SOUNDT,1:NEXT:PRINT" HURRAY, YOU MADE NO MISTAKES.":GOTO 370
330 FORT=1TOW:PRINTT;X$(T),Y$(T):NEXT :'***THIS IS WHERE THE WRONG EXAMPLES ARE PRINTED OUT.
340 DATA BROMINE,BR,CALCIUM,CA,CARBON,C,COPPER,CU,FLOURINE,F,GOLD,AU,HYDROGEN,H,IODINE,I,IRON,FE,LEAD,PB
350 DATA MAGNESIUM,MG,MANGANESE,MN,MERCURY,HG,NICKEL,NI,NITROGEN,N,OXYGEN,O,PHOSPHORUS,P,PLATINUM,PT,POTASSIUM,K,SILVER,AG,SODIUM,NA,SULPHUR,S,TIN,SN,URANIUM,U,ZINC,ZN
360 PRINT:PRINT"YOUR SCORE WAS ";10*(10-W);"%."
370 PRINT"WANT TO PLAY AGAIN (y/n)";:INPUT EN$
380 IF LEFT$(EN$,1)="Y" THEN RUN ELSE 390
390 CLS:PRINT" BYE FOR NOW":END
