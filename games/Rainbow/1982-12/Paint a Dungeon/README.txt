PAINT A DUNGEON

  Pressed for Time? Paint a Dungeon! 

  by Bill Nolan 

(Mr. Nolan, an experienced Dungeonmaster in a popular fantasy role
playing game on a weekly basis, is the president of Prickly-Pear
Software.)

This month I will tell you how to use the graphics ability of the 80C
to speed up the actual play of a fantasy game.  One facet common to
all of these games is the exploration of some ruin or underground
dungeon complex by the players, and a great deal of time is spent by
the referee in describing these rooms to the players as they enter
them.

Even if the room is small and simple, it still takes times to describe
it properly.  For example, suppose that the group of players had been
proceeding north up a corridor when the corridor ended in a door.
They succeed in entering the door, and go north into a room. As
referee you then have to say "you have just entered a room which is 30
feet from east to west, and 60 feet from north to south.  The door by
which you entered is in the middle of the south wall, and seems to be
the only door in the room."  Even this simple description will take a
lot of time away from play when you multiply it by the 50 or 100 rooms
in the average dungeon, and that was the most simple room possible to
describe.  It was a box with only one door and nothing of special note
inside. Besides, how did the players know it was exactly 30' by 60'?
Did they get out a tape and measure it?  I hate to give away
information which the players might not necessarily know.

In real life, if you walk into a room you can estimate the size, but
you won’t know it exactly, and neither would your fantasy characters.
Since they are trying to estimate by torch or lantern light it will be
even harder for them.  On the other hand, you can't really say "you
just entered a room, but I can’t tell you how big it is."  And
remember, that was a very simple room!

What if you have a lot of complex rooms, like this next one?  "You
have just entered a large room, via a door in the south wall.  The
door you entered is about 10' from the west wall.  The west wall goes
north for 60' and then turns to the east.  It goes east for 30', with
a door in the middle of that section, and then turns south.  It goes
south 10', and then east again for 20', where it turns north.  The
wall goes north 40', with a door right in the middle of that section,
and then turns east again.  It goes east 50' with two doors in that
section equally spaced, and then turns south.  After going south for
90', it turns back west and goes 80' to rejoin the door you entered.
There are three deep pools of water in this room, each 30' in
diameter, and they are located in the southwest, southeast, and
northeast sections of the room.

That took a while to describe, and you probably still don’t really
know what that room looks like.  I finally got tired of wasting all
this time and wrote a program, which you can expand upon fairly
easily.  The program uses DRAW, CIRCLE, and PAINT statements to make a
map of the room on the PMODE 3 screen.  Then, all you have to do is
select the room by its number, and there it is, right on the screen!
Believe me, this will save you time, and you can save even more if you
make a good map of each of the rooms on white paper and trace them to
make a dungeon map.  You will really be amazed at how many different
dungeons you can make by reusing the same rooms in different ways.

I gave you a start with 19 rooms in the program below, and you will be
able to fit more in easily.  With 16K, you can have about 100 in
memory, and a lot more with 32K.  You will find that 100 will be
enough for literally thousands of different dungeons.  By the way,
both of the rooms described above are among the 19 I have given you.

Now, let’s see how the program works.  Line 5 defines four strings --
U$, R$, D$, and L$.  Each of these strings is the DRAW statement for a
standard dungeon door 10' wide, and each is used when your DRAW line
is moving in a different direction -- up, right, down, and left.  Each
replaces a 10' section of wall.  Thus, if you want to draw a 30'
section of north/south wall starting from the bottom, and with a door
right in the middle, it would look like this: "U10XU$;U10".  When used
in a DRAW statement, this would draw up 10, exit to the up door
string, which uses 10, and then draw up 10 more.  If you compare the
DRAW statements in the program below with the rooms they draw, you
will get the idea pretty quickly.

Line 6 clears the screen to blue, and asks you for a room number.
There are 19 rooms in the program I have given you, so it asks for a
number from 01 to 19.  If you add more rooms, you will have to change
the "19" to the number of rooms in your program.  Line 7 gets a single
character from the keyboard using the INKEYS statement, and stores it
in K$.  Line 8 gets another character from the keyboard and stores it
in KK$.  The second part of line 8 then concantenates K$ and KK$.
Remember, if we have two NUMBERS, 1 and 2, and we add them together,
we will get a NUMBER 3.  However, if we have two STRINGS, 1 and 2, and
we concantenate them, we will get a STRING "12".  Both operations use
the plus sign.

Line 9 uses the VAL function to turn the STRING K$ into a NUMBER, K.
It then goes on to check the number to make sure it is a number from 1
to 19 (because that's how many rooms there are).  If it finds that K
is less than 1 or greater than 19, it sends the program back to line 6
to get different characters.  If you key in letters instead of
numbers, the VAL function will return a 0.  If the number K is found
to be in the correct range, line 9 then does a GOSUB to line 12, where
the PMODE 3 screen is set up and cleared. When this RETURNS, the
program goes on to line 10, which uses the ON GOSUB statement to send
the computer to the line indicated by the room you have selected.
When it gets to the room line, it DRAWs and PAINTs the room and then
goes to 13, which makes it wait until you press any key (except
BREAK).  When you press a key, the computer does a RETURN.  Remember,
we did a GOSUB from line 10, so that's where it returns.  At the end
of line 10 is a GOTO 6, which sends it back to line 6 to start over
again.

If you add additional rooms, you will have to change the 19 in line 6,
which I mentioned above.  You will also have to change the 19 in line
9, and add additional line numbers to line 10.  If you run out of
space on line 10, (about 50 rooms) you will have to put the additional
numbers (and another GOTO 6) on a new line, number 11.  You will also
have to put some logic at the end of line 9 to test K.  Suppose you
have 50 line numbers on line 10.  At the end of line 9 you would
insert :IF K is greater than 50 THEN K=K-50:GOTO 11.  If you have more
or fewer than 50 line numbers in line 10 you would have to substitute
the actual number for the number 50 in both places in the example
above.  Line 11 would be just like line 10 except for the line numbers
following the ON K GOSUB.

The SOUND statements in lines 7, 8, and 13 are there to give you a key
beep, so you will know for sure when you have pressed a key.  Because
of the method used to get the numbers, room numbers lower than 10 will
have to be put in with a 0 in front of them (03, 06, 04, etc.).

When you use this program, your players will not have to be told room
sizes.  They will be able to estimate, just like real life, because
the rooms are to scale, and the doors are known to take up 10' of wall
space.  This way, there is no need to give away information.  If the
players want to know exactly how large a room really is, let them buy
a measure and take the time to use it!  By the way, because the pixels
on the color computer screen are not exactly square, a square room
will appear on the screen to be slightly higher than wide.  If that
causes any estimating problems, attribute it to the poor light.

Well, that about covers this program.  If you have any questions,
write to me at Prickly-Pear Software, and meanwhile, I want to wish
ail of you a very wonderful and safe holiday season.  May all your
Dragons have a bow on them!
