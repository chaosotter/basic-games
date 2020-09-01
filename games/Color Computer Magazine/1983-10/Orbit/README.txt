(From Color Computer Magazine, October 1983.)

ORBIT!

  We've all wanted to fly one of those speedy little rocket numbers
  that are in all the Sci-fi movies.  Here's your chance to captain a
  space ship.

  by Tom Goodrich

Simulating complex engineering problems is a neat thing to do on a
honne computer; it's possible to learn something interesting while
having fun.  Of course, it's also easy to get bogged down in too many
details.  I intended Orbit to be more of a game than an educational
program.  I wanted to see if a space ship in orbit could really be
controlled 'by the seat of the pants' like an airplane, as they do in
science-fiction instead of in the precisely-computed fashion of NASA.
With just a little help from the computer it does seem possible.

In Orbit, you roughly control thrust direction, magnitude and burn
time using a joystick and a button.  The computer helps by providing a
good real-time picture of the trajectory, and a few key data values.
It also helps by automatically scaling the thrust to match the local
gravity (which decreases as you get farther from the planet) and by
providing the initial velocity needed to have a purely circular orbit.
With this help all we need do is fire the engine various ways until we
get the results we want.

To make things a little bit interesting, a space station is included
with which we can rendezvous and dock.  A landing target is randomly
designated on the surface of the planet.  Limited fuel is provided on
board ship, which can be replenished only by docking with the space
station.  The planet has an atmosphere, and the space ship can be
configured for either pure drag or a combination of lift and drag for
a gliding re-entry.

Missions

Three missions can be selected with tap of a key: launch from the
surface; undocking from the station; and return from deep space.  In
each case, the program sets up all required starting conditions,
randomizing several of them.  A fourth option is for entry of special
conditions.  Of course, since the entire program is in Basic (Extended
Color Basic), the really venturesome user can change any parameter --
the gravity field, the scale of the atmosphere, and so on.

Orbit is just complicated enough to require some instruction.  This
can be accomplished nicely by preceding the program by another program
that displays instructional text.  That way the instructions won't get
separated from the program.

I developed a program (Listing 1a) that displays several pages of text
with paging and indexing.  The program is independent of the data
statements which provide the text.  After each page is displayed, the
user can press the Enter key to see the next page, or he can enter a
page number and skip directly to that page, or he can enter any word
or phrase and skip to the next page that contains that word or phrase.
A fourth option is entry of the word LOAD, which automatically loads
the game program following it on tape.  The eleven essential program
lines leave plenty of room for the text in data statements (Listing
1b).

The Orbit program (Listing 2) consists of an initial entry portion
(Lines 1 - 160), a display set-up which is repeated if the plot scale
is changed (Lines 170 - 220), and the action loop (Lines 230 - 1240).
Four displays are presented: a text page to show running values of
data (Lines 520 - 660), a trajectory plot (Lines 690 - 800), a view of
the rectangular landing target in perspective (Lines 880 - 1110) and a
view of the circular space station (Lines 1120- 1240).

Computations governing spacecraft motion are in Lines 340 - 440.
Thrust input from the joystick is accepted in Lines 230 - 260 and
modified for local gravity in Line 400.  In Line 500, a key input is
accepted "on the fly."  L sets a lift body; D sets a high drag body;
the space bar toggles the display between data and trajectory views.

To save the TV screen from image burn-in if the trajectory view
remains on for several minutes, Line 750 causes a temporary shift to
data text for a few seconds at intervals of about one minute.  The
equations for orbital mechanics are accurate with the solution based
on the assumption that accelerations are constant over a small time
interval.  Resolving forces into x and y components makes computation
easy.  Aerodynamic forces for a stable point mass are accurately
solved, though special effects of hypersonic and supersonic flight are
ignored.

In Flight 

To enter thrust controls, picture yourself -- joystick in hand --
facing away from the planet, and moving to your left.  Set the thrust
outward by moving the stick above center (forward).  Increase your
orbital speed by moving the stick left of center.  With the stick set,
hold the button in for as long as you want the engine to burn.  In
this way you may use either light thrust (stick near center) and long
burn time or heavy thrust (stick away from center) fired in brief
bursts for the same effect. Because the thrust is scaled to local
gravity, large stick deflections can be used during lift-off and
during docking.

Other control instructions are contained in the instructional text
program.  The best way to learn is to undock from the space station
(option 2) and experiment watching both the trajectory view and the
data.

When the spacecraft is moving without thrust but with any combination
of velocity components, it remains on some kind of orbit and will move
around the planet, passing through the same starting point each time
as long as the engine stays off and the ship stays outside the
atmosphere (beyond a radius of 1 1000 units).  By comparing the value
of orbital velocity (VO) to the equilibrium value (VE), you can tell
what will happen during the orbit.  If VO>VE, then the craft will move
further away from the planet (even if a negative radial component, VR,
indicates it is temporarily moving toward the surface).  If VO<VE,
then the craft will move inward (drop closer to planet).  Also note
that VE increases as the craft moves inward.  This makes angular
position change much faster than when farther out.  So, to catch up
with the station, move to a low orbit; to let it catch up with you,
move to a high orbit.

Orbit is not a fast-action arcade game; but it is interesting to try
undocking, landing near the target, taking off, catching up with the
station and docking without running out of fuel.  Each orbit takes
about ten minutes.  It is challenging to try changing from one
circular orbit to another.  For a real challenge, try limping back
from a mission in deep space with low fuel.
