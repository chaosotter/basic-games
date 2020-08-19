5 CLS: COLOR 12
10 PRINT TAB(36); "TV Plot"
20 PRINT TAB(31); "Creative Computing"
40 PRINT TAB(29); "Morristown, New Jersey"
45 RANDOMIZE TIMER
50 PRINT: PRINT: PRINT: COLOR 14
55 PRINT "This program automatically comes up with television shows guaranteed to appeal"
60 PRINT "to the masses and win high Nielsen ratings.": PRINT
70 COLOR 15
80 PRINT "Here is the first plot:"
100 PRINT: GOSUB 800
110 ON X GOTO 120, 130, 140, 150, 160, 120, 130, 140, 150, 160
120 A$ = "program": GOTO 170
130 A$ = "report": GOTO 170
140 A$ = "special": GOTO 170
150 A$ = "series": GOTO 170
160 A$ = "story"
170 GOSUB 800
180 ON X GOTO 190, 200, 210, 220, 230, 240, 250, 260, 270, 280
190 B$ = "swinging": GOTO 290
200 B$ = "brilliant": GOTO 290
210 B$ = "salty": GOTO 290
220 B$ = "hilarious": GOTO 290
230 B$ = "sensitive": GOTO 290
240 B$ = "doddering": GOTO 290
250 B$ = "henpecked": GOTO 290
260 B$ = "dedicated": GOTO 290
270 B$ = "thoughtful": GOTO 290
280 B$ = "heavy"
290 GOSUB 800
300 ON X GOTO 310, 320, 330, 340, 350, 360, 370, 380, 390, 400
310 C$ = "girl cowhand": GOTO 410
320 C$ = "little boy": GOTO 410
330 C$ = "scientist": GOTO 410
340 C$ = "lawyer": GOTO 410
350 C$ = "town marshall": GOTO 410
360 C$ = "dentist": GOTO 410
370 C$ = "bus driver": GOTO 410
380 C$ = "jungle man": GOTO 410
390 C$ = "secret agent": GOTO 410
400 C$ = "collie"
410 GOSUB 800
420 ON X GOTO 430, 440, 450, 460, 470, 430, 440, 450, 460, 470
430 D$ = "a whiz": GOTO 480
440 D$ = "a flop": GOTO 480
450 D$ = "mediocre": GOTO 480
460 D$ = "a success": GOTO 480
470 D$ = "a disaster"
480 GOSUB 800
490 ON X GOTO 500, 510, 520, 530, 540, 550, 560, 570, 580, 590
500 E$ = "solving crimes": GOTO 600
510 E$ = "roping cows": GOTO 600
520 E$ = "cooking health food": GOTO 600
530 E$ = "pitching woo": GOTO 600
540 E$ = "protecting ecology": GOTO 600
550 E$ = "helping children": GOTO 600
560 E$ = "two-fisted drinking": GOTO 600
570 E$ = "fighting fires": GOTO 600
580 E$ = "herding elephants": GOTO 600
590 E$ = "winning races": GOTO 600
600 GOSUB 800
610 ON X GOTO 620, 630, 640, 650, 660, 670, 680, 690, 700, 710
620 F$ = "recovers the jewels": GOTO 720
630 F$ = "foils the spies": GOTO 720
640 F$ = "destroys the city": GOTO 720
650 F$ = "finds love": GOTO 720
660 F$ = "saves the animals": GOTO 720
670 F$ = "confesses": GOTO 720
680 F$ = "discovers the secret": GOTO 720
690 F$ = "stops the flood": GOTO 720
700 F$ = "helps the dog": GOTO 720
710 F$ = "makes the sacrifice"
720 COLOR 11: PRINT: PRINT "The "; A$; " is about is a "; B$; " "; C$; " who is "; D$; " at"
730 PRINT E$; " and who "; F$; ".": PRINT
740 COLOR 10: INPUT "Another (Y/N)"; A$: COLOR 15
750 IF LEFT$(A$, 1) = "N" OR LEFT$(A$, 1) = "n" THEN 999
760 GOTO 100
800 X = INT(10 * RND(1) + 1): RETURN
999 PRINT: PRINT "Okay, hope you have a successful TV show!": END

