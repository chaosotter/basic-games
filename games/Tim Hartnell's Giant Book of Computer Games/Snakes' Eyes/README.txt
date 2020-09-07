SNAKES' EYES

SNAKES' EYES demands some more cool thinking under pressure.  You and
your computer take it in turns to throw a pair of dice.  You add the
total of the pips, and in turn add this to your score.

You can roll the dice as many times as you like, but if you roll a
seven, you automatically lose.  Therefore, as you can see, the program
demands you make decisions based on whether you should be careful and
perhaps lose the round by not rolling a high enough score, or whether
you should be greedy and go for the absolute maximum score and risk a
seven.

As in ONE-AND-TWENTY, the time you take to press RETURN to roll the
dice has some effect on the score you achieve.  You can see, in lines
120 to 150, that the variable N (set to zero in line 120) is
incremented by one each time around the 140/150 loop, until you press
the "q," "Q," "r," or "R" keys.

If you press "r" or "R" to indicate that you wish to roll the dice,
the computer goes to the subroutine from line 370 where the screen is
cleared (380) and then the two dice (X and Y) are rolled.  The Q loop
is covered 20 times, gradually slowing down as it is traversed (by the
inner loop, in line 430), until finally-with line 420-the results of
the dice rolls are printed.  The variable Z is set equal to the tally
of the two rolls (in line 480) before the computer goes to line 700
for the delay and to print a line across the screen, and then returns
to the start of the program to line 180, the one after the one which
sent it to the "roll the dice" routine.  Here the computer checks that
the total is not 7 (line 180) and if it is not, then adds the result
of the latest roll to your tally.

If, however, you signal through INKEY$ that you wish to quit, the
action goes to the routine from line 220.  After printing STAND BY,
the computer goes to the delay loop, and line print routine, and then
uses the same routine as the human did for rolling the dice, and-on
returning from the subroutine-checking that the total was not 7, and
if not, adding the new total to the score.  The computer has a very
simple means of deciding if it will roll again: if it has less than
the human, it takes the risk.

You'll find that it is relatively easy to program games like this on
your computer.  Once you've worked out the "mechanical" routines which
do such things as roll the dice, and increment the score, for the
human player, it is not very difficult to work out a routine to enable
the computer to use the same mechanical routines.  Most dice games do
not demand much "intelligence" and their strategy can often be reduced
to a couple of IF/THEN statements.  Read books on dice games -- such
as the excellent "Dice Games Old and New" by William E. Tredd (The
Oleander Press, New York, 1981) -- to get ideas for games to turn into
programs, and for simple ideas on how to play the game as well as
possible.  It is these ideas which you should find relatively easy to
turn into simple "intelligent algorithms" to enable your computer to
play reasonably well against you.

And if, as in this case and in ONE-AND-TWENTY, you stipulate that the
human must go first, the computer knows exactly what target it is
aiming at, and therefore starts a round with a considerable advantage,
which helps overcome the machine's inherent stupidity.
