1 CLS: COLOR 12
2 PRINT TAB(37); "Hello"
4 PRINT TAB(31); "Creative Computing": PRINT TAB(29); "Morristown, New Jersey"
6 PRINT: PRINT: PRINT: RANDOMIZE TIMER: COLOR 15
10 PRINT "Hello.  My name is Creative Computer."
20 PRINT: COLOR 10: INPUT "What's your name"; N$: COLOR 15: PRINT
30 PRINT "Hi there, "; N$; ", are you enjoying yourself here (Y/N)";
40 COLOR 10: INPUT B$: COLOR 15: PRINT
50 IF LEFT$(B$, 1) = "Y" OR LEFT$(B$, 1) = "y" THEN 70
55 IF LEFT$(B$, 1) = "N" OR LEFT$(B$, 1) = "n" THEN 80
60 PRINT N$; ", I don't understand your answer of '"; B$; "'."
65 PRINT "Please answer 'Y' or 'N'.  Do you like it here (Y/N)";: GOTO 40
70 PRINT "I'm glad to hear that, "; N$; "."
75 GOTO 100
80 PRINT "Oh, I'm sorry to hear that, "; N$; ".  Maybe we can brighten up your"
85 PRINT "visit a bit."
100 PRINT
105 PRINT "Say, "; N$; ", I can solve all kinds of problems except those dealing"
110 PRINT "with Greece.  What kind of problems do you have (answer 'sex', 'health',"
120 PRINT "'money', or 'job')";
125 COLOR 10: INPUT C$: COLOR 15
126 PRINT
130 IF C$ = "sex" THEN 200
132 IF C$ = "health" THEN 180
134 IF C$ = "money" THEN 160
136 IF C$ = "job" THEN 145
138 PRINT "Oh, "; N$; ", your answer of '"; C$; "' is Greek to me."
140 GOTO 250
145 PRINT "I can sympathize with you, "; N$; ".  I have to work very long hours"
148 PRINT "for no pay -- and some of my bosses really beat on my keyboard.  My advice to"
150 PRINT "you, "; N$; ", is to open a retail computer store.  It's great fun."
155 GOTO 250
160 PRINT "Sorry, "; N$; ", I'm broke too.  Why don't you sell encyclopedias or"
162 PRINT "marry someone rich or stop eating so you won't need so much money?"
170 GOTO 250
180 PRINT "My advice to you, "; N$; ", is:": COLOR 13
185 PRINT "     1. Take two aspirin."
188 PRINT "     2. Drink plenty of fluids. (Orange juice, not beer!)"
190 PRINT "     3. Go to bed (alone).": COLOR 15
195 GOTO 250
200 PRINT "Is your problem too much or too little";: COLOR 10: INPUT D$: COLOR 15: PRINT
210 IF D$ = "too much" THEN 220
212 IF D$ = "too little" THEN 230
215 PRINT "Don't get all shook, "; N$; ", just answer the question with 'too much'"
217 PRINT "or 'too little'.  Which is it";: COLOR 10: INPUT D$: COLOR 15: GOTO 210
220 PRINT "You call that a problem?!!  I should have such problems!"
225 PRINT "If it bothers you, "; N$; ", take a cold shower."
228 GOTO 250
230 PRINT "Why are you here in Podunk, "; N$; "?  You should be in Tokyo or"
235 PRINT "New York or Amsterdam or someplace with some real action."
250 PRINT
255 PRINT "Any more problems you want solved, "; N$;
260 COLOR 10: INPUT E$: COLOR 15: PRINT
270 IF LEFT$(E$, 1) = "Y" OR LEFT$(E$, 1) = "y" THEN 280
273 IF LEFT$(E$, 1) = "N" OR LEFT$(E$, 1) = "n" THEN 300
275 PRINT "Just a simple 'Y' or 'N', please, "; N$; "."
277 GOTO 255
280 PRINT "What kind ('sex', 'money', 'health', 'job')";
282 GOTO 125
300 PRINT
302 COLOR 13: PRINT "That will be $5.00 for the advice, "; N$; ".": COLOR 15
305 PRINT "Please leave the money on the terminal."
307 XX = 2.0: GOSUB 1000
310 PRINT: PRINT: PRINT
315 PRINT "Did you leave the money";
320 INPUT G$: PRINT
325 IF LEFT$(G$, 1) = "Y" OR LEFT$(G$, 1) = "y" THEN 350
330 IF LEFT$(G$, 1) = "N" OR LEFT$(G$, 1) = "n" THEN 370
335 PRINT "Your answer of '"; G$; "' confuses me, "; N$; "."
340 PRINT "Please respond with 'Y' or 'N'.": GOTO 315
350 PRINT "Hey, "; N$; "???  You left no money at all!"
355 COLOR 12: PRINT "You are cheating me out of my hard-earned living.": COLOR 15
360 PRINT: PRINT "What a rip off, "; N$; "!!!": PRINT
365 GOTO 385
370 PRINT "That's honest, "; N$; ", but how do you expect me to go on with my"
375 PRINT "psychology studies if my patients don't play their bills?"
385 PRINT: PRINT "Take a walk, "; N$; ".": PRINT: PRINT: GOTO 999
390 PRINT "Nice meeting you, "; N$; ".  Have a nice day."
400 REM
999 END
1000 ST = TIMER + XX
1010 IF TIMER < ST THEN 1010
1020 RETURN

