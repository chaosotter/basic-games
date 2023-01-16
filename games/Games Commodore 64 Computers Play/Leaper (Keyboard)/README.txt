Leaper (Joystick)

Leaper is an exciting game which uses programmable characters to
produce a fast-moving graphics game which requires a high level of
skill to play successfully.

The object of the game is to control a bouncing man and break 21
balloons in the shortest possible time.  The man jumps up from
platforms near the bottom of the screen and can be made to jump
straight up, left or right and he can be moved slightly to either side
while he is in the air.

There are two listings for this game.  The first one is for a
joystick-controlled game in which the man is moved left and right.  If
you don’t use the joystick to bounce the man straight up in the air
from time to time, he will bounce lower and lower until he eventually
stops.  The second version of the game is for keyboard operation.  In
this version the "A" key and the "D" key move the man left and right
respectively and the "W" key makes him leap straight up.

There are nine levels of difficulty in Leaper.  On each level the
platforms are placed in different positions and are of varying widths.

At the beginning of the game, you are asked which level of difficulty
you wish to try.  There is also an option for the computer to select a
level at random.  After entering the level you require, there is a
short delay while the character set is defined.  The screen will then
clear and be set to black with several platforms and a number of
balloons floating in the air.  The leaping man enters from the left
hand side of the screen and jumps off the top of the platform.  The
game is on and it is now up to you to control the leaper.

Lines 10 to 12 PRINT the title screen and ask for the level of
difficulty.  Line 13 sends the program to the routine in lines 500 to
570.  This routine takes the character set out of the ROM and POKES in
the programmable characters.  Line 14 clears the screen and calls up
the routine in lines 600 and 601 which initialise the sound values.

Lines 15 to 20 call up the required level of difficulty and PRINT the
platform on the screen.  You will see these statements as rows of the
the letter "D" in the program listings.  They appear on the screen as
a solid platform.  Line 25 then PRINTs the balloons into
randomly-selected locations.  Line 26 then calls up the routine in
line 250 to 280 which sends the leaping man out onto the screen.

Line 30 POKES a blank space into the last location occupied by the
man.  This gives the effect of continuous movement and prevents more
than one leaper from appearing on the screen at the same time.

The joystick (or keyboard) input is read by line 31.  Line 32 calls up
the sound routine which provides the "beep".  This routine is in line
620 to 630.

Lines 35 and 36 control the left and right movement of the man while
he is in the air.  The two lines act on the input and add .1 to the
value of X.  This means that after 10 such value changes the man will
alter his position across the screen (the X axis).  Lines 40 to 44
control the vertical movement of the leaper.  Line 45 checks to see if
the man has hit the balloon.  Line 50 POKES the leaper onto the screen
and line 52 sets the man’s color.  Value one sets him to white.  You
can make him any color you choose by altering this value.

Line 55 stops the leaper from falling off the screen and line 58
checks to see if he has missed a platform.  His jumping height is
checked and limited in line 60.  Variable LMT is the limit to which he
is allowed to jump.

Line 90 goes back to the start of the main program which begins at
line 30.

The sound of the popping balloon is called up by the routine in lines
100 and 105.  These lines also POKE the explosion on the screen and
increment the variable HIT.  The character used for the explosion is
actually an asterisk from the normal character set.  Used in this way
it is very effective.

Lines 150 to 160 control the direction of the leaper.  LD is the
variable and value one is for left, value 2 for up and value 3 for
right.  These values are used to control the direction the man bounces
in when he leaves the platform.  The values of LD are set in lines 210
to 220.

Lines 180 to 190 PRINT the score after the 21 balloons have been burst
and the game is over.

The routine in lines 200 to 220 is called up when the man jumps up
from the platform. It uses the variable LD to control the direction of
the bounce.  The starting routine is handled by lines 250 to 280 and
lines 300 to 315 control the failure messages.

The platforms for the different levels of difficulty are contained in
lines 400 to 480 and are put on the screen using PRINT statements.

Leaper is a fun game to play and should give you hours of
entertainment.  The program was written by William Leader.
