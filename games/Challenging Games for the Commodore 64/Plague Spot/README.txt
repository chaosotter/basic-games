PLAGUE SPOT

This game combines moving graphics and a random number generator to
present you with an interesting challenge.  The program begins by
drawing a border around the screen (lines 40 to 80) then places 125
black or white plague spots on the screen.  This is done by the
routine in lines 120 to 150.  The FOR/NEXT loop cycles through the
random number generator in line 130.  This number is used for the
screen location of a plague spot.  The random number generator in line
140 determines whether the spot will be white or black.

You then appear on the screen near the top left hand corner, you are
represented by a purple "Clubs" symbol.  You have to run from your
starting position at the top of the screen to the gate at the bottom
right hand corner of the screen.  Along the way you have to avoid
running into plague spots or the wall around the screen.  Colliding
with the wall or a plague spot will result in ten points being added
to your score.  The aim of the game is to cross the screen with as low
a score as possible.  To make your task even more difficult lines 230
and 240 continue to place plague spots on the screen during the
running of the game.

You control your little figure on the screen with four keys on the
keyboard.  On the left of the keyboard, the "A" key moves your man up
the screen and the "Z" key moves him down.  On the right of the
keyboard, the keys with the greater than and less than symbols are
used for moving right and left respectively.

Line 110 sets the starting position of your little man.  Lines 170 to
210 accept your input from the keyboard, make the necessary adjustment
to your position and then use PEEK to see if you have run into a
plague spot or a wall.

Lines 215 and 216 stop you from accidentally running off the screen.
The PEEK in line 219 checks to see whetheryou have hit the exit gate
at the bottom of the screen.

The routines from line 1000 to line 1510 are called up after you run
into a wall or a plague spot.  They call up the sound routine, prevent
your man from moving onto the plague spot or through the wall and also
increment your score.
