
1 DIMA(8):DIMB(14)
2 CLS0:C=159:FORJ=0TO11:FORK=0TO480STEP32:POKE1034+J+K,C:NEXTK,J:FORJ=1TO3:POKE1446+J,C:POKE1461+J,C:NEXTJ
3 C=128:FORJ=1TO6:POKE1194+32*J,C:POKE1205+32*J,C:NEXTJ:POKE1259,C:POKE1268,C
4 DATA1029,1030,1049,1050,1065,1078,1260,1267
5 FORJ=1TO8:READA(J):POKEA(J),156:NEXTJ
6 DATA1291,1292,1299,1300,1321,1322,1333,1334,1415,1416,1417,1430,1431,1432
7 FORJ=1TO14:READB(J):POKEB(J),147:NEXTJ
8 PCLEAR8:PRINT@7,"OPTICAL  ILLUSIONS";:PRINT@335,"BY";:PRINT@426,"r&d.delbourgo";:PRINT@456,"15,willowdene av.";:PRINT@481,"hobart,tasmania, australia7005";:PLAY"L20O3CEGO4CO3GEC":GOSUB73
9 CLS0:PRINT@39,"OPTICAL ILLUSIONS";:PRINT@101,"(1) MULLER-LYER      ";:PRINT@133,"(2) ZOLLNER LINES    ";:PRINT@165,"(3) POGGENDORFF      ";:PRINT@197,"(4) PONZO-EHRENSTEIN ";:PRINT@229,"(5) HERING-WUNDT     ";
10 PRINT@261,"(6) EBBINGHAUS       ";:PRINT@293,"(7) PINCUSHION EFFECT";:PRINT@325,"(8) ORBISON          ";:PRINT@357,"(9) HERING-SPRINGER  ";:PRINT@389,"(0) IMPOSSIBLE SHAPES";
11 PRINT@451,"PRESS YOUR CHOICE NUMBER ";:PRINT@483,"PRESS R TO RETURN TO MENU";
12 I$=INKEY$:IFI$=""THEN12
13 IFI$="1"THEN24
14 IFI$="2"THEN30
15 IFI$="3"THEN35
16 IFI$="4"THEN39
17 IFI$="5"THEN42
18 IFI$="6"THEN47
19 IFI$="7"THEN52
20 IFI$="8"THEN55
21 IFI$="9"THEN58
22 IFI$="0"THEN62
23 GOTO12
24 GOSUB71:LINE(78,75)-(178,75),PSET:LINE(78,125)-(178,125),PSET
25 DRAW"BM78,75C0H8BD16E8":DRAW"BM178,75C0E8BD16H8"
26 DRAW"BM86,125C0BU8G8F8":DRAW"BM170,125C0BU8F8G8":GOSUB73
27 GOSUB75:DRAW"BM78,75C1H8BD16E8":DRAW"BM178,75C1E8BD16H8"
28 DRAW"BM86,125C1BU8G8F8":DRAW"BM170,125C1BU8F8G8":GOSUB73
29 GOSUB75:GOTO24
30 GOSUB71:GOSUB76
31 FORJ=0TO128STEP64:FORK=J+8TO184STEP8:LINE((K-J)*4/3-10,K)-((K-J)*4/3+10,K),PSET:NEXTK:FORK=8TO184-J STEP8:LINE((K+J)*4/3-10,K)-((K+J)*4/3+10,K),PSET:NEXTK
32 FORK=J+40TO184STEP8:LINE(K*4/3,K-J-40)-(K*4/3,K-J-24),PSET:NEXTK:FORK=8TO152-J STEP8:LINE(K*4/3,K+J+24)-(K*4/3,K+J+40),PSET:NEXTK:NEXTJ
33 GOSUB72:GOSUB76
34 GOSUB74:GOSUB75:GOTO34
35 GOSUB71:GOSUB77
36 LINE(167,38)-(193,146),PSET,BF:LINE(203,38)-(229,146),PSET,BF:LINE(45,38)-(71,146),PSET,BF
37 GOSUB72:GOSUB77
38 GOSUB74:GOSUB75:GOTO38
39 GOSUB71:FORI=0TO96STEP16:LINE(0,I)-(256,96),PSET:LINE-(0,192-I),PSET:NEXTI:GOSUB78
40 GOSUB72:GOSUB78
41 GOSUB74:GOSUB75:GOTO41
42 GOSUB71:GOSUB79:GOSUB73
43 FORI=0TO256STEP32:LINE(I,0)-(256-I,192),PSET:NEXTI:FORJ=15TO60STEP15:LINE(0,J)-(256,192-J),PSET:LINE(0,192-J)-(256,J),PSET:NEXTJ
44 GOSUB72:GOSUB79
45 FORI=0TO256STEP16:LINE(128,0)-(I,96),PSET:LINE-(128,192),PSET:NEXTI
46 GOSUB74:GOSUB75:GOTO46
47 GOSUB71:GOSUB80
48 CIRCLE(88,76),7,0:CIRCLE(88,116),7,0:FORX=0TO32STEP32:FORY=0TO20STEP20:CIRCLE(72+X,86+Y),7,0:NEXTY,X
49 CIRCLE(168,64),15,0:CIRCLE(168,128),15,0:FORX=0TO52STEP52:FORY=0TO30STEP30:CIRCLE(142+X,81+Y),15,0:NEXTY,X
50 GOSUB72:GOSUB80
51 GOSUB74:GOSUB75:GOTO51
52 GOSUB71:GOSUB81:GOSUB73
53 GOSUB72:FORR=1TO10:CIRCLE(128,96),150*R/(9+R):NEXTR:GOSUB81
54 GOSUB74:GOSUB75:GOTO54
55 GOSUB71:GOSUB82:GOSUB73
56 GOSUB72:FORI=0TO10:LINE(128,7*I)-(7*I,192-4*I),PSET:LINE-(128,150-7*I),PSET:LINE-(256-7*I,192-4*I),PSET:LINE-(128,7*I),PSET:NEXTI:GOSUB82
57 GOSUB74:GOSUB75:GOTO57
58 GOSUB71:FORX=5TO250STEP14:FORY=5TO185STEP14
59 LINE(X-2,Y-2)-(X+2,Y+2),PSET,BF:LINE(X+5,Y+5)-(X+9,Y+9),PSET,BF:NEXTY,X:GOSUB73
60 GOSUB72:FORX=5TO250STEP14:FORY=5TO185STEP14:LINE(X-4,Y-4)-(X+4,Y+4),PSET,BF:NEXTY,X
61 GOSUB74:GOSUB75:GOTO61
62 GOSUB71:LINE(76,48)-(246,48),PSET:LINE-(246,68),PSET:LINE-(76,68),PSET:LINE(246,68)-(176,148),PSET:LINE-(6,148),PSET
63 LINE(6,128)-(156,128),PSET:LINE-(192,88),PSET:LINE-(40,88),PSET:LINE(40,108)-(156,108),PSET:LINE-(176,88),PSET:LINE(156,108)-(156,128),PSET
64 CIRCLE(76,58),5,0,2:CIRCLE(40,98),5,0,2:CIRCLE(6,138),5,0,2
65 GOSUB72:LINE(129,101)-(104,89),PSET:LINE-(63,108),PSET:LINE-(56,50),PSET:LINE-(95,32),PSET:LINE-(104,89),PSET
66 LINE(91,106)-(109,115),PSET:LINE-(118,179),PSET:LINE-(163,158),PSET:LINE-(156,94),PSET:LINE-(109,115),PSET
67 LINE(130,104)-(128,80),PSET:LINE(89,96)-(93,121),PSET:LINE(95,32)-(168,62),PSET:LINE(118,179)-(49,139),PSET
68 LINE(160,128)-(177,122),PSET:LINE-(168,62),PSET:LINE-(128,80),PSET:LINE-(156,95),PSET:LINE(58,72)-(41,81),PSET:LINE-(49,138),PSET:LINE-(92,121),PSET:LINE-(63,108),PSET
69 LINE(58,72)-(41,81),PSET:LINE-(49,138),PSET:LINE-(92,121),PSET:LINE-(63,108),PSET
70 GOSUB74:GOSUB75:GOTO70
71 PMODE4,1:PCLS1:SCREEN1,1:COLOR0,5:RETURN
72 PMODE4,5:PCLS1:SCREEN1,1:COLOR0,5:RETURN
73 FORT=1TO2000:NEXTT:RETURN
74 FORP=1TO5STEP4:PMODE4,P:SCREEN1,1:FORT=1TO2000:NEXTT,P:RETURN
75 IFINKEY$="R"THEN9ELSERETURN
76 FORI=0TO192STEP32:LINE(I*4/3,0)-(256,192-I),PSET:LINE(0,I)-(256-4*I/3,192),PSET:NEXTI:RETURN
77 LINE(18,22)-(98,162),PSET:LINE(158,22)-(238,162),PSET:RETURN
78 CIRCLE(168,96),31,0:CIRCLE(88,96),31,0:LINE(120,66)-(136,126),PSET,B:LINE(200,66)-(216,126),PSET,B:RETURN
79 LINE(0,72)-(256,120),PSET,B:LINE(0,0)-(256,192),PSET,B:RETURN
80 CIRCLE(88,96),10,0:CIRCLE(168,96),10,0:RETURN
81 LINE(88,56)-(168,136),PSET,B:RETURN
82 CIRCLE(128,96),40,0:RETURN
