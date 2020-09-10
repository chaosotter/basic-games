5 DIM A$(6), C(6)
10 REM Las Vegas High
20 GOSUB 1110: REM Initialise
30 GOSUB 870: REM Player input
40 GOSUB 520: REM Operate slot machine
50 IF CASH < 1 THEN 90
60 IF CASH > 2500 THEN 290
70 GOTO 30
80 REM  *****
90 REM  Broke
100 REM *****
110 GOSUB 410
120 PRINT "That's the end of the line,"
130 PRINT "oh once mighty gambler..."
140 GOSUB 410
150 PRINT "You're stone, flat broke!!"
160 GOSUB 410
170 PRINT "Press 'Y' if you'd like to"
180 PRINT "have another go at breaking"
190 PRINT "!!!!! LAS VEGAS HIGH !!!!!"
200 PRINT "(or press 'N' if you wish to leave)"
210 A$ = INKEY$
220 IF A$ <> "Y" AND A$ <> "y" AND A$ <> "N" AND A$ <> "n" THEN 210
230 IF A$ = "Y" OR A$ = "y" THEN RUN
240 PRINT: PRINT "OK, punter..."
250 GOSUB 410
260 PRINT "Thanks for the game!"
270 END
280 REM **************
290 REM Broke the bank
300 REM **************
310 GOSUB 410
320 PRINT "Well done, gamblerll"
330 GOSUB 410
340 PRINT "You've reached our house limit"
350 PRINT "so we'll have to throw you out"
360 GOSUB 410
370 PRINT "People with luck like yours give"
380 PRINT "our casino a bad name..........."
390 GOTO 160
400 REM *****
410 REM Delay
420 REM *****
430 XX = 0.8: GOSUB 2000
440 PRINT: PRINT
450 RETURN
460 REM **********
470 REM Delay two
480 REM **********
490 XX = 0.8: GOSUB 2000
500 RETURN
510 REM ********************
520 REM Operate slot machine
530 REM ********************
540 CLS
550 GOSUB 410
560 PRINT TAB(15); CHR$(214); STRING$(48, 196); CHR$(183)
570 PRINT TAB(15); CHR$(186); "  "; CHR$(179); " ";
580 FOR M = 1 TO 3
590 GOSUB 460
600 A = INT(43 * RND)
610 IF A < 2 THEN COLOR 10: PRINT A$(4);: C(M) = 1
620 IF A > 1 AND A < 6 THEN COLOR 11: PRINT A$(3);: C(M) = 2
630 IF A > 5 AND A < 12 THEN COLOR 12: PRINT A$(1);: C(M) = 3
640 IF A > 11 AND A < 20 THEN COLOR 13: PRINT A$(2);: C(M) = 4
650 IF A > 19 AND A < 31 THEN COLOR 14: PRINT A$(5);: C(M) = 5
660 IF A > 30 THEN COLOR 9: PRINT A$(6);: C(M) = 6
670 COLOR 15: PRINT " "; CHR$(179); " ";
680 NEXT M
685 PRINT "  "; CHR$(186): PRINT TAB(15); CHR$(211); STRING$(48, 196); CHR$(189)
690 GOSUB 410
700 WIN = 0
705 COLOR 13
710 IF C(1) + C(2) + C(3) = 3 THEN PRINT "Three BARs!!!": GOSUB 410: PRINT "That's jackpot style!": WIN = WIN + 9: GOTO 750
720 IF C(1) = C(2) AND C(3) = C(2) AND C(1) = 2 THEN PRINT "Three Bells!!!": WIN = WIN + 3.9: GOTO 750
730 IF C(1) = C(2) AND C(3) = C(2) AND C(1) <> 1 AND C(2) <> 3 THEN PRINT "Three of a kind": WIN = WIN + 3.5: GOTO 750
740 IF C(1) = C(2) OR C(1) = C(3) OR C(2) = C(3) THEN PRINT ">> A PAIR <<": WIN = WIN + .7
750 IF C(3) = 2 THEN PRINT "A BELL at the end is a bonus!": WIN = WIN + .6
760 IF C(1) = 3 AND C(3) = 3 THEN PRINT "An apple at each side is good!": WIN = WIN + .5
770 IF C(1) = 4 AND C(2) = 3 AND C(3) = 4 THEN PRINT "That old cherry-bell-cherry combination is one of my favorites!": WIN = WIN + .4
775 COLOR 15
780 GOSUB 410
790 WIN = INT(BET * WIN)
795 W$ = STR$(WIN): W$ = RIGHT$(W$, LEN(W$) - 1)
796 B$ = STR$(BET): B$ = RIGHT$(B$, LEN(B$) - 1)
800 IF WIN > 0 THEN PRINT "And you've won $"; W$; "!": CASH = CASH + WIN
810 IF WIN = 0 THEN PRINT "And you've lost $"; B$; ".": CASH = CASH - BET
820 GOSUB 410
830 C$ = STR$(CASH): C$ = RIGHT$(C$, LEN(C$) - 1)
835 IF CASH > 0 THEN PRINT "So you now have $"; C$; "."
840 GOSUB 460: GOSUB 460
850 RETURN
860 REM ************
870 REM Player input
880 REM ************
890 CLS
900 GOSUB 410
910 IF CASH < 300 THEN PRINT "Hi there, gambler!"
920 IF CASH > 299 AND CASH < 600 THEN PRINT "You're doing well tonight!"
930 IF CASH > 599 AND CASH < 900 THEN PRINT "Lady Luck has certainly smiled on you!"
940 IF CASH > 899 AND CASH < 1200 THEN PRINT "The Fates are being extremely kind"
950 IF CASH > 1199 THEN PRINT "It is so good to see an expert at work"
960 GOSUB 470
970 C$ = STR$(CASH): C$ = RIGHT$(C$, LEN(C$) - 1)
975 PRINT: PRINT "You have $"; C$; "."
980 PRINT: COLOR 10: INPUT "How much do you want to bet"; BET: COLOR 15
990 IF BET > CASH THEN PRINT "You ain't got that much!": GOTO 980
1000 GOSUB 410
1010 B$ = STR$(BET): B$ = RIGHT$(B$, LEN(B$) - 1)
1015 PRINT "Okay, sir, $"; B$; " it is!"
1020 GOSUB 410
1030 COLOR 10: PRINT "Press the spacebar to play": COLOR 15
1040 IF INKEY$ <> " " THEN 1040
1050 FOR t = 1 TO 40
1060 PRINT TAB(t / 2); "******* Stand by *******"
1070 PRINT
1080 NEXT t
1090 RETURN
1100 REM **********
1110 REM Initialise
1120 REM **********
1130 CLS: COLOR 15
1150 RANDOMIZE TIMER
1160 CASH = 250
1170 FOR B = 1 TO 6
1180 READ A$(B)
1190 NEXT B
1200 RETURN
1210 DATA "$$ Apple $$"
1220 DATA "#  Cherry #"
1230 DATA "** Bell  **"
1240 DATA "!!  BAR  !!"
1250 DATA "<< Lemon >>"
1260 DATA "{{  PLUM }}"
2000 st = TIMER + XX
2010 IF TIMER < st THEN 2010
2020 RETURN

