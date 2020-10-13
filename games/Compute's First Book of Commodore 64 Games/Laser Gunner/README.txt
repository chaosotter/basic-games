Laser Gunner 

  by Gary R. Lecompte
  64 Translation by Philip I. Nelson

This arcade-style game achieves an impressive graphics animation
without the use of any machine language.

"Laser Gunner" is an arcade-type action game.  The player controls a
laser gun which moves up and down on the left of the screen behind a
force field and fires at invading enemy spaceships.  The invaders also
fire lasers and attempt to open holes in the force field.  Every hit
weakens the force field until an entire hole is made.  A hit through a
hole ends the game.

Laser Gunner is an example of animation accomplished without the use
of machine language routines.  The drawback of this type of
programming is obvious.  Only one string may be animated at a time
with any speed.  However, by working your game format around this
limitation, you can still make action games fast and challenging.

The animation of the laser gun and the position of laser fire, as well
as the location of the invaders, are controlled by the location
routines.  The row and column values are POKEd into memory locations
214 and 211.  A PRINT statement following these routines will print
that string beginning at the location determined by the row and column
values.  Changing the row and column values and printing the same
string again accomplishes animation.

The force field changes are made by PEEKing the location of the hit,
determining the character at that location, and POKEing the value of
the next character to that location.

Invader explosions are done by coding cursor movements and printing
characters from the invader string.

Sound routines are intermixed with laser and explosion routines. This
assures that animation and sound will blend.

Invader ship location and laser fire are determined by randomizing
routines.  Skill level is provided by giving the player a minimum
preset delay.  Actual time before invader laser blasts is always
unpredictable.

Stars are created with simple POKE statements to predeter- mined
locations.

All routines are placed in order of importance, with those used most
at the beginning.  This allows for the fastest program execution
possible to increase animation speed.  REM statements should be
deleted for best effect.  The key to speed is simplicity.  The shorter
the program statements, the greater the speed.

Changing the Shapes

It is possible to change the shape of the ships.  Lines 85 and 86
contain the statements which produce the shape. To make your own
ships, you can use any graphic symbols from the front of the 64
keyboard.  Pick the characters you want, and substitute them for the
shifted characters within the quotes for IN$, Gl$ and G2$ in lines 85
and 86.  Remember, you get the left-side graphic character by holding
down the Commodore key rather than SHIFT.
