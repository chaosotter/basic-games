3ORBIT

This program, 3ORBIT, is written to run on a standard TI-99/4A with TI
Extended BASIC.  It can be saved on disk or cassette.  Either a color
or a black-and-white TV can be used.  This documentation consists of
two parts: A "Tourist's Guide" to the program, and a brief technical
discussion of some programming considerations...

Tourist's Guide

The program 3ORBIT is a tool to investigate the orbital mechanics of
three-body problems.  This does not mean much to you as a casual
reader, so I will simply point out some of the things to watch in the
program.  Sit back at your keyboard, relax, and read through these
instructions as you go along.  You'll be a tourist of the little solar
system that 3ORBIT creates inside of your computer...

You start by running the program.  It begins with a screen filled with
pre-programmed data for the three bodies that the program uses.  (The
term 'body' simply refers to an object that has weight and floats in
space.)  The screen looks like this:

            BODY ONE

    mass         distance  speed
    10000000.00      .00     .00

            BODY TWO

    mass         distance  speed
         100.00    90.00   10.50

           BODY THREE

    mass         distance  speed
           1.00    32.00   18.00

        READY TO START  Y

Just press ENTER to accept all of the data that's already filled in
for you.  At the bottom, at the question READY TO START, just press
ENTER to accept the Y.  The program then shows you the message, PRESS
ANY KEY TO STOP.  Then the screen goes black.

On the screen there are three dots, lined up horizontally.  The dots
correspond to the three bodies on the data screen: Body one (yellow)
is the biggest, located in the center of the screen; body two (red) is
medium-sized, located at the far left; body three (blue) is the
smallest, located halfway between the two other bodies.

As you watch, the two bodies on the left will begin to move rapidly
downward.  But instead of moving straight downward, they are pulled
toward body one, which acts like the 'sun', drawing the other bodies
to it.  They move in a jerky fashion, rather than moving smoothly.

