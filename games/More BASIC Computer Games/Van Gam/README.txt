VAN GAM is a simple game with an interesting solution set.  The
winning sequence pairs ar eformed by certain mutually exclusive
*sequences*, using the golden mean, 1+sqrt(5)/2, as an irrational
generator.  See explanation, lines 40-130.

If T = 1+sqrt(5)/2 and X = T+1, Y = 1/T + 1, then for integers N the
winning sequence generators are:

  INT (N * X)  2 5 7 10 13 . . . .
  INT (N * Y)  1 3 4  6  8 . . . .

It is interesting to note that the union of these sequences is the set
of integers, and their intersection is empty.  That is the case, in
fact, for *any* irrational generator, but only T will produce winning
VAN GAM pairs.  The game is not much fun in that the average user will
never be able to beat the computer in non-trivial cases, unless he has
been taught the winning sequences.

This program by Alan Brown first appeared in Creative Computing,
Jan/Feb 1978.
