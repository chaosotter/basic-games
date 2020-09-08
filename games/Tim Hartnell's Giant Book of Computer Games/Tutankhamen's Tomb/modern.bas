10 REM TUTANKHAMEN'S TOMB
20 RANDOMIZE TIMER
30 A = INT(RND(1) * 7) + 4: B = INT(RND(1) * 7) + 4: C = INT(RND(1) * 7) + 4
40 X = 1: Y = 1: Z = 1
50 CLS: COLOR 14
60 CC = 21
70 PRINT "You have a limited time in which to find an explorer lost within Egypt's"
80 PRINT "greatest pyramid."
100 PRINT: COLOR 9: PRINT STRING$(79, 236): COLOR 14: PRINT
110 XX = 1.0: GOSUB 1000
130 PRINT "He is trapped within the Pharaoh's Tomb... and has only a very small amount of"
140 PRINT "air.  You can tell approximately where he is because he is knocking on the side"
150 PRINT "of the tomb and you are making your way towards the sound.  You can hear"
160 PRINT "knocking..."
190 PRINT: COLOR 9: PRINT STRING$(79, 236): COLOR 14: PRINT
200 XX = 1.0: GOSUB 1000
210 PRINT "However, the sound is muffled, and you cannot always tell exactly where it is"
220 PRINT "coming from..."
240 XX = 1.0: GOSUB 1000
250 PRINT: COLOR 9: PRINT STRING$(79, 236): COLOR 15: PRINT
260 PRINT: PRINT "The knocking appears to be coming from: ": COLOR 13: PRINT TAB(4);
270 IF RND(1) > .7 THEN 300
280 IF X > B THEN PRINT "...below you ";
290 IF X < B THEN PRINT "...above you ";
300 IF RND(1) > .7 THEN 340
310 IF Z > C THEN PRINT "...to the left ";
320 IF Z < C THEN PRINT "...to the right ";
330 IF (X <> B OR Z <> C) AND Y <> A THEN PRINT "and ";
340 IF Y < A THEN PRINT "...ahead of you"
350 IF Y > A THEN PRINT "...behind you"
355 COLOR 15
360 CC = CC - 1
370 PRINT: COLOR 12: PRINT "You have"; CC; "minutes left.": COLOR 15
380 PRINT: PRINT "You are in a series of tunnels within the pyramid."
390 COLOR 10: INPUT "Which way do you want to move (U,D,R,L,F,B)"; A$: COLOR 15
400 IF A$ >= "a" AND A$ <= "z" THEN A$ = CHR$(ASC(A$) - 32)
410 IF A$ = "U" THEN X = X + 1: IF X > 10 THEN X = 10
420 IF A$ = "D" THEN X = X - 1: IF X < 1 THEN X = 1
430 IF A$ = "R" THEN Z = Z + 1: IF Z > 10 THEN Z = 10
440 IF A$ = "L" THEN Z = Z - 1: IF Z < 1 THEN Z = 1
450 IF A$ = "F" THEN Y = Y + 1: IF Y > 10 THEN Y = 10
460 IF A$ = "B" THEN Y = Y - 1: IF Y < 1 THEN Y = 1
470 IF X = B AND C = Z AND A = Y THEN 540
480 IF CC > 1 THEN 240
490 PRINT
500 PRINT "That's the end of the road... you are too late.  Your friend has died within"
510 PRINT "the pyramid."
520 PRINT: PRINT "The Pharaoh's Tomb has become HIS tomb.": END
540 PRINT: PRINT "Well done..."
550 PRINT: PRINT "You found your friend with only"; CC; "minutes of air remaining..."
570 END
1000 ST = TIMER + XX
1010 IF TIMER < ST THEN 1010
1020 RETURN

