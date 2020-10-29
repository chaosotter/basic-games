[Note: This program does not run in TI Extended BASIC because of the
character range it attempts to redefine, and it is too large to run in
TI BASIC on a disk system.

The original game is in the file "original.bas"; "game.bas" contains
an optimized smaller version.  Even so, it may be necessary to claim
more memory by running "CALL FILES(0)" and "NEW" before loading.]


BATTLE AT SEA

  by W.K. Balthrop 

"Damn the torpedoes!  Full speed ahead..."  Get ready, all you
"armchair admirals" out there in 99'erland.  You're about to do battle
with the most crafty enemy of all the Imperial TI Fleet.  If you're
old enough to remember those rainy Saturdays in the pre-TV age, you've
probably spent many an hour with pencil and paper playing Battleship.
In the intervening years, Battleship has been dressed up as a consumer
item in many forms: First it was "cardboardized," then "plasticized,"
and finally "electronicized."  Well gang, as it happened, one rainy
Saturday afternoon a few months ago, I had this mad urge to play
Battleship...  The expensive electronic version looked really enticing
in a local toy store display, but I sure wasn't going to spring for it
-- especially when I had my trusty TI-99/4 personal computer waiting
to carry out my every command.So program it I did.  The result:
Battleship has now been "99'erized" into a 16K TI BASIC version, which
I call Battle at Sea.

Two 10 x 10 grids are displayed on the screen along with the row and
column designations.  The computer will ask you to enter coordinates
for the placement of each of your ships on the grid at the right.
Each coordinate must be entered separately; for example A 5 then A 6
for the destroyer.  Since the ships occupy different numbers of grid
squares, I've put in a counter for each ship to indicate how many
remaining squares that must be entered.

After all the coordinates for a ship have been entered, that ship will
be diplayed on the screen. Once all five ships are set up, the
computer will secretly set up its own ships on the grid to the left.
You won't be able to see the computer's ships, since the whole idea of
the game is to try to find them.

Once the computer has set up its ships, it will ask you for the
coordinates of your shot at its grid (on the left).  You must enter
your shot as a row letter, then a column number.  Valid coordinates
are from A-J and from 0-9.  Any other entry will result in having to
enter the coordinates again.  Your hit or miss will be marked on the
grid and displayed at the bottom of the screen as a MISS or **HIT**.
The computer will then take a shot at your grid.  It cannot see your
ships, but it does keep track of where the hits and misses are.

After a hit, any ship that has been sunk will be displayed at the
bottom of the screen. The score is also updated at this time: one
point for each ship sunk.  The first player to sink all five ships
will win the game.

Because there are no moving objects in this game, speed was not the
most important factor in the game design.  The action happens to be
fairly fast, but the critical factor was programming the computer to
make intelligent decisions.  With no limit on available memory, I
might have been able to write a program with flawless logic.  But here
that wasn't the case -- with having to stay within the confines of
standard 16K TI BASIC.

I started by giving the computer a set of rules and several variables
to test for a given situation.  First, if a ship has been hit only
once, the computer will take random shots around that hit until the
direction is determined.  It will then continue in that direction
until either the ship has been sunk, or it misses a shot, or it runs
up to the edge of the grid.  It will then reverse and shoot at the
other end if the ship was not sunk.  If you put ships adjacent to one
another, the computer sometimes gets "confused" and gets caught in an
endless loop. Therefore, keep your ships separated by at least one
square in both horizontal and vertical directions (its ships can be
adjacent) if you want to give the Imperial TI Fleet a fighting chance.
