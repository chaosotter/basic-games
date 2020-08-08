Description:

This program generates artistic patterns based on Pascal's triangle.

Comments:

Pascal's triangle is one of the most famous number patterns in
mathematics.  The triangle is very easy to construct.  The first two
rows consist of only 1's.  Each of the subsequent have a 1 at either
end of the row, but all other numbers in the pattern are the sum of
the two numbers to the right and left in the row above.  An example,
illustrating the first 6 rows of the triangle, is shown below:

              1
            1   1
          1   2   1
        1   3   3   1
      1   4   6   4   1
    1   5   10  10  5   1

The program provides the user with three options during the course of
a RUN.

They are:

1. A single "Pascal's triangle"
2. Two "Pascal's triangles"
3. Four "Pascal's triangles"

A user may also specify the size of the array and the multiples of the
number to be eliminated.

Option 1 simply allows a user to examine an artistic pucture of the
relative positions of the multiples of any number in the array.  The
apex of the array will appear in the upper left corner of the page.

An example of how the machine uses a "triangle" to create a design
based on eliminating the multiples or two is shown below.

    1  1  1  1             * * * *
    1  2  3  4             *   *
    1  3  6  10            * *
    1  4  10 20            *

    Before Printing        After Printing

Option 2 allows a user to create a picture based on two Pascal's
triangles in opposite corners of a square array.  An example of how
the machine uses two Pascal's triangles in the corners of a square to
create a design based on eliminating the multiples of 2 is shown
below:

    1  1  1  1  0          * * * *
    1  2  3  0  1          *   *   *
    1  3  0  3  1          * *   * *
    1  0  3  2  1          *   *   *
    0  1  1  1  1            * * * *

    Before Printing        After Printing

Option 3 creates a design based on Pascal's triangles in the four
corners of a square.  An example of how the machine uses four Pascal's
triangles in the corners of an 8x8 array to create an artistic design
based on eliminating the multiples 2 is shown below.

    1 1 1 1 1 1 1 1        * * * * * * * *
    1 2 3     3 2 1        *   *     *   *
    1 3         3 1        * *         * *
    1             1        *             *
    1 3         3 1        * *         * *
    1 2 3     3 2 1        *   *     *   *
    1 1 1 1 1 1 1 1        * * * * * * * *

    Before Printing        After Printing

Approximately 5 minutes of terminal time is required to print a design
with dimensions of 36x36.

PASART and this description written by Charles A. Lund.  They first
appeared in Creative Computing, Mar/Apr 1977.
