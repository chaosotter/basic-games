
1 SCREEN0,1
2 CLS0:POKE65495,0:FORH=1024TO1535:POKEH,63:NEXTH:POKE65494,0:PRINT@234,"CONSEQUENCES!";
3 PRINT@453,"BY T. AND R. DELBOURGO";:PLAY"O3L10CCL5EL10EEL5GL10GGL5O4CP1"
4 CLEAR4500:CLS0:INPUT"enter THE NUMBER OF PLAYERS     (MAXIMUM OF 8)";N
5 DIMS$(N,8)
6 FORP=1TON:GOSUB35:NEXTP
7 CLS0:PRINT"IF YOU ARE READY NOW, I WILL    MIX UP THE STORIES AND THEIR    CONSEQUENCES."
8 PRINT(N-1)"DIFFERENT MIXED-UP SETS OF"N"STORIES FOLLOW:":PRINT@448,"PRESS ANY KEY TO CONTINUE"
9 I$=INKEY$:IFI$=""THEN9
10 FORU=0 TO N-2:FORP=1TON:CLS0
11 R=P-N*INT((P-1)/N):L=P+1+U-N*INT((P+U)/N):PRINT@0,CHR$(127+16*R)+S$(R,1)+" MET "+CHR$(127+16*L)+S$(L,2):SOUND89,3:SOUND108,3
12 FORQ=3TO4:L=Q+P+(Q-1)*U-1-N*INT((Q+P+Q*U-U-2)/N):PRINTCHR$(127+L*16)+S$(L,Q):SOUND101+8*Q,3:NEXTQ:PRINT
13 K=P+4+4*U-N*INT((P+3+4*U)/N):PRINTCHR$(K*16+127)+"HE SAID: "+S$(K,5):SOUND147,3
14 K=P+5+5*U-N*INT((P+4+5*U)/N):PRINTCHR$(16*K+127)+"SHE SAID: "+S$(K,6):PRINT:SOUND159,3
15 FORQ=7TO8:L=Q+P+(Q-1)*U-1-N*INT((Q+P+Q*U-U-2)/N):PRINTCHR$(127+L*16)+S$(L,Q):SOUND128+6*Q,3:NEXTQ
16 PRINT@448,"PRESS ANY KEY TO CONTINUE":PRINT@488,"PRESS P TO PRINT";
17 I$=INKEY$:IFI$=""THEN17
18 IFI$="P"THENGOSUB45
19 NEXTP,U
20 CLS0:PRINT"DO YOU WANT TO SEE THE ORIGINAL STORIES? (Y/N)"
21 I$=INKEY$:IFI$=""THEN21
22 IFI$="Y"THENGOTO25
23 IFI$="N"THENGOTO30
24 GOTO21
25 FORP=1TON:CLS(P):PRINT"PLAYER"P"'S STORY:-":PRINT
26 PRINTS$(P,1)+" MET "+S$(P,2):PRINTS$(P,3):PRINTS$(P,4):PRINT
27 PRINT"HE SAID: "+S$(P,5):PRINT"SHE SAID: "+S$(P,6):PRINT
28 PRINTS$(P,7):PRINTS$(P,8):SOUNDP*30,10:FORJ=1TO4000:NEXTJ
29 NEXTP
30 CLS0:PRINT@228,"MORE CONSEQUENCES? (Y/N)";
31 A$=INKEY$:IFA$=""THEN31
32 IFA$="Y"THENRUN
33 IFA$="N"THEN CLS0:PRINT@224,"THE END.....";:END
34 GOTO31
35 CLS(P):PRINT"PLAYER"P
36 LINEINPUT"enter NAME OF MALE CHARACTER :  ";S$(P,1)
37 PRINT:LINEINPUT"enter NAME OF FEMALE CHARACTER :";S$(P,2)
38 PRINT:LINEINPUT"WHERE DID THEY MEET ?           ";S$(P,3)
39 PRINT:LINEINPUT"DESCRIBE THE SCENE :            ";S$(P,4)
40 PRINT:LINEINPUT"WHAT DID HE SAY ?               ";S$(P,5)
41 PRINT:LINEINPUT"WHAT DID SHE SAY ?              ";S$(P,6)
42 PRINT:LINEINPUT"WHAT WAS THE CONSEQUENCE ?      ";S$(P,7)
43 PRINT:LINEINPUT"WHAT IS THE MORAL OF THE STORY ?";S$(P,8)
44 RETURN
45 PRINT#-2:PRINT#-2,S$(P-N*INT((P-1)/N),1)+" MET "+S$(P+1+U-N*INT((P+U)/N),2)
46 FORQ=3TO4:L=Q+P+(Q-1)*U-1-N*INT((Q+P+Q*U-U-2)/N):PRINT#-2,S$(L,Q):NEXTQ
47 PRINT#-2,"HE SAID: "+S$(P+4+4*U-N*INT((P+3+4*U)/N),5)
48 PRINT#-2,"SHE SAID: "+S$(P+5+5*U-N*INT((P+4+5*U)/N),6)
49 FORQ=7TO8:L=Q+P+(Q-1)*U-1-N*INT((Q+P+Q*U-U-2)/N):PRINT#-2,S$(L,Q):NEXTQ
50 PRINT#-2:RETURN
