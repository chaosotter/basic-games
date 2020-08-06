1 CLS: COLOR 12: PRINT TAB(35); "Count Down"
2 PRINT TAB(31); "Creative Computing"
3 PRINT TAB(29); "Morristown, New Jersey"
4 PRINT: PRINT: PRINT: RANDOMIZE TIMER
5 A = INT(RND(1) * 10)
6 T = 0
7 N = 0
10 COLOR 14
15 PRINT "You have activated the self-destruct mechanism in this school.  If you wish,"
25 PRINT "you may stop the mechanism.  To do so, just type in the correct number which"
27 PRINT "will stop the countdown."
30 PRINT: PRINT "Please hurry!!  There is no time to waste!!!!!!"
44 COLOR 10: PRINT: PRINT "What'll it be";: INPUT X: PRINT: COLOR 15
45 IF T = 4 THEN 98
47 GOTO 200
50 REM
75 PRINT "Your number does not compute!!"
80 PRINT "Please try again!!!!": T = T + 1
81 IF T = 2 THEN 96
82 IF T = 3 THEN 105
83 GOTO 44
85 PRINT "Correct!!!!": LET N = 5
90 PRINT "The countdown has stopped.  You have saved the school!"
93 PRINT "(Have you seen your shrink lately?)"
94 LET T = 10
95 GOTO 1000
96 PRINT "Time grows short, please hurry!!!!!!"
97 GOTO 44
98 PRINT: PRINT: PRINT: PRINT
99 PRINT TAB(36); "Too late!"
100 COLOR 12: PRINT: PRINT: PRINT: PRINT TAB(36); "\ **** /"
101 PRINT TAB(35); "-- BOOM --"
102 PRINT TAB(36); "/ **** \"
103 PRINT: PRINT: PRINT: COLOR 15
104 GOTO 1000
105 PRINT "Hurry, the countdown is approaching zero!!!!!!"
110 GOTO 44
200 IF X < A THEN PRINT "Too small!!!": GOTO 50
210 IF X > A THEN PRINT "Too big!!!": GOTO 50
225 IF X = A THEN 85
1000 END

