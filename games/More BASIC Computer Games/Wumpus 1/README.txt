The Genesis of Wumpus

Two years ago I happened by People's Computer Company (PCC) and saw
some of their computer games -- such as Hurkle, Snark, and Mugwump.
My reaction was: "EECH!!"  Each of these games was based on a 10x10
grid in Cartesian co-ordinates and three of them was too much for me.
I started to think along the lines of: "There has to be a hide and
seek computer game without that (exp. deleted) grid!!"  In fact, why
not a topological computer game -- Imagine a set of point connected in
some way and the player moves about the set via the interconnections.

That afternoon in meditation the phrase "Hunt the Wumpus" arrived, and
Wumpus was born.  He's still a bit vague in physical detail as most
dedicated Wumpus hunters know, but appearances are part of the game.
(If you like, send me a picture of your version of a Wumpus.  Perhaps
friendly Dave, our editor, will publish the best one in Creative
Computing.)  The grid I chose was the vertices of a dodecahedron --
simply because it's my favorite Platonic solid and once, ages ago, I
made a kite shaped like one.  The edges became the connecting tunnels
between the caves which were the set of points for the game.

My basic idea at this time was for the player to approach the Wumpus,
back off, and come up to him by going around the dodecahedron.  To my
knowledge, this has never happened... most players adopt other
strategies rather than this cold-blooded approach.

Anyway... how to get the Wumpus!  How about an arrow which could turn
corners as it goes from room to room.  Let the hunter tell the arrow
where to go and let it fly.  The shortest round trip within reversals
is 5 caves -- and thus the Crooked Arrow.

Hmmm... How does one sense the Wumpus?  It's dark in yonder cave, and
light would wake him up.  If one got one cave away, the wumpus's
distinct smell would serve as a warning.  So far, so good... but
Wumpus is still too easy, so let's find some appropriate hazards for
the caves.

Bottomless pits were easy.  Any imaginary cave would have a few of
those around the place.  Superbats were harder to come by.  It look me
a day or two t oget that idea.  The Superbats are a sort of rapid
transit system gone a little batty (sorry about that one).  They take
you a random distance to a random cave and leave you there.  If that's
a pit or a Wumpus, well, you are in Fate's hands.

Around this time, I saw that Map-making would be a regular activity of
Wumpus-hunters.  I numbered the caves and made the scheme fixed in the
hopes a practised player might notice this and make himself a
permanent map of the caverns.  (Another unrealised hope -- as an
exercise, make yourself such a map on a Squashed Dodecahedron).

To start the game fairly, Wumpus, Hazards, and Hunter are located on
different points at the start of the game.  Each game starts with
random choices of location, but the hunter may restart with the same
set-up if he chooses.  This allows re-plays if the hunter, say, fell
into a pit on the first move.

Wumpus was nearly done in my mind... (hint to a games-writer: Have a
clear notion of your game before you start coding it.  This saves MUCH
cofusion.) yet I felt it was a bit dull.  Once you found the Wumpus
all you had to do was shoot it.  To fix this, the Wumpus was given a
little life.  If you shot an arrow or moved into his cave, he woke up
and chose to move to a neighboring room or to the same room (one of 4
choices).  If you and the Wumpus were in the same room after he moved,
he ATE YOU UP!!

Around here I noticed that the pits and the bats didn't affect the
Wumpus.  To explain this, I added some color by making him heavy and
with the legendary sucker feet.  After all, evolution works in strange
ways!!  If you are a Wumpus fiend, make a version of Wumpus in which
he avoids pits and superbats can carry him only one room (with the
possibility of being dumped into your cave).  This can be done by
making the wumpus moving procedure a subroutine.

I wrote Wumpus and dropped it off at PCC.  Then I went home and
dreamed up Wumpus II.

The Birth of Wumpus

Around a month later, I went to the Synergy conference at Stanford,
where many of the far-out folk were gathered to share their visions of
improving the world.  PCC had a few terminals running in a conference
room and I dropped by.  To my vast surprise, all of the terminals were
running Wumpus and scraps of paper on the floor with scrawled numbers
and lines testified that much dedicated Wumpus-hunting was in
progress.  I had spawned a hit computer game!!!

Later, PCC published Wumpus in its newsletter, and Creative Computing
published it in their Sep/Oct 1975 issue.

Wumpus and this writeup and the products of the talented and creative
Gregory Yob.
