MONSTERS

  Make Monsters from Silicon... And Use Them Here

  by Bill Nolan 

(Mr. Nolan, an experienced Dungeonmasier in a popular fantasy rote
playing game on a weekly basis, is the president of Prickly-Pear
Software.)

Just like we promised, there are two programs this month.  One is a
disk menu program that can be used on any disk; the other will create
monsters out of silicon.

First, though, I want to talk a little about random numbers and,
particularly, some of the things that happen with the random number
generator.  Random numbers are the lifeblood of a program like
Monsters this month and the Dragons program which we ran in August.
For that matter, they are used in most game programs and a host of
other types of programs.  So, it is important to make them as random
as we possibly can.

To illustrate the problem, try this little experiment.  Turn off your
80C and wait 15 seconds like the instruction manual says.  Then turn
it back on.  Now, carefully type in the one-line program below:

    10 FOR X=1 TO IQ: PRINT RND(100): NEXT

A row of 10 "random" numbers will appear down the side of your screen.
Write these down in order, turn off the computer, turn it back on,
type in the same line again and RUN it.  You will get the same list of
(not very) random numbers.

You see that this can be a problem.  If you are counting on random
numbers in a game, you will get the same set of random numbers every
time you turn on the computer and load the game.  After you play a few
times, you will know just what to expect.  If it were our Monster
program listed below, you would get the same monster as the first one
every time you ran the program from a cold start (when the computer is
first turned on).

That would never do.  Luckily, there are some ways to get around the
problem, and you will find one of those ways being used in most
programs you buy.  You should be using one of these methods in the
programs you write for yourself, too.

The method used in the Monsters program below (and in most
Prickly-Pear Software programs) is to insert the statement
X=RND(-TIMER) into the middle of an INKEY$ loop like this at the
beginning of a program:

    10 K$=INKEY$: IF K$="" THEN X=RND(0): GOTO 10

This is a very reliable method of getting a group of unpredictable
numbers, which is really what we are looking for.  The problem comes
when we can predict what the next "random" number will be.  Another
way that we can do this is to use the statement X=RND(-TIMER) early in
the program line.  Be sure to use one or the other.

The first listing below is DISKMENU.  This listing is set up to give
you a menu of my first six programs, but the basic idea (and most of
the program) can be used to make a menu for almost any group of
programs.  Let's go through it line by line.

The first lines of consequence, 200 and 300, print out a list of
numbers and program names.  If you want to use this for other
programs, just change the name following the number to the name you
want.  You can even add more numbers if you want, using PRINT @
positions 327, 359, 391, 423, 455, and 487.  If you add more items to
the menu you must also change line 400, and add some additional lines
as described below.  The K$=INKEY$ at the end of line 200 is there to
trap any keys that were pressed by accident, or accidently pressed
twice.  It isn't a bad idea to use one of these before any INKEY$
line.

Line 400 gets a character from the keyboard with the INKEY$ statement,
converts it to a number with the VAL function, and checks it to be
sure it is not less than one or greater than the number of items in
the menu.  If you add to the menu (or shorten it), you must change the
6 in K > 6 to be the same as the number of the last item in the menu.
If the program finds a number within the range specified, it will then
GOTO a line whose number depends on the value of K.  If K is I it will
GOTO the first line in the list, if K is 2, then the second line in
the list, etc.  Since this is the case, you should have as many line
numbers in the list a you have items in the menu.  If your menu is
longer than six items, you will have to add more line numbers
(separated by commas) to the end of line 400.

Lines 500 to 1000 are RUN commands.  The name in the quotes in these
lines must be exactly the same name you used when SAVEing the program
to disk in the first place.  This program, as written, will only work
with BASIC programs.  To use a menu with machine language programs
requires a slightly different program.

To use this program, type it in and save it to disk using the command
SAVE "MENU".  Then load each of the programs from line 300, and SAVE
it to the same disk using the same name used in the appropiate line
500-1000.  When you have done that, all you will have to do is insert
the disk the next time you want one of the programs, and type RUN
"MENU".  There is no need to check the directory or anything like
that.  The menu acts as a directory, and you won't have the problem of
typing names wrong either.  Just key your choice.

The Monsters program below will give you most of the necessary
statistics for a monster.  All you have to do is flesh it out with a
bit of a description. Color, number of legs, general shape, and things
like that.  All of the number generation will be done. If you run
through the selection process a few times, I'm sure you will find
something interesting.

Let me tell you about one of mine.  This fellow is know n as the Swamp
Demon, and although he isn't really a true demon, the distinction will
not be a great comfort to any players encountering him.  Or her:
Naturally there are Ms.  Swamp Demons trotting around too!  There may
even be little Juniors and Junior Misses, but nobody has ever seen
one.  The adult Swamp Demons stand 15 to 20 feet high on their hind
legs, balancing on their massive tails.

They bite for 2-20 points of damage, claw with either or both of their
massive forepaws for 1-10 points of damage, and swing their tail for
2-12 points.  In addition, they can breathe a cloud of noxious swamp
gas once per day with a range of 20 feet, and size of 10 feet by 10
feet by 10 feet.  Anyone in the area of the gas must save versus
poison at -4 or be overcome for 1 to 6 rounds.

Worse that that, the Swamp Demon can cast a 5 die lightning bolt from
his left hand, and a 5 die fireball from his right, each three times a
day.  He can do any three of the above attacks in any given round --
his choice.  By the way. it takes a +2 or better weapon to hit him.

These big guys are AC -2. 18 HD. and very intelligent.  Naturally they
are Chaotic Evil.  If you kill one (ha!) the electrical essence of his
body discharges through the boggy ground when he falls, and will do
6-36 points of damage to anyone within 50 feet, unless they roll lower
than their dexterity on 2d20 totaled together.  A successful roll
indicating that they leaped up into the air. and were not touching the
ground when the shock ocurred.

A party actually killed one of these wimps in one of my adventures.
Of course, the party consisted of a 10th level Mage, an 11th level
Paladin with a Holy Avenger sword, a 9th level Bard, a 9th level
Ranger, and a couple of lesser fighters.  The Swamp Demon acquitted
himself quite well, though, and it was a very close fight.  If you
have a party that thinks they can slay anything, let them meet ol'
Swampy.

See you next month, and if you have any questions or comments, write
me at Prickly-Pear Software, 9822 E. Stella Road, Tuscon. AZ 85730.
