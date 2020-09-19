THE TRACK

  The Track Will Provide Hours of Varied Fun

  by Al Hine

The Track is a unique game because it allows you to create the most
important part of any race game: The track itself.  You can save each
of the tracks you create and you can save as many tracks as you have
disks or tape to save them on.

In this program, a prototype of a more detailed offering now being
developed by Interaction Software, you complete against the clock and
the existing lap record for the particular track.  The Track records
the lap records you set on any track you create, along with the name
of the person who set the record.  The Tract also checks to see if you
have a disk.  If you do, lap records are recorded automatically.  When
you have no disk.  The Track prompts you to position the tape to a
clear space before recording the track, lap time and record holder.

The Track also checks to see whether you have 16 or 32K, If you have
16K, it automatically allocates less space for the storage of tracks.

Installation Notes for Disk 

Key in and save all the programs to disk.  Be sure to save the car
programs in ASCII format, i.e, SAVE "VW",A.

The Track also requires a disk file to save lap records.  To create
this file prior to the first time you run the program, execute this
statement while in the "OK" command mode:

    OPEN "O", #1, "TRACKS/DAT": CLOSE

Installation Notes for Tape 

If you will never run The Tracer from disk, omit lines 3142,
5000-8090, 8500-8590, 9000-9990.

Add these lines: 

    5000 RETURN
    7000 ' GET TRACK
    7010 CLS:INPUT "WHAT TRACK";F1$
    7085 GOSUB 8100:GOSUB 1000
    7090 S=1:RETURN
    9000 RETURN
    9500 RETURN

Modify the following lines to read:

    60020 CLEAR 2000,&H3EB0:GOTO 60040
    60087 IF PEEK(&H7EA9)=83 THEN D=800 ELSE D=500

The Track has the VW in the main program.  If you want one of the
other cars, simply key in the following lines:

                 For a Datsun 
         (Linear steering in two steps) 

    129 ' DATSUN
    130 J0=JOYSTK(0):A=INT(.5+(J0-31.5)/24)
    131 J1=JOYSTK(1):IF J1>15 THEN A=INT(.5+(J0-31.5)/20)
    132 '
    1125 CA$=CHR$(239):CM$="DATSUN"

                  For a Lotus
       (Very smooth handling at high speed)

    129 '
    130 J0=JOYSTK(0):A=INT(.5+(J0-31.5)/27)
    131 J1=JOYSTK(1):A=A*(J1/45+1)
    132 '
    1125 CA$=CHR$(255):CM$="LOTUS"

                 For a Ferrari 
        (Very fast with linear steering)

    129 '
    130 J0=JOYSTK(0):A=INT(.5+(J0-31.5)/20)
    131 J1=JOYSTK(1)
    132 '
    1125 CA$=CHR$(191):CM$="FERRARI"

Running The Track 

The first time you run the program, you will have to begin by creating
at least one track.  After that, you can either create new tracks or
run on tracks you created previously.

Note that when you run from a disk, a menu of the names of all the
tracks are displayed in the approximate order of difficulty.  The
number to the left of the track in the display is the track's
difficulty rating.

Each car handles differently and has a different top speed.  The VW
may be forced to go very slowly to negotiate the sharper turns on a
narrow track, because it cannot turn very sharply.  The Ferrari will
go through the sharpest turns at full speed.  Use the VW for learning,
then move up.  When you have mastered the Ferrari, you will find it a
delight.

When you are finished running the Track, be sure to press the zero key
(0) to exit the program rather than just turning the 80C off.  On a
disk system, this is the point where the program saves any lap records
you may have set during your session.

If The Program Crashes

You can rescue the track currently in memory by:

  * GOTO 8600       (This saves the track)
  * F7=1:GOTO 9500  (This saves the lap records to disk) 
  * GOTO 3000       (This reenters the program at the main menu)

(Mr. Hine is a race driver, enthuiastic programmer and president of
Interaction Software.)
