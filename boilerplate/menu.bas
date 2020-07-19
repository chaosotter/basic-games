10 COLOR 15, 1: CLS
20 COLOR 9, 1: PRINT: PRINT TAB(30); "Vintage BASIC Games"
30 COLOR 15: PRINT: PRINT
40 PRINT " Welcome!  This game is available in two different versions:"
50 PRINT
60 COLOR 10: PRINT " (1) MODERN"
70 COLOR 15: PRINT
80 PRINT "     This version maintains the functionality of the original, but includes"
90 PRINT "     some modern niceties such as lowercase suppose, standard input checking,"
100 PRINT "     and color.  Grammatical and typographical errors have been corrected."
110 PRINT
120 COLOR 12: PRINT " (2) CLASSIC"
130 COLOR 15: PRINT
140 PRINT "     This version aims to reproduce the program as originally published, in as"
150 PRINT "     unchanged a form as possible.  Output may scroll beyond the bounds of the"
160 PRINT "     screen, and any grammatical and typographical errors in the original have"
170 PRINT "     been maintained as-is.  Input and output must generally be in uppercase."
180 PRINT: PRINT
190 COLOR 14: PRINT TAB(10); "(If you don't know what you want, you probably want MODERN.)"
200 PRINT
210 COLOR 15: PRINT TAB(19); ">>> Press ";
220 COLOR 10: PRINT "1 for MODERN";
230 COLOR 15: PRINT " or ";
240 COLOR 12: PRINT "2 for CLASSIC";
250 COLOR 15: PRINT " <<<"
260 a$ = INKEY$: IF a$ = "" THEN 260
270 IF a$ = "1" THEN COLOR 7, 0: CHAIN "modern"
280 IF a$ = "2" THEN COLOR 7, 0: CHAIN "classic"
290 GOTO 260

