
3 CLEAR 1000 : CLS
4 DATA A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z
5 DIM A$(26,26)
6 PRINT@64,STRING$(32,"*")
7 PRINT@384,STRING$(32,"*")
8 PRINT@202,"CRYPTOGRAPHY"
9 PRINT@296,"WAIT 12 SECONDS":PRINT@325,"FOR DATA TO FILL ARRAY"
10 FOR Z=1 TO 26
20 READ A$(Z,1)
30 A$(Z,0)="*" : NEXT Z
40 FOR Y=2 TO 26
50 FOR X=2 TO 26
60 A$(X-1,Y)=A$(X,Y-1)
70 NEXT X
80 A$(26,Y)=A$(1,Y-1) : A$(0,Y)="*" : NEXT Y
90 A$(0,0)="*" : A$(0,1)="*"
100 CLS : PRINT : PRINT
110 PRINT "   TO ENCODE TYPE 1"
120 PRINT "   TO DECODE TYPE 2"
130 INPUT "       1 OR 2 ";N : IF N<>1 AND N<>2 THEN 300
140 IF N=2 THEN 300
150 INPUT "KEYWORDS   ";K1$
160 INPUT "PLAIN TEXT ";P$
170 B=LEN(P$) : K$="" 
180 FOR Z=1 TO B/LEN(K1$)+1
190 K$=K$+K1$ : NEXT Z
200 FOR Z=1 TO B : X1=0 : Y1=0
210 FOR X=1 TO 26
220 IF A$(X,1)=MID$(P$,Z,1) THEN Y1=X 
230 IF A$(X,1)=MID$(K$,Z,1) THEN X1=X
240 NEXT X
250 PRINT A$(X1,Y1);
260 NEXT Z : GO TO 430
300 INPUT "CIPHER TEXT";C1$
310 INPUT "KEY WORDS  ";K1$
320 F=LEN(C1$)
330 FOR Z=1 TO F/LEN(K1$)+1
340 K$=K$+K1$ : NEXT Z
350 FOR Z=1 TO F : YF=0 : X1=0
360 FOR X=1 TO 26
370 IF A$(X,1)=MID$(K$,Z,1) THEN X1=X
380 NEXT X
390 FOR Y=1 TO 26
400 IF A$(X1,Y)=MID$(C1$,Z,1) THEN YF=Y
410 NEXT Y
420 PRINT A$(YF,1); : NEXT Z
430 PRINT : PRINT : GO TO 110
