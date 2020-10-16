ASTEROID

You are the administrator of a mining colony which has been
established on a desolate piece of space rock deep inside the asteroid
belt.  Your isolated community exists by mining the rare ore at the
core of the asteroid and selling it to earth in order to buy the food
and oxygen supplies your people need.

You must manage the affairs of the colony so that it produces enough
ore to survive, but you must not waste your scarce resources doing so.

You will be given a computer print out telling you all the information
you need, including the level of your food and oxygen supplies and the
cost of maintaining your colony peryear.  By mining the optimum amount
of ore you should be able to survive on the food and oxygen the income
will allow you to buy.

Apart from rare attacks from claim jumpers and other assorted bad
guys, this game isn’t based on random factors or chance.  It will
involve a great deal of management skill to survive for any length of
time.  Each time the game is run the price of the ore, oxygen and food
units will be different.  This prevents the game from becoming
predictable.

A look at the program listing will show that the program is quite
straight forward.  The yearly printout begins at line 120.  Lines 80
to 110 provide warnings of potential problems when they are required.
Line 720 gives you the opportunity to trade your ore.  The routine
from line 7000 to 7150 works out the result of any attack by
outsiders.

The clever little routine at the beginning of the game is provided by
the routine from line 9000 to 9150 and is based on a routine developed
by Matthew Boek.  The routine takes a string 40 characters long, in
this case line 9010, and then scrolls it from right to left across the
screen.  You can turn this routine to your own use by replacing the
print statement in line 9010 with any 40 character string.  The symbol
used in the print statement is obtained from the "Q" key using SHIFT.
