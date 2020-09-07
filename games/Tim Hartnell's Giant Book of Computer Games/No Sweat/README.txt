NO SWEAT

The name of this game -- NO SWEAT -- comes from one of the early
English names for the game from which this is derived.  Known as
"sweatcloth," the game, when first played in England, used three dice
within a wooden "shoe."  The most common variation of this game is now
seen in US gambling casinos, where it is called "birdcage," because of
the equipment which is used.

In birdcage, three dice are held within a metal cage which can spin
about a central axis.  Once bets have been laid, the cage is rotated.
This is supposed to ensure that the dice are spun properly, as they
are not actually touched by a casino operator.

Betting in birdcage, and in NO SWEAT, is fast and simple, and despite
the fact that you might think the odds are in your favor as a player,
you'll quickly learn how easy it is to lose your shirt.

You place a bet of a specified amount (see lines 50 and 60) up to the
size of your stake (held by the variable M, for money-see lines 30 and
250) and then choose a number between one and six.  The amount of your
bet is subtracted from your stake, and then the three dice are rolled.
For each one which lands showing your number, you'll have an amount
equal to your bet returned to you.

As you can see, this means you have to throw one die with your number
showing to break even, and two to actually make some money.  The need
to throw the same, chosen number twice is what gives the casino such a
good edge in this game.

After the random number generator is seeded in line 20, and the money
variable (M) is set to 30 for you in line 30, the computer goes to the
subroutine from line 240 which prints up:

    *********************
    Your stake is now $30
    *********************

After this, the game gets underway.

Line 50 asks you how much you'd like to bet, and the variable A is
assigned to your choice.  This is compared with the money you actually
have (in line 60) to see if you are trying to bet more than you have
on hand. Having passed that hurdle, your bet is subtracted from your
stake in line 70 and then the computer asks you (line 50) to enter
your bet.

The C loop, from lines 100 to 180, rolls the dice and compares each
roll with your number, reporting to you after each roll.  Your
winnings (if there are any) are also added in this loop.  After each
round of the game, your money (M) is compared with 250 (if you've got
more than $250 you've exceeded the house limits and are therefore
excluded from future play) and with zero (those who have no money are
not allowed to play further).  If, however, you do not have more than
250 nor less than zero, you're able to continue playing.
