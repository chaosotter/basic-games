100 REM *DISAPPEARING ACT* TRS-80 16K EXTENDED COLOR BASIC
110 REM * PRISMATIC PUZZLER #4 / RICHARD RAMELLA
120 CLS(0):P$=CHR$(143+80):U$=CHR$(94):D$=CHR$(10):L$=CHR$(8):R$=CHR$(9):R=96:S=224:T=352:PRINT@7,"DISAPPEARING ACT";:W$=CHR$(143+64):O$=CHR$(143+112):B$=CHR$(128):FORA=0TO28:X$=X$+CHR$(143+64):IFA/4=INT(A/4)THENA$=A$+CHR$(143+64)ELSEA$=A$+CHR$(128)
130 NEXT:FORA=32TO384STEP32:PRINT@A,A$;:NEXT:FORA=32TO416STEP128:PRINT@A,X$;:NEXT:A$(1)=A$:Z$=W$+B$+O$+B$:FORA=1TO7:A$(2)=A$(2)+Z$:NEXT:A$(3)=A$(2):MID$(A$(3),3,1)=CHR$(143+32):PRINT@R,A$(1);:PRINT@S,A$(2);:PRINT@T,A$(3);:X=98:A=1:B=3
140 A$=INKEY$:Q=0:PRINT@X,P$;:IFA$<>D$ANDA$<>U$ANDA$<>R$ANDA$<>L$ANDA$<>"N"ANDA$<>"W"ANDA$<>"S"ANDA$<>"E"GOTO140ELSEIFA$=L$GOSUB250ELSEIFA$=R$GOSUB260
150 IFQ=1ORA$=U$ANDX<123ORA$=D$ANDX>353GOTO140
160 PRINT@X,B$;:IFA$=R$THENX=X+4:B=B+4ELSEIFA$=L$THENX=X-4:B=B-4ELSEIFA$=U$THENX=X-128:A=A-1ELSEIFA$=D$THENX=X+128:A=A+1
170 PRINT@X,P$;:PRINT@R,A$(1);:PRINT@S,A$(2);:PRINT@T,A$(3);:PRINT@X,P$;
180 IFA$="S"ANDX<123ANDMIX$(A$(1),B,1)<>B$ANDMID$(A$(3),B,1)=B$ANDMID$(A$(2),B,1)<>B$THENMID$(A$(3),B,1)=MID$(A$(1),B,1)::MID$(A$(1),B,1)=B$:MID$(A$(2),B,1)=B$:V=V+1
190 IFA$="N"ANDX>353ANDMID$(A$(3),B,1)<>B$ANDMID$(A$(1),B,1)=B$ANDMID$(A$(2),B,1)<>B$THENMID$(A$(1),B,1)=MID$(A$(3),B,1):MID$(A$(2),B,1)=B$:MID$(A$(3),B,1)=B$:V=V+1
200 IFB<10GOTO210ELSEIFA$="W"ANDMID$(A$(A),B-4,1)<>B$ANDMID$(A$(A),B-8,1)=B$ANDMID$(A$(A),B,1)<>B$THENMID$(A$(A),B-8)=MID$(A$(A),B,1):MID$(A$(A),B-4)=B$:MID$(A$(A),B,1)=B$:V=V+1
210 IFB>19GOTO220ELSEIFA$="E"ANDMID$(A$(A),B+4,1)<>B$ANDMID$(A$(A),B+8,1)=B$ANDMID$(A$(A),B,1)<>B$THENMID$(A$(A),B+8,1)=MID$(A$(A),B,1):MID$(A$(A),B+4,1)=B$:MID$(A$(A),B,1)=B$:V=V+1
220 PRINT@R,A$(1);:PRINT@S,A$(2);:PRINT@T,A$(3);:PRINT@480,"SCORE:";V;:IFV<13GOTO140
230 IFMID$(A$(1),3,1)=CHR$(143+32)THENPRINT@480,"DOUBLE ";
240 PRINT@490," WINNER ";:FORT=1TO3:SOUND89,2:NEXT:SOUND125,2:FORT=1TO2:SOUND147,2:SOUND125,2:NEXT:FORT=1TO5:NEXT:GOTO240
250 IFX=98ORX=226ORX=354THENQ=1:RETURNELSERETURN
260 IFX=122ORX=250ORX=378THENQ=1:RETURNELSERETURN:END
