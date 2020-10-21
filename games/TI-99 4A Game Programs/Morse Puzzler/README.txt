MORSE PUZZLER

Morse Puzzler is an educational game that can help you learn Morse
Code or improve your skills in this communications medium.  The
program uses several plain text data statement lines and outputs the
letter information in Morse Code using the Call Sound subprogram in TI
BASIC.  The dots and dashes are heard from your monitor's speaker.
The data statement lines begin at program line 3650 and can be altered
to include any type of message you desire.

This is quite a long program to write.  It could have been shortened
considerably by using GOSUB branches to single lines containing the
information for the dot, the spacing after the dot, the dash, the
spacing after the dash, and finally, the end of character spacing
routine.  Such a program is more difficult to understand, however,
than this one, which uses straight-line programming.  Once this
program has been input as shown, you can input any phrase information
you desire and have it come out in Morse Code.

As written, this program sends code at the rate of about eight words
per minute.  You can speed things up (or slow them down) by changing
the duration of the delay between the dots and dashes, and possibly
changing the duration of the dot and dash proportionately.  Increase
the count value of your for-next loops used for delay purposes to slow
sending speed.  Decrease these values to increase it.

All in all, I think you will find the program to be most interesting
and highly enjoyable if you have a desire to learn Morse Code or are
already somewhat familiar with this means of communication.
Undoubtedly, some amateur radio operators will use a program of this
type to send Morse Code via their transmitters while typing the
information in a letter form via the TI-99/4A keyboard.  This program
has many applications outside of the game programming environment.
