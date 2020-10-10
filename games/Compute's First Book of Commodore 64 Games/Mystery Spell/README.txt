MYSTERY SPELL

  by Doug Hapeman
  64 Version by Eric Brandon

This spelling game features lively graphics and sprites.  It's also a
clever teaching aid for parents, teachers, and students in which
spelling lessons can be reviewed and then practiced.

If you've ever played Hangman, you won't have any trouble learning
"Mystery Spell."  Although it's similar in concept, there's a twist.
Instead of a gallows, you'll see flying blackbirds, and hear cheerful
music.

When the game begins, a happy face appears in a little hut surrounded
by trees and landscape.  The letters of the alphabet appear near the
bottom of the screen, and blank spaces representing the secret word
appear near the top.  When you select a letter, the bird moves to the
selected letter if it's a correct choice.  For each incorrect choice,
a blackbird descends and lands on a perch.  Too many blackbirds
disallow any more guesses, and the word will be spelled correctly for
you.

The program has 53 preselected words.  You can change the words or add
to the word list simply by creating your own DATA statements beginning
at line 2780.  The only restriction is that the last DATA entry must
be an asterisk (*).

Animation 

The most interesting feature of Mystery Spell is the animated bird.
The bird flies around the top of the screen, swooping down to pick up
letters and to sit on its perch, depending on whether your guesses are
right or wrong.

As the bird moves around, it seems to flap its wings, creating an
illusion of flight.  This is achieved by rapidly displaying different
poses.  In films, this is done by passing many frames through a
projector every second.  To achieve the illusion of flapping wings, we
too must create a few frames of a bird in motion.

Using a sprite editor program, we first drew the bird you see in
Figure 1.  Then, using that sprite, we designed two more birds, one
with the wing up (Figure 2) and one with the wing down (Figure
3). Using those shapes, we designed three more birds identical to the
first three, but without legs.  This gave us three frames for the bird
carrying a letter, and three frames for the bird flying freely. We
then set up the DATA statements in the program as if we were going to
display six different sprites.

Immediately after the screen RAM are eight memory locations that tell
the 64 where in memory to find the shapes of the eight sprites.
Usually these locations are at 2040 to 2047 ($07F8 to $07FF).  By
rapidly POKEing 2040 with the pointer to each frame, the bird seems to
flap its wings.  To see how this is done, look at lines 2000-2060.
This is the routine which flies the bird around the top of the screen
until you press a key.  Line 2050 steps through the frame numbers.
The actual POKEing is done at the end of line 2000.

Another interesting feature of the game is that when you guess
correctly, the bird swoops down to pick up a letter, and then carries
it up to the word.  How is that letter incorporated into the bird
sprite?

In the character set ROM at 53248 ($D000), the shape of each character
is contained in eight bytes.  Each byte is one row, and each bit is a
column within that row.  Depending on whether the value of that bit is
or 1, the pixel will be clear or set inside the character.  The sprite
is 24 bits wide, which is as wide as three O characters.  This means
that by putting character shape data into every third byte within a
sprite, we can make character shapes inside sprites.  This technique
could be used in any program which moves letters or text around
smoothly.  To see how this is done, look at lines 2180-2260.

Lines 2180 and 2190 make the character ROM available to be PEEKed.
They also turn off the keyboard.  Lines 2200 to 2240 take the
character data and put it in the sprites.  Finally, lines 2250 and
2260 cover up the character ROM and reenable the keyboard.
