NUKE SIM

  Micro-Meltdown: A Nuclear Reactor Simulation
  by Chris Latham and John Erickson

(Editor's Note: The following article and program, as well as others
in this issue, are intended to acquaint Rainbow readers with the
concept of computer Simulations.  NUKE SIM was especially commissioned
by the Rainbow to help kick off our Simulation Contest.  In order to
ensure that we had a first-rate Simulation to serve as an example, we
contacted two top-flight programmers whose accomplishments -- Chris
Latham, for instance, is the author of Donkey King -- are too numerous
to be listed here.  Their NUKE SIM program, however, is listed here,
in its entirety.  Is it a good one?  Well, here at the Rainbow, we
feel like patrons of the arts.)

The obvious first steps to any project based on practical engineering
are toward research.  In this case, the local public library provided
the texts (listed below) which became the basis for the nuclear
reactor simulator program, NUKE SIM.

Another extremely helpful step is the enlistment (or drafting if
necessary) of a kindly engineer conversant with the field in question.
In this case, engineering advice was provided by Mr. Gary Sandburg;
who, when suitably bribed with a cherry walnetto, proved a marvel at
digging out his old physics textbooks.

It would seem prudent to seek a general understanding of the
operations involved in the selected topic; then press for the "what
went wong" of it all.  This time around, the events at Three Mile
Island provided most helpful insight into operations (and breakdowns)
in normal and extremely abnormal conditions.

A final note relates to the accuracy of NUKE SIM'S operation.  A
layman cannot acquire enough practical knowledge and understanding
within 30 days to design and program an accurate-in-all-detail model
of such a complex power plant.  What follows, then, is an
approximation which still has many of its own surprising quirks,
compounded by others more representative of the thermodynamics
involved.  The program, at times, develops a curious disregard for the
wishes and intentions of the operator -- a disregard which remains a
mystery to its authors.

The following apparati have been deleted because of memory and or time
constaints:

   1 Steam generator
   3 Primary coolant pumps
  48 Various pumps between the turbines and the secondary feedwater
         pumps
  28 Polishers (mineral filters)
   2 Code relief valves
   1 Pressure relief valve
   1 Let down valve
   3 Core coolant pumps
     And a partridge in a pear tree.

Workings

The operation of a nuclear power plant is much the same as that of a
steam locomotive.  A heat source is applied to a vessel partially
filled with water, producing steam under pressure.  The steam is used
to either turn wheels (the motive in locomotive) or electrical
generators (the motive in power plants).  So, the simulator in hand is
largely a plain old steam plant.  A plant fired by oil, gas or coal
would function in the same manner except, or course, its waste
products would not require 150,000 years of close arrest.

The nuclear core in such a power plant is capable of 3,411 megawatts
of thermal energy, which is available as 1092 megawatts of electricity
-- which amounts to 32 percent efficiency.  This is the coal fire in
the steam plant and heats the water in the primary loop.  The water is
kept at 2155 psi and 580° F to prevent the formation of steam voids in
the loop of three-foot diameter pipes.  Such voids are as effective as
closed valves in preventing coolant flow.

The pressurizer is a large vessel connected to the "out" side of the
reactor core vessel.  This is known as the "hot"side of the loop since
the coolant is at a high of 613° F.  It is in the pressurizer that the
one and only steam void is allowed to form in the primary loop.  This
void acts as an adjustable spring to provide pressure control in the
loop; the adjustment being provided by a value (V1) to release steam
and thus pressure and a water inlet (V2) which sprays water to cool
the steam and lower the pressure.

Farther along the loop is the steam generator where the heat from the
primary loop is passed to the secondary loop.  The temperature is thus
reduced to 547° F in the primary with a corresponding rise in
temperature in the secondary.  The coolant now enters the primary
coolant pumps.

There are two of these pumps for each of the two steam generators --
and they are of interesting size and power.  The 10,000 horsepower
motors can push an aggregate 270,000 gallons of coolant into the core
each minute.  Consider for a moment the possibilities.  You could fill
your swimming pool in just three seconds, the overspray easily
accommodating your hot tub.  You could wash your car.  Away.  Forever.
The possibilities boggle the mind!  But I digress.

Also included in the primary loop is the array of pumps and valves
designed to add "makeup" coolant when necessary.  (This is represented
in this program by a single pump -- P4.)

On to the secondary or auxiliary loop.  The steam generator "heat
sinks" the primary loop and absorbs some 66 degrees of heat, which
raises the secondary coolant parameters to about 1010 psi and 547° F.
The steam thus generated is directed, first, to a high pressure and,
second, to a low pressure turbine and then through a condenser which
sinks remaining heat to a third coolant loop.  It is this third loop
which finally leaves the building and is, itself, cooled in those
great thumping cooling towers.  The secondary coolant, now cooled to
its lowest temperature, proceeds to the "polishers" where unwanted
minerals are removed and then back into the generator via the
feedwater pump.  And so on and so on, and round and round.

Operations

The program graphics are innocent of labels since anyone operating
this program for a short length of time would soon find them redundant
and distracting.  Operators needing a memory refresh are advised to
ask for LIST or EXIT after pushing (and patiently holding) the down
arrow key in order tocall the prompt -- "Directive?".  The CLEAR key
is used to return from the RODS control.

