Many, if not most, two person games that are played on a computer are
based on fixed rules that assure that if one player uses these rules
and a rational playing strategy then that player wins.  If both
players use these rules and rational playing stategies then the winner
is usually determined by who goes first.  Tic-Tac-Toe, Batnum and Even
are examples of games of this type.

A more interesting type of game is one where the playing strategy is
of mixed type.  This means that the best move, in most cases, depends
on what moves have already been made a player can only determine the
probability of the best move.  Standard card games (Bridge, Poker
etc.) are usually games of mixed type.

Most two person games of mixed type are either so complicated that the
best strategies are not known or they are so simple that they are not
interesting to play.  The game of Guess It is an exception to this
pattern.  The element of bluffing, which plays a central role in this
game, makes the game interesting.  The optimal strategy for playing
this two person game of mixed type has been determined by Rufus
Isaacs.[2]

This program simulates the game of Guess It.  The computer plays
according to the optimal strategy determined by Isaacs.  Lines 1740 to
1930 give instructions on how to play the game.  The number of numbers
in each hand is determined in line 70.  (It is set at 5.  This is the
value Isaacs used in his analysis of the game.)  To change the number
of numbers in each hands only the value of H in line 70 needs to be
changed.

To play the game in an optimal way decisions need to be made baased on
the win probabilities P(m,n) where m is the number or numbers in your
hand and n is the number of numers in your opponents hand.  The matrix
of these win probabilities is computed in lines 80 to 180.

To match the optimal strategy of the comuper some type of randomizing
device based on the win possibilities P(m,n) is required.  (See (1)
and (2) for descriptions of how to make and use such devices.  These
devices only work when there is a maximum of 5 numbers in each hand.)

The decision as to whether or not a number asked about by a player was
a bluff is made in line 750.  The decision to bluff or not when asking
about a number is made in line 940.

The program gives the player the option of going first.  The win
probability, P(5,5), in this case is .538.  Therefore the player going
first has a slightly better than even chance of winning assuming that
both players use the optimal strategy.

There are two reasons why bluffing is impotrtant in any strategy.  If
a player never bluffs, then any "ask" about a number that is not in
the opponent's hand will result in a loss since the other player will
know that it must be the down number.  A successful bluff can lead the
other player to make an incorrect guess of the down number.

The program and description were written by Gerard Kiernan of
Manhattanville College, Purchase, NY.

References

1. Mathematical Magic Show. Martin Gardner. Alfred A. Knopf, 1977.

2. "A Card Game With Bluffing." Rufus Isaacs, The American
   Mathematical Monthly, Vol. 62, February 1955 pages 99-108.
