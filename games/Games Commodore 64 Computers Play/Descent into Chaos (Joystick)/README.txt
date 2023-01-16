Descent into Chaos

Descent into Chaos is a moving graphics game in which you fly your
space ship down a long winding tunnel on the planet Chaos.  The game
requires concentration and good reflexes to be completed successfully.

The first listing of the program is for joystick control.  You move
your ship left and right with the joystick, and slow your descent by
pressing the fire button.

The second listing is for a keyboard-operated game.  In this version,
the "," key and the "." key move the space ship left and right.  This
should be easy to remember because the "less than" and "greater than"
symbols on the top of these two keys point in the direction of travel.
The "T" key can be used to slow your headlong rush.

After the title is displayed, the screen clears and is set to black.
Your space ship, a diamond shape, appears at the top of the screen.
The planet Chaos and the opening of the tunnel are printed and your
space ship starts failing into the cavern.  You must avoid hitting the
sides while trying to get your ship all the way to the bottom of the
tunnel.  You have four "lives".  After they’ve been used up, you’ll be
told just how deep into the tunnel you managed to go.

Beware, the tunnel gets narrower as it gets nearer to the centre of
the planet.

The main part of the program lies between line 80 and the NEXT in line
180.  This is the loop the program goes through as it prints the
planet and tunnel.

Line 40 calls up the routine to initialise the sound generator and
then provides the title display.  Line 50 sets the screen to black and
initialises the variable used to read the joystick (DD).  Line 60
clears the screen and sets up the string S$.  This string consists of
a number of blank spaces used to create the tunnel.

Line 70 initialises the value of Q (used to TAB S$ across the screen),
sets SC to 1024 (the start of the screen memory) and gives X the value
of 14 (X is used to give your space ship its distance across the
screen).

Line 80 starts off our game loop and prints 38 reversed spaces on the
screen.  These spaces appear as a blue bar.  Line 85 checks to see how
wide our tunnel is and, when it reaches two spaces, calls up the end
routine.  Lines 90 to 130 choose a random number and use it, along
with variable Q, to TAB S$ across the screen.  This changing value
causes the twists and turns in the tunnel.  Lines 110 and 120 are
safeguards to prevent the tunnel from running off the screen.

Line 140 uses SC and X to POKE your spaceship onto the screen.  Line
150 calls up the routine in lines 5000 and 5010 which read the
joystick input.  This line then checks to see if the fire button has
been pressed and, if it has, adds a short delay which slows down the
game.  Lines 155 and 157 act on the input by altering the value of X.

Line 170 checks to see if you have collided with the side of the
tunnel.  If you have, line 1000 increments variable H, which counts
the number of collisions. Lines 1010 to 1030 provide the sound of the
crash.  Lines 1050 and 1060 check to see which side of the tunnel you
have hit and move your ship back into the centre to continue the game.

Line 180 increments the variable M, which is used to keep a record of
how far down the tunnel you manage to fly.

After the RR FOR/NEXT loop has run through, the rest of line 180
subtracts one space from the string S$.  This makes the tunnel
narrower.  We then go back to line 80 for another cycle.
