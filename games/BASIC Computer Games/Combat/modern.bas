1 CLS: COLOR 12: PRINT TAB(37); "Combat"
2 PRINT TAB(31); "Creative Computing": PRINT TAB(29); "Morristown, New Jersey"
3 PRINT: PRINT: PRINT: RANDOMIZE TIMER: COLOR 15
4 COLOR 14: PRINT "I am at war with you.  We have 72,000 soldiers apiece."
5 COLOR 15: PRINT: PRINT "Distribute your forces:": PRINT
6 COLOR 13: PRINT , " Me", " You"
7 COLOR 13: PRINT "Army",: COLOR 11: PRINT 30000,
8 COLOR 10: INPUT A: COLOR 15
9 COLOR 13: PRINT "Navy",: COLOR 11: PRINT 20000,
10 COLOR 10: INPUT B: COLOR 15
11 COLOR 13: PRINT "Air Force",: COLOR 11: PRINT 22000,
12 COLOR 10: INPUT C: COLOR 15
13 IF A + B + C > 72000 THEN 5
14 D = 30000
15 E = 20000
16 F = 22000
17 PRINT: PRINT "You attack first."
18 COLOR 10: PRINT "Attack with (1) army, (2) navy, or (3) air force";
19 INPUT Y: COLOR 15
20 COLOR 10: PRINT "How many men";
21 INPUT X: COLOR 15: PRINT
22 IF X < 0 THEN 20
23 ON Y GOTO 100, 200, 300
100 IF X > A THEN 20
105 IF X < A / 3 THEN 120
110 IF X < 2 * A / 3 THEN 150
115 GOTO 270
120 PRINT "You lost"; X; "men from your army."
125 A = INT(A - X)
130 GOTO 500
150 PRINT "You lost"; INT(X / 3); "men, but I lost"; STR$(INT(2 * D / 3)); "."
155 A = INT(A - X / 3)
160 D = 0
165 GOTO 500
200 IF X > B THEN 20
210 IF X < E / 3 THEN 230
215 IF X < 2 * E / 3 THEN 250
220 GOTO 270
230 PRINT "Your attack was stopped!"
232 B = INT(B - X)
235 GOTO 500
250 PRINT "You destroyed"; INT(2 * E / 3); "of my army."
255 E = INT(E / 3)
260 GOTO 500
270 PRINT "You sank one of my patrol boats, but I wiped out two of your air force bases"
275 PRINT "and three army bases."
280 A = INT(A / 3)
285 C = INT(C / 3)
290 E = INT(2 * E / 3)
293 GOTO 500
300 IF X > C THEN 20
310 IF X < C / 3 THEN 350
320 IF X < 2 * C / 3 THEN 370
330 GOTO 380
350 PRINT "Your attack was wiped out."
355 C = INT(C - X)
360 GOTO 500
370 PRINT "We had a dogfight.  You won -- and finished your mission."
375 D = INT(2 * D / 3)
377 E = INT(E / 3)
378 F = INT(F / 3)
379 GOTO 500
380 PRINT "You wiped out one of my army patrols, but I destroyed two navy bases and bombed"
381 PRINT "three army bases."
385 A = INT(A / 4)
387 B = INT(B / 3)
390 D = INT(2 * D / 3)
500 PRINT
501 COLOR 13: PRINT , " You", " Me"
510 COLOR 13: PRINT "Army",: COLOR 12: PRINT A, D
520 COLOR 13: PRINT "Navy",: COLOR 12: PRINT B, E
530 COLOR 13: PRINT "Air Force",: COLOR 12: PRINT C, F
1000 PRINT
1010 COLOR 10: PRINT "What is your next move (1=Army, 2=Navy, 3=Air Force)";
1020 INPUT G: COLOR 15
1030 COLOR 10: PRINT "How many men";
1040 INPUT T: COLOR 15: PRINT
1045 IF T < 0 THEN 1030
1050 ON G GOTO 1600, 1700, 1800
1600 IF T > A THEN 1030
1610 IF T < D / 2 THEN 1630
1615 PRINT "You destroyed my army!"
1616 D = 0
1617 GOTO 2000
1630 PRINT "I wiped out your attack!"
1635 A = A - T
1640 GOTO 2000
1700 IF T > B THEN 1030
1710 IF T < E / 2 THEN 1750
1720 GOTO 1770
1750 PRINT "I sank two of your battleships, and my air force wiped out your unguarded"
1751 PRINT "capital."
1755 A = A / 4
1760 B = B / 2
1765 GOTO 2000
1770 PRINT "Your navy shot down three of my XIII planes and sank three battleships."
1775 F = 2 * F / 3
1780 E = (E / 2)
1790 GOTO 2000
1800 IF T > C THEN 1030
1810 IF T > F / 2 THEN 1830
1820 GOTO 1850
1830 PRINT "My navy and air force in a combined attack left your country in shambles."
1835 A = A / 3
1837 B = B / 3
1840 C = C / 3
1845 GOTO 2000
1850 PRINT "One of your planes crashed into my house.  I am dead.  My country fell apart."
1860 GOTO 2010
2000 PRINT
2001 PRINT "From the results of both of your attacks...": PRINT: COLOR 12
2002 IF A + B + C > 3 / 2 * (D + E + F) THEN 2010
2005 IF A + B + C < 2 / 3 * (D + E + F) THEN 2015
2006 PRINT "The Treaty of Paris concluded that we take our respective countries and live"
2007 PRINT "in peace."
2008 GOTO 2020
2010 PRINT "You won!  Oh, shucks."
2012 GOTO 2020
2015 PRINT "You lose -- I conquered your country.  It serves you right for playing this"
2016 PRINT "stupid game!"
2020 COLOR 15: END

