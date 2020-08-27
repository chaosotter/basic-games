O-tell-O

There is another game called Reversi, another called Go, and another
called Othello.  My computer game is dubbed O-tell-O.  They are
checkerboard games.

As the game is played, the markers are constantly changing their
colors, belonging first to one player, then the other.  In its more
prosaic form two-colored tokens are used, usually white on one side
and black on the other.  When taking an opponent's piece, it is simply
turned over, thereby reversing its color.  Like most other programmed
versions, we use the letters X and O to distinguish the pieces.
Unlike most others, however, this program serves two human combatants.
Once you have mastered the strategy with a friend you can easily add a
subroutine to take on the computer as an opponent.  The design of this
program is intended as a base for experiments in artificial
intelligence.

THE PLAY 

The game begins with four tokens in place as shown in Fig. O-1.  One
player will be assigned Xs and the other player Os. The X player
always goes first.  Each play, including the first one, involves
bracketing an opponent's inhabited squares with your own, thereby
converting the opponent's pieces to your own.  This bracketing can be
achieved vertically, horizontally, or diagonally; and any number of
squares may be bracketed so long as the sequence of bracketed squares
is uninterrupted by blank squares or by squares already owned by the
playing individual.

    1 . . . . . . . .
    2 . . . . . . . .
    3 . . . . . . . .
    4 . . . O X . . .
    5 . . . X O . . .
    6 . . . . . . . .
    7 . . . . . . . .
    8 . . . . . . . .
      A B C D E F G H 

Fig. O-1. The O-tell-O playing board (reduced to eight squares for
microcomputer play).

Referring to Fig. O-1 the first player may bracket the D4 square
(containing the opponent's piece) by playing an X at D3, thus
converting the Os at D4 to an X and resulting in three vertically
aligned Xs at D3, D4, and D5.  Or he or she could play an X at C4,
thus bracketing the D4 square horizontally (resulting in three
horizontally aligned Xs at C4, D4, and E4).  Assuming the first player
makes this latter move the board would look like the setup pictured in
Fig. O-2A.

The opponent (O player) now has but one token on the board, and since
his or her move must bracket the first player's pieces, the choice of
plays is limited: put at E3, making a vertical row of Os at E3, E4,
and E5; place at C3, making a diagonal line of Os at C3, D4, and E5;
or he can place the at C5, making a horizontal row of Os at C5, D5,
and E5.  Let's assume he or she does the latter, which rearranges the
pieces to the setup pictured in Fig. O-2B.

Now X can play at C6, converting the at C5 for a vertical line and the
at D5 for a diagonal line in a single move.  Or play X at E6,
similarly converting two lines to Xs.  (The first of these is the move
pictured in Fig. 0-2C.)

If O plays at B5 he or she brackets the C5 and D5 Xs, converting them
both to Os.  The play goes on in this fashion, each player depositing
one token per move, until the board's squares are filled.

If a move is possible, even if there is only one such possibility you
must do it.  If you can not make any bracketing move (a move that will
result in at least one capture) you must pass.  If ever it does happen
that neither player can make a legal move the game is over.  In the
end whoever has the most markers showing is the winner.
