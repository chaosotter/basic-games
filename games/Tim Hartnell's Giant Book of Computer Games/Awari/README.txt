AWARI

AWARI is one of a series of pebble-in-pits games generally known under
the name of "Mancala."  The game is played from Africa to the
Philippines, and will now move into your home, via a very clever
computer opponent.

As you can see from the sample game, which starts below, the game
begins with six "pits" (the letters A to F and L to G) facing each
player.  Your pits are those from L to G.  Each pit contains three
seeds at the beginning of the game.  Choosing any pit on your side,
you pick up all the seeds from it, and then proceed to move in a
clockwise direction, sowing a seed in each pit as you go past it.  You
do not sow any seeds in the pits at either end of the board, the ones
which start off as zeroes.

If your final seed lands opposite an empty pit, then all the seeds in
the pit you've landed in become yours, and are transferred to your
"home."  Your home is the zero to the left of the board, the
computer's home is the zero to the right.

The game continues until either side is completely empty, so the
player cannot move.  At this point, the player with the largest number
of seeds in his or her pit is the winner.  The computer plays well in
this game, but with practice you'll learn to defeat it.  Don't expect
too many victories in the early games.  Remove the INPUT Z$ in line
270 if you don't want to see the computer's move before it is made.
Also, you can delete the loop in line 40 to get maximum speed
(although the computer plays very swiftly even in its present form).
