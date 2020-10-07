HIGH CARD

  Writing Your First Game 

  by Richard Mansfield 

Richard Mansfield, senior editor of COMPUTE! Publications, explains
the details of a simple game.  A beginning programmer can learn a
great deal studying this short program.

If you are tempted to write your own games, go ahead.  It's a good way
to learn to program. Games are basically the same as any other kind of
programming.

Computer games fall into two broad categories: 1. imitations of old
standards (checkers, Othello) and 2. games which could not be played
without a computer (Space Invaders, Pac-Man).  This second category is
more difficult to program for several reasons.  For one thing, you've
got to think up a whole new, and entertaining, concept and then adjust
the action until it is just hard enough to be challenging but not so
difficult that people want to give up.

This category (basically arcade games) is especially hard to program
precisely because a good computer-only game exploits all of the
computer's special attributes: speed, color, and sound.  To do this
well, to make things look and respond just the way you imagine them,
requires a good bit of programming experience.  Usually, too, several
things are happening at once in an arcade game.  This often means that
such a program must be written in machine language, which is far
faster than BASIC.

High Card Slice 

Old standards, on the other hand, can often be the best way to get
started programming games.  You already know the game concept, and
cards or dice or game boards are fairly easily constructed and
manipulated on your computer screen.  To illustrate, let's take a look
at a simple simulation of one of the oldest card games, "High Card."
The rules are simple: you place a bet, and then you draw a card from
the deck.  The computer, your opponent, draws a card too, and the
highest card wins the money.

One simplification here is that there is no attempt to represent the
cards on the screen.  The entire game relies simply on words (Ace of
Spades, for example) when cards are drawn.

Like most computer programs, the program can be visualized as having
four distinct zones: initialization, main loop, subroutines, and data
tables.  We can go through the steps in programming this game by
looking at each zone separately.

Initialization 

From lines 10 through 80 we are teaching the computer some basics
about this game.  Initialization is the activity which must take place
before any of the action can begin.  Computers are so fast that they
will zip up through these lines and start things off in the main loop
at line 100 in a flash.  However, as programmers, we are aware that
several preliminary events took place inside before anything else.

In line 20, the computer discovers that there is a variable called
DOLLARS which is set equal to 500.  It sets aside a section (like a
small box) in its memory which it labels DOLLARS.  When the game is
running, it will add or subtract from this box (lines 230-240) to keep
a running total of how much money you have left to bet.  From time to
time (line 110), it will check the box and report to the player how
much he has.  The box labeled DOLLARS is called a variable because
during the game the amount in it will vary.

Lines 30 through 60 are simple enough -- they ask the player to give
his or her name.  The computer memorizes it in another box called
NAME$ and can now speak more personally to the player in lines 140 and
230.  Also, the computer prints the rules of the game in line 60.

Line 70 READs four names (the face cards) from the data tables in
lines 510 on.  It also makes a mental note that it already READ four
items.  So, when it's asked to READ again (line 80), it will start
with the next unread item of data which will be CLUBS.  By now, the
computer has memorized a variety of important facts: the player's
name, the amount of his or her betting purse, the names of the face
cards, and the suits of a standard deck.  In less than a second, the
computer has grasped and filed away the necessary facts to go on to
the main loop where all the action takes place.

The Main Loop 

After checking that the player has money to bet, the computer asks for
the bet, checks again that the bet is possible, and then runs through
one cycle of the game starting in line 160.  At this point, a
programmer might find it worthwhile to visualize the steps involved in
the game: draw a card for the player; draw for the computer; decide
who won; adjust the player's purse.

Since both draws are essentially identical actions (the only
difference will be that we say "Bob draws a..." instead of "The
computer draws"), we don't need to program the draw twice.  This is
where subroutines come in handy.

The Subroutine 

Twice in the main loop, we GOSUB 300.  First the player, then the
computer, draws.  Line 310 randomly picks two numbers, the card and
the suit.  If line 320 finds that this selection matches the one drawn
just before by the player, it goes back for another draw.  Line 330
makes the name of the card be the number if it is less than 11 (a face
card).

Then line 340 announces the draw using three variables.  The first
variable (PLAYERS) is set up in either line 160 or 190 as appropriate.
Then the CARDS and SUITS variables are selected from the lists that
were memorized back in the initialization phase (lines 70-80).  The
subroutine then RETURNS to the main loop.

lines 210-240 decide and announce the winner of this round.  First, if
the variable CARD (the computer's card) is greater than (>) YOURCARD,
the computer is declared the winner in line 240, the purse is
adjusted, and the main loop is restarted (GOTO 100).  If the cards are
equal, nothing happens to the purse and the next round begins.  Notice
that we don't need to say IF YOURCARD > CARD at the start of line 230
to test if the player has won.  It's the only possible thing if the
computer has gotten this far.

Once you've solved a particular problem, you'll find you can use the
solution in many future games.  This subroutine which draws cards, for
instance, would work just as well for Poker, or Blackjack, or dozens
of other games.  Subroutines are handy not only because they can be
used repeatedly within a program, but because they can also be saved
and used repeatedly in future programs.  So think up a simple,
traditional game and teach it to your computer.  There is probably no
more pleasurable way to learn programming than to write a game.
