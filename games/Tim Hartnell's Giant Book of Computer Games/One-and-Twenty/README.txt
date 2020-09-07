ONE-AND-TWENTY

Our dice games continue now with ONE-AND-TWENTY which, as you realized
the moment you read the title in the introduction, is a dice version
of blackjack.

The game is simple, but demands a degree of cool thinking, as well as
the ability to guess which numbers are going to come up next when the
die is rolled.  In ONE-AND-TWENTY, you are playing against the
computer.

You are always given the first go.  You roll the die as many times as
you like, aiming to get a total as close as possible to, but not
exceeding, 21. You can stop adding to the total whenever you like.

If you exceed 21 (that is, you "bust") then the computer wins that
round automatically.  A game consists of five rounds, and the winner
of the most rounds, naturally enough, wins the game.

After initializing some variables (including HS for the human score
and CS for the computer score) in lines 20 and 30, and clearing the
screen in line 40, the computer asks you to "Press 'R' to roll, 'S' to
stand."  The word "Stand" means you are happy with the total you've
achieved so far and you'll stay with it, giving the computer a chance
to try and beat you.  You'll soon learn that the speed with which you
enter an R or an S can affect the number which is thrown, because the
delay between the "Press 'R' to roll..." and the time you actually do
press an R or an S is used to create a number (N) which -- together
with your current total -- is used to seed the random number generator
for the next dice roll.

The lines from 50 to 170 control your dice-rolling, and the computer
only exits this cycle when you decide to stand.  The whole of the
computer's game-playing logic is held within line 180, which
determines whether it is worth risking a bust to try and exceed your
total.  If it decides to roll, the lines from 190 to 250 control this.

Once the computer decides it has had enough of that, it uses lines
260, 280 and 290 to determine who has won.  If both your scores are
the same, or both of you are over 21, then the round is counted as a
dead heat (line 320 tells you this), and neither CS nor HS is
incremented.  Line 280 spots a computer win, adding one to CS and
printing "I," while the next line adds one to HS and prints "You."
The mysterious "I" and "You" are used as the first part of the
sentence concluded by "win!!!" in line 300.

As in CHEMIN DE COMPUTER, where the aim was to get the best out of
nine scoring games, in ONE-AND-TWENTY, the intention is to score wins
in the majority of games out of five. Line 390 looks to see if this
has happened, and if so sends the program to line 450 where the result
of the game (with a sarcastic comment or two) is printed.  If five
scoring games have not been played, line 400 asks you to "Stand by for
the next round..." and after a brief pause (line 430), the next round
is upon you.
