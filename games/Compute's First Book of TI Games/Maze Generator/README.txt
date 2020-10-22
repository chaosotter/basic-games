MAZE GENERATOR

  by Charles Bond
  Translated for the TI by C. Regena

Making the Maze

Here is a method of generating a maze with only one correct path.  The
maze must be a rectangle with dimensions of an odd number of squares.
In the example, the rectangle is 27 squares by 19 squares with the
upper-left comer in screen position 3,3.

The field or barriers are blue.  The path is yellow and must start in
a square with even coordinates.  You may prefer to start in a
particular square, such as the upper-left corner (4,4).  The example
program starts in a random square.  Lines 170-180 set the starting
coordinates.

From the starting square, a random number from 0 to 3 is chosen for
the following possible directions:

    0  Right
    1  Up
    2  Left
    3  Down

The square *two* spots away from the starting square is tested.  If it
is a blue square, the maze path can go in that direction.  A direction
marker is placed in that square, and the square in between is made
part of the path.  If the square is off the field, the direction is
unacceptable, and another direction will be chosen.

Plotting Each Square

The example program. Program 1, starts in a random square.  For
illustration purposes, let's assume we start in square 4,6.  (See
Figure 1.)  Place a yellow square there of character 117.  A random
direction is chosen -- let's say 3, down.  The square two down is
blue, so the direction is acceptable.  A yellow square 112 is drawn
one down, and another yellow square 113 plus direction 3 = 116 is
drawn two squares down.

Figure 1. Starting the Maze

        1   2   3   4   5   6   7   8
    1                      no
    2       +-------------------------
    3       |
    4       |             (117)
    5       |
    6       |               ?
    7       |
    8       |

The new starting square is 6,6 (Figure 2).  A random direction is
chosen. The path carmot go up.  Let's say 2, left, is chosen, which is
acceptable.

Figure 2. Moving Left

        1   2   3   4   5   6   7   8
    1
    2       +-------------------------
    3       |
    4       |              117
    5       |              112
    6       |       ?     (116)
    7       |
    8       |

From this starting position the direction cannot be left (off the
field) or right (116, already path).  Assume 1, up, is chosen.  (See
Figure 3.)

Figure 3. Moving Up

        1   2   3   4   5   6   7   8
    1
    2       +-------------------------
    3       |
    4       |       ?      117
    5       |              112
    6  no   |     (115)112 116
    7       |
    8       |

Now the position is 4,4.  The path cannot move up or left because two
squares away is off the field (Figure 4).  The path cannot move to the
right because two squares away is 117, the original starting position.
The path must retrace and go down.  The starting square this time is
replaced by 112 (lines 430-460).

Figure 4. A Dead End

        1   2   3   4   5   6   7   8
    1              no
    2       +-------------------------
    3       |
    4  no   |     (112)    117
    5       |      112     112
    6       |      115 112 116
    7       |
    8       |

From this square the path can go down.  Eventually, when the paths
have been retraced to the beginning square, 117, the maze is finished.

Figure 5. Backtracking

        1   2   3   4   5   6   7   8
    1
    2       +-------------------------
    3       |
    4       |      112     117
    5       |      112     112
    6  no   |     (112)112 116
    7       |
    8       |       ?

To see the starting square for each step in the maze generator, add
the following lines:

    105 CALL COLOR(9,7,7)
    385 CALL HCHAR(BX,BY,96)
    455 CALL HCHAR(AX,AY,96)
