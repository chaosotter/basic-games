VECTORS

  If You Went Sailin'... Now Try a Bit of Rowing

  by Geoff Wells 

If you liked the Sailin' program in last month's issue of the Rainbow,
you might be one of those people who likes to try their hand on the
water.

But sailing is hard.  There are currents, winds, rudders and so forth.
Rowing is easier, there are just a couple of oars and they are pretty
easy to handle.

That is if it wasn't for the currents.  And, while winds and the
rudder are absent here, there is a current.  In fact, it can be a
pretty swift one.  And, did we mention the rapids?  No?  Well, you
see...

Vectors is a simple program that lets you make your way across a river
and tie up at a dock.  If you row just right, you will make it across
-- you need some speed to keep from getting caught in the current.
But, if you arrive too fast, you will knock the dock to bits.  Could
be a problem.

The program is pretty much self-prompting as to the way you should
play.

And, in typing this in, notice the use of INKEY$.  The computer, after
all, is a device that is designed to improve speed and efficiency.
Why, then, is it that so many programs force us to use unnecessary key
strokes?

The answer can only be laziness or lack of knowledge on the part of
the programmer.  The INKEY$ function is one of the most simple and,
yet, most powerful ways to direct program flow.  It may take a few
extra lines of code and a little ingenuity, but the results will be
worth it.

INKEY$ can be used to set up a pseudo "do until" loop as any single
keystroke is stored until INKEY$ checks to see if a key has been
pressed.  You can verify this with a short test:

    A$=INKEY$: IF A$="" THEN 20 ELSE PRINT A$: GOTO 10
    FOR X=1 TO 2000: NEXT X
    PRINT "INKEY$=";: GOTO 10

The flow graphics of the Vector program below use this technique to
simulate water movement while waiting for you to input your
instructions.

Another point worth mentioning is how to surpress the automatic
scrolling of text when printing on Line 16 of the screen.  Even with a
semicolon at the end of your print statement, if your text reaches the
right-hand bottom corner, the text will scroll -- leaving you with a
blank line at the bottom of the screen.

To avoid this, POKE your last character into 1535 and the screen will
not scroll.  This is used in lines 150 and 6070 of Vectors to draw and
erase the north arrow.
