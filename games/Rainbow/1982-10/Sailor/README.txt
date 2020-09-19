SAILOR

  Go Sailing With The Sailor 

  by John Fraysse

As a sailboat cruiser and club racer on Chesapeake Bay I am often
told, "Gee, this (sailing) is neat!  How does it work?  Will you teach
me?"

Since most interested folks are generally of technical backgrounds, a
few hours with pen and paper and a good reference book will usually
lay the groundwork.  However, there still seems to be a gap between
the "book sense" of sailing and actual application.

Sailor was written to assist in bridging this gap by allowing the
student sailor the opportunity to operate a video display/real-time
simulation.  By numerically solving the sailboat equations of motion
with the student in-the-loop (at the controls) one is able to see,
"feel" and anticipate true sailboat response which is consistent with
book-wise instruction.  In addition, an instrument display similar to
those on board sophisticated racers provides a continuous readout of
the critical parameters governing performance, giving the student an
indication of how well he is doing.  To date, Sailor has helped
several folks acquire the dry, warm, inexpensive practice necessary to
develop a "second nature" understanding of the world's finest
pasttime!

Besides all this noble sounding justification, it's just plain fun to
fiddle with!

Sailor Program Objectives 

A. Program must be in BASIC.  I hate machine language and don't have
   time to fool with it.

