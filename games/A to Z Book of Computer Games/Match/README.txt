Match

Pick up on the gaming theme of Dice, devise an internal card-deck
management scheme, and... *presto*!  We have another game for our
library.  For the sake of variety, however, there are some other
differences.  They are noticeable in the instructions as printed by
the program itself.

      2, 3, OR 4 PLAYERS 
     DRAW CARDS IN TURN. 
     YOU MAY DRAW FROM 2 
     TO 9 CARDS PER TURN 
      (OR YOU MAY PASS). 
    SCORE 1 POINT FOR EACH 
     CARD DRAWN - UNLESS 
     YOU GET A PAIR. ANY 
     MATCH ENDS YOUR TURN 
     AND YOU GET NO SCORE. 
  GAME IS 20 POINTS -- FIRST 
       ONE THERE WINS. 

In the referenced game of Dice, a turn required a decision by the
player for each roll.  A turn in Match consists of but one operator
entry: the number of cards to draw.  According to the instructions a
valid entry can be zero (to pass) or any digit from two through nine.

There is a reason for the different playing conventions.  With dice
the odds for what may be rolled in any one turn are the same as for
every other turn.  With a deck of cards, however, the odds change with
every draw in any card game where the deck is continually being used
up.  This program does use a shrinking deck, but when it is exhausted
a new one is automatically brought in to play.  There are some
possibilities for using one's skills in this case rather than
depending entirely on Lady Luck.

As each card is dealt a parenthetical note is output also, which shows
the draw number (ranging from one to fifty-two, serially).  Suppose
then, the last card dealt was number 47.  There are five cards left in
the deck.  If your infallible photographic memory says there are no
pairs remaining in the deck an entry of five is strategically sound.

What about taking a chance with a draw request for six?  In the
example just cited the sixth card will introduce a newly shuffled
deck.  Only Lady Luck knows what the first card from a new deck is apt
to be.  (Drawing any pair does mean you'll get no score for the turn,
remember.)

The Match program does use an honest deck (though you may have to use
this text, a copy of your program's listing, and maybe even pencil and
paper to prove it to some skeptics).  One of the design goals for this
program was to devise an authentic shuffling mechanism that cannot be
faulted by any arguments concerning mechanical bias.  During your
study of what follows you too may believe that here we have an honest
game.
