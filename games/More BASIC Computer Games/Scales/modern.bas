5 CLS: COLOR 12
10 PRINT TAB(37); "Scales"
20 PRINT TAB(31); "Creative Computing"
30 PRINT TAB(29); "Morristown, New Jersey"
40 PRINT: PRINT: PRINT: COLOR 15
100 A = 0: B = 0: C = 0: D = 0: E = 0: H = 0: K = 0: L = 0: M = 0: N = 0: O = 0
200 W = 4
210 PRINT "Eleven scale types: major, minor, modal, and whole note"
215 PRINT: COLOR 14
220 PRINT "This program prints in letter names one full octave for the major; the natural,"
225 PRINT "harmonic, melodic, and Hungarian minor; the dorian, phrygian, lydian,"
227 PRINT "mixolydian, and locrian modes; and the whole tone scale.": PRINT
230 PRINT "Use a 3- or 4-character input:"
232 PRINT: PRINT "  * The first 2 characters are the scale type, and"
234 PRINT "  * The third character is the single-letter tonic, OR"
236 PRINT "  * the last two characters are the tonic degree or the key signature."
238 PRINT
240 PRINT "Scale types: ma, na, ha, me, do, ph, ly, mi, lo, hu, wh"
250 PRINT "Input either a tonic or a signature."
260 PRINT "Examples: macb, lydb, mieb, whgb, naf#, hag#, mea#, loc#, doc, phd, hue"
270 B$ = " Scale asked: "
280 C$ = "Answer (in letter names):"
290 O$ = "Structure---- "
300 K$ = " tetrachords"
310 U = 1
320 PRINT: COLOR 10: PRINT "Which type of scale is wanted";
330 INPUT A$: COLOR 15
340 N = LEN(A$)
350 IF A$ = "stop" THEN 1290
360 E$ = "manahamedophlymilohuwh"
370 FOR X = 1 TO 22 STEP 2
380 IF LEFT$(A$, 2) = MID$(E$, X, 2) THEN 400
390 NEXT X
400 Q = (X + 1) / 2
410 A0$ = A$
420 X = ASC(LEFT$(A0$, 1)) - 32
425 A0$ = CHR$(X) + MID$(A0$, 2, N)
430 READ D$
440 A0$ = A$
450 X = ASC(LEFT$(A0$, 1)) - 32
455 A0$ = CHR$(X) + MID$(A0$, 2, N)
460 IF LEFT$(D$, 2) = LEFT$(A0$, 2) THEN 480
470 GOTO 430
480 J$ = D$
490 RESTORE
500 IF N <> 3 THEN 530
520 A$ = LEFT$(A$, 3) + " "
530 IF Q = 1 OR Q = 7 OR Q = 11 THEN 550
540 IF Q >= 2 AND Q <= 6 OR Q = 9 OR Q = 10 THEN 570
550 Y = 1
560 GOTO 580
570 Y = 2
580 F$ = "bxexaxdxgxcxfxb#e#a#d#g#c#f#b e a d g c f "
585 F$ = F$ + "bbebabdbgbcbfbbdedadddgdcd"
590 G$ = "BxExAxDxGxCxFxB#E#A#D#G#C#F#B E A D G C F "
595 G$ = G$ + "BbEbAbDbGbCbFbBdEdAdDdGdCd"
600 ON Y GOTO 610, 630
610 H$ = "5t4t3t2t1t7x6x5x4x3x2x1x7#6#5#4#3#2#1#0#1b2b3b4b5b6b7b1d2d3d4d"
615 H$ = H$ + "5d6d7d"
620 GOTO 640
630 H$ = "2t1t7x6x5x4x3x2x1x7#6#5#4#3#2#1#0#1b2b3b4b5b6b7b1d2d3d4d"
635 H$ = H$ + "5d6d7d8d9d  "
640 FOR V = 1 TO 68 STEP 2
650 IF MID$(A$, 3, 2) = MID$(F$, V, 2) THEN 680
660 IF MID$(A$, 3, 2) = MID$(H$, V, 2) THEN 680
670 NEXT V
680 C1$ = MID$(G$, V, 2)
690 T = T + 1
700 IF T = 9 THEN 1160
710 ON T GOTO 720, 740, 790, 840, 890, 940, 990, 1040
720 R = 0
730 GOTO 1060
740 IF Q = 6 OR Q = 9 THEN 770
750 R = -4
760 GOTO 1060
770 R = 10
780 GOTO 1060
790 IF Q = 1 OR Q = 7 OR Q = 8 OR Q = 11 THEN 820
800 R = 6
810 GOTO 1060
820 R = -8
830 GOTO 1060
840 IF Q = 7 OR Q = 10 OR Q = 11 THEN 870
850 R = 2
860 GOTO 1060
870 R = -12
880 GOTO 1060
890 IF Q = 9 OR Q = 11 THEN 920
900 R = -2
910 GOTO 1060
920 R = 12
930 GOTO 1060
940 IF Q = 1 OR Q = 4 OR Q = 5 OR Q = 7 OR Q = 8 THEN 970
950 R = 8
960 GOTO 1060
970 R = -6
980 GOTO 1060
990 IF Q = 1 OR Q = 3 OR Q = 4 OR Q = 7 OR Q = 10 THEN 1020
1000 R = 4
1010 GOTO 1060
1020 R = -10
1030 GOTO 1060
1040 R = 0
1060 IF Q = 11 AND T = 5 THEN 1090
1070 IF U = 1 THEN I$ = MID$(G$, V + R, 2): GOTO 1100
1075 I$ = LEFT$(I$, U - 1) + MID$(G$, V + R, 2)
1080 GOTO 1100
1090 GOTO 690
1100 I$ = LEFT$(I$, U + 1) + "  "
1110 IF MID$(I$, U + 1, 1) = "d" THEN 1130
1120 GOTO 1140
1130 I$ = LEFT$(I$, U) + "bb"
1140 U = U + 4
1150 GOTO 690
1160 PRINT: PRINT TAB(3), B$; J$; C1$
1170 PRINT TAB(3); C$: PRINT
1180 COLOR 11: PRINT TAB(8); I$
1190 C1$ = "": I$ = "": G$ = ""
1220 Q = 0: T = 0: R = 0
1230 PRINT: COLOR 15
1240 GOTO 310
1250 DATA "Major scale on ","Natural minor scale on "
1255 DATA "Harmonic minor scale on ","Melodic minor scale on "
1260 DATA "Dorian mode on ","Phrygian mode on "
1270 DATA "Lydian mode on ","Mixolydian mode on ","Locrian mode on "
1280 DATA "Hungarian minor scale on ","Whole tone scale on "
1290 END

