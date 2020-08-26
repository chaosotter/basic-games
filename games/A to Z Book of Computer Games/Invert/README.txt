Invert

Invert: to reverse in position, order, or relationship.  Thank you,
Mr. Webster.  That is exactly how this game is played -- with a string
of nine numbers, one each from the set one through nine.  Two players
compete, starting out with matching copies of a jumbled string of
numbers.  The object is to see who can straighten his or hers out
first, by rearranging them into their natural sequence of from one to
nine.

The competition: you and the computer.  As the game proceeds, with the
two of you taking turns, your individually manipulated strings are
reprinted to show the results of each move.  There is only one rule.
You may pick any of the individual digits in your string to invert.
Then all of the numbers from the leftmost position, through the one
you pick, will be reversed in their order of presentation.

You always get the first turn.  Your simplest strategy would be to
duplicate whatever move the computer makes.  This does require that
you properly anticipate the computer's first move, but that isn't
difficult because the Invert program uses only one algorithm.  For
want of a better name I call it the two-step-absolute algorithm.  It
is shown in Fig. 1-1.  Yes, it is simple.  But, lest you think this is
all too simple or too absolute, please read on.

There can be corporeal benefits from having this program in your game
library.  You can do pseudoscientific studies on your friends and
neighbors.  But don't tell them about the computer's ironclad
algorithm.  Repeated play is assumed to be the norm, so the program
maintains win counters.  It can be very interesting to see just how
long it takes for man to ascend beyond the simple intelligence of the
machine.

This is not to imply that I am trying to ameliorate with those who
have an affinity for categorizing everyone into archtypal groupings.
Nevertheless, there does seem to be a distinct tendency for the
players of Invert to align themselves with one of the following.

  * Some never seem to catch on.  Their moves always appear to be
    haphazard; perhaps depending on blind luck, or maybe they are
    cowered into believing that there is some mystique involved.

  * Many players soon detect the rhythm of the machine's moves.  A few
    of these remain perplexed on their first move, indicating an
    intuitive grasp, yet they remain incapable of practicing what they
    know.

  * Probably the most amusing of all are those who accurately perceive
    how it is done, but that fail to identify the incompleteness of
    the two-step-absolute algorithm.

As a programmer, and as you study the internals of Invert, you are
bound to notice that the algorithm used here never takes advantage of
any preexisting natural sequences imbedded within the randomly
generated startup strings.  Human perception can prevail over this
failure, but only in those instances that some natural order is
inherent when the strings are first generated.

There is also that purely humanistic trait: mistakes.  The machine is
not supposed to ever be guilty of carelessness.  It will unerringly do
its thing, time and again.  If you are running neck-and-neck you
should always win -- unless you make a mistake.  You are also enforced
to use a two-step method, so it takes two rights to correct a wrong.
This usually means that you will have lost the advantage that is
inherent to having the first move.  Because all human-type players are
capable of an occassionally hasty move the program does permit a
graceful out.

At the point in the play, when it's your turn, a pick of zero will
trap out and ask if you would like to forfeit the game.  If the zero
entry was itself a careless keystroke you may advise the program with
a no answer and be permitted to continue playing.  On the other hand,
if you can readily see that you are beaten, a yes response to the
forfeit question will invoke a simple "thank you" from the computer
and a new game may be started immediately with no further ado.

In a nutshell, that's all there is to the game of Invert.  The program
for Invert is worthy of study, though.  As can be surmised the string
of numbers is kept in a table; so there is at least the business of
the topsy-turvy table gyrations -- for both the human and the machine.
