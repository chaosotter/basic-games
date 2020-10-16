EARTH BASE ONE 

Your duty is to defend earth from the alien invaders riding gravity
beams down to the surface of our planet.  Your weapon is a laser
cannon and you must hit each alien before it reaches the ground.

To move your laser cannon left and right use the "L" key and the ";"
key respectively.  The "A" key fires the cannon.

When you hit the first alien, two more attack.  Remove these two and
three begin to descend.  This continues until all of your 5 lives are
used up. You lose a life each time an alien reaches the ground.

Line 50 DIMs the arrays used in the program.  Line 63 and line 65 set
the starting positions for the aliens.  Line 70 is the starting
co-ordinates for your laser cannon.  Line 80 starts the alien off on
its journey to earth.  After you hit an alien, line 90 checks to see
whether there are any other aliens still on the screen.  If there are,
the loop continues dropping the remaining aliens down the screen.  If
the array is empty, the program goes to line 250 to start off the next
wave.

Lines 100,105,120 use the statement PEEK (197) to read the input from
the keyboard.  Line 105 checks to see whether you are moving your
laser cannon left (K=42) or right (K=50).  Line 120 checks to see
whether you are firing your cannon (PEEK(197)=10).

Variable Y is the location of your missile.  Line 130 checks the
positions of the aliens to see whether they have collided with a
missile.  Line 140 alters the position of the missile and checks to
see whether it has hit an alien.

The routine beginning at line 500 and running to line 580 controls the
explosion when an alien is hit.  Line 500 removes the alien from the
array.  Lines 510 to 520 POKE the explosion onto the screen and line
540 increments your score.  Line 550 turns the explosion back, which
creates the very effective white flash followed by the black aftermath
of the explosion.

Earth Base One is based on a program by Matthew Boek. 
