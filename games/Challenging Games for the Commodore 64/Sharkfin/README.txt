SHARKFIN 

You are the Captain of the nuclear submarine USS SHARKFIN on patrol in
the North Atlantic. Somewhere in the waters around you is an enemy
submarine.  You must find it and put it out of action with your
torpedoes. To score a hit you must get as close as you can but don’t
get too close, a collision with the enemy submarine will be fatal to
you both.

Moving your submarine and firing your torpedoes uses up your fuel
supply, so play your moves carefully.

Being hit by an enemy torpedo causes a loss of damage points (DP).
When your damage points reach zero (line 605) your submarine has been
destroyed.

Your air supply also has a limit so that you can only stay submerged
for a certain amount of time.

The computer will keep you informed of your position in the icy waters
and will also give you the approximate position of the enemy
submarine.

Line 870 sets the amount of fuel you have available, line 875 gives
you a random number of damage points so that your ability to withstand
direct hits will be different each game.  Line 890 sets the time limit
for the game.

Lines 900 to 920 choose the starting position of the enemy submarine
and lines 930 to 950 choose your starting position.  Line 750 checks
for a collision and line 280 sees whether the enemy submarine is in
range when you fire a torpedo.

Lines 100 to 170 accept your move and adjust your position in the 
ocean. Lines 190 to 240 move the enemy submarine. 

Lines 670 to 850 provide the feedback after each move.  Lines 760 to
840 compare your position with that of the enemy and provide the
approximate direction.
