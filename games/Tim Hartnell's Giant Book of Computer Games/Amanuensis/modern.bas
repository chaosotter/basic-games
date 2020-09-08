10 REM AMANUENSIS
20 CLS: COLOR 15
30 DIM A$(12)
40 N = 0
50 COLOR 13: PRINT "(Press any key to begin.)": COLOR 15
60 N = N + 1: IF INKEY$ = "" THEN 60
70 RANDOMIZE N: CLS
80 REM ****************************
90 RESTORE 330: GOSUB 450: A$(1) = B$
100 RESTORE 340: GOSUB 450: A$(2) = B$
110 RESTORE 350: GOSUB 450: A$(3) = B$
120 RESTORE 360: GOSUB 450: A$(4) = B$
130 RESTORE 370: GOSUB 450: A$(5) = B$
140 RESTORE 380: GOSUB 450: A$(6) = B$
150 RESTORE 390: GOSUB 450: A$(7) = B$
160 RESTORE 400: GOSUB 450: A$(8) = B$
170 RESTORE 410: GOSUB 450: A$(9) = B$
180 RESTORE 420: GOSUB 450: A$(10) = B$
190 RESTORE 430: GOSUB 450: A$(11) = B$
200 RESTORE 420: GOSUB 450: A$(12) = B$
210 REM ****************************
215 COLOR 9 + INT(RND * 7)
220 PRINT "The "; A$(1); " "; A$(2); " "; A$(3)
230 PRINT "     In the "; A$(4); "..."
235 P1$ = LEFT$(A$(5), 1): P2$ = RIGHT$(A$(5), LEN(A$(5)) - 1)
236 P1$ = CHR$(ASC(P1$) - 32)
240 PRINT P1$; P2$; " for "; A$(6); ","
250 PRINT "   To "; A$(7); " the "; A$(8); "..."
255 P1$ = LEFT$(A$(9), 1): P2$ = RIGHT$(A$(9), LEN(A$(9)) - 1)
256 P1$ = CHR$(ASC(P1$) - 32)
260 PRINT " "; P1$; P2$; ", then "; A$(10)
270 PRINT "    ..."; A$(11); ", "; A$(12); "."
280 PRINT: PRINT
290 REM ****************************
300 XX = 5.0: GOSUB 1000
310 GOTO 90
320 REM ****************************
330 DATA "applicant","supplicant","mendicant","beggar","aspirant","claimant","postulant","convoy","sentinel","castellan"
340 DATA "entreated","beseeched","waited","besought","conjured","pressed","urged","craved","demanded","claimed"
350 DATA "successfully","courageously","progressively","foolishly","endlessly","helplessly","haltingly","slavishly","neglectfully","pridefully"
360 DATA "field","battlefield","playground","circus ring","bear garden","enemy's camp","hippodrome","theatre of war","court","racecourse"
370 DATA "waiting","asking","hoping","watching","praying","staying","screaming","wanting","starting","crying"
380 DATA "the fates","fortune's wheel","Hobson's Choice","the stars","an astral influence","a blind bargain","a spellbinder","a malevolent spirit","a zealot","a dogmatist"
390 DATA "quench","recant","forswear","abjure","renounce","relinquish","waver","demur","swerve","back"
400 DATA "ghost","spectre","hobgoblin","djinn","leprechaun","pixie","faun","satyr","dryad","naiad"
410 DATA "wasting","spending","using","consuming","running out","drying up","emptying","exhausting","squandering","dispensing with"
420 DATA "corroding","eroding","blighting","rotting","gnawing","undermining","shaking","breaking","damaging","wounding"
430 DATA "restraining","coercing","checking","detaining","enclosing","impounding","handcuffing","muzzling","gagging","suppressing"
440 REM ****************************
450 FOR N = 1 TO RND * 10 + 1
460 READ B$
470 NEXT N
480 RETURN
1000 ST = TIMER + XX
1010 IF TIMER < ST THEN 1010
1020 RETURN

