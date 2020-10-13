RABBIT TRAP 

In this game the computer will try to trap you, a frightened rabbit,
by placing obstacles in your path, finally boxing you in so that you
can’t move.  The object of the game is to keep running for as long as
possible.  Your score at the end of the game is related to how long
you remained free.

To move your rabbit use the "A" key to move up and the "Z" key to move
down the screen.  The comma and the full stop keys move the rabbit
left and right respectively.

Lines 1000 to 1050 GET your input from the keyboard and increment your
position on the screen.  Lines 1060 to 1090 check your position each
turn to see if you are surrounded by obstacles, if F equals one you
are trapped and the program goes to line 2000.  You are then told your
final score.

Line 1100 increments your score each time the program goes through the
loop which moves you about the screen.  The location of the obstacles
is picked in line 1110.  The second statement in this line prevents an
obstacle from being POKEd into a spot already occupied or into one of
the walls around the playing area.  Line 1130 POKEs the obstacle onto
the screen.
