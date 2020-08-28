Ultranim

Some games involve you and the computer as opponents.  Others enable
you to challenge a friend, using the computer as nothing more than the
ultimate in fancy game boards.  The program presented in this chapter
does either of these optionally or both at the same time.

The game itself is based on the ancient game of nim -- probably the
most programmed game in the world.  Because you can play against the
computer, against a friend, or the three of you may compete at the
same time, this is called *Ultra*nim.

As a program. Ultranim contains all the techniques necessary to enable
the computer to play a perfect game of nim.  There is also within it
programming tricks that can be used for the control of other games
that involve two people and the machine.

This is how Ultranim presents itself.  A game begins with five groups
of five tokens each.  In a turn a player may pick from one to all of
the tokens in any groups.  The player who gets the last pick wins the
game.

STRATEGIES IN NIM 

Classical versions of this game involve only two players, and the
winner can be predicted exactly before the game even begins.  This
does assume that both players play a perfect game, of course.  This is
especially necessary of the one with the strategic advantage.  Any
error on his or her part can still nullify his advantage.  As a case
in point, suppose the following:

  * 100 tokens 
  * A draw cannot be less than one nor more than ten 
  * Player who gets the last draw is the winner.

In the above variation of nim the player who goes first has a real
advantage and should always win.  In your first turn you should take
one token.  Thereafter, the number that you should take should be such
that your pick added to your opponent's will equal eleven every time.
The results: 99, 88, 77, . . . 22, 11, and in the end, zero.

Ultranim offers several deviations to the classical scheme; yet it can
still be predicted who ought to win in every case.  There is the
difference that there are only twenty-five tokens.  They are grouped
as sets of five, and a player may take any or all of the five in any
one group in his or her turn; and either two or three players may
compete, one of which may be the computer.

Without mapping out truth tables for the various combinations of
players copy this program and play it for a while.  I debugged it in
just that way, and it was surprising how many games I had to play
before the pattern could be discerned as to know how to beat the
machine.  Amusingly enough this is true even when we already know how
the program makes its moves.
