Spotlight

Here we have another great clever program written by William Leader.
You are a guard on the prison planet Uriel.  This harsh, bleak planet
is being used to hold a vicious band of space pirates.  You are on
duty in your guard tower the night the pirates plan to break out of
the prison, climb the prison wall next to the space port and steal a
ship to leave the planet.  Your duty is to prevent the prisoners from
reaching the wall.  You must use your spotlight to patrol the pitch
black yard and, if you see an escaping prisoner, fire your blaster to
prevent him reaching the wall.

The game can be played with either a joystick or by using the
keyboard.  When you are using a joystick, the fire button fires your
blaster.  In the keyboard version of the game, the "K" key moves the
spotlight up the screen and the "M" key moves it down screen.  The "Z"
and the "X" keys move it left and right respectively.  The space bar
fires the blaster.

There are five levels of difficulty in the game.  Level one is the
easiest and level five will provide a real challenge for the best of
the arcade champions!  The level of difficulty relates to how fast the
escaping prisoners move.  After you have stopped twenty prisoners from
escaping, you will automatically progress to the next level.

When the program is RUN you will be asked to indicate which level of
difficulty you wish to play.  After you have answered this question
you will be asked if you will use a joystick or the keyboard.  The
screen will then go black, the wall will be printed across the top of
the screen and the beam from your spotlight will appear on the screen.

There will then be a short delay while the program organises itself.
A siren will then sound, warning you of an escape attempt and, in the
top left hand corner of the screen, you will be shown how many
prisoners are escaping.  It is a good idea to keep a count of the
number of prisoners you have stopped as this prevents you from
accidently missing one and allowing him to escape.

You must start searching for the escaping pirates.  When you find one,
press the firing button on your blaster to stop him.  You will see
that there are other objects in the prison yard as well as the
prisoners.  Don't let them distract you.  You will have no trouble
recognising the pirates, they are dark shadowy figures who carry long,
curved knives.  They are very dangerous!

Lines 1 to 24 initialise the variables and set up the parameters for
the program.  They also ask for the level of difficulty and whether or
not you will use a joystick.  Line 21 prints the wall.

Line 25 reads the joystick input. Line 26 goes to the routine which
advances levels.  Here a check is made to see if a new level has been
reached and provides the new variables and tells you the next level
has been reached, if required.

Line 27 calls up the routine which reads the keyboard input if the
keyboard is being used.  Lines 30 to 37 act upon the joystick values,
by altering the variables which are used to control the screen
position of the spotlight.  If the fire button has been pressed, line
38 calls up the sound routine.

Lines 40 and 41 enable the sprite which is used for the spotlight to
cross the 255th screen location and move all the way to the right hand
edge of the screen.  Lines 42 to 45 make sure that your spotlight beam
stays on the screen.

Line 46 checks to see if there is an escape in progress and if there
isn't, goes and starts one.  Lines 50 to 53 move the escapees randomly
up the screen.  Line 60 checks to see if prisoner number one has
escaped and lines 61 to 63 make sure that the prisoner stays on the
screen.  Lines 65 to 68 perform the same function for prisoner number
two.

Lines 100 and 110 POKE the sprites onto the screen and lines 118 and
120 check to see if a prisoner has been hit.  Line 130 sends the
program around again.

Lines 200 to 280 contain the DATA for the sprites.  We check to see if
a prisoner has been killed in lines 400 to 420.  If he has, he is
removed and is replaced by lines 430 and 435.

Lines 450 to 460 check to see if the prisoners have staged a breakout.
Lines 465 and 475 warn you of the escape.

The buildings are printed on the screen by lines 500 to 590 and the
sound routines are contained in lines 600 to 650.

Lines 800 to 870 tell you that a prisoner has made it over the wall,
they also advise you of your score and ask if you wish to play again.

Lines 900 to 920 advance the program to the next level of difficulty
and the keyboard reading routine is in lines 1000 to 1015.
