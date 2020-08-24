Hotshot

In the previous chapter Gunners permitted humans to shoot at each
other.  The role of the computer there was as a dispassionate
mechanic.  In this game human aficionados try to zap the elusive
machine.

Once again, the foe is ensconced in a grid, ten numbers to the side,
and to shoot is to enter column and row coordinates.  Meanwhile,
inside of the program, the trail of your shots is watched, and the
computer tries to escape your shot pattern.  After each round is fired
you are tersely advised as to the accuracy of your shot, and the
computer may or may not take evasive action.  In either event the
computer can move only one square per turn, in any direction it
chooses.

A particular meaning applies to each of the three spotter clues.  A
"hot shot" is one that has landed on an adjacent square (above, below,
to either side, or on either adjacent diagonal) to the computer's
entrenched position.  When you make a "hot shot" the computer has to
move.

Advice that you were close should be interpreted similarly, the
difference being that your round landed two squares distant.  That is,
there is one square between the target and the strike of your shot.
If you were close, the computer may move one square in any direction,
including on the diagonals.  Then again, it may not make a move; the
choice is the computer's.

If the computer advises that you missed, it is not permitted to move.
To have missed simply means that your shot was beyond the definition
of the other two clues (and you certainly did not score; otherwise the
game would be over).

Sound like fun?  It is.  Even after you have mastered the intricacies
of how the program calculates its moves it can still be exasperating,
sometimes, to defeat what is in principle a simple strategy.

Every move made by the computer is based on a finite scheme which
depends on a primitive implementation of artificial intelligence.
That is, it looks at a brief history of your shots in an attempt to
discern whether you are proceeding according to some plan.  To do so,
the program has to "see" the grid and the relative placement of your
shots.  What the program sees is looked at in the following manner.
