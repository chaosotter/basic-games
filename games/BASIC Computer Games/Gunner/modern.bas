5 CLS: COLOR 12
10 PRINT TAB(37); "Gunner"
20 PRINT TAB(31); "Creative Computing"
25 PRINT TAB(29); "Morristown, New Jersey"
30 PRINT: PRINT: PRINT: RANDOMIZE TIMER: COLOR 14
130 PRINT "You are the officer-in-change, giving order to a gun crew, telling them the"
140 PRINT "degrees of elevation you estimate will place a projectile on target.  A hit"
150 PRINT "within 100 yards of the target will destroy it.": PRINT: COLOR 15
170 R = INT(40000 * RND(1) + 20000)
180 PRINT "The maximum range of your gun is"; R; "yards."
185 Z = 0
190 PRINT
195 S1 = 0
200 T = INT(R * (.1 + .8 * RND(1)))
210 S = 0
220 GOTO 370
230 PRINT "Minimum elevation is 1 degree."
240 GOTO 390
250 PRINT "Maximum elevation is 89 degrees."
260 GOTO 390
270 PRINT "Over target by"; ABS(E); "yards."
280 GOTO 390
290 PRINT "Short of target by"; ABS(E); "yards."
300 GOTO 390
320 COLOR 11: PRINT "*** Target destroyed ***  ";: COLOR 13: PRINT S; "rounds of ammunition expended.": COLOR 15
325 S1 = S1 + S
330 IF Z = 4 THEN 490
340 Z = Z + 1
345 PRINT
350 PRINT "The forward observer has sighted more enemy activity..."
360 GOTO 200
370 PRINT "Distance to the target is"; T; "yards."
380 PRINT
390 PRINT
400 COLOR 10: INPUT "Elevation"; B: COLOR 15
420 IF B > 89 THEN 250
430 IF B < 1 THEN 230
440 S = S + 1
442 IF S < 6 THEN 450
444 COLOR 12: PRINT: PRINT "Boom!!!  You have just been destroyed by the enemy.": COLOR 15
446 PRINT: PRINT: GOTO 495
450 B2 = 2 * B / 57.3: I = R * SIN(B2): X = T - I: E = INT(X)
460 IF ABS(E) < 100 THEN 320
470 IF E > 100 THEN 290
480 GOTO 270
490 PRINT: PRINT: PRINT "Total rounds expended were"; S1
492 IF S1 > 18 THEN 495
493 PRINT "Nice shooting!": GOTO 500
495 PRINT "Better go back to Fort Sill for refresher training!"
500 COLOR 10: PRINT: INPUT "Try again (Y/N)"; Z$: COLOR 15
510 IF LEFT$(Z$, 1) = "Y" OR LEFT$(Z$, 1) = "y" THEN 170
520 PRINT: PRINT "Okay.  Return to base camp."
999 END

