1 DIM F(4): CLS: COLOR 12
2 PRINT TAB(35); "Fur Trader"
4 PRINT TAB(31); "Creative Computing": PRINT TAB(29); "Morristown, New Jersey"
6 PRINT: PRINT: PRINT: RANDOMIZE TIMER: COLOR 15
15 GOSUB 1091
16 LET I = 600
17 COLOR 10: PRINT "Do you wish to trade furs (Y/N)";
18 GOSUB 1402
19 IF LEFT$(B$, 1) = "Y" OR LEFT$(b$, 1) = "y" THEN 100
21 END
100 PRINT: I$ = STR$(I): I$ = RIGHT$(I$, LEN(I$) - 1)
101 PRINT "You have $"; I$; " savings ";
102 PRINT "and 190 furs to begin the expedition."
261 LET E1 = INT((.15 * RND(1) + .95) * 10 ^ 2 + .5) / 10 ^ 2
262 LET B1 = INT((.25 * RND(1) + 1.00) * 10 ^ 2 + .5) / 10 ^ 2
300 PRINT
301 PRINT "Your 190 furs are distributed among the following kinds of pelts: mink, beaver,"
302 PRINT "ermine, and fox."
310 GOSUB 1430
315 RESTORE
330 PRINT: FOR J = 1 TO 4
332 READ B$
335 COLOR 10: PRINT "How many "; B$; " pelts do you have";
338 INPUT F(J): COLOR 15
340 LET F(0) = F(1) + F(2) + F(3) + F(4)
342 IF F(0) = 190 THEN 1100
344 IF F(0) > 190 THEN 500
348 NEXT J
350 GOTO 1100
500 PRINT
501 PRINT "You may not have that many furs.  Do not try to cheat.  I can add."
503 PRINT "You must start again."
504 GOTO 15
508 PRINT
511 COLOR 10: PRINT "Do you want to trade furs next year (Y/N)";
513 GOTO 18
1091 COLOR 14
1092 PRINT "You are the leader of a French fur trading expedition in 1776, leaving the Lake"
1093 PRINT "Ontario area to sell furs and get supplies for the next year.  You have a"
1094 PRINT "choice of three forts at which you may trade.  The cost of supplies and the"
1095 PRINT "amount you receive for your furs will depend on the fort that you choose."
1096 PRINT: COLOR 15
1099 RETURN
1100 PRINT: PRINT "You may trade your furs at fort 1, fort 2, or fort 3.  Fort 1 is Fort Hochelaga"
1102 PRINT "(Montreal) and is under the protection of the French army.  Fort 2 is Fort"
1104 PRINT "Stadacona (Quebec) and is under the protection of the French army.  However,"
1106 PRINT "you must make a portage and cross the Lachine Rapids.  Fort 3 is Fort New York"
1108 PRINT "and is under Dutch control.  You must cross through Iroquois land.": PRINT
1110 COLOR 10: PRINT "Your choice (1-3)";
1111 INPUT B: COLOR 15: PRINT
1112 IF B = 1 THEN 1120
1113 IF B = 2 THEN 1135
1115 IF B = 3 THEN 1147
1116 GOTO 1110
1120 PRINT "You have chosen the easiest route.  However, the fort is far from any seaport."
1121 PRINT "The value you receive for your furs will be low and the cost of supplies"
1122 PRINT "higher than at Forts Stadacona or New York."
1125 GOSUB 1400
1129 IF LEFT$(B$, 1) = "Y" OR LEFT$(B$, 1) = "y" THEN 1110
1130 GOTO 1160
1135 PRINT "You have chosen a hard route.  It is, in comparison, harder than the route to"
1136 PRINT "Hochelaga but easier than the route to New York.  You will receive an average"
1137 PRINT "value for your furs and the cost of your supplies will be average."
1141 GOSUB 1400
1144 IF LEFT$(B$, 1) = "Y" OR LEFT$(B$, 1) = "y" THEN 1110
1145 GOTO 1198
1147 PRINT "You have chosen the most difficult route.  At Fort New York you will receive"
1148 PRINT "the highest value for your furs.  The cost of your supplies will be lower than"
1149 PRINT "at all the other forts."
1152 GOSUB 1400
1155 IF LEFT$(B$, 1) = "Y" OR LEFT$(B$, 1) = "y" THEN 1110
1156 GOTO 1250
1160 LET I = I - 160
1169 PRINT
1174 LET M1 = INT((.2 * RND(1) + .7) * 10 ^ 2 + .5) / 10 ^ 2
1175 LET E1 = INT((.2 * RND(1) + .65) * 10 ^ 2 + .5) / 10 ^ 2
1176 LET B1 = INT((.2 * RND(1) + .75) * 10 ^ 2 + .5) / 10 ^ 2
1177 LET D1 = INT((.2 * RND(1) + .8) * 10 ^ 2 + .5) / 10 ^ 2
1180 PRINT "Supplies at Fort Hochelaga cost $150.00."
1181 PRINT "Your travel expenses to Hochelaga were $10.00."
1190 GOTO 1410
1198 LET I = I - 140
1201 PRINT
1205 LET M1 = INT((.3 * RND(1) + .85) * 10 ^ 2 + .5) / 10 ^ 2
1206 LET E1 = INT((.15 * RND(1) + .8) * 10 ^ 2 + .5) / 10 ^ 2
1207 LET B1 = INT((.2 * RND(1) + .9) * 10 ^ 2 + .5) / 10 ^ 2
1209 LET P = INT(10 * RND(1)) + 1
1210 IF P <= 2 THEN 1216
1212 IF P <= 6 THEN 1224
1213 IF P <= 8 THEN 1226
1215 IF P <= 10 THEN 1235
1216 LET F(2) = 0
1218 PRINT "Your beaver were too heavy to carry across the portage.  You had to leave the"
1219 PRINT "pelts, but found them stolen when you returned."
1221 GOSUB 1244
1222 GOTO 1414
1224 PRINT "You arrived safely at Fort Stadacona."
1225 GOTO 1239
1226 GOSUB 1430
1230 PRINT "Your canoe upset in the Lachine Rapids.  You lost all your furs."
1232 GOSUB 1244
1233 GOTO 1418
1235 LET F(4) = 0
1237 PRINT "Your fox pelts were not cured properly.  No one will buy them."
1239 GOSUB 1244
1240 GOTO 1410
1244 PRINT "Supplies at Fort Stadacona cost $125.00."
1246 PRINT "Your travel expenses to Stadacona were $15.00."
1248 RETURN
1250 LET I = I - 105
1254 PRINT
1260 LET M1 = INT((.15 * RND(1) + 1.05) * 10 ^ 2 + .5) / 10 ^ 2
1263 LET D1 = INT((.25 * RND(1) + 1.1) * 10 ^ 2 + .5) / 10 ^ 2
1270 LET P = INT(10 * RND(1)) + 1
1271 IF P <= 2 THEN 1281
1272 IF P <= 6 THEN 1291
1273 IF P <= 8 THEN 1295
1274 IF P <= 10 THEN 1306
1281 PRINT "You were attacked by a party of Iroquois.  All people in your trading group"
1282 PRINT "were killed.  This ends the game."
1284 END
1291 PRINT "You were lucky.  You arrived safely at Fort New York."
1293 GOTO 1311
1295 GOSUB 1430
1300 PRINT "You narrowly escaped an Iroquois raiding party.  However, you had to leave all"
1301 PRINT "your furs behind."
1303 GOSUB 1320
1304 GOTO 1418
1306 LET B1 = B1 / 2
1307 LET M1 = M1 / 2
1308 PRINT "Your mink and beaver were damaged on your trip.  You receive only half the"
1309 PRINT "current price for these furs."
1311 GOSUB 1320
1312 GOTO 1410
1320 PRINT "Supplies at New York cost $80.00."
1321 PRINT "Your travel expenses to New York were $25.00."
1322 RETURN
1400 COLOR 10: PRINT: PRINT "Do you want to trade at another fort (Y/N)";
1402 INPUT B$
1403 COLOR 15
1404 RETURN
1410 PRINT: COLOR 13
1412 ZZ$ = STR$(B1 * F(2)): ZZ$ = RIGHT$(ZZ$, LEN(ZZ$) - 1): PRINT "Your beaver sold for $"; ZZ$; "."
1414 ZZ$ = STR$(D1 * F(4)): ZZ$ = RIGHT$(ZZ$, LEN(ZZ$) - 1): PRINT "Your fox sold for $"; ZZ$; "."
1416 ZZ$ = STR$(E1 * F(3)): ZZ$ = RIGHT$(ZZ$, LEN(ZZ$) - 1): PRINT "Your ermine sold for $"; ZZ$; "."
1417 ZZ$ = STR$(M1 * F(1)): ZZ$ = RIGHT$(ZZ$, LEN(ZZ$) - 1): PRINT "Your mink sold for $"; ZZ$; "."
1418 LET I = M1 * F(1) + B1 * F(2) + E1 * F(3) + D1 * F(4) + I
1420 PRINT: COLOR 15
1422 I$ = STR$(I): I$ = RIGHT$(I$, LEN(I$) - 1): PRINT "You now have $"; I$; ", including your previous savings."
1425 GOTO 508
1430 FOR J = 1 TO 4
1432 LET F(J) = 0
1434 NEXT J
1436 RETURN
2000 DATA "mink","beaver","ermine","fox"
2046 END

