This game may be the only one so easy that even an animal could play
it, yet hard for people to play even as well as random chance.  It may
be useful in training the intution, and improving gamesmanship in
speculation-type activies, where each player is trying to outguess the
other's behavior and stay one step ahead.

On each turn, the program first selects 'yes' or 'no', but gives you
no information about its decision.  Therefore your guess on the first
turn is pure chance, there is no skill involved.  But soon the program
starts using patterns in your behavior, making its decisions to
increase the chance of your next guess being wrong.  And to make it
harder for you, the program doesn't strictly maximize its chances, but
throws a little randomness into its decisions.

Variations

There are endless strategies for programming this game, for there
could be almost infinitely many definitions of what a "pattern" is.
No single algorithm could be "best", because it must assume a model of
the human player, and people are different, even the same person from
moment to moment.  Any good algorithm must build or refine its model
of the player, during the course of the game.

This particular program keeps an array of 16 probability estimates;
the person's last two guesses, and whether they were right or wrong
(16 situations altogether) determine which estimate is selected.  The
array (which depends on all previous play within the game) becomes a
model or profile of the plaer, and it can be printed at end of game.
Any probabilities far from .5 indicate predictable behavior in the
corresponding situations.  The profiles can be compared over time, or
used to study strategy differences between people.  They can also be
compared with random profiles developed by playing games with random
input such as coin flips, or (more easily) by modifying the program so
that BASIC statements replace the human player and make guesses
randomly (or by some other rule).  In fact, different algorithms could
play each other.

This particular implementation has two paramters: a memory factor (F1)
which controls the decay rate of old learning when it is overridden by
recent experience, and a randomness factor (F2) influencing the
program's likelihood of making the decision suggested by the
probability estimate.  These are just two of innumerable optional
parameters which could be used in programming FLIP.

The program and description were writtn by John S. James.  They
originally appeared in Creative Computing, Mar/Apr 1977.
