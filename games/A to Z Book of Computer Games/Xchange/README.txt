Xchange

Yes, exchange is misspelled -- intentionally.  It wasn't easy to
invent a game with a name that begins with X.  It's likely though,
you'll forgive the typo when you savor the flavor of what follows.

For this, our twenty-fourth entremets, I have concocted a program for
two mortals.  Or it may be enjoyed solitaire.  Before a game begins
you are asked whether one or two players wish to play.  This program
will then manage one or two Xchange playing grids, depending on your
answer to the mode question.

THE GAME 

A playing grid consists of the first eight letters of the alphabet (A
through H) and an asterisk, arranged in a three by three matrix like
this:

   D H C 
   B F * 
   A E G 

For two players there are two of these grids side by side, and in the
beginning they are identically scrambled.  The method of play is to
exchange the letters with the asterisk, one at a time, until the
letters are put into their proper order with the asterisk trailing
(lower right corner).  There is one more rule: in a turn only a letter
that is immediately to the left or the right of, or immediately above
or below the asterisk may be exchanged.

A move is the entry of just the letter; the program will then exchange
the print positions of your choice and the asterisk.  If you are in
the dual-player mode, your opponent is permitted to make an entry also
before two new grids are printed.  When playing solitaire there is
only the one board; so the updated output is nearly instantaneous
after each entry.

In either mode, as can be imagined, the rounds of play can be very
fast.  Yet, if you are clumsy on the keyboard, or are not in
possession of the secrets for shuffling strings, this game can drive
you berserk.  On the off chance that your local competition may buy
his or her own copy of this book I'll not disclose here the tricky
technique that will unscramble a grid in the least number of moves.

There is a risk that some nonprogrammer types may stay baffled
forever; so your computer could stay entrapped in the
enter-print-enter cycle for all time.  Rather than having to pull the
plug to force an abort there is a privileged entry to permit
programmers to exit to the end-of-game routine.  (An X will do it in
the left-hand player's position.)  This fact is not advertised in the
game's instruction module, however, to enable you to maintain that
aura of mystique that surrounds all programmers.
