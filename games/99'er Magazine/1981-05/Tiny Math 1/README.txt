TINY MATH 1

  by W. K. Balthrop

The program starts by asking whether speech is desired.  It then gives
a child a choice of five different shapes to use for the screen
"dots."  The color of the shape will always be a dark red, but the
background color of the screen can be changed.  The parent or child
then selects the range of dots to be displayed from two to one
hundred.  An example of this would be: Lowest possible number of
shapes = 10.  Highest possible number of shapes = 20.  This would
cause a number of shapes from 10 to 20 to appear randomly on the
screen.  The program then asks how long the shapes stay on the screen,
from 1 to 7 seconds.  If desired, this time range can be altered by
changing the maximum time allowed in line 1000 of the program, or
changing line 1610 for the time delay control number.

Before the exercise starts, the program offers a choice of either
going into a teaching mode, or directly into the quiz mode.  The
teaching mode will cycle 25 times.  The shapes will be displayed in
the same fashion as in the quiz mode, but will remain on the screen
with the exact number of dots indicated at the top.  They remain there
until a key is pressed -- giving a child adequate time to observe the
dots.

An important aspect of this program is that it will flash all of the
shapes on the screen at th e same time, this eliminates the problem of
counting the shapes as they would appear, one by one.  This is done by
using CALL COLOR to make the shapes invisible.  At the time the shapes
are to appear, the CALL COLOR command is used to make them red.  By
the way, it's important that the child doesn't have the time to count.

In coding the program, I was faced with the problem of keeping the
shapes centralized on the screen without crowding them.  There
shouldn't be two shapes touching each other, for that might be
confusing; they shouldn't be spread out all over the screen either.
It was necessary to do a lot of checking for adjacent characters, and
give pattern size limits, depending on the number of shapes.  All of
this slows things down a little, so don't be surprised if it takes
some time to display the shapes when there are a lot of them used.

Another feature is the re-testing of missed guesses.  Approximately
every other display will be one that the user has already missed --
providing that he or she has missed any.  When that number has been
guessed right, it will be eliminated from the wrong guess storage.
