10 PRINT TAB(26); "SCALES"
20 PRINT TAB(20); "CREATIVE COMPUTING"
30 PRINT TAB(18); "MORRISTOWN, NEW JERSEY"
40 PRINT: PRINT: PRINT
100 A = 0: B = 0: C = 0: D = 0: E = 0: H = 0: K = 0: L = 0: M = 0: N = 0: O = 0
200 W = 4
210 PRINT "ELEVEN SCALE TYPES -- MAJOR, MINOR, MODAL, AND WHOLE NOTE"
215 PRINT
220 PRINT "This program prints in letter name one octave upward, ";
225 PRINT "the major,"
227 PRINT "the natural, harmonic, melodic, and Hungarian minors, the"
228 PRINT "dorian, phrygian, lydian, mixolydian, and locrain modes, and"
229 PRINT "the whole tone scales.": PRINT
230 PRINT "Use a 3- or 4-character input: the first 2 char's are the scale"
232 PRINT "type, and the 3rd char'r is the single letter tonic, or the"
234 PRINT "last two char's are the tonic degree or the key signature."
240 PRINT "SCALE TYPES-- ma na ha me do ph ly mi lo hu and wh"
250 PRINT "Input either a tonic or a signature."
260 PRINT "EXAMPLES: macb lydb mieb whgb naf# hag# mea# loc# doc phd hue"
270 B$ = "SCALE ASKED --------"
280 C$ = "ANSWER (in letter names) ----------"
290 O$ = "STRUCTURE---- "
300 K$ = " tetrachords"
310 U = 1
320 PRINT: PRINT: PRINT TAB(8); "WHICH TYPE OF SCALE IS WANTED";
330 INPUT A$
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
1160 PRINT: PRINT TAB(3), B$; J$; C1$: PRINT
1170 PRINT TAB(3); C$: PRINT
1180 PRINT: PRINT TAB(8); I$
1190 C1$ = "": I$ = "": G$ = ""
1220 Q = 0: T = 0: R = 0
1230 PRINT
1240 GOTO 310
1250 DATA "Major scale on ","Nat'l minor scale on "
1255 DATA "Harm'c minor scale on ","Mel'c minor scale on "
1260 DATA "Dorian mode on ","Phrygian mode on "
1270 DATA "Lydian mode on ","Mixolydian mode on ","Locrian mode on "
1280 DATA "Hung'n minor scale on ","Whole tone scale on "
1290 END

