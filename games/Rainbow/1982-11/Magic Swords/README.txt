MAGIC SWORDS

  Slay Your Turkey with These "Duel" Programs 

  by Bill Nolan

(Mr. Nolan, an experienced Dungeonmasier in a popular fantasy role
playing game on a weekly basis, is the president of Prickly-Pear
Software.)

Happy Thanksgiving, fantasy gamers!  This month you once again get two
programs.  However, they combine to do one job: they create
intelligent weapons for use in your game.

Why two programs?  Well, we wanted to illustrate a method you can use
to fit a larger program into your computer than would otherwise be
possible.

Many times, a program with a lot of DATA statements would take up a
lot less room except that all of the DATA ends up in memory twice.
You usually read this DATA into arrays so you can find the piece you
want easily and quickly, and keep it in order so your program can use
it.  Thus, it is memory once in the DATA statements, and again in the
array.

If your program is really long, this may create a memory problem.
What we did here is put all the DATA statements in a separate
program. "SWORDDAT".  This program creates a data file on tape which
is read into an array by the main program, "SWORDS".  The net result
is that the main program doesn't need the DATA statements, and is a
lot shorter!

In this case, the program isn't really that long, but we did it this
way anyhow, just to illustrate the method.  You can do this on disk,
too, and we will tell you the changes as we come to them.

The first program, "SWORDDAT", is nothing but DATA statements until
you get to line 200, which opens the cassette recorder as a device
(that's what the #-1 is, the recorder is device #-1), thus preparing
the computer to print the DATA to the tape.  Lines 210 to 230 are a
FOR/NEXT loop which reads each DATA item in order and prints it on the
tape.  Line 240 closes the cassette recorder as a device, thus telling
the computer there will be no more DATA right now.

After you have this program in the computer (and have made a copy --
and backup copy -- of it) put a blank tape in the recorder, press PLAY
and RECORD, and RUN the program.  It will create a DATA file on the
tape, which will be read by the second program.

If you want to use a disk, change the PRINT in line 220 to WRITE, and
make the #-1 in lines 200. 220, and 240 into #1 (without the minus).
It will then open the disk as a device and write the data file there.
Make sure you have a disk in the drive when you RUN the program.

The second program, "SWORDS", creates the intelligent weapons.  When
you run it. be sure you have your DATA tape, which you made with
Program One, in the recorder with PLAY pressed.  This is because the
second program will read all this DATA into four arrays.

Line 45 opens the cassette as a device, lines 50 through 90 are a
series of FOR/NEXT loops that INPUT the DATA from the tape, and line
100 closes the cassette as a device.  Again, if you have a disk,
change the #-1 in lines 45, 60, 70, 80, 90, and 100 to #1 (eliminating
the minus).

So, what does the program do?  Well, like we said, it creates an
intelligent weapon.  An intelligent weapon?  That's a weapon which
contains the spirit of some poor soul, and thus has a mind and
abilities requiring intelligence.  It will be able to communicate with
the person carrying it in some way, and will have some special powers.
Please remember that it will not necessarily have a cooperative
nature!

By the way, to answer a question some of you have asked, these
programs are not games.  They are programs to help people when they
play fantasy role-playing games.  Any good toy or game store will help
you make a selection.  In general, the more complicated the game seems
at first, the better it will hold your interest.  Also, in general,
the rule books are very poorly written.  Be prepared to have to "wade"
through them.

Now, on with the intelligent weapons.  These weapons are usually
swords -- but not always!  One that comes to mind was a lowly dagger
by the name of Magle Dragondancer.  Magle was found in a dungeon
treasure hoard by an elven fighter magician who still carries him
today.  Magle has some interesting abilities.  His hilt is decorated
with diamonds, emeralds, rubies, jet, and blue saphire gemstones, and
whenever he is within five miles of an evil dragon, the appropriate
colored gem starts glowing!

Now, that's handy, but can make you nervous, too!  Like the time the
party was on the eighth level of a dungeon, and all the gems began
glowing.  Magle is used in battle by being thrown, and he teleports
back into the hand of his bearer after each throw, thus allowing two
attacks every round.  He is only +1 to hit, but is +3 damage (because
of his accuracy -- kind of a guided missile).  He always does 12
points of damage to an evil dragon, and he will fight on against these
dragons even if his bearer is slain.

Another interesting weapon we encountered was a long sword named Fred.
He became so famous that the fighter who found him was forever after
known as Fredbearer.  No one knows his true name.  When Fred was
discovered, his new bearer picked him up, and Fred said, "Hello."  The
happy fighter immediately asked him what sort of powers he had, and
Fred said, "not much."

He went on to say that he was only +1 to hit, and further, that it was
his clumsy ineptness that had caused the death of his previous bearer.
Fred went on to apologize profusely and at great length for his total
uselessness.  He went so far as to suggest that the most profitable
course would be to melt him down and sell the scrap!

It turned out that Fred was being a little overmodest. In the first
fight where he was used, it was discovered that he was indeed only +1
the first round.  Fred was a sword of dancing, and he rose
progressively until he was +4, and then fought on by himself.  After
the fight, his owner was feeling better about the sword, but bad about
his extensive injuries.  That was when Fred announced that he could
"heal" him!

He then tried to cheer up the injured Fredbearer by pointing out the
secret door in the north wall, and asking his new friend whether he
wanted any of the gold that was behind it.  About an hour later he
warned Fredbearer that the "thief" with them was really an assassin,
and was chaotic evil in alignment.  With all his powers, though, Fred
never got over his terrible inferiority complex, and had a tendency to
loudly berate himself at every opportunity.

As always, if you have any questions, write to me here at Prickly-Pear
Software, 9822 E. Stella Road, Tucson, AZ 85730.

I think that's about it for this month, and I hear the watch dragon on
the roof roaring that the mailman is coming, so I'd better get this in
an envelope.  Don't eat too much turkey!
