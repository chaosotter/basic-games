1 CLS: COLOR 12: PRINT TAB(37); "Geowar"
2 PRINT TAB(31); "Creative Computing"
3 PRINT TAB(29); "Morristown, New Jersey"
4 PRINT: PRINT: PRINT: RANDOMIZE TIMER
5 COLOR 10: PRINT "Do you want a description of the game (Y/N)";
6 INPUT I$: COLOR 15
7 IF LEFT$(I$, 1) = "N" OR LEFT$(I$, 1) = "n" THEN 48
8 PRINT: COLOR 14
9 PRINT "The first quadrant of a regular coordinate graph will serve as the battlefield."
10 PRINT "Five enemy installations are located within a 30-by-30 unit area.  No target is"
11 PRINT "inside the 10-by-10 unit area adjacent to the origin, as this is the location"
12 PRINT "of our base.  When the machine asks for the degree of the shot, respond with a"
13 PRINT "number between 1 and 90."
20 COLOR 13: PRINT TAB(51), "SCARE**********"
21 COLOR 11: PRINT "    1. A direct hit is a hit within 1 degree of";
22 COLOR 13: PRINT TAB(51), "*             *"
23 COLOR 11: PRINT "       the target.";
24 COLOR 13: PRINT TAB(51), "*  HIT******  *"
25 COLOR 11: PRINT "    2. A hit must pass between the first set of";
26 COLOR 13: PRINT TAB(51), "*  *       *  *"
27 COLOR 11: PRINT "       integral points NW and SE of the target.";
28 COLOR 13: PRINT TAB(51), "*  *   D   *  *"
29 COLOR 11: PRINT "    3. A scare must pass between the next set of";
30 COLOR 13: PRINT TAB(51), "*  *       *  *"
31 COLOR 11: PRINT "       intergal points NW and SE of the target,";
32 COLOR 13: PRINT TAB(51), "*  ******HIT  *"
33 COLOR 11: PRINT "       and causes the enemy to relocate a";
34 COLOR 13: PRINT TAB(51), "*             *"
35 COLOR 11: PRINT "       maximum of 1 unit in any direction.";
36 COLOR 13: PRINT TAB(51), "**********SCARE"
38 PRINT: COLOR 14
39 PRINT "Missiles have infinite range and may hit more than one target.  A missile that"
40 PRINT "nearly misses an installation (a scare) will be immediately shot down.  Any"
41 PRINT "hits before this time will not be counted unless a direct hit was made."
47 PRINT
48 COLOR 10: PRINT "Ready to go (Y/N)";
49 INPUT R$: COLOR 15
50 IF LEFT$(R$, 1) = "N" OR LEFT$(R$, 1) = "n" THEN 192
51 PRINT: PRINT "Good luck!"
52 PRINT
53 DIM C(10), H(20), D(10), S(20), F(5)
54 'DEF FNV(V1) = INT((180 / 3.14159) * ATN(V1) + .5)
55 X = 250
56 X1 = RND(1)
57 G2 = 0
58 S2 = 0
59 D2 = 0
60 H2 = 0
61 FOR K = 1 TO 10
62 GOSUB 154
63 IF INT(K / 2) <> K / 2 THEN 70
64 IF C(K - 1) > 10 THEN 70
65 IF C(K) > 10 THEN 70
66 FOR L = K - 1 TO K
67 GOSUB 154
68 NEXT L
69 GOTO 63
70 NEXT K
71 S = 0
72 FOR L = 1 TO 5
73 D(L) = FNV(C(2 * L) / C(2 * L - 1))
74 NEXT L
75 A = 2
76 L1 = 10
77 T5 = 5
78 D5 = 0
79 H5 = 0
80 GOSUB 147
81 PRINT
82 COLOR 10: PRINT "Enter degree of shot (0-90)";
83 D1 = 0
84 H1 = 0
85 FOR Q = 1 TO 5
86 F(Q) = 20
87 NEXT Q
88 INPUT D: COLOR 15
89 IF D >= 90 THEN 81
90 ON SGN(D) + 2 GOTO 177, 192
91 S = S + 1
92 FOR A = 2 TO 10 STEP 2
93 IF D > S(A) THEN 103
94 IF D < S(A - 1) THEN 103
95 IF D > H(A) THEN 105
96 IF D < H(A - 1) THEN 105
97 IF D > D(A / 2) + 1 THEN 101
98 IF D < D(A / 2) - 1 THEN 101
99 D1 = D1 + 1
100 GOTO 102
101 H1 = H1 + 1
102 F(D1 + H1) = A
103 NEXT A
104 GOTO 108
105 IF D1 > 0 THEN 110
106 GOSUB 138
107 GOTO 81
108 IF D1 + H1 <> 0 THEN 112
109 IF T5 = 1 THEN 159
110 PRINT "No luck -- try again."
111 GOTO 81
112 IF D1 > 0 THEN 118
113 IF H1 > 1 THEN 116
114 PRINT "***Congratulations***  A hit!"
115 GOTO 124
116 PRINT "***Congratulations*** "; H1; "hits!"
117 GOTO 124
118 PRINT "***Bull's Eye*** ";
119 IF D1 > 1 THEN 123
120 IF H1 > 0 THEN 123
121 PRINT " A direct hit!"
122 GOTO 124
123 PRINT D1 + H1; "hits -- a direct hit on"; D1; "of them!"
124 T5 = T5 - (D1 + H1)
125 D5 = D5 + D1
126 H5 = H5 + H1
127 IF T5 = 0 THEN 167
128 FOR J = 1 TO H1 + D1
129 Z = F(J)
130 D(Z / 2) = 0
131 H(Z) = 0
132 H(Z - 1) = 0
133 S(Z) = 0
134 S(Z - 1) = 0
135 NEXT J
136 PRINT 5 - T5; "down --"; T5; "to go."
137 GOTO 81
138 PRINT "A near hit.  Enemy has relocated."
139 FOR R = 1 TO 2
140 X2 = INT(RND(1) * 100)
141 IF ABS(C(A - (R - 1)) - X2) > 1 THEN 140
142 IF C(A - (R - 1)) <= 2 THEN 140
143 C(A - (R - 1)) = X2
144 NEXT R
145 D(A / 2) = FNV(C(A) / C(A - 1))
146 L1 = A
147 FOR I = A TO L1 STEP 2
148 H(I - 1) = FNV((C(I) - 1) / (C(I - 1) + 1))
149 H(I) = FNV((C(I) + 1) / (C(I - 1) - 1))
150 S(I - 1) = FNV((C(I) - 2) / (C(I - 1) + 2))
151 S(I) = FNV((C(I) + 2) / (C(I - 1) - 2))
152 NEXT I
153 RETURN
154 R = INT(RND(1) * 100)
155 IF R > 30 THEN 154
156 IF R < 3 THEN 154
157 C(K) = R
158 RETURN
159 FOR Z1 = 1 TO 5
160 IF D(Z1) > 1 THEN 162
161 NEXT Z1
162 IF D < D(Z1) THEN 165
163 PRINT "Too high -- try again."
164 GOTO 81
165 PRINT "Too low -- try again."
166 GOTO 81
167 PRINT
168 PRINT "Game totals:"; H5; "hits and"; D5; "direct hits on"; S; "shots."
169 PRINT
170 COLOR 10: PRINT "Ready for a new game (Y/N)";
171 G2 = G2 + 1
172 S2 = S2 + S
173 D2 = D2 + D5
174 H2 = H2 + H5
175 INPUT G$: COLOR 15
176 IF LEFT$(G$, 1) = "N" OR LEFT$(G$, 1) = "n" THEN 184
177 PRINT
178 PRINT
179 PRINT
180 PRINT "Five new installations have been built at different locations.  Good luck!"
183 GOTO 61
184 PRINT
185 PRINT
186 PRINT "Totals for"; G2; "games:"; H2; "hits and"; D2;
187 PRINT "direct hits on"; S2; "shots."
188 PRINT "You took an average of"; S2 / (D2 + H2); "shots per target."
192 END

FUNCTION FNV (V1):
  FNV = INT((180 / 3.14159) * ATN(V1) + .5)
END FUNCTION

