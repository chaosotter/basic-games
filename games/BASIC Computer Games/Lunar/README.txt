Lunar

This game in its many different versions and names (ROCKET, LUNAR,
LEM, and APOLLO) is by far and away the single most popular computer
game.  It exists in versions that start you anywhere from 500 feet to
200 miles above the moon, or other planets, too.  Some allow the
control of directional stabilization rockets and/or the retro rocket.
The three versions presented here represent the most popular of the
many variations.

[Note: See "LEM" and 'Rocket" for other versions.]

In most versions of this game, the temptation is to slow up too soon
and then have no fuel left for the lower part of the journey.  This,
of course, is disasterous (as you will find out when you land your own
capsule)!

LUNAR was originally in FOCAL by Jim Storer while a student at
Lexington High School and subsequently converted to BASIC by David
Ahl.

In this program, you set the burn rate of the retro rockets (pounds of
fuel per second) every 10 seconds and attempt to achieve a soft
landing on the moon.  200 lbs/sec really puts the brakes on, and
lbs/sec is free fall.  Ignition occurs at 8 lbs/sec, so do not use
burn rates between 1 and 7 lbs/sec.  To make the landing more of a
challenge, but more closely approximate the real Apollo LEM capsule,
you should make the available fuel at the start (N) equal to 16,000
lbs, and the weight of the capsule (M) equal to 32,500 lbs in
Statement 15.

Some versions of BASIC object to the series expansion calculations in
Statements 420 and 430 (as you near the lunar surface, these numbers
get very small).  If your does, substitute the following expanded form
for the ex- pansion in Statement 420;

    -Q*(1+Q*(1/2+Q*(1/3+Q*(1/4+Q/5))))

You should be able to figure the other one out yourself.
