COMMODORE CHECKERS

Here is a simple Checkers program which you will find is a lot of fun
to play.  The game follows traditional rules except that there is no
penalty for refusing to capture an opponent's piece.  However the
computer will jump one of your playing pieces whenever it can.

The computer's pieces are the solid circles playing down from the top
of the board and your pieces are the CLUB symbols playing up from the
bottom.  Kings are made automatically.  The computer's kings are shown
by a diamond shape and yours by the letter K.

To move a piece, enter the location of the piece you wish to move when
the computer asks "MOVE FROM".  This is entered as a letter followed
by a number, such as G6 . Likewise enter the location of the square
you wish to move to when the computer asks "MOVE TO".  You will see
that the board is printed on the screen with the letters ABCDEFGH
across the top and bottom and numbers down the side to assist you.

After you have jumped one of the computer's pieces, you will be asked
"JUMP AGAIN (Y/N)".  Enter Y if you can jump again and N if you can't.

There is no mechanism to prevent you from cheating but there is no
point in doing so.  A piece which is moved illegally will confuse the
program and such a piece may tend to disappear from the board
entirely.

The computer always has the first move.  The number of pieces captured
is shown above the board after each turn.  The game ends when either
one of you has lost all his pieces or if the computer decides it is in
a hopeless position and concedes the game.

Strategy is not the computer's greatest virtue, but it will put up a
spirited defence when under attack and it will be very reluctant to
move into danger.

The routine from line 950 to 1030, called up by line 50 at the
beginning of the game, sets up the starting conditions.  It sets up an
array which will hold the information required for the playing board.
Line 960 assigns the value of 9 to all the elements of the array.
This value represents the squares which aren't used during play, that
is the black squares.  The next line, 970, reads the contents of the
DATA statements into 32 elements of the array.  These numbers
represent the 32 white squares used for playing the game.  This
Checkers program uses a system of numbered squares based on a system
devised by A. L. Samuels.  The white squares are numbered from the top
left hand corner down to the bottom left hand corner.  The top row is
numbered 72, 71, 70, 69 and the next row is numbered 66, 65, 64, 63.
The next row is 59, 58, 57, 56.  The next 53, 52, 51, 50 and so on.
This numbering system means that the computer can keep track of the
moves by the numerical difference between the starting and finishing
square.  Moving up and to the right always leaves a difference of plus
six, moving down and to the right minus six, moving up and to the left
gives a difference of plus seven and down and to the left, a
difference of minus seven.  In this way any move on the board will
result in a predictable number which makes the whole system very easy
for a computer to handle.

The DATA statements consist of pairs of numbers.  The first two-digit
number, e.g. 72, represents the number of a square, the second number
the value of the square.  The value of minus one means that the square
is occupied by one of the computer's playing pieces, a zero means it
is empty and the value of plus one indicates the human player's
pieces.  The computer's kings are minus 2 and the human player's kings
plus 2.

Subroutine 740 to 920 uses this information to print the board on the
screen.

The routine called up by line 740 converts the values of the squares
into CHR$ codes to print up the correct piece on the board.  For
instance CHR$(32) is a blank space and CHR$(113) is a solid circle
used for the computer's playing pieces.  By changing these values you
can alter the shapes of the playing pieces.

Subroutine 2000 converts the CHR$ codes back into the original values
so that they can be used in the calculations for the computer's move.

The computer uses lines 390 to 405 to check the safety of its move.
If after 1000 checks (line 430) it can't find a safe move it will then
concede the game.

Lines 130 to 180 check to see whether the computer can jump one of
your pieces.  Lines 480 to 490 accept your move.  Line 490 clears the
information from the screen ready for the next turn.

Lines 540 to 576 check to see which square you have moved from and the
new square you have moved to.  They convert the computer's numbering
system to the one used to display the square numbers on the screen.
