5 DIM B$(12), M$(6), M(7): COLOR 15
10 REM The Bannochburn Legacy
20 REM  All inputs must be in upper case
30 GOSUB 4480
40 CLS
50 IF M(7) = 0 AND S(7) = 0 AND W(7) = 0 THEN PRINT "The adventure has ended.  You have exhausted all your powers.": PRINT: PRINT "You fought bravely and well but could not endure.": PRINT: PRINT "Farewell...": END
60 PRINT N$; ", your attributes are:"
70 IF M(7) > 0 THEN COLOR 13: PRINT "    Magic:   ";: COLOR 11: PRINT M(7): COLOR 15
80 IF S(7) > 0 THEN COLOR 13: PRINT "    Strength:";: COLOR 11: PRINT S(7): COLOR 15
90 IF W(7) > 0 THEN COLOR 13: PRINT "    Wisdom:  ";: COLOR 11: PRINT W(7): COLOR 15
95 M$ = STR$(MONEY): M$ = RIGHT$(M$, LEN(M$) - 1)
100 IF MONEY > 0 THEN COLOR 13: PRINT "    Wealth:   ";: COLOR 11: PRINT "$"; M$: COLOR 15
110 GOSUB 4990: REM Pause
120 GOSUB 3420: REM Room
130 M = 0: IF Z > 1 THEN IF RND > .5 THEN GOSUB 2740
140 GOSUB 4990
150 GOSUB 1900
160 GOSUB 4990
170 GOTO 40
180 REM ********************************
190 REM Melee resolution
200 ROLL = INT(RND * 6) + 1
210 VICTORY = 0
220 IF (DIFF < 0 AND ROLL > ABS(DIFF)) OR (DIFF > 0 AND ROLL <= DIFF) OR (DIFF = 0 AND ROLL < 4) THEN VICTORY = 1
230 GOSUB 4990
240 RETURN
250 REM ********************************
260 REM Monster subroutine
270 IF Q = 0 THEN RETURN
280 PRINT: ON Q GOSUB 310, 320, 330, 340, 350
290 GOSUB 4990
300 RETURN
310 PRINT "There is an angry warlock in the room.  He has a magic rating of"; STR$(M(1)); ".  His"
315 PRINT "strength is"; S(1); "and his wisdom is"; STR$(W(1)); "."
316 RETURN
320 PRINT "The room contains a fire-breathing Fearbringer.  His wisdom is"; W(2); "while he"
325 PRINT "has a strength rating of"; S(2); "and his magic skill is"; STR$(M(2)); "."
326 RETURN
330 PRINT "Horrors! You've stumbled in on the hiding place of an awful Soulthreat.  You"
335 PRINT "can see at a glance his strength is"; STR$(S(3)); ", his magic ability rates"; STR$(M(3)); ","
336 PRINT "and his wisdom is"; STR$(W(3)); "."
337 RETURN
340 PRINT "You've tripped in the dark.": GOSUB 4990:
345 PRINT "Something awakes.  Oh, you're face to face with Gravelpit, the Kneecrusher, who"
346 PRINT "has magic of"; STR$(M(4)); ", strength of"; STR$(S(4)); ", and wisdom of"; STR$(W(4)); "."
347 RETURN
350 PRINT "This room holds the dreaded enemy of all who enter the castle, Wolvling of Wolf"
355 PRINT "Glass with strength of"; S(5); "plus wisdom of"; W(5); "and magic of"; STR$(M(5))
356 RETURN
360 REM *********************
370 REM End of Game
380 PRINT "You have stumbled on to the marshy mud surrounding the Black Lagoon underneath"
390 PRINT "the castle.  To escape from the castle you must fight The Guardian of the Black"
400 PRINT "Lagoon."
440 PRINT
450 PRINT "The fight must involve all attributes... and you'll need a total of 10 to"
460 PRINT "escape..."
480 GOSUB 4990: GOSUB 4990
490 M$ = STR$(MONEY): M$ = RIGHT$(M$, LEN(M$) - 1)
495 IF MONEY > 0 THEN PRINT "You have $"; M$; " worth of gold."
500 GOSUB 4990
510 PRINT: PRINT "The Guardian's attributes:"
520 COLOR 13: PRINT "    Magic:   ";: COLOR 11: PRINT M(6): COLOR 15
530 COLOR 13: PRINT "    Strength:";: COLOR 11: PRINT S(6): COLOR 15
540 COLOR 13: PRINT "    Wisdom:  ";: COLOR 11: PRINT W(6): COLOR 15
550 PRINT: PRINT "Your attributes are:"
560 COLOR 13: PRINT "    Magic:   ";: COLOR 11: PRINT M(7): COLOR 15
570 COLOR 13: PRINT "    Strength:";: COLOR 11: PRINT S(7): COLOR 15
580 COLOR 13: PRINT "    Wisdom:  ";: COLOR 11: PRINT W(7): COLOR 15
590 GOSUB 4990: GOSUB 4990
600 IF MONEY < 100 THEN 790
610 PRINT: PRINT "You can buy attribute points for $100 each...": PRINT
630 PRINT "If you want to buy any, enter the initial of the attribute followed by the"
640 PRINT "number of that attribute you want.  Enter 'N' when you've got all the"
650 PRINT "attributes you want.": PRINT
690 COLOR 10: INPUT "Attribute (M, S or W)"; E$: COLOR 15
695 IF E$ >= "a" AND E$ <= "z" THEN E$ = CHR$(ASC(E$) - 32)
700 IF E$ = "N" THEN 790
710 COLOR 10: INPUT "Amount"; AM: COLOR 15
720 IF MONEY - AM < 1 OR AM < 100 THEN 710
730 MONEY = MONEY - AM
740 IF E$ = "M" THEN M(7) = M(7) + INT(AM / 100)
750 IF E$ = "S" THEN S(7) = S(7) + INT(AM / 100)
760 IF E$ = "W" THEN W(7) = W(7) + INT(AM / 100)
770 COLOR 13: PRINT "    Magic   :";: COLOR 11: PRINT M(7): COLOR 15
775 COLOR 13: PRINT "    Strength:";: COLOR 11: PRINT S(7): COLOR 15
776 COLOR 13: PRINT "    Wisdom:  ";: COLOR 11: PRINT W(7): COLOR 15
780 IF MONEY > 99 THEN 690
790 CLS
800 PRINT "Now for the Ultimate Test..."
810 GOSUB 4990
820 INPUT "Press Enter when you're brave enough to fight"; E$
840 GOSUB 4990: CLS
850 PRINT: PRINT "First, magic..."
860 PRINT: PRINT "You:"; M(7); " Guardian"; M(6)
870 DIFF = ABS(M(7) - M(6))
880 PRINT: PRINT "The difference is"; STR$(DIFF);
890 IF M(7) > M(6) THEN PRINT " in your favour."
900 IF M(6) > M(7) THEN PRINT " and the Guardian has the edge."
905 IF M(6) = M(7) THEN PRINT "."
910 GOSUB 4990
920 K = M(6) + M(7)
930 COST = INT(RND * K) + 1
940 PRINT: PRINT "This round carries a penalty of"; COST; "attribute points."
950 GOSUB 4990
960 GOSUB 2600
970 DIFF = M(7) - M(6)
980 IF DIFF > 5 THEN DIFF = DIFF - 6: GOTO 980
990 IF DIFF < -5 THEN DIFF = DIFF + 6: GOTO 990
1000 GOSUB 190
1010 IF VICTORY = 1 THEN M(7) = M(7) + COST: PRINT "And you've won... and so ";
1020 IF VICTORY = 0 THEN M(7) = M(7) - COST: PRINT "And you lost... and so ";
1030 IF M(7) < 1 THEN M(7) = 0
1040 PRINT "now have"; M(7); "magic points."
1050 GOSUB 4990
1060 INPUT "Press Enter when you're ready to continue this epic struggle"; E$
1080 CLS
1090 PRINT "Now it's time for a match of strength, where your rating is"; S(7); "and the"
1100 PRINT "Guardian's strength rating is"; STR$(S(6)); "."
1130 DIFF = ABS(S(7) - S(6))
1140 PRINT: PRINT "The difference is"; STR$(DIFF);
1150 IF S(6) > S(7) THEN PRINT " in the Guardian's favour."
1160 IF S(7) > S(6) THEN PRINT " in your favour, "; N$; "."
1165 IF S(6) = S(7) THEN PRINT "."
1170 GOSUB 4990
1180 K = S(6) + S(7)
1190 COST = INT(RND * K) + 1
1200 PRINT: PRINT "This round carries a penalty of"; COST; "attribute points."
1210 GOSUB 4990
1220 DIFF = S(7) - S(6)
1230 GOSUB 2600
1240 IF DIFF > 5 THEN DIFF = DIFF - 6: GOTO 1240
1250 IF DIFF < -5 THEN DIFF = DIFF + 6: GOTO 1250
1260 GOSUB 190
1270 IF VICTORY = 1 THEN S(7) = S(7) + COST: PRINT "You're the victor, and so ";
1280 IF VICTORY = 0 THEN S(7) = S(7) - COST: PRINT "You're the loser, and so ";
1290 IF S(7) < 0 THEN S(7) = 0
1300 PRINT "you now have"; S(7); "strength points."
1310 GOSUB 4990
1320 PRINT
1325 PRINT "Press the Enter key when you have stopped trembling enough to face the third,"
1330 INPUT "and final challenge"; E$
1360 GOSUB 4990
1370 CLS
1380 PRINT "Now it's time for a match of wisdom, where your rating is"; W(7); "and the"
1390 PRINT "Guardian's wisdom rating is"; STR$(W(6)); "."
1420 DIFF = ABS(W(7) - W(6))
1430 PRINT: PRINT "The difference is"; STR$(DIFF);
1440 IF W(6) > W(7) THEN PRINT " in the Guardian's favour."
1450 IF W(7) > W(6) THEN PRINT " in your favour, "; N$; "."
1455 IF W(6) = W(7) THEN PRINT "."
1460 GOSUB 4990
1470 K = W(6) + W(7)
1480 COST = INT(RND * K) + 1
1490 PRINT "Now, this final challenge carries a huge penalty of"; COST; "attribute points."
1500 GOSUB 4990
1520 DIFF = W(7) - W(6)
1530 IF DIFF > 5 THEN DIFF = DIFF - 6: GOTO 1530
1540 IF DIFF < -5 THEN DIFF = DIFF + 6: GOTO 1540
1550 GOSUB 190
1560 GOSUB 2600
1570 IF VICTORY = 1 THEN W(7) = W(7) + COST: PRINT "And you defeated the Guardian!"
1580 IF VICTORY = 0 THEN W(7) = W(7) - COST: PRINT "But the Guardian got the better of you, "; N$; "!"
1590 IF W(7) < 0 THEN W(7) = 0
1600 GOSUB 4990
1610 CLS: PRINT: PRINT
1620 PRINT "And now, at the end of the final battle, your position is"
1640 COLOR 13: PRINT "    Magic:   ";: COLOR 11: PRINT M(7): COLOR 15
1650 COLOR 13: PRINT "    Strength:";: COLOR 11: PRINT S(7): COLOR 15
1660 COLOR 13: PRINT "    Wisdom:  ";: COLOR 11: PRINT W(7): COLOR 15
1670 SUM = M(7) + W(7) + S(7)
1680 PRINT: PRINT "Well, "; N$; ", your attribute total is"; STR$(SUM); "."
1700 GOSUB 4990
1710 IF SUM < 10 THEN 1810
1720 PRINT "You needed at least 10 points to win the game, and you've done it, "; N$; "!"
1730 GOSUB 4990
1750 CLS: PRINT: PRINT: PRINT
1760 PRINT "You've succeeded, O hero of these dark and dangerous times!  I hereby dub thee"
1790 PRINT "Sir "; N$; "...  Arise..."
1800 END
1810 PRINT "Unfortunately, you did not end up with the 10 points you needed, so it is all"
1820 PRINT "over.": PRINT
1840 PRINT "You fail to escape the clutches of the Guardian...": GOSUB 4990
1860 PRINT "You fought valiantly, but will now be consumed..."
1880 GOSUB 4990: GOSUB 2600: GOSUB 2600: END
1890 REM *******************************
1900 REM Action
1910 D = 4: IF MID$(B$(Z), 9, 1) = "0" OR MID$(B$(Z), 9, 1) = " " THEN D = 1: IF RND > .8 AND Z > 1 THEN GOSUB 2740: GOTO 1910
1920 COLOR 10: PRINT "What do you want to do now";
1930 INPUT Z$: COLOR 15: IF Z$ = "Q" THEN END
1935 IF Z$ = "fl" THEN Z$ = "FL"
1936 IF Z$ >= "a" AND Z$ <= "z" THEN Z$ = CHR$(ASC(Z$) - 32)
1940 IF Z$ = "" THEN CLS: Z$ = "#"
1950 IF D = 4 AND LEFT$(Z$, 1) <> "F" THEN D = 0: GOTO 2090
1960 IF LEFT$(Z$, 1) = "F" THEN 2060
1970 IF Z$ = "N" AND LEFT$(B$(Z), 2) = "00" THEN PRINT "No exit.": GOTO 1920
1980 IF Z$ = "S" AND MID$(B$(Z), 3, 2) = "00" THEN PRINT "There is no door that way.": GOTO 1920
1990 IF Z$ = "E" AND MID$(B$(Z), 5, 2) = "00" THEN PRINT "That is not possible.": GOTO 1920
2000 IF Z$ = "W" AND MID$(B$(Z), 7, 2) = "00" THEN PRINT "You can't walk through walls!": GOTO 1920
2010 IF Z$ = "N" THEN Z = VAL(LEFT$(B$(Z), 2)): RETURN
2020 IF Z$ = "S" THEN Z = VAL(MID$(B$(Z), 3, 2)): RETURN
2030 IF Z$ = "E" THEN Z = VAL(MID$(B$(Z), 5, 2)): RETURN
2040 IF Z$ = "W" THEN Z = VAL(MID$(B$(Z), 7, 2)): RETURN
2050 IF LEFT$(Z$, 1) <> "F" THEN RETURN
2060 IF RIGHT$(B$(Z), 1) = "0" THEN PRINT "There is nothing to fight against!": GOTO 1920
2070 IF Z$ = "FL" THEN D = INT(RND * 2)
2080 IF D = 1 THEN PRINT "Which direction?": GOTO 1930
2090 IF D = 0 THEN PRINT "No!  You must stand and fight."
2100 PRINT: PRINT "Your magic is"; STR$(M(7)); ", strength is"; STR$(S(7)); ", and your wisdom is"; STR$(W(7)); "."
2110 COLOR 10: PRINT "Which characteristic will you fight with (M, S, W)";
2120 INPUT Z$: COLOR 15
2125 IF Z$ >= "a" AND Z$ <= "z" THEN Z$ = CHR$(ASC(Z$) - 32)
2126 IF Z$ <> "M" AND Z$ <> "S" AND Z$ <> "W" THEN 2120
2130 IF Z$ = "M" THEN HUM = M(7): MON = M(Q)
2140 IF Z$ = "S" THEN HUM = S(7): MON = S(Q)
2150 IF Z$ = "W" THEN HUM = W(7): MON = W(Q)
2160 DIFF = HUM - MON
2170 IF DIFF > 5 THEN DIFF = DIFF - 6: GOTO 2170
2180 IF DIFF < -5 THEN DIFF = DIFF + 6: GOTO 2180
2185 D$ = STR$(DIFF): IF DIFF >= 0 THEN D$ = RIGHT$(D$, LEN(D$) - 1)
2190 PRINT "The fight table for this melee reads "; D$; "."
2200 COST = ABS(DIFF) + INT(RND * 6) + 1
2210 GOSUB 4990
2220 PRINT "The melee carries a cost/reward of"; STR$(COST); "."
2230 FI = INT(RND * 2): GOSUB 4990
2240 IF FI = 0 THEN PRINT "The monster attacks and the fight is underway!"
2250 IF FI = 1 THEN PRINT "You attack first, and the battle is joined..."
2260 GOSUB 2600
2270 ROLL = INT(RND * 6) + 1
2280 VICTORY = 0
2290 IF (DIFF < 0 AND ROLL > ABS(DIFF)) OR (DIFF > 0 AND ROLL <= DIFF) OR (DIFF = 0 AND ROLL < 4) THEN VICTORY = 1
2300 IF VICTORY = 1 THEN GOSUB 2460
2310 IF VICTORY = 0 THEN GOSUB 2530
2320 GOSUB 4990
2330 PRINT "After that fight, your attributes are:"
2350 COLOR 13: PRINT "    Magic:   ";: COLOR 11: PRINT M(7): COLOR 15
2360 COLOR 13: PRINT "    Strength:";: COLOR 11: PRINT S(7): COLOR 15
2370 COLOR 13: PRINT "    Wisdom:  ";: COLOR 11: PRINT W(7): COLOR 15
2380 GOSUB 4990: PRINT
2390 PRINT "And those of the "; M$(Q); " are:"
2400 COLOR 13: PRINT "    Magic:   ";: COLOR 11: PRINT M(Q): COLOR 15
2410 COLOR 13: PRINT "    Strength:";: COLOR 11: PRINT S(Q): COLOR 15
2420 COLOR 13: PRINT "    Wisdom:  ";: COLOR 11: PRINT W(Q): COLOR 15
2430 MID$(B$(Z), 9, 1) = "0"
2440 GOSUB 4990: GOSUB 4990: PRINT
2450 GOTO 2740
2460 REM Human victory
2470 IF Q = 0 THEN D = 1
2480 PRINT: PRINT "You defeated the "; M$(Q); "."
2490 IF Z$ = "M" THEN M(7) = M(7) + COST: M(Q) = M(Q) - COST: IF M(Q) < 1 THEN M(Q) = 0
2500 IF Z$ = "W" THEN W(7) = W(7) + COST: W(Q) = W(Q) - COST: IF W(Q) < 1 THEN W(Q) = 0
2510 IF Z$ = "S" THEN S(7) = S(7) + COST: S(Q) = S(Q) - COST: IF S(Q) < 1 THEN S(Q) = 0
2520 RETURN
2530 REM Monster victory
2540 PRINT: PRINT "The "; M$(Q); " defeated you."
2550 IF Z$ = "M" THEN M(Q) = M(Q) + COST: M(7) = M(7) - COST: IF M(7) < 1 THEN M(7) = 0
2560 IF Z$ = "W" THEN W(Q) = W(Q) + COST: W(7) = W(7) - COST: IF W(7) < 1 THEN W(7) = 0
2570 IF Z$ = "S" THEN S(Q) = S(Q) + COST: S(7) = S(7) - COST: IF S(7) < 1 THEN S(7) = 0
2580 RETURN
2590 REM *****************
2600 REM Fight effects
2610 FOR J = 1 TO RND * 10 + 2
2615 COLOR 8 + INT(RND * 7 + 1)
2620 ON (INT(RND * 6 + 1)) GOSUB 2610, 2680, 2690, 2700, 2710, 2720
2630 XX = 0.2: GOSUB 6000
2640 PRINT: PRINT
2650 NEXT J
2660 CLS: COLOR 15: RETURN
2670 PRINT "    Bash!!!!": XX = 0.1: GOSUB 6000: RETURN
2680 PRINT , "Aaaaaarghhh!": XX = 0.1: GOSUB 6000: RETURN
2690 PRINT "Rip": XX = 0.1: GOSUB 6000: PRINT , , "Tear!": XX = 0.1: GOSUB 6000: RETURN
2700 FOR E = 1 TO 20: PRINT "!!! ";: NEXT E: RETURN
2710 RETURN
2720 FOR E = 1 TO 3: PRINT "!*&&*@!!   ";: NEXT E: XX = 0.1: GOSUB 6000: RETURN
2730 REM *******************************
2740 REM Contents
2750 K = 2 + INT(RND * 8)
2760 IF K = Z THEN 2750
2770 IF RIGHT$(B$(Z), 1) <> "0" THEN RETURN
2780 MID$(B$(K), 9, 1) = MID$(B$(Z), 9, 1)
2790 MID$(B$(Z), 9, 1) = "0"
2800 IF RND > .5 THEN RETURN
2810 PRINT
2820 CT = INT(RND * 5) + 1
2830 ON CT GOSUB 2870, 2980, 3100, 3210, 2870: REM this double 7100 is correct
2840 GOSUB 4990
2850 RETURN
2860 REM ************
2870 CHEST = CHEST + 1: IF CHEST = 5 THEN RETURN
2875 C$ = STR$(CHEST): C$ = RIGHT$(C$, LEN(C$) - 1)
2880 PRINT "In front of you is a chest labelled with a large #"; C$; "."
2900 PRINT: COLOR 10: PRINT "Will you open it?": COLOR 15
2910 GOSUB 3380
2920 IF Z$ = "N" THEN RETURN
2930 J = INT(RND * 3): GOSUB 4990
2940 IF J = 0 THEN CASH = 100 + INT(RND * 300): C$ = STR$(CASH): C$ = RIGHT$(C$, LEN(C$) - 1): PRINT "It holds dragon's gold worth $"; C$; ".": MONEY = MONEY + CASH: GOSUB 4990: RETURN
2950 IF J = 1 THEN PRINT "A goblin leaps out, stabbing you!": LOSS = INT(RND * 6) + 1: MONEY = MONEY - INT(RND * 200): IF MONEY < 1 THEN MONEY = 0: GOSUB 4990: RETURN
2960 IF J = 2 THEN PRINT "A strange smoke comes out, making you sleepy and sapping your magic power.": LOSS = INT(RND * 8) + 1: M(7) = M(7) - LOSS: IF M(7) < 1 THEN M(7) = 0: GOSUB 4990: RETURN
2970 REM ******************
2980 IF POTION = 1 THEN 2820
2990 POTION = 1
3000 PRINT "You see a small bottle engraved with curious, twisted letters...": PRINT
3020 COLOR 10: PRINT "Will you drink the potion which you can see inside the bottle?": COLOR 15
3040 GOSUB 3380
3050 IF Z$ = "N" THEN RETURN
3060 GOSUB 4990
3070 IF RND > .6 THEN PRINT "It contained a potion to enhance your wisdom!": W(7) = W(7) + INT(RND * 6) + 1: GOSUB 4990: RETURN
3080 PRINT "It contained a potion which weakens you further...": GOSUB 4990: S(7) = S(7) - (INT(RND * 6) + 1): IF S(7) < 1 THEN S(7) = 0: GOSUB 4990: RETURN
3090 REM ******************
3100 IF SCROLL = 1 THEN RETURN
3110 SCROLL = 1
3120 PRINT "You see a papyrus scroll."
3130 PRINT: COLOR 10: PRINT "Do you wish to try to read it?": COLOR 15
3140 GOSUB 3380: IF Z$ = "N" THEN RETURN
3150 IF RND > .5 THEN PRINT "You cannot understand the language...": GOSUB 4990: RETURN
3160 PRINT "It contains a magic spell.": COLOR 10: PRINT "Do you wish to read it?": COLOR 15
3170 GOSUB 3380: IF Z$ = "N" THEN RETURN
3180 IF RND > .5 THEN PRINT "It was a beneficent spell!": GOSUB 4990: M(7) = M(7) + INT(RND * 6) + 1: RETURN
3190 PRINT "It was an evil spell!": GOSUB 4990: M(7) = 0: S(7) = INT(S(7) / 2): RETURN
3200 REM ******************
3210 IF SAFE = 1 THEN 2820
3220 SAFE = 1
3230 PRINT "On the wall is a small, gilded safe, and in front of it is a key..."
3240 COLOR 10: PRINT "Do you want to open the safe?": COLOR 15
3250 GOSUB 3380
3260 IF Z$ = "N" THEN RETURN
3270 IF RND > .3 THEN 3330
3280 GOSUB 4990: PRINT "A shrieking harpy flies out and sinks its teeth into your throat!"
3290 GOSUB 4990
3300 PRINT "You grapple with it, and...": GOSUB 4990: PRINT "...finally wring its neck!"
3310 S(7) = S(7) - INT(RND * 6) + 1: IF S(7) < 1 THEN S(7) = 0
3320 GOSUB 4990: RETURN
3330 PRINT "A choir of angelic voices is heard...": GOSUB 4990
3340 PRINT: PRINT "You are healed and refreshed..."
3350 M(7) = M(7) + 2: S(7) = S(7) + 2: W(7) = W(7) + 2
3360 GOSUB 4990
3370 RETURN
3380 Z$ = INKEY$
3390 IF Z$ <> "N" AND Z$ <> "n" AND Z$ <> "Y" AND Z$ <> "y" THEN 3380
3395 IF Z$ >= "a" AND Z$ <= "z" THEN Z$ = CHR$(ASC(Z$) - 32)
3400 PRINT: RETURN
3410 REM ******************
3420 REM Room descriptions
3430 ON Z GOSUB 3480, 3570, 3630, 3680, 3770, 3850, 3950, 4080, 4210, 4270, 4350, 4440
3440 Q = 0: IF RND > .81 AND Z > 1 THEN Q = INT(RND * 6): MID$(B$(Z), 9, 1) = MID$(STR$(Q), 2, 1): GOTO 260
3450 E$ = MID$(B$(Z), 9, 1): IF E$ > "0" AND E$ < "6" THEN Q = VAL(E$)
3460 IF Q > 0 THEN GOSUB 260
3470 RETURN
3480 PRINT "You are at the entrance to an ancient, forbidding-looking castle.  You are"
3490 PRINT "standing on the north side of the castle, and as you look south, towards the"
3500 PRINT "tumbling structure, you notice the entrance portal is open and unguarded."
3560 RETURN
3570 PRINT "You are in the entrance hall, which is hung with rich fabrics.  Doors lead to"
3580 PRINT "the east and the south, and there is an open portal to the west."
3620 RETURN
3630 PRINT "This is only a store room.  There is a single exit, back the way you came in,"
3660 PRINT "to the west."
3670 RETURN
3680 PRINT "This small room, which features an ornate sculpture of the moon goddess on a"
3710 PRINT "pedestal in the north-east corner, is the Royal Presence Chamber.  Doors lead"
3740 PRINT "to the south, the west, and to the east..."
3760 RETURN
3770 PRINT "The Hall of Plots, a wooden-panelled room redolent with whispers and rumours,"
3780 PRINT "with exits to the east and to the south from which comes the smell of sulphur"
3790 PRINT "and a weird chanting..."
3840 RETURN
3850 PRINT "You have entered the Wizard's Den, with a cauldron bubbling over a fire with"
3860 PRINT "green flames in the south-west corner.  This room reeks of burning sulphur, and"
3870 PRINT "the echo of ancient spells.  You can leave to the north, the south, or to the"
3880 PRINT "east."
3940 RETURN
3950 PRINT "You find yourself in a place which seems quiet and peaceful.  This is the"
3960 PRINT "castle's Picture Gallery, with a large painting of the Legendary Guardian of"
4000 PRINT "the Black Lagoon to the left of the window in the east wall.  Through the"
4010 PRINT "window you can see the mullioned windows of the Great Hall across the Contoured"
4020 PRINT "Garden.  Exits from the Gallery are to the north and to the east..."
4070 RETURN
4080 PRINT "This is the most magnificent room in the castle, the Great Hall, with a massive"
4090 PRINT "hammerbeam roof.  You can leave it by the double doors to the north or by those"
4100 PRINT "to the east behind which you can hear music playing.  Through the windows in"
4110 PRINT "the west wall, you can see the Contoured Garden, and beyond that, through"
4120 PRINT "windows of a room hung with many, many fine paintings."
4200 RETURN
4210 PRINT "Sounds of a string quartet fill this room, the Musicians' Chamber.  You can"
4220 PRINT "leave by doors to the west or by one to the south..."
4260 RETURN
4270 PRINT "You are now in the Sanctuary of Silence, a room whose calmness may be a"
4280 PRINT "deception.  The room is damp and cold.  An exit leaves the room to the north";
4330 IF MID$(B$(10), 3, 2) = "12" THEN PRINT: PRINT "and one leaves to the south." ELSE PRINT "."
4340 PRINT: RETURN
4350 PRINT "This must be the Vestibule of Sighs, a dank and clammy room where legend says"
4360 PRINT "the Guardian of the Black Lagoon can sometimes be heard at night. There is a"
4370 PRINT "door to the north";
4420 IF MID$(B$(11), 3, 2) = "12" THEN PRINT " and one leaves to the south." ELSE PRINT "."
4430 PRINT: RETURN
4440 GOTO 370
4450 IF MID$(B$(Z), 9, 1) <> "0" THEN Q = VAL(MID$(B$(Z), 9, 1)): GOSUB 260
4460 RETURN
4470 REM ********************
4480 REM Initialise
4490 RANDOMIZE TIMER
4500 Z = 1
4510 MONEY = 0
4520 CHEST = 0
4530 POTION = 0
4540 SCROLL = 0
4550 SAFE = 0
4570 CLS: PRINT: PRINT
4580 COLOR 10: INPUT "Please enter your first name"; N$: COLOR 15
4590 CLS: PRINT "Hi there, "; N$; ".  Please stand by..."
4610 REM Fill rooms
4620 FOR T = 1 TO 12
4630 READ B$(T)
4640 l = RND
4650 Q$ = STR$(INT(RND * 5) + 1)
4660 IF T > 1 AND T < 11 AND l < .63 THEN B$(T) = B$(T) + RIGHT$(Q$, 1)
4670 IF T > 10 OR l >= .63 THEN B$(T) = B$(T) + "0"
4680 NEXT T
4690 l = RND
4700 IF l < .5 THEN B$(11) = "091200000"
4710 IF l >= .5 THEN B$(10) = "061200000"
4720 REM Create monsters
4730 FOR T = 1 TO 6
4740 READ M$(T)
4750 S(T) = INT(RND * 6) + 1
4760 M(T) = INT(RND * 6) + 1
4770 W(T) = INT(RND * 6) + 1
4780 NEXT T
4790 REM Human characteristics
4800 S(7) = INT(RND * 6) + 1
4810 M(7) = INT(RND * 6) + 1
4820 W(7) = INT(RND * 6) + 1
4830 REM Room data
4840 DATA "000200000"
4850 DATA "00080304"
4860 DATA "00000002"
4870 DATA "00070205"
4880 DATA "00060400"
4890 DATA "05100700"
4900 DATA "04000600"
4910 DATA "02000900"
4920 DATA "00110008"
4930 DATA "06000000"
4940 DATA "09000000"
4950 DATA "00000000"
4960 REM Monster data
4970 DATA "Warlock","Fearbringer","Soulthreat","Kneecrusher","Wolvling","Guardian"
4980 REM ***********************
4990 REM Pause routine
5000 ZZ = 0.5: GOSUB 6000
5010 PRINT
5020 RETURN
6000 ST = TIMER + ZZ
6010 IF TIMER < ST THEN 6010
6020 RETURN

