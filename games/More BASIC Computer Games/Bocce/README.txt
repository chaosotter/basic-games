Bocce

This program simulates the Italian game of Bocce also called "lawn
bowls" or just "bowls".

The instructions starting at the line 1770 explain the game.

This is the four-ball version (Q=5).  Allowing more balls in the game
(raising Q) will increase central processing time since the chances of
collision will rise and the resulting position of each ball has to be
recomputed.  However, the delay is short and we routinely play six to
eight balls.  Increasing Q beyond 9 will require redimensioning the
array at line 1030.

When there is collision, the bell will sound (line 1500).

It is important to remember that the object is to get close to the
jack and not to hit it.  Upon collision, the jack will move off more
quickly than a ball because it is smaller and lighter.  A careless
shot can turn a good game into a disaster.

It requires some imagination to play the game well.  It goes best if
you image that you are standing at coordinates 0,0 and are looking out
along the X-axis.

This game and description above were written by Victor Bendall of
Eastern Kentucky University.  It originally appeared in Creative
Computing, Jul/Aug 1977.
