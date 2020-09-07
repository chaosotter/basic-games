10 REM Chemin
20 RANDOMIZE TIMER
30 CLS: COLOR 15
40 GAME = 0
50 B1 = 0: P1 = 0
60 GOTO 330
70 D = 0: C = 0
80 FOR G = 1 TO 5: A = INT(RND * 6) + 1
90 IF A = 2 OR A = 5 THEN C = C + 1
100 PRINT A;
110 GOSUB 930
120 IF A = 2 OR A = 5 THEN A = 0
130 D = D + A: NEXT G
140 PRINT: PRINT D;
150 IF D > 9 THEN D = D - 10: PRINT: PRINT D: GOTO 150
160 GOSUB 900
170 PRINT: PRINT "Total on the first roll is";: COLOR 11: PRINT D: COLOR 15
180 IF D = 9 THEN PRINT "And that's La Grande...": RETURN
190 IF D = 8 THEN PRINT "And that's La Petite...": RETURN
200 IF D = 7 THEN PRINT "And that's a Natural...": RETURN
210 IF C = 0 THEN RETURN
220 GOSUB 930
230 PRINT: COLOR 11: PRINT C;: COLOR 15: PRINT "must be rolled again."
240 FOR A = 1 TO C
250 GOSUB 930
260 E = INT(RND * 6) + 1
270 PRINT E;
280 IF E = 2 OR E = 5 THEN E = 0
290 D = D + E
300 NEXT A
310 IF D > 9 THEN D = D - 10: PRINT: PRINT D;: GOTO 310
320 RETURN
330 GOSUB 930: CLS
340 GAME = GAME + 1
350 PRINT: COLOR 12: PRINT ">>>> This is game"; GAME; "<<<<": PRINT: COLOR 15
360 COLOR 9: PRINT STRING$(40, 247)
370 COLOR 13: PRINT "Now, I'll roll as banker..."
380 COLOR 9: PRINT STRING$(40, 247): COLOR 15
390 GOSUB 70
400 GOSUB 900
410 PRINT: PRINT "So my final total is";: COLOR 11: PRINT D: COLOR 15
420 GOSUB 900
430 COLOR 9: PRINT: PRINT STRING$(40, 247)
440 COLOR 10: INPUT "Press Enter to roll your dice", A$
450 COLOR 9: PRINT STRING$(40, 247): COLOR 15
460 J = D
470 GOSUB 930
480 GOSUB 70
490 PRINT: PRINT "So your final total is";: COLOR 11: PRINT D: COLOR 15
500 PRINT: PRINT
510 GOSUB 930
520 COLOR 12: PRINT "Computer", "Human": COLOR 15
530 GOSUB 900
540 COLOR 11: PRINT J, D: COLOR 15
550 GOSUB 930: PRINT
560 COLOR 13: PRINT "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$": COLOR 15
570 PRINT TAB(5);
580 IF J = D THEN PRINT "That's a stand-off": GOTO 620
590 IF J > D THEN PRINT "I'm the";: B1 = B1 + 1
600 IF D > J THEN PRINT "You're the";: P1 = P1 + 1
610 PRINT " winner that time!"
620 COLOR 13: PRINT "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$": COLOR 15
630 PRINT: PRINT
640 GOSUB 900
650 PRINT " Now the totals so far in Chemin de Computer are"
670 PRINT B1; "for me, and"; P1; "for you..."
680 PRINT: PRINT
690 GOSUB 930
700 IF B1 + P1 = 9 THEN 750
710 IF B1 > P1 THEN PRINT " Looks like I'm in front!"
720 IF P1 > B1 THEN PRINT " And you seem to have the edge!"
730 GOSUB 900
740 GOTO 330
750 REM End of game
760 PRINT: PRINT
770 PRINT "Well, old buddy, we seem to have come to the end of the game... with a total"
800 PRINT "of nine scoring rounds...": PRINT
810 GOSUB 900
820 IF P1 > B1 THEN PRINT "And, for once, it is you who has beaten me!": GOTO 840
830 IF B1 > P1 THEN PRINT "And, once again, the mighty machine proves the supreme champeen!!"
840 GOSUB 900
850 PRINT "Thanks for the game, old buddy, we must do it again some time, when you feel"
880 PRINT "lucky..."
890 END
900 XX = 1.5: GOSUB 1000: RETURN
910 PRINT: PRINT
920 RETURN
930 XX = 0.5: GOSUB 1000: RETURN
1000 ST = TIMER + XX
1010 IF TIMER < ST THEN 1010
1020 RETURN

