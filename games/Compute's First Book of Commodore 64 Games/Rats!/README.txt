RATS! 

  by Mike Steed
  64 Translation by Gregg Peele

This impressive game makes you feel that you are inside a maze, not
just seeing it from above.  Three-dimensional views appear as
hallways, doors, and corners as you struggle to find the way out.

You must find your way through a maze displayed from a rat's eye view.
After you have solved the maze, the program displays the top view and
traces your steps.

First, you are asked what maze size you want, up to 15 by 15 (you may
wish to change the DIM statement in line 49 -- add two to the largest
dimension you want -- and line 43).  Line 45 checks to see if the
machine code has been POKEd in, so you have to wait for that only the
first time.

The space bar is used to move forward, and the J and L keys are used
to turn left and right, respectively (turning doesn't change your
location; it just gives you the view in another direction).  The M key
will display the top view of the maze, mark your position, and tell
you in which direction you are headed.

There are five machine language routines in "Rats!" LINE, as its name
implies, draws a line; this routine is similar to Applesoft's HPLOT TO
or Atari BASICs DRAWTO command.  PLOT sets the hi-res cursor to the
position from which the next line is to be drawn, and plots that point
on the screen.  The COLOR routine fills the screen with color.

INIT removes everything that is not a letter or number from the screen
(thus the quarter-square graphics are erased, but not the MOVE XX at
the bottom of the screen), and sets all the variables used by the
other routines (locations 826-837) to zero.

SCR either loads or saves something to or from the screen.  This
routine is used to save the screen to memory after the top view of the
maze has been displayed the first time, and from then on is used to
display the maze almost instantly, so you have to wait only once.

Typing in the Programs 

Whenever you run Rats!, you must prepare the computer by first running
Program 1.  Tape users should not enter line 180; likewise, disk users
should not enter line 190.

Program 1 will automatically LOAD and RUN Program 2.  Therefore, it is
necessary for tape users to SAVE Program 2 immediately following
Program 1, and disk users should SAVE Program 2 on the same disk as
Program 1, using the filename Rats.
