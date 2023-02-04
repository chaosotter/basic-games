Battle of Britain

This program recreates the first fourteen days of September, 1940.
You are in command of the 11th Group, Royal Air Force and your duty is
to deploy your Spitfires and Hurricanes to prevent the Luftwaffe from
bombing its chosen targets.

At the beginning of each day you are given an intelligence report
which shows an estimate of the total number of serviceable enemy
aircraft available and the state of readiness of your airfields.
These factors continually change throughout the game.  Aircraft will
be lost in combat, your rate of replacement aircraft becoming
available will alter if your aircraft factories are bombed and your
serviceability will be affected if your airfields and early warning
radar stations are attacked.

After you have read through your intelligence report, the Luftwaffe
will choose its targets for the day's raids.  The screen will clear
and you will be given the opportunity to deploy your aircraft to
provide the best possible defence.

It is extremely important to get as many of your aircraft as possible
into action.  The number of fighters which manage to intercept the
incoming bombers will be reduced by poor deployment and by bad
weather.  You will be given a weather report each turn which will show
you the amount of cloud cover.  On days with heavy cloud your aircraft
deployment is very important.

If the Luftwaffe carries out successful attacks on your Radar stations
or on your airfields your level of serviceability will be drastically
reduced on the next turn.  This will affect the number of fighters you
have available and the number of aircraft which are likely to
intercept the Luftwaffe bombers.  Raids on the aircraft production
factories will reduce the number of replacement aircraft being built.

Although the odds are heavily against you, careful planning and a 
degree of good luck will bring you a victory. 

The program is controlled by the main loop in lines 40 to 110. 
Building up the program in modules such as this makes for batter 
running of the program and also aids debugging when a problem 
arises. 

Line 20 calls up the initialisation routine.  Strings are set up to
hold the names of all the aircraft and various other words which are
used throughout the game.  These are then used in PRINT statements.
This saves a lot of repetitive typing and makes the statements more
flexible.  Lines 5050 to 5080 give the starting strengths of all the
aircraft and also initialise the variables used to work out the
serviceability of the British fighters (BS) and the German aircraft
(GS).  The variable DD is used to count the number of days played
during the course of the game.  Lines 5090 and 5100 set up the cursor
strings which are used to position PRINT statements on the screen.

In lines 5200 to 5240 we have a series of FOR/NEXT loops which are
used to provide time delays in the program.  Loops of different
lengths can be obtained by using GOSUB and calling up different line
numbers.  For instance GOSUB 5200 will provide a delay of 1 to 2000
while GOSUB 5220 will give you a delay of 1 to 500.  Line 30 calls up
the start routine and, after it is over, we then go into the main game
loop.

Line 40 calls up the intelligence report display at the start of each
turn.  Lines 1010 to 1070 work out and display the estimate of
serviceable Luftwaffe aircraft.  This number is roughly based on the
actual number of bombers and fighters available in France at the time.
Line 1090 and 1110 perform the same task for the British fighters.
Once again we have tried to keep to the number of Spitfires and
Hurricanes which the 11 Group had available.

The routine from line 1500 works out the Luftwaffe targets each turn.
We are not going to give too much away about how this is done, but the
method creates results which are related to historical fact.  Line
1580 works out the weather factor which is used to decide the cloud
cover.  Heavy cloud will greatly reduce the number of fighters which
go into action.

Lines 2000 to 2400 allowyou to choose the areayou are going to defend.
This routine then compares the Luftwaffe plan of attack to your choice
and works out what percentage of your fighters will intercept the
bombers.

Lines 2500 to 3110 contain the battle routines.  Each aircraft type is
given a percentage chance of shooting down an enemy aircraft.  The
weather factor, the degree of serviceability and the interception
rate, (IR), is then used to work out how many of each type of aircraft
joined in the battle.  Lines 2900 to 3110 then use the percentage
chance to work out victories as each type of plane goes into battle.
The results will print up on the screen aircraft by aircraft.

Line 90 calls up the routine which controls the results of the bombing
attacks and awards victory points to the Luftwaffe.  Line 110 calls up
the lines which provide the R.A.F. Bomber Command reprisal raids and
award victory points to the R.A.F.

Line 3910 checks to see if the game is over, and if so, sends the
program to the end routines.  If you find that the game is too
difficult to win, you can improve your chances by adding ten to the
numbers in lines 3940 to 3990.

If the game is still in progress we then go back to the start of the
main loop to go through another day in September, 1941.
