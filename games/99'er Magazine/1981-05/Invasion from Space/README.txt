INVASION FROM SPACE

  by W. K. Balthrop

After producing my own TI BASIC version of the familiar "Space
Invaders" game, it was immediately obvious to me why the arcade
version enjoyed its great popularity -- SPEED Since my game had over
ninety moving objects, it was easy to become bored waiting around
while they all moved.  I strongly felt that a computer game should be
challenging enough to hold a player's interest regardless of its
interaction speed, so it was back to the planning stage...

The solution I came up with was fairly straightforward, but added a
new level of strategic sophistication to the basic
"you-blast-me-I-blast-you" game plan.  Boredom immediately became a
thing of the past.  The first change was to equip the aliens with
multiple warhead missiles.  At a given elevation, each missile will
split into three warheads -- each traveling in a different direction.
To compensate for this obvious breach in the galactic SALT agreement,
I have equipped your interceptor jet with the capability of firing its
laser in three directions at any of the sixty alien ships.  You can
also destroy warheads that are in a direct flight path with your jet,
or hide behind any of the three barriers.  But don't sit still forever
-- this temporary protection won't last long once the multiple
warheads start striking!

The main difficulty in writing Invasion from Space was in keeping it
simple for the player while producing the fastest program possible.
By keeping data (status and locations) for the alien ships and
missiles in arrays, I was able to cycle through each of them in
FOR-NEXT loops.  Next in importance was to break all functions into
subroutines, so they could be accessed at any time in the main control
loop.  Four main sub routines make up the program:

1. The main control loop: Updates enemy positions, branches off to the
   other three subroutines, and reads the keyboard.

2. The defensive routine: Moves the jet left or right; fires jet
   missiles, and checks for hits.

3. The offensive routine: Selects an alien ship to fire a missile;
   controls the missile's direction, multiple warhead split, and
   checks for any hits.

4. The scoring display: Adds or subtracts points from your score;
   branches to end of game messages.
