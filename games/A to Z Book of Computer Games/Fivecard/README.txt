Fivecard

The game program for this microcomputer version of poker pits man
against machine in a variation of five-card stud.  The rules are
simple and the rounds are fast.  The house and player start with an
equal stake of $200.  The ante for each hand is $5, and the betting
limit per turn is $20.

Betting occurs only once in each hand, immediately after each player
is dealt two cards.  All cards are dealt faceup, and the player bets
first.  The computer-cum-dealer is expected to match whatever is bet.
Then the remaining three cards apiece are dealt.  Both hands are
analyzed by the program according to traditional poker rules, the
rankings are printed, and another round begins automatically.

The object of the game is for one player, man or machine, to win all
of the other's money.  The bet and the call are both subject to the
$20 limit, but also to an account balance.  When one or the other's
stake falls below $20 the limit is reduced accordingly.  The person
can't bet more than he or she has left, nor bet more than the computer
can cover if the machine's stake is nearly depleted.

As a game this program is entertaining, just as it is presented.  It
is also interesting as a program.  We included it in this volume
primarily because of the deck management scheme employed, and the
poker-hand analyzer that it uses.

Programs that simulate card games must, in some way, hold a deck of
cards in memory.  In most cases it is up to the computer to do the
shuffling and dealing as well.  A number of techniques can be devised
to do these things, but invariably a single concept prevails: the deck
is really a table or an array, usually containing numbers to denote
both rank and suit.

At print time the codes designating the suits are converted to names,
and the aces and the face cards are spelled out.  The conversion is
strictly for the benefit of the human eye; the internal numbering
scheme facilitates using arithmetic for determing the relative ranking
of hands.

The coding scheme used, the table structure itself, and the business
of dealing and shuffling are all highly interrelated.  There are two
other card games in this book and they offer some contrasts to the
methods used in this one.  The following rationale describes why
Fivecard is built the way it is, and why poker-like games insist that
certain techniques be used.
