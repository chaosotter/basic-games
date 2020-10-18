QUI VIVE

To be 'on the qui vive' means to be alert and watchful.  This game is
called QUI VIVE because to play it successfully you must always be on
the look out for winning situations.  The rules are very simple but
the program needed to implement them is anything but.  In fact, it
presents quite a challenge to a games programmer.

QUI VIVE was invented by Eugene de Wolf and is played on a square 5x5
board.  Each player has five checkers and must try to arrange them
into one of seven symmetrical patterns.  These are:

a horizontal line, e.g.:

   .   .   .   .   .

   o---o---o---o---o

   .   .   .   .   .

   .   .   .   .   .

   .   .   .   .   .

a vertical line, e.g.:

   .   .   o   .   .
           |
   .   .   o   .   .
           |
   .   .   o   .   .
           |
   .   .   o   .   .
           |
   .   .   o   .   .

a diagonal, e.g.:

   .   .   .   .   o
                 /
   .   .   .   o   .
             /
   .   .   o   .   .
         /
   .   o   .   .   .
     /
   o   .   .   .   .


a rectangular cross, e.g.:

   .   o   .   .   .
       |
   o---o---o   .   .
       |
   .   o   .   .   .

   .   .   .   .   .

   .   .   .   .   .

a skew cross, e.g.:

   .   .   .   .   .

   .   o   .   o   .
         \   /
   .   .   o   .   .
         /   \
   .   o   .   o   .

   .   .   .   .   .

a vertical wing, e.g.:

   .   .   o   .   .
             \
   .   .   .   o   .
                 \
   .   .   .   .   o
                 /
   .   .   .   o   .
             /
   .   .   o   .   .

a horizontal wing, e.g.:

   .   .   .   .   .

   .   .   o   .   .
         /   \
   .   o   .   o   .
     /           \
   o   .   .   .   o

   .   .   .   .   .

At the start of the game the board is empty and you and the computer
take turns to place checkers on it.  The positions on the board are
labelled like this:

    (5)   1   2   3   4   5

    (4)   6   7   8   9  10

    (3)  11  12  13  14  15

    (2)  16  17  18  19  20

    (1)  21  22  23  24  25

        (A) (B) (C) (D) (E)

To place a checker at any particular position simply enter the
appropriate coordinates: for instance for position 21 enter A1, for
position 12, B3, etc.  Your checkers are indicated by o and the
computer's by •.

If all ten checkers have been placed on the board and no one has won,
the game continues, with you and the computer taking turns to move
checkers to try and gain a winning position.  To move one of your
checkers you enter the coordinates first of its present position and
then of the position to which you wish to move it.

You must keep a look out for chances to make a winning pattern
yourself, at the same time making sure that you are blocking any
winning moves by the computer.

The program is one of the most interesting in this book.  It contains
a list of not only all 42 possible winning patterns but also over 100
particularly strong situations from which a player has a chance of
making either one of two winning patterns.  During the game the
computer monitors this list in the light of the situation on the board
and assesses what its best move is.

We advise you to play this game on an ordinary checkerboard against
one of your friends before you take on the computer.  You will soon
see what a superb game it is.
