MAGIC SQUARES

In case you are unfamiliar with the concept of a "magic square," it is
nothing more than an N x N array of all the integers from 1 to N times
N (without repetitions), such that each row, column, and diagonal adds
up to the same number, which happens to be equal to (N*N*N + N) / 2.
For any value of N, there are various transpositions of the magic
square which also yield this result.  Magic squares have been a source
of delight for many hundreds of years, but it was not until recent
years that attempts were made to generate magic squares using
microcomputers.

Algorithms have been developed for magic squares when N is odd, and
different algorithms for when N is even.  The program we shall present
works only if N is odd.  Although we have restricted the maximum value
of N to 9, the algorithm works for values larger than 9.  However, for
values greater than 9, the output does not fit neatly on the screen.