Pumps are P1ON or P1OFF with the exception of pump 4, which must do
double duty and so has the commands P4IN and P4OUT.

Valves are likewise as simple, V1OPEN or V1CLOSE will give predictable
results.

In writing this program, it became necessary to have a screen dump of
the graphics drawing.  To do this, a short BASIC program was written
that sends the upper 120 lines of the screen to a line printer VII.
This short routine remains in lines 1460 to 1530, and may be used by
typing PRINT at the "DIRECTIVE?" question.  Do make sure your printer
is on.

Further than this, there is only the random trouble generator in line
1030 to warn about.  The operator is advised to remain alert or
introduce the letters REM right after this line number.  And, of
course, STOP is used to end the program.

One last and very important note: you must CSAVE this program
immediately after typing it in!

DO NOT attempt to run it until you have the ML program in place and
the whole thing on tape or on disk!  Then, turn your CoCo off and then
on again and CLOAD (or whatever).  If the program should find an error
and dump you while still in the graphics mode, you must type A=USR1(0)
to get to someplace safe.

The Program 

The program is divided into the following sections:

  10-70      Housekeeping 
  80-670     Graphics 
  680-1150   Operations 
  1160-1800  Commmands 
  1810-END   Exits 

A real attempt was made to make the variables indicate their
functions; such as, ET(4) is the Event Timer for Operating Condition 4
(OC(4)) and AF(4) is the Alarm Flag for alarm condition 4.

Subroutines were kept as close as practicable to the "front" of the
program to help speed operation.  Wherever possible, if an operation
was to be used more than once, it was configured as a subroutine.

And that, Bro' Jake, is about as structured as we get.  In the
development of NUKE SIM, it became apparent that information in the
form of text and numbers needed to be displayed on the HI-RES screen
along with the graphics. As you may know, using DRAW and LINE is not
an adequate way of putting characters on the screen, mainly because of
the slow speed of interpreted BASIC and the memory requirements.
Therefore, an alternate means was chosen; that is, the use of a
machine language program.

This program had two basic requirements.  First, it had to be
invisible to the BASIC program.  Second, it had to be written in
Position Independent Code.  The latter so that it could easily be
added to the end of the BASIC program, thereby avoiding two separate
loads.  Those familiar with the 6809 microprocessor may already
understand that this is very easy to do, whereas, with other chips, it
is not so easy (Hooray 6809!).

It was decided that simple PRINT@ statements would be used to put the
text on the screen.  In other words, it would intercept BASIC’s print
to the screen routine, draw the text, then return control to BASIC.
As it turns out, there is a nice hook to use for the intercept; the
hook at $167.  In Extended Color BASIC (which is what NUKE SIM is
designed for), the byte at $167 contains a JMP.  The next two bytes
are the location, so a new address is put there; the address of the
M/L program.

In reading the listing, you may note that one other hook was used, the
one at $!9A.  This allows us to disable the BREAK key, thereby
increasing the speed of the program.  This routine is not foolproof;
the BREAK key sometimes may still break, so I advise against pushing
it.  To exit the program, type STOP.  This resets the hooks to their
old addresses so a reset is not required.

The operation of the program will not be discussed here; the comments
should shed some light.  I will say, however, that an editor/assembler
should be used for entering it, as it is 843 bytes long.

The steps for tying the two programs together are very simple.  First,
type in the BASIC program, checking for syntax errors along the way.
Line 10 is very critical since this is where the machine language
program is executed.  The assembly program is ORGed at 0000 as is
written in the listing.  Now, load the BASIC program and PRINT
PEEK(27)*256 + PEEK(28).  This is the end of the BASIC program.  If
this number were 10605, you would type CLOADM "HIRESTXT",10605.  The
M/L program is now at the end of your BASIC program.

The last step is to change the pointers at 27 and 28.  Take your
number (in this case 10605), and add 843 to it (843 is the length,
you'll recall).  The new number would be 11448.  Divide this number by
256 and poke the whole number (positive integer) into 27.  11448/256
= 44.71875 so 44 would be put in 27.  Now, multiply 44 by 256 and
subtract this from the original number (11448).  This leaves 184, so
poke this into 28.  Do not, repeat, do not run the program at this
time, as other pointers are not set properly.  Save this program as
NUKE SIM.  Now CLOAD and have a good time being a nuclear engineer.

This program is intended as an example of a simulation program to help
contest entrants in the Rainbow’s upcoming event and not as a
state-of-the-art mastepiece.  Time constraints prevented a full
debugging, (although the opportunity to prove my theory that programs
are best tested by ninth grade science students was passed up with
much regret) so there are centain to be flaws in the application of
the laws of thermodynamics.  If the reader should come across
operational quirks disturbing to the intellect, he should on no
account contact the authors; who have, with the printing of this page,
washed their hands of the whole mess.

Bibliography: 

Hodgman, Charles D., M.S. "Handbook of Chemistry and Physics"
  Cleveland, Ohio: Chemical Rubber Publishing Co., 1957.

Martin, Daniel "Three Mile Island: Prologue or Epilogue?" Cambridge,
  Mass.: Ballinger, 1980.

Nero Jr., Anthony V. "A Guidebook to Nuclear Reactors" Berkeley,
  Calif.: Univ. of Calif. Press, 1979.

Stephens, Mark "Three Mile Island" New York: Random House, 1980.
