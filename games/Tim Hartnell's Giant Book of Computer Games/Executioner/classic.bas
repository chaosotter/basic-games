10 REM Executioner
20 CLS
30 N = 0: Y = 0
40 PRINT "Press 'E' when you're ready"
50 PRINT "to face the Executioner..."
60 N = N + 1: IF INKEY$ <> "e" AND INKEY$ <> "E" THEN 60
70 RANDOMIZE N
80 FOR G = 1 TO RND * 22 + 1
90 READ A$
100 NEXT G
110 GOSUB 480
120 N = LEN(A$): DIM B(N), D(N)
130 FOR G = 1 TO N
140 B(G) = ASC(MID$(A$, G, 1))
150 D(G) = B(G)
160 NEXT G
170 Q = INT(N + N / 2 + .5)
180 CLS: PRINT: PRINT "You have to guess the executioner's"
190 PRINT "word in just"; Q; "guesses"
200 GOSUB 480
210 FOR J = 1 TO Q: Y = Y + 1
220 GOSUB 400
230 IF H = N THEN 340
240 PRINT: PRINT: PRINT Q + 1 - J; "chances left..."
250 PRINT: INPUT "Enter your next guess"; C$
260 F = ASC(C$)
270 FOR G = 1 TO N
280 IF D(G) = F THEN D(G) = 0: J = J - 1
290 NEXT G: NEXT J
300 GOSUB 480
310 GOSUB 400
320 PRINT: PRINT: PRINT "So sorry, but you gotta go now!"
330 GOTO 370
340 PRINT: PRINT "Whew! You've staved off"
350 PRINT "execution for another day"
360 PRINT "You got it in"; Y - 1; "guesses"
370 PRINT: PRINT "The Executioner's word was "; jA$
380 END
400 H = 0: CLS: PRINT: PRINT: PRINT
410 FOR E = 1 TO N
420 IF B(E) = D(E) THEN PRINT ".";
430 IF B(E) <> D(E) THEN PRINT CHR$(B(E));: H = H + 1
440 NEXT E
450 PRINT: PRINT: IF H <> N THEN PRINT "You have"; H; "correct letters"
460 PRINT
470 RETURN
480 XX = 0.5: GOSUB 1000
490 RETURN
500 DATA "MERIDIAN","MERIT","MERMAID","MERRIMENT"
510 DATA "OVERSEER","OXIDANT","OXYGEN","PALPABLE","UNORTHODOX"
520 DATA "PANDEMONIUM","PANEGYRIC","PARADOXICAL","PHEASANT"
530 DATA "RUMPUS","RUMMAGE","SACRAMENT","SABRE","SCHEMATIC"
540 DATA "SEDIMENT","SEXAGENARIAN","TEMPERATE","TELESCOPE"
1000 ST = TIMER + XX
1010 IF TIMER < ST THEN 1010
1020 RETURN

