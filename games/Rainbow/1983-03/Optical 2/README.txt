OPTICAL 2

  by Norman Latner 

Optical illusions are always fascinating.  First you see it one way
and then another, or your eye is led to a seemingly impossible
situation.  Both of these effects appear in this graphics program
which I call Optical 2.  I'm sure you’ll enjoy looking at them and
listening to the Mozart selection which accompanies the First
illusion.  P Mode 4 graphics are used to give smooth diagonals, while
the black/white color set with red/blue "fringing" add to the clean,
crisp visual look.

The program breaks down in the following way.  Lines 10 to 80 display
the title, with alternating colors and sound.  Line 90 sets the mode
to 4, the screen to 1,1 and clears the graphics screen.  The first
illusion is drawn in lines 100 to 240 using the LINE instruction
throughout.  The music, in lines 250 to 420, is assembled in the form
of strings, so that musical phrases can be easily repeated using the
PLAY command.  This section also contains two PAINT lines which change
the background from black to white for another interesting visual
effect.  Finally, lines 430 to 510 draw the second illusion, again
using the LINE instruction.

If you're like me, you may be a little reluctant to key in a program
unless you know it's worth the effort.  Although I can't give you any
guarantees, the program is structured such that you can enter it in
sections.  The minimum entry would be lines 90 to 240 which will
display the first illusion with a black background.  You will have to
add a temporary line: 245 GO TO 245.  This prevents a return to the
text screen. If you like what you see, add lines 430 to 510 for the
second illusion.  Line 245 should now be changed to: 245 FOR T=1 TO
2500:NEXT T.  This holds the first picture on the screen for a few
seconds.  To complete the program from this point, just add the
missing lines, delete line 245 and enjoy.
