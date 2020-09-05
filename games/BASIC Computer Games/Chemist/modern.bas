2 CLS: COLOR 12
3 PRINT TAB(36); "Chemist"
6 PRINT TAB(31); "Creative Computing"
7 PRINT TAB(29); "Morristown, New Jersey"
8 PRINT: PRINT: PRINT: RANDOMIZE TIMER: COLOR 14
10 PRINT "The fictitious chemical kryptocyanic acid can only be diluted by the ratio of"
20 PRINT "7 parts water to 3 parts acid.  If any other ratio is attempted, the acid"
30 PRINT "becomes unstable and soon explodes.  Given the amount of acid, you must decide"
40 PRINT "how much water to add for dilution.  If you miss, you face the consequences."
50 PRINT: PRINT: COLOR 15
100 A = INT(RND(1) * 50)
110 W = 7 * A / 3
115 A$ = STR$(A): A$ = RIGHT$(A$, LEN(A$) - 1)
120 COLOR 10: PRINT A$; " liters of kryptocyanic acid.  How much water";
130 INPUT R: COLOR 15
140 D = ABS(W - R)
150 IF D > W / 20 THEN 200
160 PRINT "Good job!  You may breathe now, but don't inhale the fumes!"
170 PRINT
180 GOTO 100
200 PRINT "*Sizzle!*  You have just been desalinated into a blob of quivering protoplasm!"
220 T = T + 1
230 IF T = 9 THEN 260
240 PRINT "However, you may try again with another life.": PRINT
250 GOTO 100
260 PRINT
265 PRINT "Your nine lives are used, but you will be long remembered for your"
270 PRINT "contributions to the field of comic book chemistry."
280 END