As you watch the screen, you should be able to notice that the two
smaller bodies act like planets that are orbiting the 'sun' in the
center.  That is the whole idea of 3ORBIT.  I'm sorry if you're not
impressed; it only took scientists five or six thousand years to
figure it out.  (Now, if only they had all owned TI-99/4A's!)  You can
notice that the 'planet' closer to the 'sun' moves faster than the
'planet' farther away.  This is necessary, bacause the simulated
gravitational pull of the 'sun' is stronger closer to it.

It isn't possible to make the computer move them any more smoothly,
because the TI-99/4A computes much too slowly.  The one drawback of
the TI's high-precision BCD math capabilities is that it computes more
slowly than other computers.

Once you get bored with the display, hold down the space bar until a
message pops up on the bottom of the screen.  It says, 'End, Redo, or
Start Over'.  You can either enter E to end using the program, R to
reuse the data that you were using, or S to start with the beginning
data values.

Now you can set up some other things to watch.  The next group of
settings displays a simulation of a planet orbiting around a sun, with
a litle moon orbiting around the planet.

            BODY ONE

    mass         distance  speed
     3000000.00      .00     .00

            BODY TWO

    mass         distance  speed
       10000.00    90.00    5.50

           BODY THREE

    mass         distance  speed
           1.00    93.50    3.80

        READY TO START  Y

It's interesting to note that the 'planet' (body two) and the 'moon'
(body three) are both travelling at high speed in orbit around the
'sun' (body one).  Yet the 'moon' is in a captive orbit around the
'planet'.

If you follow the 'planet' in its orbit around the 'sun', you can see
the 'moon' orbiting around the 'planet' almost perfectly.

By the third orbit, you can observe that the 'sun' occasionally moves
due to the influence of the 'planet'.  It is moving very slowly
downward, due to the initial downward motion of the 'planet'.

The orbit of the 'moon' does not remain steady; the technical term for
the unsteadiness is that perturbations are being induced by the
'gravity' of the 'sun'.  The 'moon' now swings far away from the
'planet', and then swoops in very closely.

Eventually, given enough time, the 'moon' could be torn away from the
'planet' and would be set free.  It would become a free-orbiting
asteroid.  But this configuration is surprisingly stable, and lasts
for a very long time.

By changing some of the data values, it is possible to see this
actually happen.  Hold down a key to get the End, Redo, Start Over
menu, and select R for Redo.  On the data screen, all that you have to
do is to change the mass of body one to 6000000.  The screen should
look like this:

            BODY ONE

    mass         distance  speed
     6000000.00      .00     .00

            BODY TWO

    mass         distance  speed
       10000.00    90.00    5.50

           BODY THREE

    mass         distance  speed
           1.00    93.50    3.80

        READY TO START  Y

When you run this, you will see the 'planet' being sucked in very
closely to the 'sun'.  The 'planet' sweeps around the 'sun' rapidly,
and then drifts back out to the same distance tht it started at.  This
type of orbit is known as an elliptical orbit.  All real planetary
orbits are actually slightly imperfect, and are elliptical, not
perfectly round.

There are two distinct points in an elliptical orbit: Apehelion, when
the orbiting body is at its furthest away from the body it is orbiting
around; and Perihelion, which is when the orbiting body is at its
closest approach to the body that it is orbiting.  (Perihelion can be
a dangerous point -- perilous, thus perihelion.).

As you watch, the 'moon' will orbit faithfully around the 'planet' for
two orbits.  On the third orbit, as the planet and moon approach
perihelion, the 'moon' is finally stripped away from the 'planet', and
the 'moon' takes off on its own, independent orbit.

Another version of the 'moon' getting stripped from the 'planet' can
be seen by using these data values:

            BODY ONE

    mass         distance  speed
     3000000.00      .00     .00

            BODY TWO

    mass         distance  speed
       10000.00    90.00    5.50

           BODY THREE

    mass         distance  speed
           1.00    93.50    7.20

        READY TO START  Y

The 'moon' only takes a couple of orbits around the 'planet', and then
it is captured by the 'gravity' of the 'sun'.  The 'moon' eventually
goes into a lower, faster orbit around the 'sun', until the screen
looks very similar to the two-planet situation that 3ORBIT is
programmed to start with.  However, the 'moon's' orbit is severly
perturbed by the gravity of the 'planet', and it does not settle down
into a nice neat orbit.

There are many interesting situations that you may want to explore for
yourself.  Here is one more interesting setup that I discovered.
Modify the data screen to include the following information:

            BODY ONE

    mass         distance  speed
    10000000.00      .00     .00

            BODY TWO

    mass         distance  speed
    10000000.00    90.00   10.50

           BODY THREE

    mass         distance  speed
    10000000.00   -90.00  -10.50

        READY TO START  Y

This setup simulates three massive stars, with two orbiting the third
in the middle.  Actually, in real life this sort of combination would
not happen.  While the two outer 'stars' seem to be balanced well and
orbiting just fine, they are on a point of unstable equilibrium.  If
even the slightest disturbance occurs to disturb the equilibrium, the
entire system will fall apart.

As you watch the 'stars' orbiting, you should also keep an eye on the
central 'star'.  After five or six complete orbits, the central 'star'
will move downward on the screen by one pixel.  That slight movement
is the instability that is needed to break the perfect equilibrium.

Within a half orbit, the system completely breaks apart.  One 'star'
exits rapidly out the bottom of the screen.  The other two drift
slowly toward the top left of the screen, whirling around each other
rapidly.  Conservation of angular momentum is graphically demonstrated
by the relative sppeds of the single star and the double-star system.
The speed of the single star is, to the eye, about double the speed of
the double star system.  Their final directions are exactly opposite
each other, because in this case the initial momentum of the entire
system was zero.

I hope that you have fun with this program, and that you learn
something from it.  In any case, it shows that the TI-99/4A is capable
of some pretty neat astronomical calculations.

Technical Considerations.

3ORBIT is a nice demonstration of the power of discrete mathematics.
Since the three-body problem can only be solved by numerical means, it
is nice to see that the TI-99/4A can indeed be programmed to find
solutions of it. The interesting thing about the discreteness of the
mathematics used here is that the time divisions are cut very
coarsely.  Even with the rough time-slicing used, there is a very good
approximation of reality, except when two bodies are in extremely
close proximity (within 3 pixels or so).

The three-star type of interactions, where all 3 bodies always have
near-equal masses, tend to be unstable.  Perhaps I haven't
investigated them enough, but I couldn't find many that lasted very
long.  Changing masses and speeds even a little bit greatly affected
the outcomes of the interactions.  It is really possible to see why no
mathematical solutions can be reached!

The physical equations used are simple.  Force on a single object is
the vector sum of the forces exerted by the other two objects.  Each
force is given by the Newtonian equation F=GMm/D^2 .  Then the
acceleration imparted to each body is given by the vector sum of the
accelerations induced by each of the two others, each of which is
given by a=F/M (from F=Ma).

New velocities are calculated for each iteration of the display loop.
The offset from the old position is calculated, and displayed if it
isn't off the screen.

As I was developing the program, I used a slightly incorrect formula
for calculating forces.  Oddly enough, the program worked fine.  I
didn't discover the problem until I started changing the masses of the
bodies, and got incorrect results.  This should stand as a warning to
anyone who uses a computer for physical investigations.  The computer
will easily and beautifully show the results of an incorrect formula.
It is necessary to test the computer's data against reality, to ensure
that the results of computation aren't just pure fiction.

The units used here are fairly arbitrary.  Distance is measured in
pixels.  Mass is arbitrary, but the value of G adjusts the force
equations.  Changing G's value yielded different results with the same
"masses"; the current version of 3ORBIT seems to make a good range of
interactions possible.

One thing that I emphasize very strongly in my programs is the user
interface.  The data screen consists of a large number of ACCEPT AT
statements.  Each one has a number of checks after execution to tell
if the user wishes to exit and go up instead of go down.  This allows
the user to move through the screen, setting up desired parameters,
and only continue when done.

The specific statements that I used go like this:

    290 ACCEPT AT(9,1)SIZE(-13)VALIDATE
    (NUMERIC)BEEP:MM1 :: CALL KEY(3,K,S)::
    IF K=11 THEN GOTO 380

The CALL KEY statement immediately after the ACCEPT AT statement
returns the key code of the last key pressed.  It is possible to leave
an ACCEPT AT statment by pressing the up and down arrows, as well as
pressing ENTER.  To allow the user to move 'upward' through the data
entry screen, there is a brief check made at the end of the line.  If
the key code 11 (up-arrow) is returned, the program sends control to
the prior line executed.

The screen colors have been designed to make the data fields stand out
clearly, while emphasizing the titles for the data.  I used the trick
of changing two characters to blanks and using them for color blocks
on various spaces on the screen.  In this way, the normal spaces of
the number input areas show out clearly against the colored screen
'background'.

I hope that you will enjoy this program, and find it of some use.  If
you wish to modify it, I suggest adding a fourth body; or, allow the
user to place bodies in starting positions other than the horizontal
midpoint.  In any case, KEEP ORBITING!

This game was found in a collection of old TI disk images.

The original image name and path was "0090.dsk/3ORBIT".

The game is in TI Extended BASIC, and is credited in February 1987 to
Milo Tsukroff.
