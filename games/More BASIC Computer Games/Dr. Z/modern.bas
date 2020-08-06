1 CLS: COLOR 12
5 PRINT TAB(38); "Dr.Z"
6 PRINT TAB(31); "Creative Computing"
7 PRINT TAB(29); "Morristown, New Jersey"
8 PRINT: PRINT: PRINT: COLOR 15
10 RANDOMIZE TIMER
20 COLOR 14: PRINT "Hello there, I'm your computer therapist."
30 PRINT "What is your name?  And tell me something about yourself."
40 PRINT "However, don't type more than one line.  I tire easily.": PRINT
60 COLOR 10: PRINT "What did you say your name was again";
70 INPUT B$: COLOR 15
80 COLOR 10: PRINT "How do you feel today";
90 LET C = 0: U = 0: V = 0
100 COLOR 10: INPUT A$: COLOR 15
110 PRINT
130 IF C = 10 THEN 720
140 LET Z = INT(10 * RND(1))
150 IF U = Z THEN 140
160 IF V = Z THEN 140
170 LET U = Z
180 ON Z + 1 GOTO 690, 420, 450, 480, 510, 540, 570, 600, 630, 660
380 GOTO 690
390 PRINT "That's very interesting, tell me more."
410 GOTO 690
420 PRINT "Have you left this way long?"
440 GOTO 690
450 PRINT "Do you think this is reasonable in light of your interest?"
470 GOTO 690
480 PRINT "Do your friends find this acceptable?"
500 GOTO 690
510 PRINT "Do you feel comfortable with this feeling?"
530 GOTO 690
540 PRINT "Do you think that this is a normal feeling?"
560 GOTO 690
570 PRINT "Why do you think you feel this way?"
590 GOTO 690
600 PRINT "Have you talked to anyone about this?"
620 GOTO 690
630 PRINT "Why are you here?"
650 GOTO 690
660 PRINT "Are you satisfied with the way your ideas are developing?"
690 LET C = C + 1
700 LET U = Z
710 GOTO 100
720 PRINT "I think you are making a great attempt to solve your difficulties, and I see no"
730 PRINT "need to continue this session any further.": PRINT
750 PRINT B$; ", would you make another appointment with my computer for sometime in"
760 PRINT "the next few weeks?  What date would you prefer?"
780 COLOR 10: PRINT "Well";: INPUT A$: COLOR 15
790 PRINT: PRINT "That will be fine."
800 PRINT "I've enjoyed communicating with you."
810 PRINT "Have a nice day."
820 FOR T = 1 TO 6
830 PRINT
840 NEXT T
850 END

