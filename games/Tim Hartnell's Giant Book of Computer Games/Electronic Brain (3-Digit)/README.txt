[Note: This program does not work properly and sometimes hangs.  I
believe this to be a fundamental logic error.]

ELECTRONIC BRAIN

ELECTRONIC BRAIN is an attempt to write a program which would work
toward the answer to a problem, in an apparently intelligent manner.
The computer is attempting to solve a problem of the type where you
think of a numerical code, and the computer tries to guess it.  The
feedback you give its answers are as "whites" and "blacks," where a
white is given for a digit which is correct, but is in the wrong
position in the code, and a black is given whenever there is a correct
digit within the code.

The problem is not totally straightforward, as the computer does not
know, for certain, which digit produced which result.  I wrote two
versions of this program, one to solve three-digit codes, and a
modification of that program to solve four-digit ones.  It works in a
simple manner (although implementing the relatively simple idea behind
the program was not particularly easy).  Every time a digit appears in
a code which is awarded a black, every digit within that code is
weighted so that it appears more often in future guesses.  The more
blacks in that particular code, the higher the weighting each code
gets.  A much smaller weighting is awarded if the code gets one or
more whites.  Any code getting neither a black nor a white leads to
all the digits within that guess being totally removed from future
consideration.

As I said, the three-digit version is the basis upon which the
four-digit program was written.  Enter the three-digit one first, and
then save it in that form, before making the needed conversion to make
it work as a four-digit program.  Whereas the three-digit version
works reasonably well, and reasonably quickly, the four-digit program
grinds almost to a halt toward the end, as it tries to generate codes
which (a) reflect the weighting that previous answers have produced,
and (b) are not codes which have been previously suggested in that
particular run.
