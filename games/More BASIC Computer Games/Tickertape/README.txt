This program inputs a line of characters from a Teletype, and then
punches the shape of each letter on paper tape.  This program can
handle all of the letters and numbers and the space, but there is no
reason why it could not be modified to handle various symbols also.

The operation of this program is fairly straightforward.  After each
character is converted to a number equivalent to its place in the
alphabet (A=1, B=2, Z=26, space=27), a simple table look-up is
performed to find the correct numbers to punch onto the tape.  These
numbers are stored in the DATA statements.

The original program was designed for a PDP-8; the one here runs in
Microsoft Basic, however it would not be difficult to modify the
program for virtually any Basic-speaking computer.

Written by Bill Gardner and Jim Larus, Tickertape first appeared in
Creative Computing, May/Jun 1977.
