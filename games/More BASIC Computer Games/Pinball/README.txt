PINBALL is, naturally enough, a simulated pinball game -- complete
with bells if your terminal has them -- in which the computer serves
as the pinball machine.  However, you don't need any quarters!  The
program is divided up into ten small routines contained within the
whole.  Each subprogram performs one task in simulating a pinball
game.

Details on each task/subprogram are as follows.

1) Starting and monitoring the game.

This task is performed by the master function PINBAL, which is
contained in lines 1-600 of the program. Pinbal asks if the user wants
instructions or a picture at the start of the game, puts each new ball
into play, moves the ball until it comes into contact with an object
on the table, and tells the user when he is finished and if he has
broken the table record.

2) Printing instructions.

This subprogram is on the lines numbered 1010-1999, and its major task
is to print the instructions of the pinball game and then to branch to
the picture program to print a picture of the table (see below).
After the picture of the table is completed, this subroutine explains
the function of each figure on the table.

3) Registering "hits" and computing new scores.

Lines 2010-3999 are in charge of taking action each time the space
occupied by the ball on the table is not blank.  These lines also
prepare the table to take action on the next task, namely flipping the
table's flippers when the ball approaches them.

4) Flipping the flippers.

This task is accomplished by the lines in the four thousand range.
These lines also set up indicators for the monitor routine (1 above)
to put the next ball into play if necessary and branch to the routine
that adds bonus points for tags (letters A-J) knocked down during that
ball's play.

5) Bonus points at the end of a ball's play.

Lines in the five thousand range handle this task and then branchg
back to the monitor routine to put the next ball into play.  If all
ten tabs are knocked down in one ball, the program immediately awards
a bonus of 250 points and an extra ball to the player and resets the
tabs for further play.  Normally, bonus points are awarded at the rate
of ten per tab at the end of a ball.

6) Printing pictures of the table.

Lines in the six thousand range print a picture of the pinball table,
either at the beginning of play or randomly, at the rate of one
picture for every twenty-five "hits."

7) Bouncing the ball off bumpers and the jackpot.

The ball is "bounced" by the routine beginning at line 7850.

8) Initializing the tble.

The table is initialized at the beginning of the game by lines in the
nine thousand range.

Suggestions for improvement and change.

1) Change the table as you wish by inserting or deleting bumpers,
   jackpot(s), gates (numbers, now 1-9 and 0), etc.  You may also move
   the positions of any item on the table except the three flippers.

2) Program in new sorts of table objects.

3) If your system is so equipped, rig in the program with some
   synthesizer music to heighten realism!

Pinball was conceived and written by Donald-Bruce Abrams.
