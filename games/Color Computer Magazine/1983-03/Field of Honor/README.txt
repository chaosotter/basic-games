(From Color Computer Magazine, March 1983.)

FIELD OF HONOR occupies 11.4K RAM, including six graphics pages and
requires 32K and Extended Basic.  I have also included changes to run
Field of Honor on 16K machines.  The game is simple enough, but the
structure of the game is a little convoluted due to subroutines used
for frequently-used operations.  To reserve enough graphics memory for
the game, enter a PCLEAR 6 from the command mode.  An on-screen prompt
reminds you in case you give the RUN command without reserving memory.

After the introduction, the computer asks you to pick an offensive
strategy from a menu of points at which to aim your lance.  You are
then presented with a menu of defensive posture choices.  After
selecting offensive and defensive strategies, the program branches to
a subroutine that DRAWS the jousting scene.  This scene is a head-on
view of your opponent with a couple of tents in the background.  The
same scene appears for each of the four opposing knights.  The knights
are distinguished through different decorative designs and color
schemes on their shields; the fourth knight also has a distinctive
helmet.

Due to the program's structure, the entire scene must be redrawn
before your first meeting with each opponent.  This takes about eight
seconds, and the "covery story" on the video display tells you that
your computerized squire is looking after your horse, checking your
armor, rousing your opponent, or giving you time to mediate before
battle.  There's nothing brilliant about this, but it's a useful
technique for hidden graphics.

After the computer draws the scene, it requests a C (for Charge)
input.  The first image, a castle silhouette, appears for a few
seconds while a short fanfare plays; then the animation start.  The
three frames of ammunition are set up so that horse, rider, and lance
bob up and down at different rates.  The frames are displayed for
different lengths of time, since actual harmonic (oscillatory) motions
involve constantly changing velocities.  As the charge nears its
climax, the pace of the animation speeds up, and you hear a two-note
hoofbeat pattern in time with the animation.

Flashing red and yellow screens indicate the final clash; the computer
then informs you of the outcome.  This can be an outright loss
(accompanied by a Bronx cheer), a win (fanfare), or a draw.  Any score
under three points is a loss, six points indicate a win and anything
in between is a draw.  A draw gives you another chance at the same
opponent, while a win advances you to the next opponent.  Your fourth
victory earns you the hand of the princess.  But you're in for another
surprise; the king has two daughters and he never said which one would
wed the victor.  Your skill in battle plays no part in determining
whether the beauty or the hag shows up at the wedding.

[Note: This game is clearly related to "Joust", from Creative
Computing's "More BASIC Computer Games".]
