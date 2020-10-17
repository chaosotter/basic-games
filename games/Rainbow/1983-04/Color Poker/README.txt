COLOR POKER

  A Colorful Game of Draw -- That's Color Poker
  by Joseph Kohn

Color Poker duplicates the electronic draw poker games prevalent in
Vegas, and requires 16K, Extended BASIC.  Playing is quite simple.
The machine deals you five cards.  You have the option of keeping all
of them or discarding up to lour to improve your hand.  How much you
win, if you are lucky, is based on the built-in odds for each winning
hand.  I use the same odds as Las Vegas, except that I don't require
that a valid pair be jacks or better.  I don't like losing that much!
If you want to be more daring, I've included the program changes.

The Color Computer is ideal for providing the card graphics and colors
that make the game visually interesting.  The speed of the Extended
Color BASIC in implementing the graphic commands keeps play at a brisk
pace.

The program is composed of four main parts: graphics routines (lines
80-870), the actual play of deal and discard (lines 880-1320),
determining the value of your hand (lines 1330-1620) and the final
tally of your finances (lines 1630-1710).

The bulk of the graphics routines are the DRAW strings in lines
90-650.  These, along with the DRAW subroutine in line 670, provide
the alphanumeric displays that both prompt the player and provide all
the necessary information for playing.

These strings area subset of a very useful library program which I
call Font.  This consists of the DRAW strings for all the ASCII
characters and provides a source of alphanumerics for a great many of
my high resolution programs.  By changing scale factors, start
positions and colors, many interesting effects can be created.  The
title screen utilizes a scale of S16, each word is drawn with green,
then offset and redrawn with blue.

After displaying the odds for each winning combination, play starts by
selecting the bet in line 900.  I have generally found that most games
requiring you to choose a bet quickly become boring.  Therefore I
decided to make the betting random, which introduces more chance and
interest.  Here the variable BT is set from $100 to $1000 in $100
steps.  The bet changes to thousands after you have more than $20,000.
This is accomplished by using the logical statement TT>20000, where TT
is your total bankroll.  The INT function is required because of the
inaccuracies of the exponential operator, which could produce
undesirable digits to the fourth decimal place.

Each deal is from a fresh deck, set in line 930.  Five cards are dealt
at random and the cards are drawn on the screen.  The card shape uses
the LINE command with a filled box.  The card values are drawn using
the DRAW strings, then the appropriate symbol is placed on the card
face using PUT.

The player enters the numbers of the cards he wishes to discard.  The
discards are indicated by boxes around the selected cards.  If a
mistake is made, the player can cancel his entries and start over.

After being dealt replacement cards, scoring of the hand proceeds.
This starts with sorting the cards by lace value.  Tests are made for
all possible winning combinations starting with straights, then
flushes and finally ending with a single pair.

If the cards do not produce a winning hand, the bet is subtracted from
the player’s bankroll.  Winning hands are paid off according to the
odds stored in the corresponding DATA statements, line 850.

As I indicated, if you wish to define a valid pair as jacks or better,
do the following: Extend line 1580 with :Y=CV(CD(X)).  And add line
1605 as follows: 1605 IF Y<11 AND Y>1 THEN 1620.
