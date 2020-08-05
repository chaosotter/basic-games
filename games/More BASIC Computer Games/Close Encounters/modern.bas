10 CLS: COLOR 12
90 RANDOMIZE TIMER
100 PRINT TAB(32); "Close Encounters"
110 PRINT TAB(31); "Creative Computing"
120 PRINT TAB(29); "Morristown, New Jersey"
130 GOSUB 1100
140 PRINT: PRINT: PRINT: COLOR 14
150 PRINT "You are situated at coordinates (0,0).  A UFO is heading for impact at that"
160 PRINT "location."
170 PRINT: COLOR 15
180 PRINT "At first track, the UFO is on a course of"; Y; "degrees longitude and"; Z
190 PRINT "degree latitude.  (Also it's falling at a speed of"; X; "miles per hour.)"
200 PRINT
220 PRINT "You have the following alternatives:"
230 PRINT "(A) You can attempt to shoot the UFO out of the sky.  Or"
240 PRINT "(B) You can do nothing, and hope that air friction will cause the course of the"
250 PRINT "    UFO to deviate, and thus miss your location.": PRINT
270 COLOR 10: PRINT "What is your plan of action (A or B)";: INPUT D$: COLOR 15
280 PRINT
290 IF LEFT$(D$, 1) = "B" OR LEFT$(D$, 1) = "b" THEN 790
300 PRINT "Launch an I.C.B.M. on a course that will intercept the UFO without the UFO"
310 PRINT "being too close to your location.  If the speed of the UFO exceeds"; H; "MPH,"
320 PRINT "your missiles are useless!": PRINT
330 COLOR 13
340 PRINT "--Scanners predict you have"; M; "minutes to destroy the UFO before it is too"
350 PRINT "  close to impact.": PRINT
360 C = Z - Y + I - INT(RND(1) * 4) + 1
370 PRINT "--Computer indicates course at first sighting is approximately"; STR$(C + F); "."
380 PRINT: COLOR 15
390 PRINT "Type in a course on the chart below.": PRINT
400 PRINT
410 PRINT "Time", "Speed", "Longitude", "Latitude", "Course"
420 FOR T = 0 TO 5 STEP .5
430 COLOR 11: PRINT T, X, Y, Z,: COLOR 10: INPUT A: COLOR 15
440 IF T = INT(T) AND T = M THEN 620
450 IF X <= H THEN 490
460 PRINT: PRINT "Sorry -- the speed of the UFO has exceeded"; H; "MPH.  This speed is too"
470 PRINT "great for your defense screen to track!  Therefore, you are (ha ha) doomed!"
480 PRINT: GOTO 750
490 IF A = C THEN 720
500 IF A > 10 THEN 550
510 PRINT: PRINT "At that course you shot your missile straight up, so when it runs out of fuel"
520 PRINT "in about"; F; "hours, it will fall through your roof!!!  Goodbye!!!": GOTO 660
550 IF A < 200 GOTO 580
560 PRINT: PRINT "Good work!  There goes the missile -- right towards Russia!!!  Now you're"
570 PRINT "definitely in trouble!!!": GOTO 660
580 IF A = C - 1 THEN 670
590 IF A = C + 1 THEN 710
600 X = X + V + 1200: Y = Y - I + 5: Z = Z - I + 5: C = Z - Y + 5
610 NEXT T
620 PRINT "--------------------------ATTENTION-------------------------"
630 PRINT: PRINT "Elapsed time indicates that"; M; "minutes have passed.  If you were to hit the"
640 PRINT "UFO now, the force of the explosion would destroy you as well as the UFO!": PRINT
660 GOTO 750
670 PRINT: PRINT "You are shy of the UFO's coordinates.  ";
675 PRINT "However, this is only a slight"
680 PRINT "deviation, so the UFO has been destroyed!": PRINT
700 GOTO 750
710 PRINT: PRINT "You overshot the UFO's coordinates.  ";: GOTO 675
720 PRINT "Fantastic!!!  You hit the UFO exactly on projected course.  You must be very"
730 PRINT "sharp!": PRINT
740 PRINT
750 COLOR 10: PRINT "Try again (Y/N)";: INPUT J$: COLOR 15
755 IF LEFT$(J$, 1) = "N" OR LEFT$(J$, 1) = "n" THEN 1220
760 GOSUB 1100
770 GOSUB 1070
780 PRINT: PRINT: GOTO 340
790 PRINT
800 F = 0
810 A = INT(RND(1) * 5) + 1: C = Z - Y + A
820 M = 12000
830 PRINT "Miles", "Speed", "Longitude", "Latitude", "Course"
840 PRINT "-----", "-----", "---------", "--------", "------"
850 P = X + 1
860 COLOR 11: PRINT M, X, Y, Z, C: COLOR 15
870 C = Z - Y
880 X = X + INT(RND(1) * 5000) + 2000: M = M - X / 60
890 Y = Y - INT(RND(1) * 10): Z = Z - INT(RND(1) * 10): C = Z - Y + A ^ 2
900 IF X - P > 5700 THEN F = F + 1
910 IF M > 0 THEN 850
920 PRINT
930 PRINT "--------- Impact at"; X; "miles per hour ---------"
940 IF F <= 2 THEN 980
950 PRINT "Good work.  Friction of"; STR$(F); "% has caused the course of the UFO to deviate."
955 F$ = STR$(F): F$ = RIGHT$(F$, LEN(F$) - 1)
960 PRINT "Impact coordinates are now ("; F$; ", "; STR$(-F); ").  You made it!": GOTO 1020
980 PRINT "--------- UPI Wire Service ---- Online"; A; ":"; A + 5; ":"; A + 10; "---------"
990 PRINT: PRINT "We have just observed explosion at coordinates ("; STR$(-F); ", 0)."
1000 A = (A + 2) * A
1010 PRINT "Blast seen from"; A ^ 3; "miles away.  No survivors.": PRINT
1020 COLOR 10: INPUT "Try again (Y/N)"; J$: COLOR 15
1030 IF LEFT$(J$, 1) = "N" OR LEFT$(J$, 1) = "n" THEN 1220
1040 GOSUB 1100
1050 GOSUB 1070
1060 PRINT: PRINT: GOTO 300
1070 COLOR 10: INPUT "Which plan (A or B)"; D$: COLOR 15
1080 IF LEFT$(D$, 1) = "B" OR LEFT$(D$, 1) = "b" THEN 790
1090 RETURN
1100 I = INT(RND(1) * 20) + 1: V = INT(RND(1) * 400) + 200: F = INT(RND(1) * 5) + 1
1110 X = INT(RND(1) * 5000) + 2001: H = X + 8000: Q = INT(RND(1) * 5) + 1
1120 Z = INT(RND(1) * 140): IF Z < 100 THEN 1120
1130 Y = INT(RND(1) * 60): IF Y < 40 THEN 1130
1140 IF X >= 3000 THEN 1160
1150 M = 5: GOTO 1210
1160 IF X >= 3700 THEN 1180
1170 M = 4: GOTO 1210
1180 IF X >= 4700 THEN 1200
1190 M = 3: GOTO 1210
1200 M = 2
1210 RETURN
1220 END

