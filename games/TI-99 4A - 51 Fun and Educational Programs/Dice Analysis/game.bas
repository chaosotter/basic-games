100 REM "DICE ANALYSIS"
110 CALL CLEAR
120 PRINT "*** DICE ANALYSIS ***"
130 PRINT
140 PRINT "THIS PROGRAM HELPS YOU"
150 PRINT "UNDERSTAND HOW DICE WORK"
160 PRINT
170 PRINT "WHEN YOU ADD THE NUMBER"
180 PRINT "OF DOTS ON THE TWO DICE"
190 PRINT "THERE ARE MORE COMBINATIONS"
200 PRINT "OF THE NUMBER 7 THAN ANY"
210 PRINT "OTHER NUMBER."
220 PRINT "THE NEXT MOST FREQUENT"
230 PRINT "NUMBERS THAT OCCUR ARE THE 6 AND 8, ETC."
240 PRINT
250 PRINT "THIS PROGRAM COUNTS HOW MANY"
260 PRINT "TIMES EACH SUM OCCURS."
270 PRINT
280 PRINT "JUST TELL THE PROGRAM"
290 PRINT "HOW MANY TIMES YOU WISH"
300 PRINT "TO ROLL THE DICE."
310 PRINT
320 PRINT
330 PRINT "HIT ENTER TO CONTINUE"
340 INPUT ENTER$
350 CALL CLEAR
360 INPUT "NUMBER OF ROLLS  ":N
370 CALL CLEAR
380 PRINT TAB(7);"PLEASE WAIT"
390 FOR L=1 TO 10
400 PRINT
410 NEXT L
420 DIM X(12)
430 FOR K=1 TO N
440 RANDOMIZE
450 D1=INT(RND*6)+1
460 D2=INT(RND*6)+1
470 T=D1+D2
480 X(T)=X(T)+1
490 NEXT K
500 CALL CLEAR
510 PRINT "SUM","# OF TIMES"
520 PRINT
530 FOR I=2 TO 12
540 PRINT I,X(I)
550 NEXT I