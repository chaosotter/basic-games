
10 CLS
20 FOR A=0 TO 8
25 READ A$
30 POKE 1024+A,VAL("&H"+A$)
40 NEXT A
50 EXEC 1024
60 DATA C6,1,96,BC,1F,2,7E,96,A3
70 RUN"RANDOLF"