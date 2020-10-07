INVESTMENT SIMULATION

  Writing a Simulation Game 

  by Richard Mansfield 

A simulation is an imitation of life.  It can be the most difficult
type of game to create.  Thought, rather than fast action, is
important.  Try the short simulation offered here, then see if you can
write one of your own.

There are three basic types of computer games: arcade, adventure, and
simulation games.  Let's briefly look at the characteristics of arcade
and adventure games and then write a simulation.

Realtime Action 

Arcade games feature what's called realtime action.  Unlike chess or
bridge, things happen fast. You can't sit back and plan your next
move; you must react immediately to the space invaders.  In other
words, events take place at the same speed as they would in reality:
realtime.

Arcade games also have a strong appeal to the eye and ear.  There is
much animation, color, and sound.  In fact, your ability to respond
quickly and effectively depends in part on all the clues you get from
the graphics and sound effects.  Strategy, while often an aspect of
arcade play, is clearly secondary.  These games are a new kind of
athletics: the fun of man versus machine.  Like auto racing, arcade
games are essentially isometric exercises -- you don't run around; you
just stay in one place flexing and unflexing your muscles, tensing and
relaxing.

Story and Strategy

Strategy, however, is more important in "adventure" games.  The
emphasis is on planning ahead and solving riddles.  It can be like
living inside an adventure novel.  There is drama, characterization,
and plot.  You might start out, for example, in a forest with a shovel
and a trusty, if enigmatic, companion parrot.  As you try to figure
out what to do next, the parrot keeps saying "piny dells, piny dells."
After wandering aimlessly through the trees, it suddenly comes to you
that the bird is saying "pine needles" and you dig through them and
find a treasure map.

Your "character" will travel, meet friends and enemies, and have the
opportunity to pick up or ignore potentially useful items such as
food, magic wands, and medicine.  It's customary that you cannot haul
tons of provisions.  You'd have to decide whether or not to leave the
shovel in the forest.  Yet you might be sorry that you'd dropped it if
you're involved in a cave-in later in the game.

In any case, adventure games are fundamentally verbal.  The computer
displays the words:

    YOU ARE IN A BOAT ON A LAKE.  NIGHT IS FALLING.

to which you can respond in any number of ways.  You might type:

    DIVE OFF BOAT.

and the computer would reply that you now see an underwater cave or
whatever.  You move through the scenes the way a character moves
through a novel.  There is generally no penalty if you take time to
plan your next move.  It's not realtime.

Imitations of Life 

The third category, simulation, is the least common kind of computer
game.  This is because to really imitate something, to simulate it
effectively, you need lots of computer memory to hold lots of
variables.  However, memory has recently become far less expensive so
we can expect to see increasingly effective simulation games.  Star
Trek and Hammurabi, both simulations, have long been popular home
computer games.  Although they are similar to adventure games,
simulations are random.  That is, there is no secret to discover, no
puzzle to solve, no plot.  Like real life, things happen with
unpredictable, complex results.

Here's a program which simulates investing.  The key to simulating is
to arrange realistic interactions between variables.  Look at line
600. If there is "international unrest," the price of gold (PGLD) goes
up and the price of Bundtfund stock (PB) goes down.  This relationship
between gold, stock, and an international crisis is true to life.
Alternatively, stock goes up and gold goes down on line 700 during a
"market rally."

The game allows you to make investment decisions, and then a "month"
passes during which the value of your investments will go up or down.
In line 510, three variables are given random values.  Stock can gain
or lose up to 10 points (variable X), and gold can change by $20 an
ounce (Y).  Variable Z will be used to simulate flipping a coin.  Also
notice lines 520 and 525.  In 520, we determine whether or not there
will be unrest.  The variable CH is just a counter.  Each "month," CH
is raised by one.  Two conditions are required for unrest to happen:
in a given month, CH must be greater than 4 and it must be less than
whatever X turns out to be.  If both these conditions are met, CH is
reset to zero and we've got international unrest.  This has the effect
of creating unrest roughly every four to six months.  Likewise,
another rhythm is set up in line 525 to cause market rallies.  In both
cases, however, you cannot be certain exactly when to invest in gold
or in stocks.

The decision to raise or lower stock prices is made in line 530 and
based on the coin toss variable, Z.  Again, stocks move in opposition
to gold.  Prices will rise about 50 percent of the time, but you can
never know what will happen in a given month.

Suggested Complications 

This is the core, a rough sketch, of an investment simulation game.
There is much you can do to make it a more effective simulation and
thereby a more enjoyable game.  The more variables in a simulation,
the better.  For example, add leverage and additional "incidents"
which affect prices, improve the randomizing, and include other types
of investments.  You could even use a separate counter which, every
five years, causes the X and Y variables to swing more widely to
reflect recession/recovery cycles.

As you can see, a simulation should be lifelike. It has interdependent
cycles and a degree of unpredictability.  Its realism derives from
including a sufficient number of variables.  And those variables must
interact in plausible ways and with just the right amount of
randomness.  A simulation is a little world you create.  You can
define cause and effect and then fine-tune the whole thing until it
seems well-balanced.  Adventure and arcade games are certainly
enjoyable, but this investment simulation can be built up to the point
where it's just as much fun as any other kind of game.

Mixing Styles 

Of course, these three categories -- arcade, adventure, and simulation
-- are somewhat arbitrary.  Some of the best games contain elements of
each.  There are adventure games with graphics -- you see the forest,
the shovel, the pine needles.  After you say DIVE, your character
jumps into a lake and the screen transforms into an underwater scene.
Likewise, arcade games can include the different "settings" so
characteristic of adventure games.  Popular arcade games such as Tron
and Donkey Kong change the playfield as you earn more points.

There are several ways to add to the appeal of our investment
simulation, beyond just making it a more complex, more accurate
simulation.  You could add the visuals and sound of arcade games.  Try
creating a ticker tape across the top of the screen to show price
changes and news events.  Maybe add a bell sound to indicate the end
of further transactions.  And from adventure games you could borrow
two elements: riddles and the necessity of planning ahead.  One easy
way to incorporate these two elements would be to make paying taxes a
part of the game.  After all, the closer it is to real life, the
better the simulation.
