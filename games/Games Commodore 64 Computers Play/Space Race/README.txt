Space Race

This short program creates a very challenging game, complete with
levels of difficulty.  You are the pilot of a V-wing space racer.  You
must race against the clock, flying a slalom course through blue star.
Each time you fly through a star gate your score is incremented.
After 30 gates have been passed or flown through the game ends and you
are given your score.

There are four levels of difficulty in this game.  Level four is for
beginners and level one is strictly for experts only.

After the title appears on the screen, you will be asked which level
of difficulty you wish to try.  When you have entered this, the screen
will clear and be set to black.  Your V-shaped space racer will be
positioned in the middle of the screen on the top row.  The game is
then on.  The "M" key moves your racer to the right and the "Z" key
moves it to the left.  Each time you press a key the racer moves one
space in the required direction.

The blue star gates will rush toward you and you must fly through the
blue area to score points.  After 30 gates have passed, you will be
shown your score.  The game also has a high score feature so that you
can work at improving your skills.

Lines 600 to 650 display the game title and ask you for your level of
difficulty.  Line 640 accepts your input and then we RETURN to the
main game.

Line 15 sets the starting position of your space craft across the
screen (the X axis).  Line 50 multiplies your selected level of
difficulty by four.  The screen is then cleared and set to black.

Line 120 POKES your V-racer onto the screen.  This is done by adding
the value of X to 1024, the value of the top left hand corner location
of the screen memory.  The rest of the line POKES a value into the
corresponding location in the color memory.

Line 130 adds one to our counter and then checks to see if the counter
is greater than a number picked at random between four and eleven plus
the value of A.  If it is, we then go to the routine in lines 200 to
220.  This routine sets our counter back to zero and then gives
variable D a value picked at random between ten and thirty.  The
variable E is incremented by one. E is used to count the number of
star gates passed.  When E equals thirty one, the game ends.

Lines 210 and 215 PRINT the star gate on the screen using graphic
characters from the "N" and "M" keys on the keyboard and several
reversed spaces.  The variable D, set in line 200, is then used to TAB
the star gate across the screen.

We go back to the main routine where line 135 POKES a blank space into
the current location of your space racer.  This makes sure that two
space racers don't appear on the screen at the same time when the
space racer is moving across the screen.

Line 140 GETs your input from the keyboard.  Lines 150 and 160 check
the keyboard input to see if one of the direction keys has been
pressed.  If so, one is added to, or subracted from, the value of X
depending on which key has been pressed.  Line 165 then POKEs your
space racer onto the screen again, in its new position if you have
pressed a key, or in its original position if you haven't.

Line 170 uses the level of difficulty to provide a delay loop, which
is, of course, longer for the easier levels.  This loop has the effect
of slowing down the program.

Line 175 calls up the routine in lines 300 and 320.  This routine uses
PEEK to check the values of the locations on either side of your
racer.  If it finds a reverse space, (value 160), this means that you
have flown through a star gate and your score is incremented.

Line 180 loops back to the start of the flight routine for another
pass.  Line 110, at the start of this routine, makes sure that a new
line is printed each time.  This keeps the star gates moving smoothly
up the screen.  The star gates appear to jump when they arrive on the
screen.  This is caused by three lines being printed instead of the
usual one.
