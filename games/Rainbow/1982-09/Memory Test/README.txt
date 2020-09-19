MEMORY TEST

  Let’s Learn How to Do a Number Picking Game

  by Del Walrath 

This article deals with the writing of a number memory game on one
level, but will also discuss how that game came to be so that readers
might get some insight into how this sort of operation works.  There
are all sorts of applications which the same principles might apply.

The game itself works fairly simply.  The 80C gives you a number to
memorize. If you are correct, it will lengthen the number and display
that. If you are wrong, it will "haze" you and ask you to try again.

The program works easily in a 4K non-extended 80C, although it was
originally written for 16K.  It can be keyed in in less than an hour.

Let’s take a look at the program now and compare it to the rules,
which are few:

Picking the Number 

This did pose a problem as the 80C can only count up to 999999999 and
then goes to exponential notation.  Who wants to memorize a bunch of
zeroes?  We can overcome this by using labeled variables and building
arrays.

Here is a routine to do that:

    210 Y=Y+1
    220 NUM(Y)=RND(9)
    230 PRINT @99,"";
    240 FOR I=1 TO Y
    250 PRINT NUM(I)
    260 NEXT I

With this method you must also add a dimension line, as the 80C only
saves enough room for 10 labels.  It must be placed early in the
program to avoid an error.

    2 DIM NUM(50) 

This can be set higher if you think you can remember more than 50
digits at a time.

The other method, which I used in the listing below, is to treat the
digits as a string as in lines 200-310.  Line 240 picks the digit by
random and adds 47 to it to give use the ASCII code.  It is then added
to NUM$ along with BLN$, which is a blank space, at line 250.

The 80C then determines how many numbers there are to remember and
figures out how long to show them to you.  This is accomplished in
lines 270-310, with a GOSUB to lines 660-760 to set a value to the
variable TM in a timing loop in line 300.

Your Guess of the Number 

This could be accomplished by another array: 

    350 FOR I=1 TO Y
    360 INPUT PI(I)
    370 IF PI(I) < 0 THEN 350
    380 NEXT I

We would then have to make an addition in line 2:

    2 DIM NUM(50),PI(50)

But, again, I chose to work with strings as shown in lines 320-420.
Within the FOR/NEXT loop, using INKEY$, we build a string whose ASCII
codes fall between 48 and 57 (in line 390) and whose length is that of
NUM$.

Something that we can do with the INKEYS that we cannot do with INPUT
is to use keys other than the alphanumerics.  Line 380 checks to see
if the key pressed was either the CLEAR or the back arrow, in which
case the screen is cleared.  CI$ is then set to nothing and you get to
try your guess again in line 310.

Line 390 excludes all keys except those whose ASCII code is between 48
and 57, which are the number keys.  The BREAK key is not disabled as
in most Basic games, but if this is a must, there is a routine which
will allow you to do is in the listing for The Track in this month’s
issue of the RAINBOW.

Compare the Two Strings

If we were using arrays, we could compare number to number in both
arrays like this:

    440 FOR I = 1 TO Y
    450 IF NUM(I) <> CI(I) THEN 490
    460 NEXT I
    470 PRINT "CORRECT"
    480 SOUND 229,8: GOTO 220
    490 PRINT "WRONG TRY AGAIN?"

Comparing strings is a little bit easier, as will be seen in lines
430-650 of my listing.  Line 440 compares NUMS with CIS, using all the
digits at once.  If you were correct, control is passed to line 620,
which can tell you "CORECTOMUNDO" and then it is back to line 220 for
a new number.

If you were incorrect, the end of line 440 is ignored and control is
passed line 450, printing "WRONG" and depending on the LEN(NUM$), the
80C will either reward or chastise you.

All in all, this is a simple program, easy to follow and just waiting
for your personal touches.  By comparing the two forms of writing it,
I hope I have helped to show some of the alternatives to programming
for you to contemplate.
