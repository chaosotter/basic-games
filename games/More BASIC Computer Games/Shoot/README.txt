The scene is some time in the near future.  You and another individual
on the other side of the planet are the only survivors of a total
atomic wawr.  (Yes, I know it's corny.)  This war was fought totally
with ground based atomic missiles.  Both you and the surviving enemy
have found the last missile bases left from each side.  Fortunately
(for me anyway), these missile grids are made and operated
identically.

Each player moves on and is restricted to a 10 by 10 missile matrix.
Every co-ordinate on the grid corresponds to a mini-missile base.  At
every base, there is a terminal ties into the main scanner computer,
located safely many miles away.  From each terminal, the player
obtains information relevant to the current situation.  Because of the
way the missiles are constructed, the area left after lift-off is
exposed to high doses of raw radiation and may not be occupied by
life.  The same is true of an area that has been struck by a missile,
it is extremely lethal and would kill anything entering the vicinity.

Due to the fact that everyone else is dead, all machinery must be
operated manually.  This means that the players must set the target
co-ordinates and latch the fuse for the missile to be shot off.  After
that, the players must flee the area.  This is done in a small shuttle
car, equipped with sensor devices to avoid dangerous areas.  But due
to its limited power reserves, it can go only two units in any
direction, up, down, or diagonally, and no more or less.  The danger
involved is that while in flight, the player is away from a scanner
computer terminal and will not know where the enemy missile is aimed
to land.

In the time it takes to move to the new base, the missiles will be at
the apex of their flight above the earth.  There the computer will
give out tracking information as to whether you hit the enemy, or he
hit you, or both.  If the missile is coming down to hit the player,
there is no escape.  The time required to recharge the shuttle car is
longer than the time it takes for the missile to hit the ground.  If
either player is unfortunate enough to get trapped into a corner, the
seeping radiation will eventually kill him.

So it is plainly a game of kill or be killed.  However, don't be
misled into thinking that it is simply a game of luck, several
different strategies may be applied to destroy the enemy.

Line by line explanation.

Lines 440-490.  I assemble three commonly used print strings.  S$
becomes a string of fourteen spaces.

Lines 500-530.  Here is the dimensioning of the four matrics, and the
start-up and circle check data.  The matrices "I" and "H" stand for
player and enemy playing fields (I and HE).  The "T" matrix is a
temporary list for use by the enemy, and is part of the "smart"
algorithm.  It is loaded up during each pass with the possible places
he could move to, or looking at the possible places where the player
could move.  The "P" matrix is filled with the eight possible
co-ordinates that one may move to.  I might say here that the program
may be modified for a longer and more challenging game by changing the
data in line 530.  Change all the twos to ones and the two players may
move only one unit away from their previous position, instead of the
two used now.

Lines 540-730.  I set up a random number to decide which pair of
corner co-ordinates the enemy will be started in.  I then proceed to
set the pair from 55o to 570.  I then digress to zero my matrices.
Picking up where I left off, lines 640 to 680 peel away any unused,
but unwanted data, keying on the unique first number of the last pair.
From there the remaining data is dumped into "P."

Lines 740-820.  Make the report that the enemy has been "fooling
around."  The starting co-ordinates for the player and then obtained
and checked.  From there the valid loop switch is set, a map is
printed, and the program is thrust headlong into the main routine.

Line 830-920.  Here the co-ordinates for the missile and the new spot
to sit on are obtained and verified of their validity.

Line 930-1080.  "Enemy" decides where player might be going from last
position, and aims his missile in that direction.

Line 1090-1280.  The "enemy" looks for place to go.  If he has
cornered himself, say so, prepare him for his execution, and make it
look like he hasn't fired a missile.  Otherwise, he chooses a new
co-ordinate to rest upon.

Lines 1290-1480.  Now we move everyone around (where we can), and
start to find out who got who, if anyone at all.  Then from 1430-1480
there is a check to discover whether the player has a place to go or
not.  If not, another message is printed and player will die quietly
after output.

Lines 1490-1780.  Here the printing of the two matrices is done.  A
value of one or zero is testd for making the proper symbol.  After the
output is complete "Z" is checked to see if anyone died on the way.
If no one had, return for another pass, else terminate the program.

I spent a lot of time debugging this program.  After I finally got it
to work, I found that it became somewhat addictive.  The tension does
seem to build when the game reaches the final possible moves.  I found
there are two different useful strategies that may be applied.

My favorite is building a fence around the enemy with missile shots.
The idea is to cut off his movements while trying to keep out of his
way.  The other method is the one the enemy uses.  Here the player
shoots at where he thinks the opponent may be each time.  Quite often
the game is ended early, the odds of being hit become too great.

Any method you use, or another you may think of, will lend long hours
of enjoyment.  Have fun!

The program and description were written by David Spencer.
