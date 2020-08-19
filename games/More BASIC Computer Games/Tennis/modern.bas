1 CLS: COLOR 12
2 PRINT TAB(34); "Tennis Match"
3 PRINT TAB(31); "Creative Computing"
4 PRINT TAB(29); "Morristown, New Jersey"
10 PRINT: PRINT: PRINT: COLOR 14
15 RANDOMIZE TIMER
21 PRINT "There are several options available to you as to position, placement of shot,"
22 PRINT "and speed (type) of shot.  The key that you will use is:"
23 PRINT: PRINT "Position/placement:": PRINT
24 COLOR 11: PRINT "    1 - Left Backcourt", , "3 - Left Forecourt"
25 PRINT "    2 - Right Backcourt", , "4 - Right Forecourt"
26 COLOR 14: PRINT: PRINT "Speed (type) of shot:": PRINT
27 COLOR 11: PRINT "    S - Slam (Fast)", , "L - Lob (Slow)": PRINT: COLOR 14
28 PRINT "Backhands and forehands will merely be assumed as you shoot from a certain"
29 PRINT "section of the court.  On serves, you cannot have placement options, but you"
30 PRINT "will be able to alert the speed of it.  By the way, you will be allowed to"
31 PRINT "serve first in all games."
32 PRINT: COLOR 13: PRINT "(Press any key.)";
33 Z$ = INKEY$: IF Z$ = "" THEN 33
35 Y = 0
36 Z = 0
38 PRINT
39 PRINT: COLOR 15
40 PRINT "Your serve!  ";: COLOR 10: PRINT "Type (S/L)";
41 INPUT A$: COLOR 15: IF A$ <> "L" AND A$ <> "l" AND A$ <> "S" AND A$ <> "s" THEN PRINT "Enter 'L' or 'S'.": GOTO 40
42 A = 100 * RND(1)
43 IF A$ = "L" OR A$ = "l" THEN 52
44 C = 6
45 D = 51
46 IF A < C THEN 50
47 IF A < D THEN 70
48 PRINT "Serve is bad."
49 GOTO 55
50 PRINT "Let serve... take 2."
51 GOTO 40
52 C = 4
53 D = 66
54 GOTO 46
55 PRINT "Serve again!  ";: COLOR 10: PRINT "Type (S/L)";
56 INPUT B$: COLOR 15: IF B$ <> "L" AND B$ <> "l" AND B$ <> "S" AND B$ <> "s" THEN PRINT "Enter 'L' or 'S'.": GOTO 55
57 E = 100 * RND(1)
58 IF B$ = "L" OR B$ = "l" THEN 67
59 G = 5
60 H = 41
61 IF E < G THEN 65
62 IF E < H THEN 70
63 PRINT "Serve is bad... double fault!"
64 GOTO 130
65 PRINT "Let serve... take 1."
66 GOTO 55
67 G = 3
68 H = 76
69 GOTO 61
70 I = 100 * RND(1)
71 IF I > 6 THEN 74
72 PRINT "Serve is good... Ace!"
73 GOTO 128
74 K = 100 * RND(1)
75 IF A$ = "L" OR A$ = "l" THEN 81
76 IF B$ = "L" OR A$ = "l" THEN 81
77 N = 61
78 IF K < N THEN 85
79 PRINT "Serve is good... can't return it!"
80 GOTO 128
81 N = 76
82 GOTO 78
85 PRINT "Serve has been returned..."
86 PRINT
87 O = INT(4 * RND(1)) + 1
88 COLOR 10: PRINT "What is your position (1-4)";
89 INPUT Q: COLOR 15
90 IF O + Q = 5 THEN 124
91 COLOR 10: PRINT "What type of shot are you making (S/L)";
92 INPUT C$: COLOR 15
93 COLOR 10: PRINT "What part of the court are you aiming for (1-4)";
94 INPUT R: COLOR 15
95 S = 100 * RND(1)
96 IF C$ = "L" OR C$ = "l" THEN 99
97 IF S < 81 THEN 107
98 GOTO 100
99 IF S < 91 THEN 107
100 U = 4 * RND(1)
101 PRINT "Your return is bad...";
102 IF U < 2 THEN 105
103 PRINT " hit out of bounds."
104 GOTO 130
105 PRINT " hit into net."
106 GOTO 130
107 PRINT "Your return is good!"
108 A1 = INT(4 * RND(1))
109 IF R + A1 = 5 THEN 127
110 W = 100 * RND(1)
111 IF C$ = "L" OR C$ = "l" THEN 112
112 IF W < 84 THEN 122
113 GOTO 115
114 IF W < 84 THEN 122
115 C1 = 4 * RND(1)
116 PRINT "Computer's return is bad...";
117 IF C1 < 2 THEN 120
118 PRINT " hit out of bounds."
119 GOTO 128
120 PRINT " hit into net."
121 GOTO 128
122 PRINT "Computer's return is good!"
123 GOTO 86
124 PRINT "Nice try, but you were unable to reach that shot -- court position"; STR$(O); "."
125 GOTO 130
127 PRINT "Nice shot -- the computer couldn't reach it!"
128 Y = Y + 1
129 GOTO 131
130 Z = Z + 1
131 PRINT: GOSUB 200
132 COLOR 13: PRINT "Score: "; S$: COLOR 15
134 IF Y >= 4 AND Y > Z + 1 THEN 137
135 IF Z >= 4 AND Z > Y + 1 THEN 139
136 GOTO 38
137 Y1 = Y1 + 1
138 GOTO 140
139 Z1 = Z1 + 1
140 PRINT: PRINT "--------------- Game Over ----------------"
141 COLOR 12: PRINT TAB(15); "Score (Games)    You...Me"
142 PRINT TAB(32); Y1; "   "; Z1: COLOR 15
143 IF Y1 >= 6 AND Y1 > Z1 + 1 THEN 146
144 IF Z1 >= 6 AND Z1 > Y1 + 1 THEN 149
145 GOTO 35
146 PRINT
147 PRINT "*** Congratulations, you won! ***"
148 GOTO 151
149 PRINT
150 PRINT "*** As predicted, the computer is again triumphant! ***"
151 PRINT
152 PRINT "I'd like to play you again sometime, but right now, I have to rest... bye!"
154 PRINT
155 END
200 IF Y >= 2 AND Z >= 2 THEN 300
210 IF Y = 4 OR Z = 4 THEN S$ = "Game": GOTO 400
220 IF Y = 0 THEN Y$ = "Love - "
230 IF Y = 1 THEN Y$ = "15 - "
240 IF Y = 2 THEN Y$ = "30 - "
245 IF Y = 3 THEN Y$ = "40 - "
250 IF Z = 0 THEN Z$ = "Love"
255 IF Z = 1 THEN Z$ = "15"
260 IF Z = 2 THEN Z$ = "30"
265 IF Z = 3 THEN Z$ = "40"
270 S$ = Y$ + Z$: GOTO 400
300 IF Y = Z THEN S$ = "Deuce": GOTO 400
310 IF Y = Z + 1 THEN S$ = "Add In": GOTO 400
320 IF Y = Z - 1 THEN S$ = "Add Out": GOTO 400
330 IF Y = Z + 2 OR Z = Y + 2 THEN S$ = "Game"
400 RETURN
500 END

