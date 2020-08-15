(From Color Computer Magazine, March 1984.)

    MUSICAL TALES: If you and your computer could collaborate to write
    a story and then put your collective words to music, you would
    have quite a party game wouldn't you?  Well now you do.

    by Robert Toscani

This program, Musical Tales, gives you a series of incomplete
sentences.  After filling in your responses, the program plays back
the complete story to musical accompaniment.  You can choose from
three pre-programmed songs, or you can write your own.

The story questions are general, allowing you to go in any direction;
I had planned to make the prompts more specific and adult but decided
against it.

The program requires 16K of RAM and Extended Color Basic.  Line 10
clears enough memory and line 20 sends the program to the
instructions.  Lines 50-80 produce a title page and the author's name.

The incomplete sentences, or prompts, start at line 100 and continue
to line 490.  I did not use the same string label throughout the
prompts because the computer confuses some of them, such as B1$ and
B10$.

After you input your responses, line 520 lists your musical
selections.  That list runs down to line 600, which awaits your
choice.  Line 610 is an error-trapping command and line 620 determines
which of the three music data areas you want to go to.  Or whether
you're going to input your own song.  Your programmed choices are
western, adventure, and inspirational.

Line 640 prints the completed product.  Notice the PLAY command in
lines like 670.  These commands are interspersed throughout the
section so that after reprinting a few lines of your deathless prose,
the computer plays a few notes of music.  Since the computer prints
quickly, there is no noticeable lag in the music.

The tale and the music continue to line 1250, which prints The End.
Lines 1290-1340 provide you with the options of playing the same thing
again, playing the same story with different music, starting from
scratch, or ending.  Lines 1350 and 1360 act on your decision.

Line 1380 starts the pre-programmed music and runs down to line 1770.
A GOTO command separates each song, so it's not difficult to see where
each ends.  Lines like 1540 are used because some music repeats itself
in spots, but the program has a different label anyway.  This saves
repetitive typing.

Line 1790 is the routine for your own music; it's a series of input
commands that label each section.  If you use it, remember to use the
L, O, T, and V PLAY commands where needed.  The computer won't do it
for you.

The program is easy to modify to suit you tastes.  By making the
prompts more suggestive, and programming a song like the stripper, you
could have a great adult party game.
