5 DIM B$(35), C$(35), F$(8), G$(8)
10 REM ELIZA
20 REM ALL INPUT MUST BE IN UPPER CASE
30 REM NO PUNCTUATION EXCEPT APOSTRAPHES
40 REM    AS IN  DON'T  YOU'RE  I'M  I'VE  YOU'VE
50 GOSUB 660: REM INITIALISE
60 PRINT "Welcome to another session with your computer psychiatrist, Eliza."
80 PRINT: COLOR 10: INPUT "What is your first name"; Z$: COLOR 15
90 CLS: PRINT "Well, hello there, "; Z$; "!"
100 PRINT: PRINT "It sure is neat to have you drop by."
105 PRINT "Please put all input in lowercase (other than 'I') and avoid punctuation."
110 PRINT: PRINT "Press my space bar when you're ready to start."
120 N = N + 1
130 IF INKEY$ = "" THEN 120
140 CLS: RANDOMIZE N
150 GOSUB 590: REM ACCEPT USER INPUT
160 IF RND < .2 THEN PRINT Z$; ", ";
170 GOSUB 190: REM PROCESS INPUT, PRINT REPLY
180 PRINT: GOTO 150
190 REM FIND KEY WORD, PHRASE
200 Z = 0
210 Z = Z + 1
220 D = INSTR(A$, B$(Z))
230 IF D <> 0 THEN 260
240 IF Z < 35 THEN 210
250 GOSUB 440: RETURN
260 REM PROCESS KEYWORDS
270 PRINT C$(Z); " ";
280 IF RIGHT$(C$(Z), 1) < "A" THEN PRINT: RETURN
290 H = LEN(A$) - (D + LEN(B$(Z)))
300 IF H > 0 THEN A$ = RIGHT$(A$, H)
310 Z = 0
320 Z = Z + 1
330 D = INSTR(A$, F$(Z))
340 IF D <> 0 THEN 370
350 IF Z < 8 THEN 320
360 PRINT A$: RETURN
370 J$ = LEFT$(A$, (D - 1)) + " " + G$(Z)
380 Z = LEN(A$) - LEN(LEFT$(A$, (D - 1))) - LEN(G$(Z))
390 PRINT J$
400 IF Z > 2 THEN L$ = RIGHT$(A$, (Z - 2)): IF INSTR(K$, L$) = 0 THEN RETURN
410 IF Z > 2 THEN PRINT RIGHT$(A$, (Z - 2))
420 IF Z < 2 THEN PRINT
430 RETURN
440 REM RANDOM REPLIES, NO KEY WORD
450 Z = INT(RND * 11) + 1
460 ON Z GOSUB 480, 490, 500, 510, 520, 530, 540, 550, 560, 570, 580
470 RETURN
480 PRINT "What does that suggest to you?": RETURN
490 PRINT "I see...": RETURN
500 PRINT "I'm not sure I understand you fully.": RETURN
510 PRINT "Can you elaborate on that?": RETURN
520 PRINT "That is quite interesting!": RETURN
530 PRINT "That's so... please continue...": RETURN
540 PRINT "I understand...": RETURN
550 PRINT "Well, well... do go on.": RETURN
560 PRINT "Why are you saying that?": RETURN
570 PRINT "Please explain the background to that remark...": RETURN
580 PRINT "Could you say that again, in a different way?": RETURN
590 REM ACCEPT USER INPUT
600 COLOR 10: INPUT "Please go on"; A$: COLOR 15: K$ = A$
610 IF LEFT$(A$, 3) = "BYE" OR LEFT$(A$, 3) = "Bye" OR LEFT$(A$, 3) = "bye" THEN PRINT "Bye-bye for you.  See you again sometime.": END
620 K = LEN(A$)
630 IF LEFT$(A$, 7) = "BECAUSE" OR LEFT$(A$, 7) = "Because" OR LEFT$(A$, 7) = "because" THEN A$ = RIGHT$(A$, (K - 7)): K = K - 7
640 A$ = " " + A$ + " "
650 RETURN
660 REM INITIALISE
670 CLS: COLOR 15: N = 0
690 REM FILL B$,C$ WITH KEY WORDS, REPLIES
700 FOR A = 1 TO 35
710 READ B$(A), C$(A)
720 NEXT A
730 RESTORE 1150
740 FOR A = 1 TO 8
750 READ F$(A): READ G$(A)
760 NEXT A
770 RETURN
780 REM KEYWORDS, REPLIES
790 DATA " can you","Perhaps you would like to be able to"
800 DATA " do you","Yes, I"
810 DATA " can I","Perhaps you don't want to be able to"
820 DATA " you are","What makes you think I am"
830 DATA " you're","What is your reaction to me being"
840 DATA " I don't","Why don't you"
850 DATA " I feel","Tell me more about feeling"
860 DATA " why don't you","Why would you want me to"
870 DATA " why can't I","What makes you think you should be able to"
880 DATA " are you","Why are you interested in whether or not I am"
890 DATA " I can't","How do you know you can't"
900 DATA " sex","I feel you should really discuss this with a human."
910 DATA " I am","How long have you been"
920 DATA " I'm","Why are you telling me you're"
930 DATA " I want","Why do you want"
940 DATA " what","What do you think?"
950 DATA " how","What answer would please you the most?"
960 DATA " who","How often do you think of such questions?"
970 DATA " where","Why did you ask me that?"
980 DATA " when","What would your best friend say to that question?"
990 DATA " why","What is it that you really want to know?"
1000 DATA " perhaps","You're not very firm on that!"
1010 DATA " drink","Moderation in all things should be the rule."
1020 DATA " sorry","Why are you apologizing?"
1030 DATA " dream","Why did you bring up the subject of dreams?"
1040 DATA " I like","Is it good that you like"
1050 DATA " maybe","Aren't you being a bit tentative?"
1060 DATA " no","Why are you being negative?"
1070 DATA " your","Why are you concerned about my"
1080 DATA " always","Can you think of a specific example?"
1090 DATA " think","Do you doubt"
1100 DATA " yes","You seem quite certain.  Why is this so?"
1110 DATA " friend","Why do you bring up the subject of friends?"
1120 DATA " computer","Why do you mention computers?"
1130 DATA " am I","you are"
1140 REM CONJUGATE
1150 DATA " I ","you"
1160 DATA " are ","am"
1170 DATA " were ","was"
1180 DATA " you ","me"
1190 DATA " your ","my"
1200 DATA " I've ","you've"
1210 DATA " I'm ","you're"
1220 DATA " me ","you"
1230 DATA " am I ","you are"
1240 DATA " am ","are"

