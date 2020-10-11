BLOCKHEAD

  by Matt Giwer
  64 Version by Gregg Peele

Here is a challenging game for the whole family.  See how many
balloons the blockhead can pop in the allotted time.  Requires game
paddles.

"Blockhead" is a colorful game similar to some of the early arcade
games.  It is simple to play, and will especially appeal to young
children, who will like the clever use of sound and color in the game.
The program makes good use of the Commodore 64's graphic capabilities,
for it utilizes the eight available sprites and even includes a
machine language routine.  This interrupt-driven routine provides
optimal motion in the game, as well as monitors the position of the
sprites.

Once you have the program typed in, SAVEd, and LOADed, you can see
that the machine language routine still operates, even if the BASIC
part of the program does not.  LOAD and RUN Blockhead, then press
RUN-STOP.  This breaks the BASIC program, but the blockhead can still
be moved with the paddle control.

Blockhead uses the collision register to detect when one sprite
touches another.  Since the collision register is changed only
temporarily when sprites collide, the contents representing the
collision must be saved until an event occurs which may again make the
sprite collide.  The register is then cleared, and the sprite is ready
for collision.  Collision detection between the blockhead and balloons
is handled through BASIC.

The game is played with a set of paddles, which must be plugged into
Control Port 1.  Since Blockhead is a one-player game, only one paddle
will work.  The paddle moves the blockhead's home base from side to
side, with the blockhead standing on it.  You use the fire button on
the paddle to make the blockhead leap.

The original version of this game is written to be used with
Atari-style paddles.  If you have Commodore paddles, you must change
lines 1070 and 1080 to read as follows:

    1070 DATA 216,24,173,164,194,105,28,141
    1080 DATA 161,194,56,173,164,194,233,217

This alteration leaves a slight glitch in the paddle movement around
the seam but provides for optimal range for movement around the
screen.

Playing the Game 

This game works using a timer.  The object of the game is to pop the
balloons as they float across the sky.  The more balloons you pop in
the time limit of two minutes, the more points you'll receive.  Not
only must you pop the balloons, but you must also catch the blockhead
before he falls below his home base.  If you miss catching him, points
are deducted until you bring him to the surface by pressing the fire
button.  He'll then leap back into the air.

For each balloon that you pop, you receive 10 points.  Each time you
drop the blockhead, your score is reduced by 15 points.

When you LOAD and RUN the program for Blockhead, a tune plays and the
screen sets up.  This takes a few moments, so be patient.  Finally,
the blockhead appears, and the balloons begin to float across the sky.
At first, they are close to the ground and easy to pop.  Simply press
the fire button and the blockhead leaps into the air.  If he touches a
balloon, it disappears, and you'll hear a soft popping sound.  You've
just received ten points.  The balloons will continue to float at this
level until all six of them are popped by the blockhead.

As soon as the first level of balloons has been popped, the tune plays
again, then another level, slightly higher, appears from the left side
of the screen.  There are six levels of balloons altogether.  If you
pop all the balloons, 36 in all, the game stops, even if there is time
remaining. At this point, you're asked if you want to play another
game.

Of course, popping the balloons is only half the fun.  You also have
to catch the blockhead as he drops to the ground.  If you miss him
with the paddle-controlled base, he will vanish.  To make him
reappear, you need to press the fire button to make him leap back up.

Going for the High Score

After playing Blockhead a few times, you'll notice some things that
can increase your score, or reduce the time it takes you to pop all
the balloons.

If you time the blockhead's leap, you can pop two balloons at once.
This must be precise.  The blockhead has his hands outstretched, and
if both come in contact with a balloon at the same time, the balloon
on either side will pop.  Sometimes this works, and other times it
doesn't.

You can also receive points if the blockhead comes very close to a
balloon.  The balloon won't pop, but you'll hear the popping n sound,
and another ten points will be added to your score.  Just as with
trying to pop two balloons at once, this will not work all the time.

If you keep the blockhead's home base stationary, most of the time he
will fall back to it.  Not always, so you have to keep your eye on
him.

Remember that the blockhead is not able to pop a balloon on the way
down, only on the way up.
