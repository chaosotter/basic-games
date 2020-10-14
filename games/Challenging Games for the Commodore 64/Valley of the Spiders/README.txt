VALLEY OF THE SPIDERS

Your aircraft has crashed in an isolated valley high in the Andes
mountains.  The only inhabitants of the valley are large blue spiders.
These spiders are very hungry and, fortunately for you, not very
bright.  As they pursue you around the valley they often blunder into
the numerous swamps in their hurry to catch you.  Your only hope for
survival is to avoid the first rush of spiders and then lure the ones
chasing you into the swamps.

The screen display will show the valley boundaries, which neither you
nor the spiders can cross.  You will be displayed as a black CLUBS
symbol and the swamps are green circles.  You will recognise the
spiders when you see them.

The game starts off with you running to the right across the screen.
Your little man moves continually during the game and you use keys on
the computer keyboard to change his direction.  The "A" key moves him
up the screen, the "Z" key down the screen. Press the "," key to move
left and "." to move right.  These keys may feel a bit odd at first
but after a little while you will find that they are very easy to use.

The routine from lines 2000 to 2500 sets up the program, line 2002
changes the screen and border colours and lines 2010 to 2040 draw the
top and bottom borders of the valley.  Lines 2050 to 2070 select and
place the spiders and swamps and also draw the sides of the valleys.
Variable Z represents the swamps and Z1 is the spiders.

Lines 30 to 80 check the keyboard for your input and make the relevant
direction changes.

Lines 90 to 140 use PEEK to see if you have walked into the edge of
the valley or a swamp, in which case they prevent you from moving any
further in that direction.  These lines also check to see whether you
have bumped into a spider.

Lines 160 to 290 control the movement of the spiders.  These lines
also use PEEK to see whether the spiders have walked into a wall, a
swamp or caught up to you.

Lines 1500 to 1630 provide the end routines which tell you how well or
how badly you performed.

Valley of the Spiders is a fun game and one well worth experimenting
with.  No computer game program is ever really finished.  So please
use this game as a starting point and as your programming skills grow,
use it as an exercise in moving graphics.  Try to add as many
additional features as you can.  For instance you could make the
swamps fatal to our little pilot as well as the spiders.  Try to add a
high score feature or more hazards for the player to avoid.  The
possibilities are endless.

[Note: This is yet another version of "Robots", "Daleks", "Zombies",
etc.  Versions of this abound in the collection.]
