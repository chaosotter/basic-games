UNDER 'N' OVER

UNDER 'N' OVER is a computer adaptation of the dice game usually known
as "Under and Over Seven."  In this game, you bet on the likelihood of
the total of a pair of dice landing so that the total is:

    * less than seven;
    * exactly equal to seven; or
    * greater than seven.
    
Again, this is a game which -- at first sight -- seems to offer pretty
good odds to the player.  However, if you played the game forever,
with a pair of perfect dice, you'd find your losses would outweigh
your wins by nearly 17%.

The program structure is not hard to follow.  After seeding the random
number generator in line 20 and clearing the screen in line 30, the
computer sets your starting stake (again called M for money) to 30
(for $30).  Line 50 sends action to the subroutine from line 450 where
your current money is printed up: "You now have $30" before returning
to line 60 where the delay subroutine (lines 470, 480 and 490) is
called.

Lines 70 and 120 ask you to place your bet, giving you the key for
entering it (press A to bet under seven, B to bet on seven and C to
bet on a total greater than seven).  Lines 130 and 140 read the
keyboard using INKEY$, rejecting (line 140) any input which is not A,
B or C.

Having received a valid choice, the odds are printed up by lines 150
to 180 and then line 200 asks you to enter the amount of your bet.  Of
course, you can't bet more than you have (not in this game, anyway) so
line 220 checks your bet (A) against your money (M) and if you haven't
got enough prints up: "You haven't got that much!"  The next section
rolls the dice, assigning random values between one and six to
variables Band C, and adding them to produce total D in line 280.  You
are told of the total by line 300.

The outcome

This is determined by the routine from lines 310 to 350 where a loss
is first assumed (line 310, with variable W, for "win," assigned to
the negative of your bet).  This is changed -- if needed -- into the
correct amount for a win if one has, in fact, taken place.  You can
see you get paid four times your bet for correctly specifying the dice
will land with a total of seven (line 320) and even money for either
over or under seven (lines 330 and 340).

Lines 370 and 380 tell you about your win (or loss) and then line 420
checks that you still have some money in hand.  If you have, you are
offered a new round of the game.  If not, you are dismissed with a
certain severity.
