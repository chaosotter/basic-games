BLOCKOUT

This is a very impressive, fast moving game which will test your
reactions and skill.  The game of Blockout can be played by one or two
people.  The single player game can be played from the keyboard, but
in the two player game one player will need a joystick which should be
plugged into port number two.

In the one player game you begin near the left hand side of the screen
and rush off towards the opposite side of the playing area, leaving a
trail behind you.  The object of the game is to keep moving for as
long as possible without hitting a wall or your own trail.  In the two
player game you must avoid your opponent’s trail as well as your own
while trying to trap him into making a mistake.  Player one leaves a
red trail and player two, starting near the right of the screen,
leaves a blue trail.

In the two player game, player one uses the keyboard for controlling
his man.  The "A" key moves him up the screen and the "X" key moves
him down the screen.  The "," key and the "." move him left and right
respectively.  Player two uses the joystick plugged into port number
two.  In the one player game either the keyboard or a joystick can be
used.

At the beginning of the game the function keys are used to select the
game options.  Function key number one is used to clear out the
previous high score if you wish to do this.  Key number three chooses
the type of game you wish to play.  The options are two players, one
player with joystick or one player with keyboard.  Key number five is
used to select how many game turns you wish to play.  When you have
the options you want displayed on the screen, press function key seven
to start the game.  If you wish to finish playing, pressing function
key seven will return you to the title screen.

Line 15 prints up the playfield.  Lines 20 to 27 read the keyboard and
print the trail for player one. XI%$ is the variable which controls
the screen position of player one.  Lines 30 to 37 read the input from
the joystick and print the trail for player two using variable X2%$.

The function keys are read by lines 40 to 60.  These keys are used to
select the game options and start and finish the game.  Lines 65 and
67 use P$ to place a string of characters onto the screen.  T% keeps
track of the location of P$.

The routine in lines 70 to 80 is used to provide a precise time delay
using TI$.  This routine also checks to see whether function key seven
has been pressed.  If so, the game is terminated and the title screen
is displayed.

The collisions between players or a player and the wall are detected
by lines 85 to 100.  If there are two players, this routine allows any
unaffected player to continue on until he has a collision.

The scores are printed up by lines 105 to 115 and lines 120 to 135
tell you which player has won the game and also display the bonus
points.

Lines 140 to 150 check to see if the game is in one or two player mode
and return the program to the appropriate line to start the loop
again.

Line 155 sets up the variables for the start of the game and line 160
calls up the subroutine which prints the scores.  The title is printed
by the PRINT lines in 161 to 185.  The arrays and variables are
initialised in lines 205 to 227.

This very clever program was written by Gary Ryan of Canberra.
