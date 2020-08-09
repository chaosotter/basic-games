The object of the game of SEA BATTLE is quite simple.  You are a
submarine with a mission to seek out and destroy all of the enemy
ships in your area, using whatever means are available.  This includes
torpedoes, Polaris missiles, sabotage, and suicide.  The enemy, in
turn, throws out depth charges in an attempt to destroy you.  There
are also some underwater mines which have a nasty habit of blowing you
up when you run into them.  Other hazards are some very hungry sea
monsters lurking about who have a taste for submarine sandwiches.

I started writing this program two years ago, and just finished my
last modifications just recently.  Of course, this doesn't meant I
worked on it continuously for two years.  There were some long 4-6
month stretches when I didn't do anything to it.  It started out as a
very simple program, and I just kept thinking of things to add to it.

I am currently a senior in Simley Senior High School in Inver Grove
Heights, Minnesota, and am 18 years old.  I have been working with
computers since the ninth grade, and have written many programs,
including this one.

This program always draws a crowd in our school computer room, even
from kids who don't even know which end of a teletype to type on.  I
built every possible inconvenience into it, to keep people from
winning too easily.  I am happy to say that when a person wins now,
it's headline news.  There are always muttered oaths to beat the
computer next time, and this alone brings me more enjoyment than
playing the program.

As you can see, the program is quite long, and initially I had some
storage problems, as I'm sure many of you will have, too.  All I can
say is to slice away at some of the more trivial commands and options
until (hopefully) you cut it down to a reasonable size.  If compiling
space is a problem, you may have to divide the program into
subprograms chained together.  If you don't have this capability,
you'll have to brainstorm your own ideas.

Here are some of the anomalies our HP 2000 system.  Strings are
dimensioned from one to 72 characters in length.  Positions on the
string are identified with two numbers.  Ex. A$(2,4) A$ is the name of
the stirng.  The 2 tells the computer to begin the substringt at the
second character.  The 4 tells the computer to end the substring at
the fourth character of A$.  So, A$(1,1) allocates the first character
of A$.  I used this for identifying 'Y' and 'N' in yes/no responses.

Line 590 is an example of logical operation.  It tells the computer
that if the expression is nonzero, to proceed to the line specified.
If it is zero, it will fall through to the nextd line.

A slightly different type of logical operation is found in lines
3020-3050.  In these lines the logical qualtity is evaluated first,
and if true, the quantity is set to 1.  If it is false it is set to 0.
These can all be taken care of with IF-THEN statements if necessary.

I hope that the size of the program does not scare too many people
away.  It should be able to be made compatible with very little
rewriting.  If you have a few hours of free time to rewrite a little,
it should be worth the effort.

I tried to throw a lot of random statements in there to make playing
the game more uncertain.  Cutting some of these out may save some
space, if that's a problem for you.

Note: The writeup above, by Vincent Erickson, refers to the original
HP version.  The one presented here is in standard Microsoft Basic.
Some conversion nortes by Steve North are found in the listing, Lines
90-230.
