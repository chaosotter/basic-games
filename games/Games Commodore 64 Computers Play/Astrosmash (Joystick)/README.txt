Astrosmash

Arcade action and excitement is provided by this game written by
William Leader.  The game uses sprite graphics, the sound generating
capabilities of the Commodore 64 and nine levels of difficulty to
provide a very challenging game.

Your aim is to protect your star base from a shower of asteroids.
Your space ship must destroy the asteroids with its blaster to prevent
them from falling onto the base below.  If three asteroids get past
you, or if you collide with an asteroid, the game is over.  After you
have destroyed ten asteroids the game automatically advances to the
next level of difficulty.

We have provided two listings of Astrosmash, the first one is a
joystick operated version with the joystick plugged into port nu mber
two.  The joystick moves your ship left and right and the fire button
fires the blaster.  The second version is keyboard operated and in
this game the "Z" key moves the ship to the left, the "L" key moves
the ship to the right and the space bar fires your blaster.

After the colourful opening sequence, you will be asked to INPUT a
level of difficulty.  Level one is the easiest and level nine the most
difficult.  After you have made your selection, the screen will clear
and be set to black.  A background of stars appears with your
spaceship at the bottom of the screen.  After a short delay, asteroids
will begin falling toward you.  From then on it is up to you to save
your star base from the asteroid shower.

Lines 1 to 24 initialise the program, setting up the starting values
for all the variables.  Lines 11 to 24 set up the sprite registers and
read in the data to build the sprites.

Line 28 reads the INPUT from the joystick or keyboard.  Then lines 30
and 31 use the values and the space ship is moved and tilted
accordingly.  Variable PO controls the tilt of the ship.  Value 1 is
tilt left, value 2 is upright and value 3 is tilt right.  The score is
printed by line 33.

Lines 50 to 55 get the relevant memory locations for the ship,
depending on which way it is tilted.  Line 60 moves the asteroids.
The variable SP is the speed at which they move.  This is determined
by the level of difficulty.  Line 65 and line 66 make sure that the
asteroids stay on the screen.

Lines 70 and 74 check to see if the asteroid has reached the bottom of
the screen and, if so, increment the variable HIT.  If HIT equals
three then we go to the routine which ends the game.

Line 80 checks to see if any of the sprites have collided, then lines
82 and 83 test to find what has collided with what.  Line 85 counts
the number of destroyed asteroids and advances the program to the next
level after ten hits have been scored.

Lines 90 to 100 POKE the sprites into the correct screen
locations. Line 115 moves your shot if one is currently on the screen.
Line 118 checks to see if the fire button has been pressed, and if it
has, and there is no current shot on the screen, starts a shot on its
way.  Line 120 sets the whole loop in motion once again.

Lines 130 to 275 contain the DATA for the sprites.  Take extra care to
enter these lines accurately.  A mistake in these DATA statements will
cause problems with the sprites on the screen.

Lines 300 to 310 move your shot on the screen.  FD is the variable for
fire direction.  Value 1 moves your shot to the left, value 2 moves it
straight up the screen, and value 3 moves your shot to the right.
Collision checks are made in lines 320 to 530.

The explosion for the first asteroid is POKEd onto the screen by lines
550 to 565.  The second asteroid’s explosion is handled by lines 570
to 585.  The explosion of the space ship is controlled by lines 700 to
720.

The end routine is held in lines 750 to 800. The colourful title
sequence is in lines 900 to 2220.  The sound routines are in lines
3000 to 3220.

Lines 4000 to 4050 are the routine which advances the game to the next
level of difficulty after ten asteroids have been hit.  The final
lines, 4100 to 4200 turn off the sound channels.
