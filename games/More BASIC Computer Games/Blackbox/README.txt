   32 31 30 29 28 27 26 25
 1  .  .  .  *  .  .  .  . 24
 2  .  .  .  .  .  .  .  . 23
 3  .  .  .  *  .  .  .  . 22
 4  .  .  .  .  .  .  .  . 21
 5  .  .  .  .  .  .  .  . 20
 6  .  *  .  .  .  *  .  . 19
 7  .  .  .  .  .  .  .  . 18
 8  .  .  .  .  .  .  .  . 17
    9 10 11 12 13 14 15 16

Black Box is a computerized version of the game that appeared in the
August 1977 issue of Games and Puzzles.  The Black Box is an 8-by-8
square in which several atoms are hidden.  The object of the game is
to discover the positions of the atoms by projecting rays at them from
the sides of the box and noticing how these rays are deflected,
reflected, or absorbed.  Rays enter the box across one of the four
edges and travel horizontally or vertically.  The entry points are
numbered from 1 to 32, counterclockwise, starting at the top of the
left edge.

To play the game, you first specify how many atoms to place in the
Black Box.  Then you type in the point at which you send the ray into
the box, and you are told whether the ray was absorbed or where it
emerged.  They a zero to end the game and print the board.  The path
of the ray is governed by the following rules:

(1) Rays that strike an atom directly are absorbed.

(2) Rays that come within one square of an atom in a diagonal
    direction (so that they would pass next to the atom if they
    continued) are deflected by 90 degrees.

(3) Rays aimed betwen two atoms one square apart are reflected.

(4) Rays that enter on either side of an atom on the edge of the box
    are reflected.

(5) Rays otherwise travel in straight lines.

The game is pretty interesting with four or five atoms, but can get
out of hand with too many more.  Occasionally, an atom can be masked
by others.  This doesn' occur often, but sometimes the position is
truly ambiguous (more often, there is only one place the atom can be).
For competitive play, score one point for reflections and absorptions,
two for rays which emerge from the box, and five points for each atom
guessed incorrectly.

This program and description were written by Jeff Kenton.  A previous
version appeared in Creative Computing, May/Jun 1978.
