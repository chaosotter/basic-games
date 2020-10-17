CHARACTER CREATOR

  Create Character Files with This 'Finished' Program 
  by Bill Nolan

Welcome to the March column.  I wish I could say that I finally did
this early, but the fact is that as I sit here at my computer,
word-processing away in an effort to spruce up this final draft, the
people at Federal Express are only two hours away.  Yes, the editor of
this most respected magazine said "it absolutely, positively had to be
there overnight."  That's what I get for waiting until the last
minute.

As you know, we have been developing a plan for our major record
keeping program over the last two months, and the "finished" program
is below.  I put finished in quotes because I know that no program is
ever really finished.  The programmer may think it is...

YOU'LL BE SORRY IF YOU DON'T READ THIS NEXT PART!

The program runs on a 16K Extended BASIC machine -- barely!  Before
you type it in type POKE 25,6:NEW and ENTER to get the most memory,
and then type this again every time before you load the program or you
will get an OM ERROR.  If you only have a 16K machine I recommend the
following: Leave all REM lines out of the program (except line 11000
-- we jump to that one), and when it is all typed in and working,
renumber it by typing RENUM 0,0,1 and pressing enter.  This will make
more memory available.  Of course you saved it to tape first in case
the computer crashed while renumbering.  You can then change the CLEAR
in line 5 to be CLEAR 1200,16344:GOSUB.

If you have 32K, change line 5 to read CLEAR 2000,32344:GOSUB...  Also
change line 20 to read FOR Y=32345 TO 32383:READ... and change the
number 16345 in line 11032 to 32345.  This will get you all kinds of
memory for those changes you'll want to make.

If you have disk, you will have to have 32K to use this program
(unless you unplug your disk controller).  Make the changes listed
above for 32K machines, and in addition make the following changes in
several lines between 1000 and 2000. Every time you find a CLOSE #-1,
OPEN #-1, PRINT #-1, or INPUT #-1, delete the minus sign in front of
the one.  Also, you will want to change the PRINT in line 1030 to
something more appropriate such as "MAKE SURE THE PROPER DISK IS IN
DRIVE 1, AND THEN HIT ANY KEY TO GO ON."

Now, on to using the program.  This program will create and update
character records for fantasy games.  The operation will be fairly
obvious when you run it. but a couple of notes are in order.  It
allows you to enter up to 60 spells and non-magical possessions, and
up to 20 magic items.  It sorts the magic spells by level, and it
allows you to make changes or deletions easily before saving a
character record to tape or disk, or printing it on the screen or
printer.

It does not store thieving ability scores since you don't enter them.
It computes them when you select "8" on the main menu, so if you print
out the information before selecting number 8, all thief scores will
still be 0.  Just make sure that you go to number 8 before printing
out the character information.

This program POKEs a short machine language routine into memory.  All
of the DATA for this routine is in line 12050.  This little routine
puts a nice border around the screen whenever you call it, and it does
it instantly!  The border can be changed by poking a value other than
169 into memory location 346.  The program docs this POKE in line 20,
so just edit that line to get a different border design.  Values above
128 are best, but values about 255 will result in an error message.
This routine is 37 bytes long and is in position independent code, so
if you use it in another program you can put it wherever you want it.

The print routine located at lines 2000 to 3000 takes advantage of a
feature of the Color Computer which isn't mentioned anywhere I have
seen.  All of the accessories are addressed by the computer by
referring to their device number.  The disk drive is device number 1,
the cassette is number -1, and the printer is number -2.  Well, it
happens that the television screen is device number 0, so you can
print on the screen by doing a PRINT #0, just as you would print on a
printer by doing a PRINT #-2.  You can also use a variable as the
argument, as in PRINT #DV, and the output will go to the screen or
printer depending on the value of the variable.  By using this, the
program will print on either the screen or printer and yet needs only
one print routine.  It just asks where you want it printed and sets
the variable accordingly.

In the print routine I didn't use any control codes to make the
print-out fancy.  This was on purpose.  (Really!)  The control codes
vary from machine to machine, and if your printer was a different
brand from mine they wouldn't work, so if you want to get fancy on
your own, have at it!

There is a two line section at 7300 and 7310 that sorts the magic
spells by spell level.  This routine is a very simple and short
example of a bubble sort (a slow kind of sort, but easy to do) that
would be practical for a list up to 100 or so entries long.  The same
general form could sort most anything.

I hope you will have as much fun using this program as I did writing
it.  It stores the files under the character name, so you should be
able to put more than 50 files on a disk. If you have more than one on
a tape, it will search the tape until it finds the correct one.  I
guess that wraps up this project, so we'll see what next month brings.
If you have any suggestions write to me in care of Prickly-Pear
Software.  9822 E. Stella Road, Tucson, AZ 85730.
