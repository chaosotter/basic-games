1 CLS: COLOR 12: PRINT TAB(36); "Warfish"
2 PRINT TAB(31); "Creative Computing"
3 PRINT TAB(29); "Morristown, New Jersey"
5 PRINT
6 PRINT
7 PRINT: COLOR 15
8 RANDOMIZE TIMER
9 DIM A$(72)
10 Q0 = RND(1)
30 COLOR 10: PRINT "Do you desire the rules of Warfish (Y/N)";
40 INPUT X$: COLOR 15
50 IF LEFT$(X$, 1) = "N" OR LEFT$(X$, 1) = "n" THEN 200
51 IF LEFT$(X$, 1) = "Y" OR LEFT$(X$, 1) = "y" THEN 60
52 PRINT "Yes or No only, please."
53 GOTO 30
60 COLOR 14: PRINT
70 PRINT "You command an American submarine that has been sent out to attack Japanese"
80 PRINT "ships at sea during World War Two."
90 PRINT
100 PRINT "The orders that can be given are the following:"
105 PRINT: COLOR 11
110 PRINT "   (P)eriscope - To search for Japanese ships."
120 PRINT "   (T)orpedo   - To launch torpedoes at Japanese ships."
130 PRINT "   (D)ive      - To escape Japanese ships that are attacking."
140 PRINT: COLOR 14
150 PRINT "These are some historic U.S. Navy submarines: Tautog, Silversides, Cavella,"
160 PRINT "Bluefish, Thresher, Swordfish, Flasher, Trout, Archer."
170 PRINT
175 PRINT "Select one of the above, or use a name of your choice."
200 PRINT: COLOR 10: PRINT "Enter the name of your submarine";
210 INPUT A$: COLOR 15
220 T = 26
230 D = INT(RND(1) * 10)
240 IF D < 6 THEN 330
250 IF D <> 6 AND D <> 7 THEN 270
255 R$ = "destroyer"
260 W = 2100
270 IF D <> 8 THEN 290
271 R$ = "destroyer escort"
280 W = 1350
290 IF D <> 9 THEN 310
291 R$ = "torpedo boat"
300 W = 70
310 IF D = 6 OR D = 7 THEN 313
311 Q = 1
312 GOTO 314
313 Q = 2
314 PRINT
315 PRINT
320 PRINT "Japanese "; R$; " is attacking!"
330 IF D >= 6 THEN 340
335 A = INT(RND(1) * 10)
340 PRINT
360 COLOR 10: PRINT "Orders, Commander (Periscope, Torpedo, Dive)";
370 INPUT C$: COLOR 15
371 C$ = MID$(C$, 1, 1)
380 IF C$ = "P" OR C$ = "p" THEN 420
390 IF C$ = "T" OR C$ = "t" THEN 780
400 IF C$ = "D" OR C$ = "d" THEN 990
410 GOTO 360
420 IF D > 5 OR Q > 0 THEN 760
430 IF A >= 4 THEN 470
435 R$ = "freighter"
440 IF A <> 0 AND A <> 1 THEN 450
445 W = 6500
450 IF A <> 2 THEN 460
455 W = 7500
460 IF A <> 3 THEN 470
465 W = 8100
470 IF A <> 7 AND A <> 8 THEN 490
475 R$ = "tanker"
480 IF A <> 8 THEN 485
481 W = 10000
482 GOTO 490
485 W = 9500
490 IF A <> 4 AND A <> 5 THEN 510
491 R$ = "transport"
500 IF A <> 5 THEN 505
501 W = 11500
502 GOTO 510
505 W = 8800
510 IF A <> 6 THEN 530
515 R$ = "ammunition ship"
520 W = 9650
530 IF A >= 9 OR A = 6 THEN 540
535 Q = 1
540 IF A <> 6 THEN 550
545 Q = 1
550 IF A < 9 THEN 760
560 E = INT(RND(1) * 10)
570 IF E <> 0 THEN 590
575 R$ = "battleship"
580 W = 33500
590 IF E <> 1 THEN 610
595 R$ = "aircraft carrier"
600 W = 25700
610 IF E <> 2 THEN 630
615 R$ = "heavy cruiser"
620 W = 9900
630 IF E <> 3 THEN 650
635 R$ = "light cruiser"
640 W = 9600
650 IF E <> 4 AND E <> 5 THEN 670
655 R$ = "destroyer"
660 W = 2100
670 IF E <> 6 AND E <> 7 THEN 690
675 R$ = "submarine"
680 W = 1500
690 IF E <> 8 AND E <> 9 THEN 710
700 W = 1350
710 IF E <= 5 THEN 720
715 Q = 1
720 IF E <> 4 AND E <> 5 THEN 730
725 Q = 2
730 IF E <> 2 AND E <> 3 THEN 740
735 Q = 3
740 IF E <> 1 THEN 750
745 W = 4
750 IF E <> 0 THEN 760
755 Q = 6
760 PRINT "Japanese "; R$; ","; W; "tons"
770 GOTO 340
780 IF Q >= 1 THEN 800
785 PRINT "No Japanese ships in sight -- just ocean."
790 IF Q < 1 THEN 360
800 PRINT T; "torpedoes left."
810 COLOR 10: PRINT "Number of torpedoes to fire";
820 INPUT R: COLOR 15
830 IF R < 0 OR T - R < 0 THEN 810
840 IF R <> INT(R) THEN 810
850 T = T - R
860 S = INT(RND(1) * 10)
870 IF S > R THEN 860
880 Q = Q - S
890 IF Q <= 0 THEN 900
895 Q$ = "damaged"
900 IF Q >= 1 THEN 930
905 Q$ = "sunk"
910 O = O + W
920 L = L + 1
930 PRINT R; "torpedoes fired --"; S; "hits";
940 IF S <> 0 THEN 950
945 PRINT
950 IF S <= 0 THEN 960
955 PRINT " -- "; R$; " "; Q$; "."
960 IF D > 5 AND Q > 0 THEN 1140
970 IF T < 1 THEN 1160
980 IF Q < 1 THEN 230
985 GOTO 340
990 IF D >= 6 THEN 1000
995 PRINT "The U.S.S. "; A$; " is not under attack."
1000 IF D < 6 THEN 360
1010 U = INT(RND(1) * 10) * 250 + 500
1020 PRINT: PRINT "Distance of Japanese "; R$, "Depth of U.S.S. "; A$
1030 COLOR 13: PRINT U; "yards", , , Z; "feet": COLOR 15
1040 U = U - 250
1050 Z = Z + 25
1060 IF U > -250 THEN 1030
1070 IF R$ = "torpedo boat" THEN 1100
1080 N = INT(RND(1) * 10) * 25 + 50
1090 IF N + 26 > Z AND N - 26 < Z THEN 1120
1099 U = Z = 0
1100 PRINT "The U.S.S. "; A$; " is unhurt."
1110 Q = 0
1111 GOTO 230
1120 PRINT "The U.S.S. "; A$; " has been sunk by depth charges."
1130 GOTO 1180
1140 PRINT "The U.S.S. "; A$; " has been sunk by gunfire."
1150 GOTO 1180
1160 PRINT: PRINT "The U.S.S. "; A$; " has expended all of its torpedoes."
1170 IF O <= 0 THEN 1180
1175 PRINT "Congratulations on a successful deployment!"
1180 PRINT: COLOR 12
1190 PRINT "The submarine U.S.S. "; A$; " has sunk a total of"; L; "ships."
1200 PRINT "The enemy tonnage sunk is"; O; "tons.": COLOR 15
1210 END

