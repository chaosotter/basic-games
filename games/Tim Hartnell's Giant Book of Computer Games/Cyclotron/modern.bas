10 REM Cyclotron
20 CLS: COLOR 15
30 N = 0: HS = 9: DIM B(7), Q(3), W(3)
40 COLOR 13: PRINT "(Press a key when you're ready to play.)": COLOR 15
60 N = N + 1: IF INKEY$ = "" THEN 60
70 RANDOMIZE N
80 REM Place antimatter
90 FOR A = 1 TO 3
100 B(A) = INT(RND * 7) + 1
110 NEXT A
120 FOR H = 6 TO 1 STEP -1
130 CLS
140 PRINT: PRINT: PRINT "You have"; H; "seconds.": PRINT
150 COLOR 10: PRINT "Enter cyclotron number (1-7), or 8 if you think you know where the": PRINT "antimatter lies";
180 INPUT C: COLOR 15
190 IF C = 8 THEN GOTO 520
200 GOSUB 450
210 D = 1
220 IF B(D) = C THEN 350
230 IF D < 3 THEN D = D + 1: GOTO 220
240 GOSUB 500
250 PRINT "The atom emerged from"; STR$(C); "."
260 XX = 2.0: GOSUB 1000
270 NEXT H
280 PRINT: PRINT: PRINT
290 PRINT "Sorry, time is up!"
300 PRINT: PRINT "The antimatter was in: ";
310 COLOR 13: FOR A = 1 TO 3
320 PRINT B(A);
330 NEXT A: COLOR 15
340 END
350 REM Antimatter acts
360 IF RND > .9 THEN 420
370 IF C = 1 THEN C = 2: GOTO 210
380 IF C = 7 THEN C = 6: GOTO 210
390 F = INT(RND * 2) - 1
400 C = C + F
410 GOTO 210
420 REM Antimatter absorbs atom
430 PRINT "The atom has been absorbed."
440 GOTO 260
450 COLOR 11: PRINT: PRINT: PRINT TAB(30 + 2 * C); C: COLOR 15
460 FOR Z = 1 TO 5
470 COLOR 13: PRINT TAB(33); "- - - - - - -": COLOR 15
480 NEXT Z
490 RETURN
500 COLOR 11: PRINT TAB(30 + 2 * C); C: COLOR 15
510 RETURN
520 REM Location attempt
530 COLOR 10: PRINT: PRINT "Where do you think the antimatter lies (enter three)";
550 INPUT Q(1), Q(2), Q(3): COLOR 15: PRINT
560 FOR T = 1 TO 3: W(T) = B(T): NEXT T
570 SR = 0
580 FOR X = 1 TO 3: FOR Y = 1 TO 3
590 IF Q(X) = B(Y) THEN SR = SR + 1: B(Y) = 0: Q(X) = 0
600 NEXT Y: NEXT X
610 GOTO 650
620 FOR P = 1 TO 3
630 B(P) = W(P)
640 NEXT P
650 IF SR > 2 THEN 700
660 IF SR > 0 THEN PRINT "You located"; SR; "correctly."
670 IF SR = 0 THEN PRINT "You are completely wrong!"
680 FOR T = 1 TO 3: B(T) = W(T): NEXT T
690 GOTO 260
700 PRINT "Well done.  You located the antimatter with"; H; "seconds to spare!"
730 IF 6 - H < HS THEN HS = 6 - H
740 PRINT: PRINT "Your best time so far is:"; HS
750 XX = 2.0: GOSUB 1000
760 GOTO 90
1000 ST = TIMER + XX
1010 IF TIMER < ST THEN 1010
1020 RETURN

