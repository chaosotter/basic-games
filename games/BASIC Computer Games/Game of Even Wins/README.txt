[Note: This is the second game referenced in the notes below, "GAME OF
EVEN WINS".  The game "EVEN WINS" is packaged separately.]

Even Wins

This is a game between you and the computer.  To play, an odd number
of objects (marbles, chips, matches) are placed in a row.  You take
turns with the computer picking up between one and four objects each
turn.  The game ends when there are no objects left, and the winner is
the one with an even number of objectgs picked up.

Two versions of this game are included.  While to the player they
appear similar, the programming approach is quite different.  EVEN
WINS, the first version, is deterministic -- i.e., the computer plays
by fixed, good rules and is impossible to beat if you don't know how
to play the game.  It always starts with 27 objects, although you may
change this in Lines 250, and 1060.

The second version, GAME OF EVEN WINS, is much more interesting
because the computer starts out only knowing the rules of the game.
Using simple techniques of artificial intelligence (cybernetics), the
computer gradually learns to play from its mistakes until it plays a
very good game.  After 20 games, the computer is a challenge to beat.
Variation in the human's style of play seems to make the computer
learn more quickly.  If you plot the learning curve of this program,
it closely resembles classical human learning curves from
psychological experiments.

Eric Peters at DEC wrote the GAME OF EVEN WINS.  The original author
of EVEN WINS is unknown.
