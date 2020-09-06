CHESS

Chess is one of the greatest challenges which can face a computer
programmer.  To analyze how a human plays chess, and then to try and
break that analysis into a number of ideas which can be expressed
clearly enough to be written into a program, is a formidable task.

It cannot be claimed that this CHESS program is a particularly
successful attempt to surmount the challenge I've described.  While it
plays chess on a reasonably coherent basis, it does not play well, and
should prove no real challenge to defeat.  Why then include it in the
book, alongside other games which are practically unbeatable?

I've put the CHESS program in this book precisely because chess has
proved such an attraction to computer programmers.  Very few chess
programs have ever been published (I know of one which appeared in
Creative Computing magazine in December 1981, under the title Chess
C.4, by Michael Rakaska; two others which appear in books; and the
machine level listing of Sargon II), which suggests how difficult a
task it is to produce a program of this type.  I felt that the very
rarity of published chess programs gave weight to any argument in
favor of including this one.

The possibility of a machine playing chess against man has occupied
men's minds for hundreds of years.  A chess-playing automaton built by
Baron von Kempelen, which played its first exhibition match before
royalty in Vienna in 1770, captured the imagination of much of Europe.
Unfortunately, the machine was little more than an elaborate conjuring
trick, with a man in a hidden compartment operating the playing
mechanism.  It was a highly successful fraud, nevertheless, and an
examination of its moves shows the man stuffed inside the device
certainly knew his chess.  While doing some research into the history
of game-playing at the British Museum, I found in the British Library
a book from the last century, "50 Games Played by the Chess
Automaton", which some earnest reader had annotated in the last 100
years.  The human players came in for more scathing comments such as
"This move brands the player as a beginner!" than the machine ever
received.

But despite its reputation, the machine could not really play chess.
The first real approach to a device which would play a complete game
of chess (as opposed to machines, a few of which were built early this
century, to play particular endgames) was in 1949, when on March 9
Claude Shannon, then a research worker at Bell Telephone Laboratories,
Murray Hill, New Jersey, presented a paper called "Programming a
Computer for Playing Chess" at a New York convention.

As David Levy points out in his fascinating book "Chess and Computers"
(Computer Science Press, Inc., Potomac, Maryland, 1976) the real
significance of Shannon's paper lies not only in the fact that it was
first, but that "many of Shannon's original ideas can still be seen in
today's programs" (p. 40).

Shannon said in that paper that the number of possible moves in a
40-move game approached 10 raised to the 120th power, a number which
is of the same order as the atoms in the universe.  Clearly any
program which attempted to evaluate all those moves would be around a
long time (say 10 to the 90th power years) before the first king's
pawn made its foray out towards the center.

To make the program in this book play, and to get it to play
reasonably quickly, demanded -- as I'm sure you can appreciate -- a
number of compromises.  I traded in-depth evaluation against some
rough and ready playing ideas (such as programming the computer to
move pieces to help hold the center as much as possible; to develop
knights as soon as possible in a game; to capture by a pawn,
regardless of the fact that the pawn faced immediate capture, whenever
possible; to hold the king as immobile as possible, at least in the
early stages of the game, when a cowardly approach would seem to make
good sense; and to allow pieces with vast mobility -- such as the
queen -- a randomly weighted decision-making mechanism which would
ensure it did not sail off to the other side of the board just because
a clear channel was open for it to do so).

I followed a clear structure in laying out the program, which has
ensured that it plays as quickly as possible.  The structure, in fact,
is not as transparent as I hoped it would be when I first wrote the
program.  The complexity and number of demands put upon the computer
by the game when I finally got the program up and running meant that
my best-laid plans of producing a clearly structured program went
somewhat astray.  Nevertheless, the program does play extremely
quickly, and if it does not play well, at least it is an opponent with
quirks which can never fail to exasperate and amuse.

At the end of the listing there is a section which will tell you how
to modify the program to get it to play against itself.  This is a
fascinating demonstration program, and one which never fails to arouse
interest when it is up and running, especially from those who consider
themselves experts at the game.  I ran one game of "auto-chess," with
a printer connected, and before the program listing I'll show you
that, so you can judge for yourself what sort of an opponent the
computer will make.

The "auto-chess" variation makes use of the exchange sides option
within the game, swapping sides after each move.  When you swap sides,
as you can do if you feel the computer could do with some help, and
you give it the side you were playing on, the pieces are exchanged as
if they were reflected across a mirror placed at the center of the
board.  That is, a queen swapping sides ends up on the correct-colored
square, and so on.  Try the exchange a few times when you're playing
and the operation of this mechanism will be quite clear.

A final word, before we get down to our demonstration program.  The
computer must be watched to make sure it does not cheat.  It will only
do so extremely rarely, but (unless you're feeling particularly
generous) if it -- for example -- moves into check you should take
this as a sign that the program wishes to resign.  Again, the machine
sometimes has problems getting out of check.  Here you may wish to be
a bit more tolerant, as it will usually manage to do so within the
next move or so.  Alternatively, you can regard any such failure by
the computer as an acknowledgment of your superior play.  Before the
listing of the program, I'll show you a few stages in a game played by
the computer against itself.  The computer changed sides after each
move, and printed the board after every second move.
