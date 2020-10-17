PLAY THIS TUNE

  CoCo Says Repeat This Tune
  by Larry Konecky
  Director, CAI in Music, Alcorn State University 

Computer Assisted Instruction (CAI) is receiving much attention in all
areas of education, particularly in subject areas where drill and
practice exercises are necessary for student learning.  In music
education, ear training is an area in which much practice is necessary
by many students for sufficient development to occur.  Also, even
though students may be in the same music theory classes, or at the
same performing levels, their aural discrimination skills may vary
greatly.  For this reason programs which relate to various skill
levels are necessary.

The following musical game is intended to give students practice in
aural note identification at various skill levels.  A piano keyboard
is displayed on the screen upon which the computer plays sequences of
notes which students must repeat by pressing the proper keys on the
Color Computer.  Since the computer keyboard is not like the piano
keyboard some imagination is necessary to visualize the piano keyboard
onto the Color Computer keyboard.  A plastic overlay can be helpful by
marking on the overlay the bottom row of keys ('Z', 'X', 'C', 'V',
'B', 'N', 'M' and ',') as piano white keys and in the next row ('S',
'D', 'G', 'H', and 'J') as black keys.  Also relabeling the computer
keys their respective piano key names (middle C through C above middle
C) can be helpful.

At each novice level the computer shows which notes are being played
as well as sounding them before asking students to repeat the
sequence.  In each other level only the first note is shown, forcing
the player to rely on listening ability alone.  The game begins with a
one note sequence which is lengthened by one note after each
successful completion of up to a maximum of fifty notes.  This level
can be changed by adjusting lines 10 and 755.

At the intermediate-diatonic level, the intervals between successive
notes are limited to a maximum distance of a fifth.  At the
intermediate-chromatic level, the randomize function is set so that a
greater amount of white key notes will occur than black key notes.  In
other levels the notes have an equal chance of being selected.

You may want to change the comments given at the end of each exercise
or the levels at which they occur.  Refer to program lines 1300
through 1460 to make the desired changes.

Statement 5 uses a PCLEAR 1 which will give a syntax error the first
time the program is RUN after it is loaded.  Just retype RUN, press
ENTER and the program will run without the syntax error.
