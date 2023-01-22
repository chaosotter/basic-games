Ghostie

In this game you are the fearless warrior charged with the difficult
task of keeping the nasty ghosties out of the grave-yard.  You must
prevent the red ghost from gaining safety amongst the headstones.  If
you kill *any* of the ghosts you *stop* the red ghost.  You will score
more points for *killing* the red ghost but he is harder to fight than
the others.  You can move your warrior all around the screen by using
either the keyboard or the joystick.  To destroy a ghost you must
press the fire button (or the space bar in the keyboard version) just
before you engage the ghosts in combat.

The first listing of the game is the joystick version and the second
listing is for the keyboard.  When playing the keyboard version the
"F" key moves your warrior up the screen and the "V" key moves him
down the screen.  The "J" and "K" keys are for left and right movement
respectively.  To kill a ghost, use the space bar.

The game can end in any one of three ways.  The ghosts can kill you,
the red ghost can get past you into the graveyard or if you stray into
the top left hand corner of the screen (where the ghosts appear) you
will be zapped.

When you RUN the game, after choosing one of four levels of
difficulty, the screen clears to black and the game is on.

The graveyard is PRINTed at the bottom of the screen, your warrior is
somewhere in the middle and the ghosts begin to enter from the top
left hand corner of the screen.

The initialisation routine is contained in lines 2 to 22.  The sprites
are set up by lines 13 and 195 and 197.  These sprites are used for
the warrior and the two ghosts.  The warrior is a particularly good
sprite and looks great on the screen.

Line 126 reads the joystick input (or the keyboard input).  The score
is worked out in line 27 using the value of TI$, the internal clock.

Lines 28 to 35 use the value from the input to change the X and Y
value which are used to POKE the warrior sprite onto the screen.

Lines 36 to 39 are to make sure that the warrior stays on the screen
and are valuable as safeguards.  It is always agood idea to put such
safeguards into a program which uses moving graphics.  This prevents
the values in the POKE statements leaving the screen memory locations
and getting in with other memory locations.

The lines 41 to 55 check to see if either of the ghosts is in a direct
line with the warrior and if so, we then go down to the routine in
lines 300 to 449 where the ghosts are moved in to follow our man.  If
the ghosts aren't in line with him, lines 59 to 69 move the red ghost
around the screen at random.

Line 70 looks to see if the man has wandered into the top left hand
corner of the screen and, if he has, 'zaps' him.  This prevents a
player from sitting there and waiting for the ghosts to appear.

The sprites are POKEd into the screen memory locations by lines 100
and 105.  Lines 119 and 120 check for a collision between sprites.
Lines 130 and 150 look to see if the fire button has been pressed (or
if space bar has been hit) before the collision.  Line 160 PRINTs the
current score and then goes back to the start of the game loop.

Lines 200 to 275 contain the DATA for the sprites.  This must be typed
in very carefully.

The lines 450 to 452 test to see if the fire button was pressed during
a collision.  If it was, lines 460 to 480 PRINT up the message that
the ghost was destroyed and then start off two more ghosts.  If it
wasn't, lines 500 to 539 PRINT the message that the man was beaten and
tell you your score.  You are also given the option of another game.

Lines 40 to 545 re-initialise the program for a new game.  Lines 547
to 550 end the whole program if you wish to stop.

If the red ghost reaches the graveyard, lines 1000 and 1100 tell you
that you were beaten and call up the end routine.

The opening sequence which asks for the level of difficulty and then
clears the screen and PRINTS the graveyard, can be found in lines 3000
to 5200.  Ghostie was written by William Leader.
