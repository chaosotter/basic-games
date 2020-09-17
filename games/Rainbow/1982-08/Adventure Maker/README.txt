ADVENTURE MAKER

Now, Make Your Own Adventure with ADVMAKER

We hope you enjoyed playing RAINBOW ADVENTURE last month.  We know the
listing was pretty long, but it does take some amount of code to be
able to create an Adventure game.

As we said last month, we are now going to dissect the RAINBOW
Adventure and show you how to create one of your own.

For one thing, you'll notice that we had a great number of REMark
statements in last month's program.  That was to guide you in making
your own Adventure.

This month's program, ADVMAKER is a "canned" type of program designed
to simplify the programming of Adventures written in BASIC.

It is simple, straightforward and very easy to follow.  Also, even
though it is written in BASIC, it does not suffer from the common
"slowness" problem.  Indeed, it is rather "fast."

Following is a brief explanation of the various sections of the
program:

  Lines 10-110: These are the DIMension statements and the loops to
      read the directions, rooms, objects and verbs which are entered
      as DATA statements.

  Lines 120-270: This section indicates where you are, what you can
      see and the directions available.

  Lines 270-999: Here is where the Adventurer's commands are analyzed
      to determine the programmed course of action.  The various
      subsections are one word commands (280-300); items carried in
      inventory (310-350); scoring (360-420); vocabulary expansion
      (500-599); moving in various directions (710-760); and the
      "help" section (800-999).

  Lines 1000-2999: Here the program is directed to the various verb
      areas (see Line 600 to find out how verbs are identified).  REM
      statements have already been included in the various subsections
      for some of the basic verbs normally used in Adventures.

  Lines 3000-6999: DATA statements for directions (3000), rooms
      (4000), objects (5000), and verbs (6000) are included here.

  Lines 7000-7180: Save and load routines. 

  Lines 8000-8030: Section to eliminate objects from the Adventure.

There is no limit to the type of conditions, or scenarios, which could
be dreamed up for an Adventure, so I will not attempt to cover them
all in detail.  Instead, I developed a short, simple Adventure so you
can become familiar with the various statement examples.  I called
this Adventure Rainbow for obvious reasons.

Please note that with ADVMAKER there are added steps which must be
typed in exactly as shown.  Do not renumber any of the steps or it
will not work at all.

The following definitions will make it easier for you to follow each
of the steps:

  - RM$(#) is the Room description
  - OB$(#) is the Object description
  - OB(#) is the Object number
  - D(#, 1-6) is the directions of each room
  - D$(1-6) is the various directions available
  - F(#) are flags to indicate various conditions
  - F is the flag used in subroutines
  - MX is the maximum number of objects in inventory
  - CA is the number currently in inventory
  - O is the object number
  - V is the verb number
  - YOU is the current room number

It is important that you excercise care in selecting words to describe
rooms and make sure you you do not have more than one object with the
same definition.  Remember that the statement "I AM" will precede the
room definition, so define your rooms as "inside a building", "on a
boat", "in a closet" and so on.  How objects are defined is not as
important, but the related abbreviation is, so you have to make sure
the abbreviation for an object is not repeated.

The same goes for verbs, so you should avoid similar verbs with
different meanings.  Note that only the first three letters of the
verbs are used.  So, "break" and "breathe" will present some problems.

An example of a DATA statement for rooms would look like this: DATA ON
MAIN STREET, 4, 6, 0, 0, 0, 0.  The numbers indicate the directions
available (order is N, S, E, W, U, D).  So, in the above example, the
room is "On Main Street" and has an exit to room 4 on the north and
room 6 on the south.  No other exits are available because a zero
indicates the direction is not used.

The format for objects is "Object Description, Abbreviation, Room
Location."  For example, "DATA A SMALL HAMMER, HAM, 5" would indicate
the object to be a small hammer, identifiable by the three letters
"ham" and to be located in room 5.

Now that you know a little about the various functions of the ADVMAKER
program and DATA statement format, take a look at the RAINBOW
ADVENTUREand you will see how simple the whole thing is.  Just because
it is rather simple, don't kid yourself.  You will always want to
tinker with it a bit to add some more goodies here and there.

The REM statements have been added to help you determine what each
program line is to accomplish.  These REM statements do not need to be
typed in.

So, now is the time to get going. Use ADV MAKER listed below and use
RAINBOW ADVENTURE from last month's issue as a guide.  And, create
your own Adventure.

I hope the ADVMAKER will get you involved in the fascinating Adventure
area.  It is a lot of fun.  Whenever we are planning to have some
company over, it only takes me about an hour to dream up a quick,
short Adventure suitable for the occasion and, believe me, it always
turns out to be a big hit.
