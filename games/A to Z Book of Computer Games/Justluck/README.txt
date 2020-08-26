Justluck

Here is a dual-purpose program.  The first purpose is a game called
Chuck-a-Luck.  It's a fast-moving game played with three dice, and a
one-time favorite with riverboat gamblers.  The dice, enclosed in an
hourglass-shaped wire cage, are rolled when the dealer turns the cage
over.  Bet on any number, one through six.  If your number comes up on
one of the dice you win.  You win double if your number comes up on
two dice, and triple if it comes up on all three.

This game program simulates the part about turning over a cage, of
course.  We have found it difficult to turn over some models of
microcomputers.  Otherwise, even the legendary Bat Masterson would
recognize this game as a direct takeoff of Chuck-a-Luck.

Way Justluck then?  A second purpose of this program enables you to
prove that the random-number generating feature of your computer
really does involve just luck.  Besides, Chuck-a-Luck is too long a
name to use as an eight-character program label, and it doesn't start
with the letter J.

The dual aspect of this program includes a startup sequence that has
three pages of operator instructions.  The first offers the choice as
to which mode to run in.  Either the usual game of Chuck-a-Luck may be
selected or the alternative may be the benchmark mode to ascertain the
degree of natural odds provided by computerized games.  After
selecting either the C or the J mode -- the symbolic codes are
self-explaining -- a second page of instructions may be optionally
printed; depending on which mode was picked.

In the Chuck-a-Luck mode the game runs as described earlier.  The
player inputs a bet, the dice are rolled, and the winnings are
computed.  The house keeps all lost bets in a counter and the player's
balance is maintained in another.  On every tenth roll these counters
are displayed, and on every twentieth roll the game may be ended or
continued, optionally.

The Justluck mode is basically the same process, except the cage is
continuously turned without stopping for a bet each time, and a tally
is made of the three types of match conditions.  There are separate
counters for singles, doubles, and triples.  At the start, as is
explained in page 3 of the instructions, four questions are asked of
the operator.  They are:

    (1) BET? 
    (2) NUMBER? 
    (3) ROLLS? 
    (4) PRINT? 

Questions 1 and 2 are common to the regular game: the first expects a
dollar-amount entry, and the second requires a number of from one to
six.  The third and fourth questions are unique to the J mode.
Question 3 (Rolls?) anticipates a whole number to be used for a
run-until-done limit.  When the limit is reached, the program will
break out of the otherwise self-perpetuating loop at the normal
end-of-game halt point.  At this time the contents of the singles,
doubles, and triples counters are output, as well as the house and
player's balances.

Question 4 (Print?) is supposed to be answered with Y or N, meaning
yes (print each roll) or no (suppress all printing until the end of
the run).  The no-print option is intended to benefit those suffering
from an austere computing budget.  If you'd rather not have umpteen
feet of printer paper wasted for, say, a thousands rolls of the dice,
the N response to the fourth question is warranted.  For short runs or
for CRT-based output, the turns can be fully displayed.  In this case
the values of the dice are printed, followed immediately with the
accumulations in the winnings counters and the frequency counters.

[Note: A version of "Chuck-a-Luck" was also published in Creative
Computing's "More BASIC Computer Games".]
