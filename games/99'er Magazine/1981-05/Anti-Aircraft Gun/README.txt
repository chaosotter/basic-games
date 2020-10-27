[Note: This game requires TI BASIC and will not run in TI Extended
Basic, which allows fewer characters to be redefined.]

ANTI-AIRCRAFT GUN

  by Mark Moseley

Despite the fact that action games programmed in a high-level language
such as Tl BASIC run much slower than in low-level languages such as
9900 assembly language or GPL (the programming language of TI's
Command Modules), it is indeed possible to create reasonably fast
"real-time" games if you observe a few rules:

1. Keep the number of moving objects to a minimum.

2. Keep all unnecessary statements out of loops used to move objects.

3. Use only one character to define objects you want to move fast.

4. Increment the positions by two spaces each loop.  This makes the
   movement slightly jerky, but contributes greatly to the illusion of
   speed.

I've followed these rules in writing Anti-Aircraft Gun.  The basic
idea of the game is simple: you must shoot down an attacking plane
with your missile launcher before it blasts you twice with its laser.
The plane attacks at random heights from both the left and right
sides.  Its speed and frequency of laser fire are dependent on the
skill level you choose.  Your missile launcher can move along the
ground, and even hide behind a barrier; but when it fires a missile,
it is committed to its last position until the missed shot passes off
the screen.  You'll have to move around as much as possible because
the plane "remembers" your last position with its higher probability
of firing the laser near that position.  And don't expect too much
protection from the barrier: After five laser blasts (or less, if you
launch missiles through it), it will be disintegrated and leave you
exposed.
