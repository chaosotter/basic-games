5 CLS: COLOR 12
10 PRINT TAB(37); "Shoot"
20 PRINT TAB(31); "Creative Computing"
30 PRINT TAB(18); "Morristown, New Jersey"
40 PRINT: PRINT: PRINT: COLOR 15
50 RANDOMIZE TIMER
110 COLOR 10: INPUT "Do you want instructions (Y/N)"; A$
120 IF LEFT$(A$, 1) <> "Y" AND LEFT$(A$, 1) <> "y" GOTO 440
130 COLOR 14: PRINT
140 PRINT "It is the final hour of man.  You and a warring nation have entered into a last"
150 PRINT "contest.  All the life now left on Earth are you and your enemy.  Both he and"
160 PRINT "you have found the last remaining atomic missile silo matrices established by"
170 PRINT "the now-dead superpowers.  He, like you, wishes not to die, but to live in"
180 PRINT "peace."
190 PRINT
200 PRINT "However, it has become apparent that he feels his peace threatened and is"
210 PRINT "preparing an attack.  Both you and he have scanners that will warn you of his"
220 PRINT "movements and track the flight of his atomic missiles, thus he is working"
230 PRINT "slowly.  The enemy, like yourself, has a missile grid nearly identical in"
240 PRINT "structure and operation to yours.  Because you are the only one left, it will"
250 PRINT "be necessary to fire all your missiles manually.  Once the fuse it set, you"
260 PRINT "must flee the area and get two grid units away.  You may never return to this"
270 PRINT "spot, or a spot where a missile has landed; the radiation is intense and would"
280 PRINT "mean an instant, painful death."
310 PRINT
320 PRINT "So the stage has been set.  There is peace until the sign that the enemy has"
330 PRINT "moved to his missile range.  He will fire every time you do, and will do so"
340 PRINT "until one of you is destroyed."
350 COLOR 13: PRINT: PRINT "(Press any key.)"
355 Z$ = INKEY$: IF Z$ = "" THEN 355
356 COLOR 14: PRINT
360 PRINT "Each time a round of missiles has been fired, the scanners will report the"
370 PRINT "status of both your and the enemy's grid territory.  It will show all areas"
380 PRINT "that have had either a missile hit or a missile fired from it.  With this"
390 PRINT "continually updated map, you may be able to inductively discover or trap your"
400 PRINT "opponent.  Beware, he will be trying to do the same to you."
430 PRINT: COLOR 15
440 G$ = "   12345678910"
450 C$ = "Scanner Computer: "
460 S$ = ""
470 FOR X = 1 TO 14
480 S$ = S$ + " "
490 NEXT X
510 DIM I(10, 10), H(10, 10), T(8, 2), P(8, 2)
520 DATA 10,10,1,1,10,1,1,10,10,9,9,10,1,2,2,1
530 DATA -2,-2,0,-2,2,-2,2,0,2,2,0,2,-2,2,-2,0
540 R = INT(RND(1) * 8 + 1)
550 FOR X = 1 TO R
560 READ A, B
570 NEXT X
580 FOR X = 1 TO 10
590 FOR Y = 1 TO 10
600 I(X, Y) = 0
610 H(X, Y) = 0
620 NEXT Y
630 NEXT X
640 IF A = 2 GOTO 690
650 FOR X = 1 TO 8
660 READ C, D
670 IF C = 2 GOTO 690
680 NEXT X
690 FOR X = 1 TO 8
700 FOR Y = 1 TO 2
710 READ P(X, Y)
720 NEXT Y
730 NEXT X
740 PRINT C$; "Enemy activity on grid at"; STR$(A); ","; STR$(B); "."
750 PRINT
760 COLOR 10: INPUT "Your starting coordinates"; E, F: COLOR 15
770 IF E < 1 OR E > 10 OR F < 1 OR F > 10 GOTO 760
780 Z = 1
790 I(E, F) = 1
800 H(A, B) = 1
810 PRINT
820 GOTO 1490
830 COLOR 10: INPUT "Missile coordinates"; M, N: COLOR 15
840 IF M < 1 OR M > 10 OR N < 1 OR N > 10 GOTO 830
850 COLOR 10: INPUT "Where to move to"; S, T: COLOR 15
860 IF S < 1 OR S > 10 OR T < 1 OR T > 10 GOTO 850
870 IF I(S, T) = 1 GOTO 850
880 FOR X = 1 TO 8
890 IF P(X, 1) + E = S AND P(X, 2) + F = T GOTO 920
900 NEXT X
910 GOTO 850
920 PRINT
930 L = 1
940 FOR X = 1 TO 8
950 IF P(X, 1) + E > 10 OR P(X, 1) + E < 1 OR P(X, 2) + F > 10 OR P(X, 2) + F < 1 GOTO 1000
960 IF I(P(X, 1) + E, P(X, 2) + F) = 1 GOTO 1000
970 T(L, 1) = P(X, 1) + E
980 T(L, 2) = P(X, 2) + F
990 L = L + 1
1000 NEXT X
1010 L = L - 1
1020 IF L <> 1 GOTO 1060
1030 C = T(L, 1)
1040 D = T(L, 2)
1050 GOTO 1090
1060 G = INT(RND(1) * L + 1)
1070 C = T(G, 1)
1080 D = T(G, 2)
1090 L = 1
1100 FOR X = 1 TO 8
1110 IF P(X, 1) + A > 10 OR P(X, 1) + A < 1 OR P(X, 2) + B > 10 OR P(X, 2) + B < 1 GOTO 1160
1120 IF H(P(X, 1) + A, P(X, 2) + B) = 1 GOTO 1160
1130 T(L, 1) = P(X, 1) + A
1140 T(L, 2) = P(X, 2) + B
1150 L = L + 1
1160 NEXT X
1170 L = L - 1
1180 IF L <> 0 GOTO 1220
1190 PRINT C$; "The enemy has cornered himself in!"
1200 Z = 0
1204 C = E
1207 D = F
1210 GOTO 1290
1220 IF L <> 1 GOTO 1260
1230 J = T(1, 1)
1240 K = T(1, 2)
1250 GOTO 1290
1260 G = INT(RND(1) * L + 1)
1270 J = T(G, 1)
1280 K = T(G, 2)
1290 I(E, F) = 1
1300 H(A, B) = 1
1310 I(C, D) = 1
1320 H(M, N) = 1
1330 IF M <> J OR D <> T GOTO 1390
1340 PRINT C$; "Hey! You got him!"
1350 Z = 0
1360 IF C <> S OR D <> T GOTO 1390
1370 PRINT C$; "You moved right under his missile!"
1380 Z = 0
1390 E = S
1400 F = T
1410 A = J
1420 B = K
1430 FOR X = 1 TO 8
1440 IF P(X, 1) + E > 10 OR P(X, 1) + E < 1 OR P(X, 2) + F > 10 OR P(X, 2) + F < 1 GOTO 1460
1450 IF I(P(X, 1) + E, P(X, 2) + F) = 0 GOTO 1490
1460 NEXT X
1470 PRINT C$; "Fool! You have boxed yourself into a corner!"
1480 Z = 0
1490 PRINT " Your Territory ", "Enemy Territory"
1500 PRINT
1510 PRINT G$; S$; G$
1520 FOR X = 1 TO 10
1530 IF X = 10 GOTO 1560
1540 PRINT X;
1550 GOTO 1570
1560 PRINT "10 ";
1570 COLOR 11: FOR Y = 1 TO 10
1580 IF I(X, Y) = 1 GOTO 1610
1590 PRINT ":";
1600 GOTO 1620
1610 PRINT "*";
1620 NEXT Y: COLOR 15
1630 PRINT " "; S$;
1640 IF X = 10 GOTO 1670
1650 PRINT X;
1660 GOTO 1680
1670 PRINT "10 ";
1680 COLOR 13: FOR Y = 1 TO 10
1690 IF H(X, Y) = 1 GOTO 1720
1700 PRINT ":";
1710 GOTO 1730
1720 PRINT "*";
1730 NEXT Y: COLOR 15
1740 PRINT
1750 NEXT X
1760 PRINT
1770 IF Z = 1 GOTO 830
1780 END

