CHEMIN DE COMPUTER

CHEMIN DE COMPUTER is based, as I'm sure you've realized, on Chemin de
Fer.  In this game, you and your computer take it in turns to roll
five dice, adding the pips up as you go.  You are aiming to get a
higher total than the computer.

However, this game is not just a simple "add the pips" one. Any die
which falls showing a five or a two must be thrown again, and your
total is just the final digit of the answer (that is, a total of 27 is
counted as 7, and a total of 13 is counted as 3).

There are three special totals -- 7 (a Natural), 8 (La Petite), and 9
(La Grande).  The names are only bestowed when the relevant total is
achieved on the first throw (i.e., the dice which came up with 5 or 2
have not been, and are not in this case, rethrown).  You (and the
computer) always stand on a 7, 8, or 9 thrown with the first toss of
the five dice.

If you look at the program listing, you'll see that after the random
number generator has been seeded in line 20, the screen cleared and
the game counter (GAME) and variables for your score (HS) and that of
the computer (CS) have been initialized to zero, the program goes to
line 330, where the game proper begins.

As in many other programs in this book, there is a delay loop routine
at the end of the listing which is called a number of times throughout
a game to improve the speed with which the game advances, and to give
you (in many cases) a chance to read on the screen what is going on
before the program races on, clearing the screen, and leaving you
quite unsure of exactly what has just happened.  In this program,
there are two loops, one of which is longer than the other, and which
also prints a couple of blank lines before returning to the main
program.

Line 330 calls a delay and then clears the screen before incrementing
the counter GAME in the next line.  You are told which game it is by
line 350 and then the computer announces that, because it is taking
the role of the banker, who always goes first, it will take the first
roll. The "roll the dice" subroutirie from line 70 is then triggered.
You'll see that the loop counter G is used (line 80) to set the
variable A to a randomly chosen value between one and six each time
through the loop.  If the die comes up with five or two (line 90) then
it is reset to zero, before the value is printed by the following
line.

The running total is clocked up on variable D, and then leading 159
digits are stripped from this (i.e., 27 is cut down first to 17, then
to 7) by line 150. The changing total is printed on the screen each
time.  After a delay the computer prints up "Total on the first roll
is..." and then checks (lines 180, 190 and 200) to see if one of the
special rolls has eventuated.

If so, a message to that effect is printed.  If not, the computer gets
to line 210 where it can see if any dice have to be rolled again (C is
incremented by one each time a 2 or a 5 is rolled, see line 90).  If
there are none which have to be re-rolled, the computer moves on to
line 410 to print out "So my final total is..."  If, however, C is not
equal to zero, then the computer runs through another loop (240 to
300) to throw those dice again.  Once again, any dice coming up two or
five are discarded (line 280).

Once the computer has had its roll, it is your turn to play.  Your
involvement, actually, is pretty small at this stage.  Once you've
pressed RETURN (lines 440 and 450) the computer takes over for you,
using the same routine near the beginning of the program to roll the
dice for you, and incrementing your total as it does so.

Once both of you have had your go, the computer then decides if it has
beaten you, or you have defeated it, or whether the two of you have
drawn ("Standoff').  The aim of CHEMIN DE COMPUTER is to win the
majority out of nine scoring games (and a Standoff game does not count
as a scoring game).

"Now the totals so far in Chemin de Computer are..." you are told by
line 670 and -- if nine scoring games have not been played -- the
computer makes some comment on the game ("Looks like I'm in front..."
or "And you seem to have the edge...") before returning to the main
program.

Once a total of nine scoring games has been detected (by line 700)
then the routine from line 750 comes into action.  "Well, old buddy,
we seem to have come to the end of the game..." the computer tells
you, then determines who has been the overall winner.

You're in good company when you play this game.  Baccarat, from which
Chemin de Fer was derived, was first introduced into France from Italy
in about 1490, during the reign of Charles VIII.  The Italian game was
called "Baccara."
