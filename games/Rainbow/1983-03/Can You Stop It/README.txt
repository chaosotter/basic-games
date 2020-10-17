CAN YOU STOP IT?

  Can You Deactivate the Bomb?
  by David A. Stewart

This is a game of chance.  You must guess the correct code in order to
deactivate the Atomic Bomb and keep everyone from being blown up.
Since the computer is generating the number on a random basis, you can
never memorize the winning numbers.

It's a simple game that my children love to play.  I think other Color
Computer users will enjoy it, too.

Line Description: 

Lines 95-135 print the instructions and set the mood lor the game.  I
used the INKEY function throughout the printed material so that you
can read it at your own speed.  If you prefer to skip the
instructions, just continue to press ENTER until "ENTER YOUR
COMBINATION?" appears at the top of your screen.

Lines 150-175 are the GOSUB statements which send you to the random
selection of numbers sub-routine.  There are five of these lines,
which gives you five chances to guess the combination.

Line 177 sends you to line 195.  This line is only applicable if you
have not guessed the combination.

Lines 180-191 are the WIN routine.  It also lets you decide whether or
not to play again.

Lines 195-965 are the LOSE routine.

Line 970 sends you to line 187 where you can choose whether or not to
play again.

Lines 1500-1530 are the random generator of the combination.

Lines 200 and 2050 are time delays.

User Modification 

If you wish to have more chances at guessing the combination, simply
add more lines between lines 150 and 177 that say "GOSUB 1500."  If
you want less than five chances, delete some of the lines that are
already there.  You should also change the last part of line 135 from
'You have five chances...' to read the actual amount you are giving
them.

If you wish to make it more difficult in another manner, you can
change the amount of numbers the computer can choose from.  In this
listing, the computer will pick a number between 1 and 10 at random.
For example, if you wish to make it pick a number between 1 and 25,
you would change line 1520 to: "IF X=RND(25) THEN 180."  Then you
would change line 135 to read... "it is a number between 1 and 25."
If you make the number span too large, you may find it very hard to
win with only five chances, so you might want to increase the number
of chances at this point.
