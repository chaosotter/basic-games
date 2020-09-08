10 REM ROULETTE
20 RANDOMIZE TIMER
30 DIM B(24): CH = 1000
40 PRINT: PRINT: COLOR 13: PRINT "You have"; CH; "chips.": COLOR 15
50 GOSUB 850
60 PRINT: COLOR 10: PRINT "Messieurs, faites vos jeux (A-P)";
70 INPUT A$: COLOR 15: IF A$ = "" THEN 70
75 IF A$ >= "a" AND A$ <= "z" THEN A$ = CHR$(ASC(A$) - 32)
80 A = ASC(A$) - 64: IF A < 1 OR A > 17 THEN 70
90 IF A = 17 THEN 700
100 FOR Q = 1 TO 24: B(Q) = -99: NEXT Q
110 PRINT: COLOR 10: INPUT "How many chips"; N: COLOR 15
120 IF N < 1 THEN PRINT "I cannot accept that bet!": GOSUB 850: GOTO 110
130 IF N > CH THEN PRINT "You don't have that many!": GOTO 110
140 CH = CH - N
150 ON A GOSUB 430, 440, 450, 470, 490, 510, 520, 530, 540, 550, 560, 580, 630, 650, 680, 690
160 GOSUB 850
170 REM *******************
180 REM **THE WHEEL SPINS**
190 PRINT: PRINT "The wheel is spinning..."
200 GOSUB 850
210 FOR B = 1 TO 50
220 C = INT(RND(1) * 39) - 1
230 PRINT TAB(RND(1) * 17);: COLOR 9 + INT(RND * 7)
240 IF C = -1 THEN PRINT " 00" ELSE PRINT C
245 COLOR 15
250 XX = B / 200: GOSUB 1000
260 NEXT B: GOSUB 850
270 PRINT: IF C = -1 THEN PRINT "The ball stopped on double zero." ELSE PRINT "The ball stopped on"; STR$(C); "."
280 Y = 0: E = 1
290 IF B(E) = C THEN Y = 1: GOTO 310
300 IF E < 24 THEN E = E + 1: GOTO 290
310 IF Y = 0 THEN 360
320 WI = INT(OD * N + .5): CH = CH + WI + N
330 PRINT: PRINT "Congratulations, you have won"; WI; "chips and your bet of"; N; "chips."
350 GOTO 370
360 PRINT "Sorry, but you lost on that round..."
370 GOSUB 850
380 IF CH < 1 THEN 730: REM BROKE
390 IF CH > 2000 THEN 800: REM BREAK THE BANK
400 GOTO 40
410 REM ********************
420 REM **PLACING THE BETS**
430 COLOR 10: INPUT "Which number"; B(1): COLOR 15: OD = 35: RETURN
440 COLOR 10: INPUT "Which two numbers"; B(1), B(2): COLOR 15: OD = 17: RETURN
450 COLOR 10: INPUT "Which number in left column"; D: COLOR 15
460 FOR E = 0 TO 2: B(E + 1) = D + E: NEXT E: OD = 11: RETURN
470 COLOR 10: INPUT "First number of six"; D:: COLOR 15: FOR E = 0 TO 5: B(E + 1) = D + E: NEXT E
480 OD = 5: RETURN
490 COLOR 10: INPUT "First number in square"; D: COLOR 15: FOR E = 0 TO 3: B(E + 1) = D + E: IF E = 2 THEN D = D + 1
500 NEXT E: OD = 8: RETURN
510 FOR E = 1 TO 12: B(E) = E: NEXT E: OD = 2: RETURN
520 FOR E = 1 TO 12: B(E) = E + 12: NEXT E: OD = 2: RETURN
530 FOR E = 1 TO 12: B(E) = E + 24: NEXT E: OD = 2: RETURN
540 FOR E = 1 TO 18: B(E) = E: NEXT E: OD = 1: RETURN
550 FOR E = 1 TO 18: B(E) = E + 18: NEXT E: OD = 1: RETURN
560 COLOR 10: INPUT "Low number at end of line"; D: COLOR 15
570 FOR E = 0 TO 11: B(E + 1) = 3 * E + D: NEXT E: OD = 2: RETURN
580 COLOR 10: INPUT "Low number, first column"; D1: COLOR 15
590 COLOR 10: INPUT "Low number, secound column"; D2: COLOR 15
600 IF ABS(D1 - D2) > 1 THEN 580
610 FOR E = 0 TO 11: B(E + 1) = 3 * E + D1: B(E + 13) = 3 * E + D2: NEXT E
620 OD = .5: RETURN
630 RESTORE
640 FOR E = 1 TO 18: READ B(E): NEXT E: OD = 1: RETURN
650 RESTORE
660 FOR E = 1 TO 18: READ Z: NEXT E
670 FOR E = 1 TO 18: READ B(E): NEXT E: OD = 1: RETURN
680 FOR E = 2 TO 36 STEP 2: B(E / 2) = E: NEXT E: OD = 1: RETURN
690 FOR E = 1 TO 35 STEP 2: B((E + 1) / 2) = E: NEXT E: OD = 1: RETURN
700 PRINT: PRINT "You are withdrawing from the game with"; CH; "chips."
720 END
730 FOR J = 1 TO 15
740 PRINT TAB(J); "You have lost!"
750 XX = 0.2: GOSUB 1000
760 NEXT J
770 GOSUB 850
780 PRINT: PRINT "You have run out of chips!"
790 END
800 FOR J = 1 TO 9
810 PRINT TAB(J); "$ You have broken the bank!"
820 XX = 0.2: GOSUB 1000
830 NEXT J
840 END
850 PRINT: COLOR 9
855 FOR i = 1 TO 79: IF RND > .5 THEN PRINT CHR$(26); ELSE PRINT CHR$(27);
856 NEXT i: COLOR 15
860 XX = 0.8: GOSUB 1000
870 RETURN
880 DATA 1,3,5,7,9,12,14,16,18,19,21,23,25,27,30,32,34,36
890 DATA 2,4,6,8,10,11,13,15,17,20,22,24,26,28,29,31,33,35
1000 ST = TIMER + XX
1010 IF TIMER < ST THEN 1010
1020 RETURN

