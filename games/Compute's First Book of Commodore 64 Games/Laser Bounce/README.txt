LASER BOUNCE

  by Frank L. Broadnax

Don't let the ball get by you.  The longer you can chip away at the
bricks, the higher your score.

"Laser Bounce" is a game of movement and trajectory similar to some of
the earlier videogames.  Using only the character set provided with
the Commodore 64, it displays a spaceship, the laser balls which
rebound from the ship, and the walls of energy you are trying to break
through.

Played with a joystick plugged into Control Port 2, the game begins
with a simple title screen and a short musical introduction.  At that
point you're asked if you want to read the instructions before the
game.  If this is your first game, you would press Y, and the
instructions appear.  Once you've played the game, however, you can
press N and go directly to the screen setup.

The screen sets up quickly, with the present and high scores displayed
at the top, your spaceship in the middle, and the six colored energy
walls below.  The number of spaceships remaining is indicated by the
small circles near the top-right-hand comer of the display.

As soon as the screen is completed, the game begins.  Your spaceship
fires its laser, and the ball appears.  The ball will travel in one of
four directions to start the game.  It will move up and to the right,
up and to the left, down and to the right, or down and to the left.
Be especially watchful for the ball to move up, toward your spaceship,
for you won't have much time to intercept it.

Intercepting the laser ball makes it rebound and move toward the
energy walls or the side of the screen.  It will bounce off both, but
you'll receive points only if it hits the wall and eliminates a brick.
Ten points are awarded for each gap created.

Although it doesn't matter which part of the ship the ball touches,
it's best to use its center.  Sometimes you may think you're in the
right position, but the ball misses one wing of the ship and gets by
you.  Unlike other games of trajectory, the ball will not bounce at a
different angle depending on where it strikes the ship.  No matter
where the ball touches the spaceship, it will simply rebound.

The ship moves rather slowly, so it's a good idea to keep track of the
ball, especially when it gets trapped in the wall and is busy
eliminating bricks.  You should be able to tell when the ball will
escape from the wall and head back toward you.  Anticipating it is
important: if your spaceship is out of position, it will be hard to
recover in time to intercept.  Because the spaceship moves three
columns at a time, its movement is sometimes jerky, and can make it
seem like the spaceship is changing position faster than it actually
is.

The laser ball is also hard to keep track of at times.  Because it is
drawn and erased each time it moves, it blinks off and on.  However,
when it erases bricks from the energy wall, it seems to disappear for
a moment.  If it is eliminating bricks rapidly, the best way to keep
track of it is to watch the pattern of erasing bricks.  Plotting where
it will return toward your ship, you can move to that position.

If you miss intercepting the ball, and it gets by you, your spaceship
will reappear in the middle of the screen, fire its laser, and another
round begins.  You have a total of five spaceships during a game, the
number remaining indicated by the display.

If you erase all five energy walls, the game isn't over.  Another five
walls are drawn when you reach 4800 points, the total you should have
after eliminating all the bricks.  Each time all five walls are
erased, another five appear to take their place.  You receive no
additional spaceships, however.

As the game ends, a message appears asking if you want to play another
game.  Pressing Y sets up another screen after you've indicated
whether you need to read the instructions again.  The score will
return to 0, but the previous high score remains as long as the
computer is left on.  The high score only prints once a ball is
missed.  You can quit playing simply by entering N when the prompt
appears at the end of a game.

Laser Bounce Variations

It's easy to create several variations of this game simply by altering
a few of the program lines.

An interesting variation can be created by changing line 400.  Instead
of the value DY=-DY, insert DX=-DX.  This will make the laser ball
wind its way down through the energy walls, reappearing and moving
toward the spaceship only after it's erased its way free.

Another change can be made in lines 460 and 470.  Insert GOTO 310
instead of GOTO 320.  After a ball is missed, the energy screens will
be redrawn, in effect making you start over.  Your score will not
return to 0, however.

Changing the value of DX in line 335 will also create another
variation of Laser Bounce.  DX=2 will alter the angle at which the
ball rebounds.  This can make the ball difficult to intercept,
especially as the game begins and the ball moves up and to one side.
You'll have to be fast to intercept it before it gets by you.
