10 REM Chemin
20 RANDOMIZE VAL(RIGHT$(TIME$, 2))
30 CLS
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
170 PRINT: PRINT "Total on the first roll is"; D
180 IF D = 9 THEN PRINT "And that's La Grande...": RETURN
190 IF D = 8 THEN PRINT "And that's La Petite...": RETURN
200 IF D = 7 THEN PRINT "And that's a Natural...": RETURN
210 IF C = 0 THEN RETURN
220 GOSUB 930
230 PRINT: PRINT C; "must be rolled again"
240 FOR A = 1 TO C
250 GOSUB 930
260 E = INT(RND * 6) + 1
270 PRINT E;
280 IF E = 2 OR E = 5 THEN E = 0
290 D = D + E
300 NEXT A
310 IF D > 9 THEN D = D - 10: PRINT: PRINT D;: GOTO 310
320 RETURN
330 GOSUB 930: PRINT
340 GAME = GAME + 1
350 PRINT: PRINT ">>>> This is game"; GAME; " <<<<": PRINT
360 PRINT "********************************"
370 PRINT "Now, I'll roll as banker..."
380 PRINT "********************************"
390 GOSUB 70
400 GOSUB 900
410 PRINT: PRINT "So my final total is"; D
420 GOSUB 900
430 PRINT "********************************"
440 INPUT "Press RETURN to roll your dice", A$
450 PRINT "********************************"
460 J = D
470 GOSUB 930
480 GOSUB 70
490 PRINT: PRINT "So your final total is"; D
495 PRINT: INPUT ZZ$
500 PRINT: PRINT
510 GOSUB 930
520 PRINT "Computer", "Human"
530 GOSUB 900
540 PRINT J, D
550 GOSUB 930: PRINT
560 PRINT "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
570 PRINT TAB(5);
580 IF J = D THEN PRINT "That's a stand-off": GOTO 620
590 IF J > D THEN PRINT "I'm the";: B1 = B1 + 1
600 IF D > J THEN PRINT "You're the";: P1 = P1 + 1
610 PRINT " winner that timel"
620 PRINT "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
630 PRINT: PRINT
640 GOSUB 900
650 PRINT " Now the totals so far in"
660 PRINT " Chemin de Computer are"
670 PRINT B1; "for me, and"; P1; "for you..."
680 PRINT: PRINT
690 GOSUB 930
700 IF B1 + P1 = 9 THEN 750
710 IF B1 > P1 THEN PRINT " Looks like I'm in frontl"
720 IF P1 > B1 THEN PRINT " And you seem to have the edgel"
730 GOSUB 900
740 GOTO 330
750 REM End of game
760 PRINT: PRINT
770 PRINT "Well, old buddy, we seem"
780 PRINT "to have come to the end"
790 PRINT "of the game...with a total"
800 PRINT "of nine scoring rounds..."
810 GOSUB 900
820 IF P1 > B1 THEN PRINT "And, for once, it is": PRINT "you who has beaten me!": GOTO 840
830 IF B1 > P1 THEN PRINT "And, once again, the": PRINT "mighty machine proves the": PRINT "supreme champeen!!"
840 GOSUB 900
850 PRINT "Thanks for the game, old"
860 PRINT "buddy, we must do it again"
870 PRINT "some time, when you feel"
880 PRINT "lucky...................."
890 END
900 FOR Z = 1 TO 1000: NEXT Z
910 PRINT: PRINT
920 RETURN
930 FOR Z = 1 TO 500: NEXT Z: RETURN

