Skiing

This program by William Leader gives you the opportunity to try out
your skills as a downhill skier.

The program will give you a choice of a slalom course or a jumps
course to provide variety.  The object of the game is to complete the
course with as few collisions, and taking as many jumps or flag gates,
as possible.  Your final score is based on your time plus penalties
for missed jumps or gates and collisions.  So, of course, the lower
the score the better you've done.

On both the slalom and the jumps course, your skier will appear on
screen at the start of the game standing underneath the starting
banner.  Use either the joystick or the relevant keys to move him into
the starting location you require and then press the fire button (or
the space bar) to start the run.

On the slalom course, you will be required to avoid hitting the trees
dotted all over the place and to steer your man through the flag
gates.  You can use the controls to move your skier to the left and
right and up and down the slope.

On the jumps course the controls work just the same as on the slalom
course, but to successfully take your man over one of the jumps the
fire button (or the spacebar) must be pressed just before you reach
the jump.  On both courses the screen will briefly flash dark blue to
indicate that the obstacle has been negotiated safely.

There are two listings of the game.  The first is the
joystick-operated version and the second is for a keyboard.  In the
keyboard version the controls are:-

    "K" = up 
    "M" = down 
    "Z" = left 
    "X" = right 
    Spacebar = jump and start game. 

Lines 1 to 11 are an initialisation routine.  They allow you to select
the type of course and the number of people who are going to play the
game.  Line 12 provides the prompt message for the start of play.
Lines 13 to 16 PRINT up the start line using graphic characters from
the keyboard.  Lines 21 to 24 are further initialisation routines.

The two FOR statements in lines 25 and 26 are the start of the two
FOR/NEXT loops which control the frequency of the flags and the jumps
during the running of the program.  Line 27 reads the joystick or
keyboard input and line 28 controls the jumping routine.  If a jump is
in progress the routine which changes the screen location values in
the next few lines is bypassed.

Line 29 uses the value of Tl$, the internal clock, to PRINT the score
on the screen.  Lines 30 to 38 use the input to change the values
which are used to POKE your skier onto the screen.

Line 29 is also part of the routine which controls the jumping.  Lines
40 to 60 are safeguards to prevent your skier wandering off the screen
during the course of the game.

The sprites used in the game are POKEd onto the screen by lines 100 to
108.  The lines 114 to 116 check to see if the fire button or spacebar
has been pressed to start the game.

Line 117 reads the value of the fire button or the spacebar and
creates the jump if it has been pressed.  Lines 118 and 119 check to
see if the skier has passed the jump.  Line 120 checks for a
collision.

Lines 122 to 168 move the trees smoothly up the screen and
differentiate between the slalom and the jumps course.  Line 170 sends
us around the loop again.

Lines 180 to 186 call up the new flags or jump and line 190 calls up
the end routine when the course has been run.  Lines 195 to 340
contain the DATA statements for the sprites. The sprites are
initialised in lines 4000 to 4060.  The crash routine is in lines 5000
to 5100. This is called up by line 120.

The finish line routine uses graphics characters from the keyboard to
PRINT up the display.  The crowd is made up from the symbols on the
"W", "Q" and "E" keys.
