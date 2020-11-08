MINDSTORMING

The next program is a sophisticated TI-99/4A variation on the popular
logic game called "Mastermind."  In our version, a numeric code is
used in place of colors.  For the benefit of those who have not yet
encountered this game, let it be said that it demands a high degree of
logical deduction -- more so than you might believe.

The game is played as follows: One player (in this case, the computer)
randomly picks out a code number consisting of a series of digits
whose length is requested at the outset.  The object of the game is
for the other player (in other words, you) to match the code, digit
for digit.

The game proceeds in turns.  With each turn, the player makes a guess
as to the code and is given some helpful information about the guess.
First, the player is told the number of digits that are correctly
matched and that are in the correct position.  Then, the player is
told how many digits are correct -- but that are in the wrong
position.  This information is displayed under the abbreviated titles:

    RD/RP (right digit, right position)

and

    RD/WP (right digit, wrong position)

Based on this information, a good player can arrive at the correct
answer in a surprisingly short number of moves.  The following game
illustrates some of the strategies used and also how to play.

    Sample Game: 

    # OF POSITIONS (3-10): ?3
    # OF DIGITS (3-10): ?4

(The digits 1, 2, 3, and 4 are allowed -- assume the computer's
randomized code is 241.)

    TRY #   CODE   RD/RP   RD/WP
    -----   ----   -----   -----
      1     112      0       2
      2     221      2       0
      3     421      1       2
      4     241  (the winning move) 

If the above looks easy, try playing with ten positions and ten digits
(the 0 key is the tenth).
