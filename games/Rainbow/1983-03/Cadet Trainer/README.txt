[Note: This game does not appear to work properly on a disk-based
system.]

CADET TRAINER

  Homing in on a Guided Missile System
  by John W. Fraysse, Jr.

FEATURES

* High resolution four color graphics with random scenes
* Five levels of difficulty (three with maneuvering targets)
* Action graphics with joystick control
* Self explaining instructions
* All BASIC programming

Caddet Trainer is an attempt (I hope a successful one) to simulate the
two phases of a command guided weapon system.  That is, lock-on (or
target discrimination) and terminal homing.  In this game, your weapon
is a "photon torpedo."  Playing Cadet Trainer may develop one's
peripheral vision and eye-hand coordination.

The graphics are programmed to simulate the apparent growth of the
target as the photon torpedo closes.  Note that the player is guiding
the torpedo from his fighter craft.  The player is not the torpedo but
is seeing the target through the "eyes" of the torpedo itself.

PROGRAMMING TECHNIQUES

Cadet Trainer is written in BASIC.  The only so-called tricks are a
BREAK key disable and the familiar speed up POKE 65495,0 to achieve
the speed I believe necessary to give good response to joystick
inputs.

PROGRAM FUNCTION

Cadet Trainer's initial display identifies itself and its author while
playing the Air Force theme song.  Optional instructions follow if
needed.  One must then select the difficulty level (1-5) which will be
discussed later.  The program will then draw the various perspectives
of the target and display a flashing cross on the largest perspective
pin pointing your "aim point" on the target.  Press the fire button to
erase the screen and draw the sector of space in which the smallest
image of the target will appear at random for only an extremely short
period of time.

You are now in the lock-on phase of your mission.  You must position
your small orange cross-hair (with the right joystick) to within eight
pixels of the target's last position and press the fire button to
begin the homing phase.  If you achieve this, your booster motor will
fire, propelling your torpedo into space where the approaching target
will appear first small then progressively larger.  Remember you must
now position your cross-hair on the correct part of the target your
aim point.  After the largest image appears, you have approximately
one second before you reach the target.  This time gets reduced with
the higher difficulty levels.  After you have reached the target your
simulated warhead explodes and your miss distance for that particular
mission and aim point is displayed briefly.  The program then displays
the aim point for the next mission.  A mission consists of one lock-on
phase and one homing phase.  Five missions complete one play cycle
where your score is totalled.  You may then replay and/ or change the
difficulty level or BREAK to exit.  Your score for the entire play
cycle is the sum of all your lock-on times plus your five "miss
distances."  Obviously, the lower the score the better.  It should
also be noted that the lock-on timer does not start until the first
target image appears.

DIFFICULTY LEVELS

1) Targets appear every time a random number between 1-20 equals 2.
   Targets do not maneuver and final homing time is 1.8 seconds.

2) Targets appear every time a random number between 1-10 equals 2.
   Targets do not maneuver and final homing time is 1.6 seconds.

3) Targets appear every time a random number between 1-7 equals 2.
   Targets maneuver plus/minus 50 pixels in a predictable fashion.
   Final homing time is 1.4 seconds.

4) Targets appear every time a random number between 1-5 equals 2.
   Targets maneuver plus/minus 100 pixels in a predictable fashion.
   Final homing time is 1.2 seconds.

5) Targets appear every time a random number between 1-4 equals 2
   (FAST!).  Targets maneuver as much as plus/minus 100 pixels in a
   random fashion.  Final homing time is 1.0 seconds.

HINTS

You may hold your button during the lock-on phase while trying to find
the target.  During homing the button is not used.

Try to keep the cross-hair slightly off the aim point to keep it from
being lost in the target or background as your torpedo closes.
Remember the target image grows.  Try to anticipate your aim point’s
next position.  Make your move to the aim point after the final
(largest) image has appeared.

SCORING

    SKILL LEVEL       YOUR SCORE/DIFFICULTY LEVEL
    ACE                       12
    FIRST CLASS               15
    SECOND CLASS              20
    THIRD CLASS               25
    ROOKIE                    30
    RE-READ INSTRUCTIONS!     40
