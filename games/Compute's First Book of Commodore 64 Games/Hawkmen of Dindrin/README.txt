THE HAWKMEN OF DINDRIN

  by Esteban V. Aguilar, Jr.
  64 Version by Charles Brannon 

Fly down through the dangerous skies of the planet Dindrin to collect
stones.  Retrieve enough of them and win the game, but beware of the
floaters and lizards.  Several special techniques are used in this
game, including animation, multicolor sprites, and sound effects, each
of which is explained in the article.

There's a strange planet named Dindrin where multicolor floaters and a
giant sky skimmer drift through the daytime skies.  On the surface of
the planet, vicious land hunters come up from the ground and set
polished golden stones in the sun.  It's a form of worship too
obscure, too alien to describe.

Suddenly a strange-looking hawk-like creature dives down and snatches
a stone.  You are the hawkman.  Your objective is to pick up the
golden stones.

Several special programming tricks went into this game.  When you have
the game running, watch the screen carefully.  A patrol snake sweeps
across the bottom of the screen.  Airborne floaters pop up all over
the screen.  The hawkman's wings flap.  The luminous stones at the
bottom of the screen are protected by menacing lizards whose tongues
wiggle venomously at you.

To play the game, use a joystick plugged into the first port.
Maneuvering is accomplished by pulling left on the joystick to go
backward.  Whenever you want to dive or fly upward, you must pull down
or up (respectively) on the stick.  One thing to keep in mind when
ascending or descending is that you will move diagonally rather than
straight up or down.

The joystick response will be strange and difficult to master, but
predictable.  Once in a while, an obstacle such as a floater will get
in your way; press the fire button to safely bump into the obstacle
(and get points for it).

There are a couple of things to consider before playing the game.  As
time passes, you will lose energy.  If your energy runs out, you will
lose a life.  Second, when you're flying, don't run into anything or
you'll lose one of your lives.  When all your lives are lost, the game
is over.

How It's Done 

Multicolored characters are used for the stones and the lizards.  The
patrol snake is a multicolored sprite.

The animation (wing flapping, tongue wiggling) is done by switching
between two custom character sets.  Every object to be animated has
two alternate views.  The same image is copied into both character
sets for shapes that should not move, such as the stones or the score
line.

A machine language routine is used for smooth, even horizontal motion
for the patrol snake.  Instead of being called when needed by BASIC,
the machine language routine runs continuously in the background.  The
machine language routine also flips the character set.

Interrupting the Commodore 64 

We used the hardware interrupt request (IRQ).  To place a machine
language routine so that it automatically executes every 1/60 second,
you change the IRQ vector at $0314 (it normally points to the ROM
interrupt routines) to point to your machine language routine.  After
your routine executes, it exits with a JMP to the normal ROM routine.

The setup is a little tricky.  While you're storing the new IRQ value,
you have to use SEI (SEt Interrupt disable bit) to prevent any
interrupts from happening.  If you don't, an interrupt could occur
after you had stored the first byte of the vector value but before you
changed the second.  The interrupt would then vector through a
"half-baked" value, and end up in limbo.

After you've changed the IRQ vector, you clear the interrupt disable
bit (CLI) and return with RTS to BASIC.  The machine language routine
will then be running continuously in the background, flipping the
character set and moving the sprite.

Multicolor

Multicolor graphics are important for good arcade effects.  A few
years ago, graphic objects (such as a tank or plane) were always a
single color.  But increasing realism has been a feature of arcade
graphics, and multicolored objects are an important aspect of this
realism.

Normally, when you define a custom character set, you create eight
rows of pixels (picture elements, dots).  Each row is eight dots (or
bits) wide.  With multicolor, each row is divided up into four two-bit
pairs.  Each pair of bits can hold a number from 0-3: 00, 01, 10, 11.
You use a different number for each color.  This reduces the
resolution to four multicolor pixels per row, so the lizards and
stones are composed of two characters each.  You also have to tell the
VIC-II chip that you are using multicolor.  Do this with:

    POKE 53270, PEEK (53270) OR 16

Disable multicolor with:

    POKE 53270, PEEK (53270) AND 239

Here is a sample multicolor shape:

    rrrr   r = red  (arbitrary colors) 
    rbbb   b = blue 
    rbgg   g = green 
    rbgg 

Let's say the binary codes for red, green, and blue are (respectively)
01, 10, and 11.  Substituting gives:

    01 01 01 01   01010101
    01 10 10 10   01101010
    01 10 11 11   01101111
    01 10 11 11   01101111

You can change the colors according to this key:

    00  Background #0 color register - 53281
    01  Background #1 color register - 53282
    10  Background #2 color register - 53283
    11  Color in lower 3 bits in color memory.

That last line needs explaining.  You know that to get variously
colored characters, you POKE a number from 0-15 into the corresponding
color memory location.  However, colors 8-15 (accessed by the
Commodore key) are really multicolors.  Multi-color characters always
are displayed with a color from 8-15.  You won't get the eight
alternate colors (such as gray), but the normal color on the key (15 =
yellow).  Just add eight to the normal color number. So, a bit value
of 11 will take on the value in color memory.  The other colors will
come from the color registers (00 is transparent).

Multicolored sprites are similar.  Instead of the normal 24-bit
resolution, the bits are grouped into 12-bit pairs.  The colors come
from:

    00 - Transparent, screen color
    01 - Sprite multicolor register #0 - 53285
    10 - Normal sprite color register
    11 - Sprite multicolor register #1 - 53286

You tell the VIC-II chip that you are using a multicolored sprite by:

    POKE 53276, PEEK (53276) OR (2^X)

X is the sprite number, from to 7.  You can mix multicolored and
regular sprites on the same screen.  But all multicolored sprites will
share the same two multicolor registers.

Simple SID Chip Sound

The "thrumming" noise is made by playing a low-pitched tone through
the SID using the variable pulse wave and a fairly long (one-second)
decay.  Another sound effect (I can't really describe it) is made with
white noise and a medium decay.  The high byte of the pitch is changed
as the note is played.  There is also another sound effect created by
the sawtooth waveform affecting the low byte of the pitch.
