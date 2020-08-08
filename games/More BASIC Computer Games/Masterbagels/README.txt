This is a fascinating, general-purpose, deductable logic game.  It
rolls Bagels, Mastermind, bulls and cows, et cetera, into one general
deductive logic game.  If you want to play Bagels, set the inputs to
N,3,9 (N is the number of games you wish to play).  If you want to
play mastermind, set the inputs to N,4,6.  Of course, many of the
games that it plays are entirely new altogether such as N,7,4 or
N,5,5.

To make it into a really general-purpose game, you might want to put
in a modification in the digit selection routine (statements 300-320)
with a parameter that either allows or disallows duplicate digits.  As
it is right now, the game does allow duplicate digits so that, for
example, it could select a three digit number such as 223 or even 444.
Another change you might want to add is in statement 750; it sets the
maximum allowable trials for getting the answer.  You may find that it
is not giving you enough tries and you might want to increase the
vaalue of I.

Master Bagels was created by H. R. Hamilton and originally appeared in
Creative Computing, Jan/Feb 1977.
