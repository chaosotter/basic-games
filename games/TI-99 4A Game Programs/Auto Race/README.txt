AUTO RACE

This program is a complete auto race or drag race using on-screen
graphics.  Two miniature automobiles streak down a graphic racetrack,
speeding toward the finish line.  One car may move ahead and then fall
back again.  You never know until the last minute just which car will
win.  This display uses a lot of color and will be enjoyed by young
and old alike.  The top car is red and the bottom one is blue.  When
the race is over, the screen will display the results, and you are
invited to race again by pressing the enter key.

Figure 4-1 shows the screen setup.  When the screen is initialized,
the cars begin moving from left to right.  There is always a
photo-finish, in that the action freezes as soon as one car crosses
the finish line.  Sometimes, the race ends in a tie, and this is also
recorded on the screen.  Since there are two automobiles, two humans
can play, each taking a different race car.  This game also lends
itself well to single players.  Here, the human takes one car and the
computer is assigned the other.

The outcome of the race is randomly decided.  No player control is
necessary.  This may be thought of as a type of dice game or any other
game whose outcome is randomly decided.

This is certainly not a program of skill, so you won't be given a test
of your mental powers or even your reflexes.  It is one, though, that
can be enjoyed over and over again and can be played by persons of all
ages.

Many persons ask why only two automobiles are included rather than
four or more.  After all, this would change the odds considerably and
even allow for more players to take part.  Certainly, more automobiles
could be included, but probably at the expense of game enjoyment, at
least from a visual point of view.  The on-screen motion of the two
automobiles is accomplished by writing the images on the screen (one
at a time) and then erasing them (again, one at a time).  All of this
takes a short amount of execution time and even then, the motion of
the automobiles does not appear to be exactly continuous, as you can
actually see them being quickly written, erased, and then written
again.  If you added two more automobiles to this display, the
execution time within the loop would be nearly doubled.  This would
increase the flicker effect and the speed with which the automobiles
travel from the left to the right side of the screen would be slowed.
The machine is simply not fast enough to accomplish this type of
animation with reasonable visual efficiency, at least when using
BASIC.  The same can be said of most other home computers.  When
animation is to be produced in a highly efficient and professional
manner, the BASIC language is rarely used.  Such programs are normally
written in assembler or machine language.  Such languages are not
within the scope of this book, but are certainly available to those
programmers who want to go further on the TI-99/4A.
