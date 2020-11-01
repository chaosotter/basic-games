[Note: This program does not run in TI Extended BASIC because of the
character range it attempts to redefine, and it is too large to run in
TI BASIC on a disk system.

The original game is in the file "original.bas"; "game.bas" contains
an optimized smaller version.  Even so, it may be necessary to claim
more memory by running "CALL FILES(1)" and "NEW" before loading.]


SPACE WAR

  by Mark Moseley

Space War is a two-player game written in TI BASIC.  Each player has
one rocket.  The object of the game is to destroy your opponent by
missile fire, or by either forcing him to crash with an asteroid or
causing him to use up his allotment of fuel.

You can fire missiles in any of the 8 directions selectable from each
side of the split keyboard.  Missiles emit a nerve gas that paralyzes
any moving object on the screen until a hit is made or the missile
goes out of range -- i.e., off the screen.  Firing a missile, however,
does require an expenditure of fuel.

Each rocket starts out with 50 units of fuel.  One unit is subtracted
for each move, and a missile shot costs 5 units of fuel, so you must
try to move efficiently and shoot accurately.  If you run out of fuel,
the game ends and the other player receives 2 points.

If your missile hits the enemy rocket, you score 5 points.  If you
crash into an asteroid, your opponent receives 3 points.  And if you
crash into each other, no points are awarded.

Note: If you shoot an asteroid you lose 1 point but the game does not
stop.
