ASTRO FIGHTER 

We journey into space now so that you can become the pilot of a V-wing
Astro fighter, patrolling a sector of space around your home planet.
Nasty yellow alien numbers appear in various places around you.  They
only remain visible for a short, and varying length of time before
becoming invisible.  Your task is to catch as many of these numbers as
possible, by flying your fighter over them, before the time limit runs
out.

The up and down movement of your craft is controlled by the "A" and
"Z" keys respectively.  The left and right movements are controlled by
the comma and full stop keys.  These keys were chosen because the
symbols above the comma and full stop show the direction of movement.

Your score at the end of the game relates to the values of the numbers
you have caught.

Lines 120 to 150 are used to check your keyboard input and then
increment your position on the screen.  The statement at the end of
each of these lines changes the appearance of your fighter as it
alters direction.  When you are flying toward the top of the screen,
line 140 changes the symbol used to depict your fighter in line 220 to
the letter A.  When you are flying toward the bottom of the screen a
letter V is used.  The left and right movement uses the greater than
and less than symbols to represent your fighter.

Lines 160 and 170 check to see whether you have hit one of the walls
around the screen.  If you have, your screen position (variable S) is
not altered until you change direction.  Line 180 checks to see
whether you have run over a number.  If you have it multiplies the
code of the number by eighteen and adds it to your score.

The routine from line 1000 to 1200 sets up the start of the game.
Line 1010 sets the screen starting position, line 1020 sets the colour
memory starting position.  Line 1030 gives the starting direction of
your fighter by setting B$ equal to the full stop key.  This has the
effect of continuous movement.  When the program reaches line 100 if
there is no input from the keyboard the value of B$ is used to set up
A$.  This value of A$ is then used as the input.  Line 230 then sets
the current value of A$ equal to B$.  Next time through the loop, line
100 keeps you moving in the same direction if you do not input a new
direction.

Lines 1040 to 1070 draw the border around the screen.  Line 1080
diverts the program around the DIM statements in the following line to
prevent the arraysfrom being reDIMmed on subsequent running of the
program.  ReDIMming an array causes a systems error in your computer.
This is avoided by using the high score variable HS.  The first time
the game is run HS equals zero so the arrays are set up.  The next
time you play the game HS holds the value of your score for the first
game.  This then meets the condition in line 1080 and the program
skips around the DIM statements.

Lines 1090 to 1160 set up the three arrays.  The A array contains 55
numbers chosen at random between one and nine.  These numbers become
the aliens.  The B array contains 55 screen locations chosen at random
and the C array holds the corresponding colour memory locations.  Line
1150 prevents the aliens from being positioned in a wall.

Variable CC in line 1170 is used as the counter to run through the
arrays, POKEing the aliens onto the screen.  CC is incremented in line
190 and tested in line 200.  When CC equals 55 the arrays are empty
and the game ends.
