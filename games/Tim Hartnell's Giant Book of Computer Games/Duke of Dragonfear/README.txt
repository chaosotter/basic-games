THE DUKE OF DRAGONFEAR

THE DUKE OF DRAGONFEAR puts you into another grid system world, but
one which is populated with a range of fearsome possibilities
including pits containing quicksand or dragons, as well as magic caves
which can transport you at random within the Land of Dragonworld, and
caves filled with Dragon's gold.

When you first run the program, you'll get this information:

    Welcome to the world of Dragonfear

    Your mission is to explore the
    caves of Dragonworld, looking for
    treasure, and attempting to slay the
    fearsome dragons who live in the
    caves.  What is your name?

    All hail, Duke Tim

    You start this exploration
    with 25 units of charisma, and
    you must complete your task before
    the charisma is worn out.  You lose
    one unit for every move you make

    PRESS ANY KEY TO BEGIN

Having assimilated this, you are given a quick peek at a map of
Dragonworld:

    X X X X X X X X X X
    X . D D $ ? D . . X
    X D X . . X . . . X
    X D . . . . Q . X X
    X Q . . $ . . . ? X
    X . . . H . . $ ? X
    X $ $ . . . X . ? X
    X . X . . . . . . X
    X . Q Q . . . . . X
    X X X X X X X X X X

In this map, X represents a wall you cannot pass or a cave you cannot
enter, H (for human) is you starting in about the center of the
system, $ is the treasure caves, ? the magic transportation caves, D
represents dragons, and Q tells you that cave contains quicksand.
Obviously this is a world filled with potential pleasures as well as
dangers.

If you're a veteran of computer games, you may well recognize that THE
DUKE OF DRAGONFEAR is a development of the Hunt the Wumpus games.
Wumpus is one of the grand old standards of computer games, in which
you are in a cave system, looking for one or more mythical beasts
known, in the singular (and these are most singular beasts) as Wumpus.
Wumpii, we are assured by those who care about such things, is the
plural.  Anyway, in essence, a grid is set up in such games, and
objects, people, effects, monsters and whatever else you choose are
placed at locations on the grid.  From time to time, if you so decide,
one or more of the contents of specific cells of the grid may move.
The human player, of course, can also move from cell to cell within
the grid.

Generally, there is no overall visible map of the system, although
some programs (such as THE DUKE OF DRAGONFEAR) do provide such
information for players.  The very first Wumpus game was written by
Gregory Yob in 1975.  In David Ahl's superb book "More BASIC Computer
Games" (Creative Computing Press, Morristown, New Jersey, 1979),
Mr. Yob explains how he was visiting People's Computer Company, in
Menlo Park, California, to see the programs they were developing, and
he noticed there were three "hunt the something" programs being
written, each on a 10 x 10 grid, and each of which gave feedback to
the player in terms of "no, no... try to the northwest."

Unenchanted, Mr. Yob returned to a lonely time-sharing terminal (back
in those ancient days, gentle reader, human beings did not have little
computers at their beck and call) and hammered out the program which
eventually became the very first "Hunt the Wumpus."  Mr. Yob had the
creature dwelling in a dodecahedron-shaped cave system.

Mr. Yob's inventive genius did not stop at this point.  He peopled the
cave with "magic bats" which moved you from place to place within the
system at random, with bottomless pits, and ensured that the arrows
with which you were equipped when you entered the system could fly
round corners.

You can see now how this framework became the heart of the Wumpus
programs which have proliferated around the world and which formed the
very rawest framework upon which THE DUKE OF DRAGONFEAR is based.
This program gives you more control on the outcome of the program,
adds treasure to the caves, and imposes a time-limit to your game.

As well, you are equipped with a "magic amulet" which can see into the
caves which are around you.  Unfortunately, because you're not much of
a whiz when it comes to invoking magic, the old amulet doesn't work
too well.  It can only tell you of the contents of one of the eight
caves surrounding the one in which you stand, and worse than this does
not tell you which of the eight it is referring to.  It is not as bad
as it may sound.  You'll be surprised at how much use you can make of
the limited information the amulet provides.  As well, you'll get a
brief glimpse of the cave system from above at the start of the game,
and from time to time as it goes on.

As you can see from the sample run which follows this introduction,
your options at each move include "F" for fight.  Pressing "F" will
direct the program to the subroutine starting at line 930, which first
checks to see you have not used up all your arrows, and if it finds
you have not, allows you to choose in which direction -- from your
present position -- you want to fire the arrow.  A successful kill
earns you a handsome monetary reward.
