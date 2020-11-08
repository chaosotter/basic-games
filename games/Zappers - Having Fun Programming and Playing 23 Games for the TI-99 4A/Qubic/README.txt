QUBIC

If you were impressed with the performance of "Tic-Tac-Toe," you will
probably be flabbergasted at this game.  Although it is simply a more
sophisticated version of "Tic-Tac-Toe," a whole new dimension is added
-- for a total of three.  Yes, "Qubic" is the game of
three-dimensional "Tic-Tac-Toe."  The board is a 4 x 4 x 4 cube and
instead of requiring three in a row to win, four in a row are needed
-— any straight line of a length of 4 will do.  Since the computer
cannot display three-dimensional objects, we split the board into the
four levels and show each one side-by-side on the screen.  Picture the
leftmost level as being the one at the bottom and the rightmost at the
top.  Each level is given a number from 1 to 4.  Within each level, a
row and a column must be specified by a number (also between 1 and 4).
The line which must be typed is therefore of the form LEVEL, ROW,
COLUMN.

There are more ways to get four in a row than the ways to get three in
"Tic-Tac-Toe."  The easiest way to point out these differences is to
use the coordinate system we have just defined, so that

    1, 1, 1
    2, 2, 2
    3, 3, 3
    4, 4, 4

is a winning series of 4 in a row and, similarly, so is

    1, 1, 1
    2, 1, 2
    3, 1, 3
    4, 1, 4

and

    1, 1, 1
    2, 1, 1
    3, 1, 1
    4, 1, 1.

If the necessary powers of visualization seem to escape you, try
running the program —- it is much easier to see how it works by
playing and getting a feel for it than by reading about it.
