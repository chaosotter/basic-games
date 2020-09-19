UAMMALU

  Uammalu Provide Lovely Graphics Patterns for 80C

  by Chris Reid

These excruciatingly beautiful patterns were discovered by the
mathematician Stanislaw Ulam.

A "cellular automaton" is PSET at center screen.  In the 
second generation, new automata appear in every cell that 
has exactly one automaton as an orthogonal neighbor (up or 
down, left or right):

      7
    7 6 7
      7 

In the third generation, automata of color 8 appear, and then the
first generation (the 6 in the middle) disappears:

        8                8
        7                7
    8 7 6 7 8        8 7   7 8
        7                7
        8                8

In the fourth generation, each 8 gets a cluster of three 6s; then the
7s disappear, and so on.

The vulgar, gaudy colors of the Color Computer are just right for this
program, which becomes a display of jewels on black velvet if you add:

    50 PMODE4 
    80 PMODE3 
    260 PMODE4:SCREEN1,1

and change 300 PMODE3

Program Notes 

Lines 130-190 pick the cells to be PSET.  Line 170 eliminates the
cells with no automaton-occupied neighbors (5 is a vacancy, and four
5s are 20).  Line 180 eliminates the cells with two or more
automaton-occupied neighbors (three cells can only add up to 15 if
they are unoccupied).

The IF Line 190 eliminates the cells that are already occupied.  And
Lines 130-160 keep the computer from confusing cells it has just PSET
with cells that are real automaton-occupied neighbors.

IF/THEN lines run slowly in BASIC.  A program that inspected every
cell on the screen would take hours.  It would still take hours to
inspect the expanding square that contains the potential cells.  You
don’t need the whole square, however, but only the diamond that can be
inscribed in it, and the 90-minute diamond program can be shortened by
three-quarters because the patterns are symmetrical up, down, and
diagonally.  Only an eighth of the diamond has to be inspected (lines
100-1 10); each cell PSET is immediately matched with seven others
(line 190).  The automata of two generations ago are also PRESET eight
at a time (line 240).