B. High Resolution Graphics are necessary.  Boat heading, instrument
   displays and sail positions are critical in learning to “feel" or
   visualize the wind.  (You can't see it on the TV screen either!)

C. Adequately Fast Execution is important.  Relatively quick response
   time to control inputs is necessary (approximately one second or
   less).

D. Program must have a race course with a Challenge option.  Getting
   from point A to point B whether racing or cruising always requires
   sailing to objects or away from danger.  Variations in wind
   conditions and current flows always complicate the issue.

E. Keyboard control should be simplistic.  Joysticks are not needed
   and I personally feel they give undesirable control
   characteristics.

F. Program must fit on 16K machines.  This would provide a broad base
   of appeal and use.

Of these six objectives, the last was by far the most difficult given
A through E.  I had to resort to reading a previously created data
tape because the coding for the data generator (SAILDAT below)
resulted in a 600 bit overrun.  The current program on my 32K machine
requires a peak memory of 16200. That's close!

Description of Video Display

Text Displays 

1. Introductory Displays -- Credits Chris Cross (and myself) and plays
   a few bars of his award winning song “Sailing.” ENTER

2. Control Instructions -- Control of the boat's heading and sail plan
   is accomplished via the keyboard.  To steer right press RIGHT
   ARROW.  To steer left press LEFT ARROW.  Initial sail plan is the
   "standard" indicated by one vertical line and is also the minimum
   plan.

   Additional sail area increments are available up to four times
   (four lines) the standard.  To add sail press UP ARROW.  To reduce
   sail press DOWN ARROW.  Pressing R at any time during the sailing
   portions of the program causes a return to the game option menu.

3. Cassette Instructions -- Data created from SAILDAT read in.  Press
   PLAY on the recorder and ENTER when ready.  Instructions will
   remain until the sequence is complete even though the cassette
   starts and stops a lot.  When SAILOR reads an EOF, the cassette
   will stop and the computer will BEE-BOOP you just in case you were
   asleep.  The screen will now display the game option menu.  Do not
   turn the recorder off Untill you see (or hear) this menu.

4. Game Option Menu -- Allows selection of game options and Allows a
   proper exit.  Option "A" provides a constant ten knot wind with no
   currents.  Option "B" provides a ten knot breeze with a four knot
   gust and up to 2.8 knots of randomized current in both magnitude
   and direction, "S" stops or exits the program and slows the
   computer down, (POKE 65494,0).  If you accidently hit "S" just type
   CONT <ENTER> to return to the Game Option Menu.

5. Timed Finish Display -- This display appears after you have
   finished a timed run around the course.  Your elapsed time is
   displayed.  ENTER transfers control back to the game option menu.

Hi Resolution Displays 

The figure below is a diagram of Sailor's High resolution video
display.  Note the one and two letter label descriptors with the
following explanation:

1. Instrument Displays 

Locate the two circles, a dot and a series of vertical lines in the
upper left of the screen.  These are the instrument displays and are
described as follows:

"S" -- instantaneous boat speed.  180 degree arc to the right is 15
       knots.  Maximum speed is approximately 13 knots.

"A" -- velocity trend or acceleration.  Vertical line is approximately
       zero acceleration.  45 degree line to the left is at least .2
       knots per second deceleration.  45 degree line to the right is
       at least .2 knots per second acceleration.

"H" -- heel angle indicator.  Vertical line is no heel, 90 degree arc
       to the left is 90 degree heel to port; 90 degree arc to the
       right is 90 degree heel to starboard.  Note: Heel angles in
       excess of 65 degrees cause the boat to go out of control.

"RW" - relative wind indicator.  180 degree arc to the right is 30
       knots of relative wind (wind speed as measured on the boat).

"O" -- indicates in w'hieh option the game is set.  If the dot is on,
       option "B" (wind gusts and random currents).  If the dot is
       gone, option "A" (constant wind/ no current).

"SA" - sail area indicator.  A series of vertical lines (1 to 4) which
       indicates multiples of the standard sail plan.  Game allows the
       addition of sail area at any time.  Sail is "blown away" to the
       standard plan if an out of control condition occurs.

2. Boat and Course Displays 

"RL" - restrictive limits of game.  These invisible limits keep the
       boat from sailing off the screen or into the instrument area.
       When a limit is hit only the boat position is limited.  The
       normal integration continues to update the instruments as if a
       limit never occurred.

"B" -- sailboat image with sail at proper trim.  Sail position
       indicates the optimum trim for the boat heading, wind speed and
       direction.

"M1, M2, M3, M4, T" -- four bouy markers and a timer running
       indicator.  Course around bouys may be either counter-clockwise
       or clockwise.  Automatic timing starts when the center of the
       boat first crosses the start/finish line at M1.  The letter "T"
       in the center of the course indicates that the timer is
       running.  A second crossing stops the clock, clears the video
       and displays the elapsed time.  Hitting a bouy results in a
       high-low tone and a time penalty.

"WD" - wind direction indicator.  Indicates that the wind is blowing
from right to left at ten knots except during the wind gusts when it
is 14 knots.  Gusts are indicated by a series of low tones.

Description of Program Function 

A. Program is all BASIC.

B. Program requires a maximum memory of approximately 16200.

C. Once initiated the display screen is never cleared.  Instead boat
   animation and instrument updates quickly blink due to PUTting
   blanks or PRESETting on top of old data or boat positions.  This
   allows the program to update quickly (relatively speaking) and use
   minimal memory (PCLEAR 5).  The game uses high speed (POKE
   65495,0).

D. The program runs with an update rate of approximately one second.
   The equations of motion come from Newton’s laws.  That is, forces
   and moments cause accelerations which when integrated give
   velocities which in turn when integrated yield new positions. These
   equations are driven by three parameters, (wind speed, sail area
   and heading).  Two of these are controlled by the player, (sail
   area and heading).  The steering rate is limited to 22.5 degrees
   per second and the sail area rate to one multiple of the stardard
   plan per second.  This gives the boat a relatively smooth and
   realistic response to control.  The dynamics are very similar to a
   2000 pound Olympic class hull (or a J-24).  The boat has a hull
   speed of six knots but is capable of planing to 13 knots with
   enough sail area or during wind gusts (higher winds).

E. Rapid pressing of the control keys will not greatly increase the
   effectiveness of control due to the limited heading rates and the
   inertia of the boat itself.  Remember sailboats are graceful!

Game Difficulties and Penalties 

A. Boat Speed / Sail Area Control / Loss of Control 

When racing around the course, the objective is to round all four
buoys in the shortest possible time.  Put up more sail area, right?
Yes and No!  Upwind courses (beating) cannot tolerate the same sail
area as cross wind (reaching) or downwind (running) headings.  This is
due to the relative wind.  Upwind the boat speed adds (vectorally) to
the true wind speed.  Downwind they subtract.  The forces and moments
generated by the sails are proportional to the Square of the relative
wind speed and directly proportional to sail area.  Extra sail area
upwind will help to a point until heel angles cause increased hull
drag and slows the boat.  Additional sail area beyond this point will
cause excessive and uncontrolled heeling which causes loss of rudder
control.  In this condition the boat rounds into the wind and stalls.
This is just like the real thing!  A single High tone will signal you
as to what has happened.  Watch out for those gusts in option "B"!

B. Inertia 

Remember that the boat has inertia.  That is, you don't speed up
immediately or slow down immediately.  The program is initialized with
zero boat speed, headed into the wind.  The player must maneuver onto
port or starboard track to begin to accelerate.  Otherwise you will
just sit there!  Be careful of option "B". The currents may drift you
into a buoy if you do not have adequate boat speed to steer away.  Try
maneuvering to a buoy so that you arrive with zero velocity.  This is
a basic maneuver, but not an easy one (neither here nor out on the
clear blue waters!).

C. Buoy Contact 

Hitting a buoy adds five seconds to your elapsed time for each second
your boat is in contact.  A "kiss" on the buoy is five seconds.  If
you are moving slowly and "centerline" the boat on the buoy, you may
receive 15 seconds.  A single high-low tone indicates each time you
acquire this unwanted time.

D. Wind Gusts / Currents 

Option "B' only.  Sailor will sail safely (in control) at all points
of sail during a wind gust with the standard plus one sail plan or
lower.  However, the objective is to go FAST around the course!  Try
adding sail during the lulls and reducing it quickly during the gusts
when going Upwind.  Sailing downwind -- Go For It!  Put it all up!
But be careful of your potentially oversailed condition when changing
course to wind or you may lost it all temporarily.

Once again, currents can be a boon or a bane.  They may help you to a
bouy, run you into it or set you away from it.  Each "B' game results
in a random current speed (0 to 2.8 knots) and direction. To observe
the current, leave the boat pointing into the wind at the beginning of
a new game and see which way and how fast you drift.  Then adjust the
way you steer.  Oh, by the way, if you ever draw the 2.8 knot current
maximum, you will know it immediately!  Try sailing with just the
standard sail plan... a good challenge.

"Sailor" Program Line Flow Chart

Line        Description / Function

   1-   3   PCLEAR bug killer
  10        Credits
  20-  30   Page clearing (5 pages)
  40        Dimension arrays
  50-  70   Introductory display
  80-  90   Sailboat and program control instructions
 100- 220   Read and graphically store (page 1) setup data from tape
 230- 240   Main menu (options and exit)
 250- 320   Setup instrument displays; initialize equations of motion;
            set standard sail plan
 330        Program time step or update loop begins
 330        Strobe keyboard for heading, sail plan or reset commands
 340- 350   Limit commanded headings
 360- 440   Check time for wind gust 
 450- 480   Calculate present boat speed, relative wind and
            sine/cosines of wind angle 
 490- 500   Limit commanded sail plan
 510- 520   Calculate sail total force derivative
 530        Calculate heel force, angle and instrument settings
 540- 600   Check heel angle; declare boat in or out of control; high
            tone if out of control 
 610- 620   Calculate hull drag due to heel angle
 630- 640   Calculate sail drive force and sum with hull drag and
            hull drag due to heel 
 650- 670   Calculate boat acceleration; integrate and limit peak
            velocity 
 680- 710   Calculate instrument settings for boat speed and relative
            wind
 720        Store previous boat position
 730- 860   Check for buoy contact; high-low tone; add penalty time
 870        Integrate boat and current velocities; calculate new boat
            position 
 880- 920   Limit boat position to screen and away from instrument
            area
 930-1010   Check for start/finish line crossings; start or stop
            automatic timer 
1020-1120   Update instrument and sail plan displays 
1130-1140   Switch to page 1; get a "blank" boat 
1150-1160   Switch to display pages (2-5); put a blank on the old
            boat position
1170-1190   Switch to page 1; get current boat configuration
1200-1210   Switch to display pages; put current boat configuration
            at current boat coordinates 
1220-1230   Graphically refresh starting line, wind indicator and
            buoys
1240        End time step or update loop (GOTO 330)
1250-1270   Slow computer down; stop program/exit
1280        PCLEAR bug killer

                        Scoring 
                      (Record 86) 

    87 or less     -- America's cup potential
    90-99          -- Expert level
    100-109        -- You know what you are doing
    110-119        -- Beginner level
    120 or greater -- Total landlubber
