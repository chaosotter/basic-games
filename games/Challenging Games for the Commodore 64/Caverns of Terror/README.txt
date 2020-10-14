CAVERNS OF TERROR

We now come to Caverns of Terror, a game which almost defies
description.  Most adventure type games are based on logic and are
cleverly planned, with many challenges for the player.  Difficulties
to be overcome, puzzles to solve and usually a final goal to achieve.
Caverns of Terror is nothing like that.  It is more of an ordeal than
an adventure.

Lines 130 to 520 print instructions on the screen, decide whether you
are being attacked and if so by what.  They keep track of which cavern
you are in.  They also give you a rather limited choice of defensive
weapons.  These lines also call up other routines which provide all
sorts of odd happenings.

The random number generator in lines 580 to 610 decides whether you
have defeated the attacker.  Lines 600 to 610 direct the program to
the relevant print routine, depending on the result of the generator.

The variable W keeps track of your position in the caverns, G is the
amount of gold you are carrying and X records the number of fights you
have been in.

The question which now remains unanswered is: "Do you have the nerve,
the courage to enter the Caverns of Terror?".
