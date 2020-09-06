5 RANDOMIZE TIMER
6 GOSUB 5000
10 LET S = 0
20 LET G = 0
30 LET CS = 64
40 CLS
60 PRINT TAB(34); "** Seance **": PRINT
70 COLOR 11: FOR I = 1 TO 8
80 LET X = 6 + I
90 LET Y = 5
100 LET A$ = CHR$(CS + I)
110 GOSUB 710
120 LET Y = 11
130 LET A$ = CHR$(CS + 22 - I)
140 GOSUB 710
150 NEXT I
160 FOR I = 1 TO 5
170 LET X = 5
180 LET Y = 5 + I
190 LET A$ = CHR$(CS + 27 - I)
200 GOSUB 710
210 LET X = 16
220 LET A$ = CHR$(CS + 8 + I)
230 GOSUB 710
240 NEXT I
250 LET P$ = ""
260 LET N = INT(RND(1) * 4 + 3)
270 FOR I = 1 TO N
280 LET A$ = "*"
290 LET L = INT(RND(1) * 26 + 1)
300 LET S$ = CHR$(CS + L)
310 LET P$ = P$ + S$
320 LET D = 4
330 IF L < 22 THEN LET D = 3
340 IF L < 14 THEN LET D = 2
350 IF L < 9 THEN LET D = 1
360 ON D GOTO 370, 400, 430, 460
370 LET Y = 6
380 LET X = L + 6
390 GOTO 480
400 LET X = 15
410 LET Y = L - 3
420 GOTO 480
430 LET Y = 10
440 LET X = 28 - L
450 GOTO 480
460 LET X = 6
470 LET Y = 32 - L
480 COLOR 14: GOSUB 710: COLOR 15
490 ST = TIMER
500 IF TIMER <= ST + 1 THEN 500
510 LET A$ = " "
520 GOSUB 710
530 NEXT I
540 LET A$ = ""
550 LET X = 0
560 LET Y = 13
570 GOSUB 710
580 LOCATE 16, 35: COLOR 10: INPUT R$: COLOR 15
585 RR$ = "": FOR R = 1 TO LEN(R$): A$ = MID$(R$, R, 1)
586 IF A$ >= "a" AND A$ <= "z" THEN RR$ = RR$ + CHR$(ASC(A$) - 32) ELSE RR$ = RR$ + A$
587 NEXT R: R$ = RR$
590 IF R$ = P$ THEN GOTO 670
600 LET G = G + 1
610 IF G = 1 THEN LOCATE 20, 25: COLOR 12: PRINT "The table begins to shake!": COLOR 15
620 IF G = 2 THEN LOCATE 20, 25: COLOR 12: PRINT "The light bulb shatters!": COLOR 15
630 IF G = 3 THEN GOTO 730
640 IF INKEY$ = "" THEN 640
660 GOTO 40
670 LET S = S + N
680 IF S < 50 THEN GOTO 40
690 PRINT: PRINT "Whew!  The spirits have gone!"
695 PRINT "You live to face another day!"
700 END
710 LOCATE Y + 1, X + 29: PRINT A$;
720 RETURN
730 PRINT: PRINT "OH NO!  A pair of clammy hands grasps your neck!"
735 PRINT "You die..."
740 END
5000 CLS: COLOR 12
5010 PRINT TAB(37); "Seance": PRINT: PRINT
5020 COLOR 14: PRINT
5030 PRINT "Messages from the Spirits are coming through, letter by letter.  They want you"
5040 PRINT "to remember the letters and type them into the computer in the correct order."
5050 PRINT "If you make mistakes, they will be angry -- very angry..."
5060 PRINT
5070 PRINT "Watch for stars on your screen -- they show the letters in the Spirits'"
5080 PRINT "messages."
5090 PRINT
5100 COLOR 13: PRINT "(Press any key.)"
5110 IF INKEY$ = "" THEN 5110
5120 CLS: COLOR 15: RETURN

