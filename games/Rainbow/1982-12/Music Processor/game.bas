2 PMODE 4,1:DIM N(64),A(64),B(64)3 E=14 PCLS:SCREEN1,15 FORZ=1TO5:LINE(2,(Z*6+33))-(250,(Z*6+33)),PSET:LINE(2,(Z*6+87))-(250,(Z*6+87)),PSET:NEXTZ6 LINE(2,39)-(2,117),PSET:LINE(3,39)-(3,117),PSET7 LINE(250,39)-(250,117),PSET:LINE(251,39)-(251,117),PSET8 DRAW"BM18,33D1L1D33L1D1L1D1L1U1L2U1L1U2R2D1L1"9 DRAW"BM13,56"10 FORZ=1TO2:DRAW"BM+1,0H1U1E2R4F3D4G3L5H5U1H1U2E1U1E14U4H3G2"11 DRAW"BM-7,+66H1NR2U1R2H1E1R6D1R1F1D1F1D2G1D2G1D1G1D1G1D1G6"12 DRAW"BM+14,-20D1BM+0,+5D1"13 DRAW"BM14,56":NEXTZ14 PSET(4,159,5):PSET(249,159,5)15 IFD=1THENJ=E:GOTO15416 IFK=1THEN15117 X=JOYSTK(0)*4:Y=JOYSTK(1)*3:P=PPOINT(X,Y)18 PSET(X,Y,P)19 X=JOYSTK(0)*4:Y=JOYSTK(1)*320 IFX<8THENX=821 IFX>246THENX=24622 IFY<15THENY=1523 IFY>168THENY=176:GOTO2724 IFY>159THENY=168:GOTO2725 IFY>150THENY=159:GOTO2726 IFY>142THENY=15027 P=PPOINT(X,Y):IFP=5THENC=0ELSEC=128 PSET(X,Y,C)29 IFPEEK(341)=254THEN4530 IFPEEK(340)=251THEN10831 IFPEEK(339)=191THEN14632 IFPEEK(341)=253THEN14833 IFPEEK(340)=247THEND=1:GOTO434 IFPEEK(343)=253THENK=1:GOTO14635 IFPEEK(341)=247THEN6036 IFPEEK(342)=247THEN6637 IFPEEK(343)=247THEN3938 GOTO1839 IFPEEK(345)=251THENN(E)=35:GOTO16340 IFPEEK(338)=253THENN(E)=35:GOTO16341 IFPEEK(339)=251THENN(E)=36:GOTO16342 IFPEEK(343)=254THENN(E)=37:GOTO16343 IFPEEK(338)=191THEN1844 GOTO3945 IFY<142THEN46ELSE7246 IFPEEK(341)=247THEN6047 IFPEEK(342)=247THEN6648 IFPEEK(338)=191THEN1849 IFPEEK(342)=251THEN N(E)=10:T=1:E=E+1:GOTO9850 IFPEEK(343)=247THEN3951 IFPEEK(341)=251THENN(E)=11:GOTO16352 IFPEEK(344)=254THENN(E)=12:GOTO16353 IFPEEK(338)=247THENN(E)=13:GOTO16354 IFPEEK(344)=253THENN(E)=14:GOTO16355 IFPEEK(344)=223THENN(E)=34:GOTO16356 IFPEEK(340)=254THENN(E)=23:GOTO16357 IFPEEK(344)=247THENN(E)=33:GOTO16358 IFPEEK(340)=223THENN(E)=38:GOTO16359 GOTO4660 IFY>142THEN72ELSEIFPEEK(345)=251THENN(E)=15:GOTO16361 IFPEEK(338)=253THENN(E)=16:GOTO16362 IFPEEK(339)=251THENN(E)=17:GOTO16363 IFPEEK(343)=254THENN(E)=18:GOTO16364 IFPEEK(338)=191THEN1865 GOTO6066 IFY>142THEN72ELSEIFPEEK(345)=251THENN(E)=19:GOTO16367 IFPEEK(338)=253THENN(E)=20:GOTO16368 IFPEEK(339)=251THENN(E)=21:GOTO16369 IFPEEK(343)=254THENN(E)=22:GOTO16370 IFPEEK(338)=191THEN1871 GOTO6672 IFD=1ORK=1THEN170ELSEIFPEEK(339)=239THENN(E)=1:GOTO16373 IFPEEK(340)=239THENN(E)=2:GOTO16374 IFPEEK(341)=239THENN(E)=3:GOTO16375 IFPEEK(342)=239THENN(E)=4:GOTO16376 IFPEEK(343)=239THENN(E)=5:GOTO16377 IFPEEK(344)=239THENN(E)=6:GOTO16378 IFPEEK(345)=239THENN(E)=7:GOTO16379 IFPEEK(338)=223THENN(E)=8:GOTO16380 IFPEEK(339)=223THENN(E)=9:GOTO16381 IFT=1THEN7282 IFPEEK(339)=253THENN(E)=24:GOTO16383 IFPEEK(344)=251THENN(E)=25:GOTO16384 IFPEEK(342)=253THENN(E)=26:GOTO16385 IFPEEK(343)=251THENN(E)=27:GOTO16386 IFPEEK(341)=251THENN(E)=11:GOTO16387 IFPEEK(344)=254THENN(E)=12:GOTO16388 IFPEEK(338)=247THENN(E)=13:GOTO16389 IFPEEK(344)=253THENN(E)=14:GOTO16390 IFPEEK(343)=223THENN(E)=28:GOTO16391 IFPEEK(341)=223THENN(E)=29:GOTO16392 IFPEEK(338)=239THENN(E)=30:GOTO16393 IFPEEK(342)=254THENN(E)=31:GOTO16394 IFPEEK(345)=223THENN(E)=32:GOTO16395 IFPEEK(344)=247THENN(E)=33:GOTO16396 IFPEEK(338)=191THEN1897 GOTO7298 FORQ=1TO499 DRAW"S4BM0,155":FORZ=1TOX/4:DRAW"BM+4,+0":NEXTZ100 ON Q GOTO 101,102,103,104101 DRAW"S4BM+0,-104S8":GOTO72102 DRAW"S4BM+0,-92S8":GOTO72103 DRAW"S4BM+0,-50S8":GOTO72104 DRAW"S4BM+0,-38S8":GOTO72105 IFK=1ORD=1THENI=I+1106 NEXTQ:T=0:DRAW"S4BM0,155"107 GOTO18108 PSET(X,Y,0):IFY>142THEN109ELSE115109 FORZ=338TO345110 IFPEEK(Z)=239ORPEEK(Z)=223THENFORW=X-4TOX+4:LINE(W,Y-6)-(W,Y+6),PRESET:NEXTW:GOTO113111 IFPEEK(338)=191THEN18ELSENEXTZ112 GOTO109113 FORI=1TOE114 IFABS(A(I)-X)<4ANDABS(B(I)-Y)<6THEN134ELSENEXTI:GOTO18115 IFPEEK(341)=247THEN122116 IFPEEK(342)=247THEN123117 IFPEEK(344)=253THEN124118 IFPEEK(340)=254THEN125119 IFPEEK(342)=251THEN141120 IFPEEK(338)=191THEN18121 GOTO115122 FORZ=Y-15TOY+4:LINE(X-6,Z)-(X+6,Z),PRESET:GOSUB127:NEXTZ:GOTO130123 FORZ=Y-4TOY+15:LINE(X-6,Z)-(X+6,Z),PRESET:GOSUB127:NEXTZ:GOTO130124 FORZ=Y-7TOY+4:LINE(X-5,Z)-(X+3,Z),PRESET:GOSUB127:NEXTZ:GOTO130125 LINE(X,39)-(X,117),PRESET126 FORZ=1TO5:PSET(X,Z*6+33,5):PSET(X,Z*6+87,5):NEXTZ:GOTO130127 IFZ=39ORZ=45ORZ=51ORZ=57ORZ=63THENLINE(X-6,Z)-(X+6,Z),PSET128 IFZ=93ORZ=99ORZ=105ORZ=111ORZ=117THENLINE(X-6,Z)-(X+6,Z),PSET129 RETURN130 FORI=1TOE131 IFN(I)=23AND A(I)=X THEN134132 IF(N(I-1)=10)ANDABS(A(I)-X)<5THEN137133 IFABS(A(I)-X)<4ANDABS(B(I)-Y)<3THEN134ELSENEXTI:GOTO18134 FORF=I TOE135 N(F)=N(F+1):A(F)=A(F+1):B(F)=B(F+1)136 NEXTF:E=E-1:GOTO19137 FORF=I-1TOE+5138 N(F)=N(F+5):A(F)=A(F+5):B(F)=B(F+5)139 NEXTF140 E=E-5:GOTO19141 FORZ=39TO63142 LINE(X-5,Z)-(X+5,Z),PRESET:GOSUB127143 NEXTZ144 FORZ=93TO117:LINE(X-5,Z)-(X+5,Z),PRESET145 GOSUB127:NEXTZ:GOTO130146 FORZ=0TOE+1:N(Z)=0:A(Z)=0:B(Z)=0:NEXTZ147 IFK=1THEN4ELSE3148 OPEN"O",-1,"STAFF"149 PRINT#-1,E:FORZ=1TOE:PRINT#-1,N(Z),A(Z),B(Z):NEXTZ150 CLOSE#-1:GOTO18151 OPEN"I",-1,"STAFF"152 INPUT#-1,J:FORZ=1TOJ:INPUT#-1,N(Z),A(Z),B(Z):NEXTZ153 CLOSE-1154 FORI=1TOJ155 E=I156 X=A(E):Y=B(E)157 IFN(E)=10THENI=I+1:E=I:T=1:Q=1:X=A(E):Y=B(E):GOTO99158 IFQ=4THENQ=0:T=0:DRAW"S4BM0,155":GOTO160159 IFT=1THENQ=Q+1:GOTO99160 GOTO164161 NEXTI:K=0:D=0162 GOTO17163 A(E)=X:B(E)=Y164 IFN(E)>9THEN168165 IFT=1THEN170166 DRAW"BM0,155":FORZ=1TO(A(E)/4):DRAW"BM+4,0":NEXTZ:IFY>150THENDRAW"BM+0,+9":IFY>159THENDRAW"BM+0,+9":IFY>168THENDRAW"BM+0,+9"167 GOTO170168 IFY>165THENL=178ELSEL=160169 IFY>165THENM=171ELSEM=153170 ON N(E) GOSUB 174,175,176,177,178,179,180,181,182,72,183,184,185,186,199,199,199,199,205,205,205,205,187,189,190,191,192,193,194,195,196,197,198,188,211,212,213,214171 IFK=1ORD=1THEN161ELSEE=E+1172 IFT=1THENFORH=1TO100:NEXTH:GOTO105173 GOTO18174 DRAW"R1L4R2U6G1":RETURN175 DRAW"R2L4E4U1H1L2G1":RETURN176 DRAW"L1H1F1R2E1U1H1E1U1H1L2G1":RETURN177 DRAW"BM+1,0U6G3D1R4":RETURN178 DRAW"L1H1F1R2E1U2H1L3U2R4":RETURN179 DRAW"BM-2,-3D2F1R2E1U1H1L3U2E1R2":RETURN180 DRAW"BM-1,0E1U1E1U1E2L5":RETURN181 DRAW"R1E1U1H1L2H1U1E1R2F1D1G1L2G1D1F1L1":RETURN182 DRAW"L1R2E1U4H1L2G1D1F1R2":RETURN183 LINE(X-2,Y+1)-(X+2,Y+1),PSET:LINE(X-2,Y-1)-(X+2,Y-1),PSET:LINE(X-1,Y+2)-(X-1,Y-2),PSET:LINE(X+1,Y+2)-(X+1,Y-2),PSET:RETURN184 CIRCLE(X,Y),2:LINE(X-1,Y+3)-(X-1,Y-7),PSET:RETURN185 LINE(X-3,Y-2)-(X+1,Y+2),PSET:LINE(X-3,Y+2)-(X+1,Y-2),PSET:RETURN186 LINE(X-2,Y+1)-(X-2,Y-3),PSET:LINE(X+1,Y-1)-(X+1,Y+3),PSET:LINE(X-2,Y+1)-(X+1,Y+1),PSET:LINE(X-2,Y-1)-(X+1,Y-1),PSET:RETURN187 LINE(X,39)-(X,117),PSET:RETURN188 PSET(X,Y-2):PSET(X-1,Y-2):RETURN189 LINE(X-1,L)-(X-1,M),PSET:LINE(X-4,L)-(X+2,L),PSET:LINE(X-4,M)-(X+2,M),PSET:RETURN190 LINE(X-4,L)-(X+4,L),PSET:LINE(X-4,M)-(X+4,M),PSET:LINE(X,L-1)-(X-2,M+1),PSET:LINE(X,L-1)-(X+2,M+1),PSET:RETURN191 LINE(X-1,L)-(X-1,L-3),PSET:PSET(X-1,L-5,5):RETURN192 LINE(X-1,L)-(X-3,L-5),PSET:LINE(X-1,L)-(X+1,L-5),PSET:RETURN193 LINE(X-3,Y+1)-(X+3,Y+1),PSET:RETURN194 LINE(X-3,Y-1)-(X+3,Y-1),PSET:LINE(X,Y-4)-(X,Y+2),PSET:RETURN195 CIRCLE(X,Y),2:RETURN196 CIRCLE(X,Y),2:LINE(X+2,Y+1)-(X+2,Y-4),PSET:RETURN197 LINE(X-4,Y+5)-(X+4,Y-2),PSET:RETURN198 LINE(X-5,Y-1)-(X+3,Y-1),PSET:LINE(X-1,Y-4)-(X+3,Y-1),PSET:LINE(X-1,Y+2)-(X+3,Y-1),PSET:RETURN199 IFY<34THENLINE(X-6,33)-(X+6,33),PSET:IFY<28THENLINE(X-6,27)-(X+6,27),PSET:IFY<22THENLINE(X-6,21)-(X+6,21),PSET200 IFY<88ANDY>68THENLINE(X-6,87)-(X+6,87),PSET:IFY<82THENLINE(X-6,81)-(X+6,81),PSET:IFY<76THENLINE(X-6,75)-(X+6,75),PSET201 CIRCLE(X,Y),4:IFN(E)<16THENRETURN202 LINE(X+3,Y)-(X+3,Y-15),PSET:IFN(E)<17THENRETURN203 CIRCLE(X,Y),3:CIRCLE(X,Y),2:CIRCLE(X,Y),1:P=5:IFN(E)<18THENRETURN204 LINE(X+3,Y-15)-(X+6,Y-12),PSET:LINE(X+6,Y-12)-(X+6,Y-9),PSET:RETURN205 IFY>68ANDY<88THENLINE(X-6,69)-(X+6,69),PSET:IFY>74THENLINE(X-6,75)-(X+6,75),PSET:IFY>80THENLINE(X-6,81)-(X+6,81),PSET206 IFY>122THENLINE(X-6,123)-(X+6,123),PSET:IFY>128THENLINE(X-6,129)-(X+6,129),PSET:IFY>134THENLINE(X-6,135)-(X+6,135),PSET207 CIRCLE(X,Y),4:IFN(E)<20THENRETURN208 LINE(X-3,Y)-(X-3,Y+15),PSET:IFN(E)<21THENRETURN209 CIRCLE(X,Y),3:CIRCLE(X,Y),2:CIRCLE(X,Y),1:P=5:IFN(E)<22THENRETURN210 LINE(X-3,Y+15)-(X,Y+12),PSET:LINE(X,Y+12)-(X,Y+9),PSET:RETURN211 FORZ=Y-3TOY-1:LINE(X-2,Z)-(X+2,Z),PSET:NEXTZ:RETURN212 LINE(X-4,Y-8)-(X,Y-4),PSET:LINE(X,Y-4)-(X-4,Y),PSET:LINE(X-4,Y)-(X,Y+4),PSET:RETURN213 LINE(X-4,Y+4)-(X+3,Y-4),PSET:CIRCLE(X-2,Y-3),2:RETURN214 LINE(X-6,Y)-(X,Y-3),PSET:LINE(X,Y-3)-(X+6,Y),PSET:RETURN