1 CLS: COLOR 12: PRINT TAB(37); "Defuse"
2 PRINT TAB(31); "Creative Computing"
3 PRINT TAB(29); "Morristown, New Jersey"
4 PRINT: PRINT: PRINT
5 RANDOMIZE TIMER: COLOR 14
10 PRINT "You are in a government experimental building with 1,000,000 rooms in it."
20 PRINT "The building is 100 rooms long (0-99), 100 rooms wide (0-99), and 100 rooms"
30 PRINT "high (0-99).": PRINT
40 PRINT "In it a bomb is hidden.  The bomb sends out signals that get stronger as you"
50 PRINT "get closer.  You have 200 seconds to deactivate it."
70 COLOR 15: PRINT: A = INT(100 * RND(1)): B = INT(100 * RND(1))
80 C = INT(100 * RND(1)): IF A > 0 THEN 90
85 IF B > 0 THEN 90
87 IF C = 0 THEN 80
90 D = 0: E = 0: F = 0: G = 0
100 PRINT "Signal"; TAB(15); "L"; TAB(20); "W"; TAB(25); "H";
105 PRINT TAB(35); "Sec."; TAB(50); "Coordinates (L,W,H)"
110 COLOR 11: PRINT 10000 - ABS((A / 100 + B + C * 100) - (D / 100 + E + F * 100));
112 PRINT TAB(14); D; TAB(19); E; TAB(24); F; TAB(35); G; TAB(50);
120 COLOR 10: INPUT D, E, F: COLOR 15: G = G + 10: IF A <> D THEN 130
125 IF B <> E THEN 130
127 IF C = F THEN 170
130 IF G = 200 THEN 140
135 GOTO 180
140 PRINT: PRINT "Boooooommm!!!": PRINT "You blew it.  The building blew up."
145 PRINT "The bomb was located at the coordinates (L,W,H):"; A; B; C: PRINT
150 COLOR 10: PRINT "Want to play again (Y/N)";
160 INPUT Z$: COLOR 15: IF LEFT$(Z$, 1) = "Y" OR LEFT$(Z$, 1) = "y" THEN 70
165 GOTO 999
170 PRINT: PRINT "Bomb deactivated at"; G; "seconds!!!": GOTO 150
180 IF D > 99 THEN 200
183 IF D < 0 THEN 200
185 IF E > 99 THEN 200
187 IF E < 0 THEN 200
190 IF F > 99 THEN 220
195 IF F < 0 THEN 230
197 GOTO 110
200 PRINT "You walked out a window on the";: IF F < 4 THEN 240
205 PRINT STR$(F); "th floor!!!"
210 PRINT "You were killed and"; 200 - G; "seconds later the building blew up!!!"
215 GOTO 150
220 PRINT "You are now"; F * 9; "feet in the air!!!": GOTO 210
230 PRINT "You are now"; -1 * (F * 9); "feet underground!!!": GOTO 210
240 ON F GOTO 250, 260, 270
250 PRINT " 1st floor!!!": GOTO 210
260 PRINT " 2nd floor!!!": GOTO 210
270 PRINT " 3rd floor!!!": GOTO 210
999 END

