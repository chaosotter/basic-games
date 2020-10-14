TUNNELS OF THAR

Somewhere in the mysterious Tunnels of Thar lies the long lost Holy
Grail.  Being a bold Crusader, good and true, you have ventured into
these uncharted tunnels, braving the musty blackness with only a
medieval Grail Detector to help you.  Medieval Grail Detectors weren’t
very sophisticated so it may take a while to interpret the readout the
detector gives you.

At the start of the game the computer will give you a quick look at a
plan view of the tunnel system, after this you are on your own.  To
move through the maze of tunnels, press the first letter of the
direction you wish to travel, for instance "N" for north.  After each
turn the computer will tell you which directions are open to you.

Such as:

    NORTH: WALL
    SOUTH: OPEN
    EAST: OPEN
    WEST: WALL

The computer will also give you the readout of your Grail Detector.

If you get lost or confused, pressing "H" for help will reward you
with another look at the plan view of the tunnels.  Open passages will
be shown in yellow, your position is marked with a blue asterisk.
Unfortunately, asking for help results in a penalty of 15 moves.  Your
score at the end of the game depends on how many moves you took to
find the Grail.

In this program the routine from 530 sets up the parameters of the
program.  The lines 550 to 580 decide the position of the Holy Grail.
This will change each time the program is RUN.

The DATA statements in lines 750 to 840 provide the locations inside
the array for the tunnels.  The array is DIMensioned in line 540.
Lines 690 to 720 READ the DATA into the array.

Lines 380 to 520 print the plan of the tunnels on the screen.  Lines
210 to 330 accept your moves and work out your new position.  Lines 50
to 190 provide the feedback printed on the screen after each move and
line 190 works out the reading of the Grail Detector.  Line 310 checks
to see whether you have found the Grail.  If you have, the subroutine
from line 1000 congratulates you and tells you how many moves it took
you to complete the task.

[Note: This game is quite similar to "Stronghold of the Dwarven
Lords", also found in the collection.]
