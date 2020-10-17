IOWA LEMONADE

  by Paul French

Shortly after I got my Color Computer, I decided to convert a few
programs to run on it.  Iowa Lemonade is the most ambitious of my
conversions.  The idea and logic have been around for quite a while
and one of the other computer manufacturers sends (or used to send) a
version out on a demo disk with their disk drives.  It was kind of
cute, so I decided to develop one for the CoCo.  Since a 16K cassette
system was top of the line from Radio Shack at the time I started, the
program is designed to fit in 16K Extended Color BASIC.

The graphics are all low-resolution.  They are produced with the
STRING$ statement or by concatenating CHR$ together to make strings
that are PRINTed at the proper screen locations.  The only exception
is the lightning (lines 351-362) which is POKEd into screen locations
read from DATA statements (in lines 365-366).

The POKEs in lines 367 and 372 take care of inverse video blanks and
punctuation marks.  I discovered (and have since read elsewhere) that
there is a distinct visual difference between the black character that
character code 32 produces and the black characters that character
codes 128, 144, 160, 176, 192, 208, 224, and 240 produce.  I also
found that the only way to produce a character in the lower right
corner of the display (PRINT@ location 511) without having the screen
scroll is to POKE the appropriate value into memory location 1535.

In a 16K Color Computer, you must PCLEAR1 before CLOADing or typing in
the program, or you will run out of memory.  I'm sorry for some of the
lapses in programming style -- some of the NEXTs with variable names,
some without -- some lines with lots of spaces to make them easier to
read, a few without.  I did try to leave enough comments so you get an
idea of what's going on.  and the PLAY strings all have long variable
names so you know what they are.  If you want to save a bit of memory,
there are over 700 spaces that can be taken out, lots of REM-arks, and
the variable names beyond two characters can be shortened.

I produced the whole thing on my black-and-white TV.  Having since
seen it on a color set, I think it turned out pretty well.

The game itself?  The computer does the bookkeeping while you and up
to 29 friends (or classmates) run your own lemonade stand.  It also
takes care of the weather and a few other items.  Each day, each
player has to decide how many glasses of lemonade to make, how many
signs to make to advertise, and what the selling price will be for
that day.  The sole goal is to be efficient at making money.  It helps
to keep records so you can see what has worked best for you.  You can
resume a game later, but you have to know what day number it was and
how much money players had when they stopped (even though the computer
may not allow it all).  The game ends when someone earns an agreed
upon amount or on an agreed upon day.

Editor's Note: Simulation contest entrants should note that a computer
simulation can be created for most anything, from a nuclear power
plant to... well, a lemonade stand.)
