REVERSE is a simple-minded game, but dangerously addicting.

In an earlier version, we used another way of creating the randomized
list of numbers, as follows:

  210 FOR I=1 TO N
  215 LET A(I)=I
  220 NEXT I
  225 FOR I=1 TO INT(19*RND(0))+19
  230 LET X=INT(N*RND(0))+1
  235 LET Y=INT(N*RND(0))+1
  240 LET Z=A(X)
  250 LET A(X)=A(Y)
  260 LET A(Y)=Z
  270 NEXT I

There are many ways to beat the game, but approaches tend to me either
algorithmic or heuristic.  The game thus offers the player a chance to
play with these concepts in a practical (rather than theoretical)
context.

An algorithmic approach guarantees a solution in a predictable number
of moves, given the number of items in the list.  For example, one
method we found (invented?) guarantees a solution in 2N-3 moves when
the list contains N numbers.  The essence of an algorithmic approach
is that you know in advance what your next move will be.  We could
easily program a computer to do this.

A heuristic approach takes advantage of "partial orderings" in the
list at any moment.  Using this type of approach, your next move is
dependent on the way the list currently appears.  This way of solving
the problem does not guarantee a solution in a predictable number of
moves, but if you are lucky and clever you may come out ahead of the
algorithmic solutions.  We could not so easily program this method.

In practice, many players adopt a "mixed" strategy, with both
algorithmic and heuristic features.  Is this better than either "pure"
strategy?
