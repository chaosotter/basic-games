10 REM *** BUTTON, BUTTON, WHO'S GOT THE BUTTON? ***
15 REM *** WRITTEN BY * DAVE KAUFMAN * AUGUST 1973 ***
20 REM *** PEOPLE'S COMPUTER COMPANY, MENLO PARK, CALIFORNIA ***
25 REM ****************************** REM
30 REM FNM COMPUTES X MODULAR 7
35 REM FNN COMPUTES THE NEXT ONE TO GET THE BUTTON
40 ' DEF FNM(X) = (X = 0) * 7 + (X <= 7) * X + (X = 8) * 1
45 ' DEF FNN(X) = FNM(X + SGN(RND(1) - .5))
50 GOSUB 1000: RANDOMIZE TIMER
100 REM *** GAME STARTS HERE ***
110 REM B  THE ONE WHO HAS THE BUTTON
120 REM L  THE LAST ONE WHO HAD IT
130 B = INT(RND(1) * 6) + 2
140 L = 8
160 PRINT
170 REM *** GUESSING STARTS HERE ***
180 REM G  PLAYER'S GUESS
190 COLOR 10: PRINT: PRINT "Who do you guess has it";
200 INPUT G: COLOR 15: PRINT
210 IF G = 0 THEN 440
220 IF G = B THEN 430
230 IF G = L THEN 360
240 IF G = FNM(B + 1) OR G = FNM(B - 1) THEN 340
250 IF G > 0 AND G < 8 THEN 290
260 PRINT "Silly - there's no one here by that number."
270 PRINT "Try again..."
280 GOTO 190
290 COLOR 13: PRINT STR$(G); ": 'Who, me?'": COLOR 15
320 PRINT "Whoever has it, keeps it."
330 GOTO 170
340 COLOR 13: PRINT STR$(G); ": 'My neighbor has it.'": COLOR 15
350 GOTO 370
360 COLOR 13: PRINT STR$(G); ": 'I had it last time.'": COLOR 15
370 L = B
380 B = FNN(B)
410 PRINT "...but whoever has it, passes it."
420 GOTO 170
430 COLOR 13: PRINT STR$(G); ": 'Right you are - lucky!'"
440 REM *** AGAIN? ***
450 PRINT
460 COLOR 10: PRINT "Again (Y/N)";
470 INPUT Z$: COLOR 15
480 IF LEFT$(Z$, 1) <> "Y" AND LEFT$(Z$, 1) <> "y" THEN 510
490 CLS: PRINT "*** New Game ***"
500 GOTO 100
510 REM *** END PROGRAM ***
520 STOP
1000 REM *** THE INTRO ***
1010 CLS: COLOR 14
1030 PRINT "Button, Button, Who's Got the Button?"
1050 PRINT
1060 PRINT "Seven friends are sitting in a circle and you're in the center."
1090 PRINT: COLOR 13
1100 PRINT "      1"
1110 PRINT
1120 PRINT "  7       2"
1130 PRINT
1140 PRINT "   You're"
1150 PRINT "6    IT     3"
1160 PRINT
1170 PRINT "   5     4"
1180 PRINT: COLOR 14
1200 PRINT "Someone has the button and you have to guess who."
1210 PRINT
1220 PRINT "They can pass the button (if they want to), but only to someone they're"
1230 PRINT "sitting next to."
1240 PRINT
1250 PRINT "If you want to stop, type 0 (zero)."
1260 PRINT
1270 PRINT "Good luck!!!": COLOR 15
1280 RETURN
1290 END

FUNCTION FNM (X)
  FNM = X MOD 7
END FUNCTION

FUNCTION FNN (X)
  FNN = FNM(X + SGN(RND(1) - .5))
END FUNCTION
