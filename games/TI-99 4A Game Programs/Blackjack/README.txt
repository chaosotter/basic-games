BLACKJACK

Since the home computer became popular, the game of Blackjack has been
programmed many times and in many ways for each and every model.  For
our purposes, it would be more appropriate to call it the game of
twenty one, since cards are not actually used, having been replaced by
the numbers 1 through 11.  As in the card game, the idea is to get a
number combination that will result in a maximum of 21.  If you go
over this figure, you're busted.  The player with the highest score
under 21 is the winner.  In this game, there is only one player, at
least of the human type.  Here, the computer is the dealer and, of
course, a tie automatically goes to the dealer.

This program does not use an array to hold 52 different numbers in
order to simulate a card deck.  Instead, it uses random number
generators to output numbers from 1 to 11.  Therefore, the odds must
be calculated in a different manner than when playing Blackjack.  In a
standard card deck, there are four of each number and/or face card.
Naturally, if the dealer is displaying a queen and you have a queen
showing and one face down, there is little likelihood that you will
draw the fourth and final queen, or that the dealer will already have
it face down.  Of course, the other face cards count 10 as well, but
there is even less of a chance of you actually getting the last queen.
The computer version of this game makes no distinction between the
different suits and types of face cards.  It represents them all by
the number 10. However, there is a theoretically infinite number of
tens in this game, and the same goes for every other card.  Each
number is chosen from between 1 and 11 by random chance, so you can
never run out of our representative face cards or any other number.

Other than these differences, the game is readily played by anyone who
already knows how to play Blackjack.  Each time the program is run,
you are automatically assigned two numbers and their total is given.
You will also be told the value of one number the computer is holding.
You may then opt to take a hit or pass.  If you go over 21, the screen
clears, and the dealer is declared the winner.  This program will also
test for Blackjack by you or the dealer, or by both at the same time.

Again, this program is a modification of one presented in another TAB
publication, but it has been completely rewritten for the TI-99/4A and
tested on this same machine.  The modifications include getting rid of
statements and functions not applicable to TI BASIC, and arranging the
display to fit the 32-column TI-99/4A format.  In making such
conversions, it is often necessary to rewrite many if-then lines.
Many of these execute separate statements on the same line, depending
on the if-then test.  This is not permitted in TI BASIC (it is in
Extended BASIC), so an if-then line must always branch to another
line.
