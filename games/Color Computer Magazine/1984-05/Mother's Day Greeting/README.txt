(From Color Computer Magazine, May 1984.)

  A Special Gift for Mom

  by Jean Plesser

May 13th is Mother's Day; Listing 2 is an electronic greeting card for
the special Mom in your life.  It draws a basket of flowers on the
screen, then prints a message to a tune at the bottom of the screen.
After each line, the message is erased before the next line is
printed.

Data Lines 350 through 430 draw the flowers.  Data Lines 450 through
490 combine string data (letters and spaces) with numeric data
(numbers).  This data is used in Line 290 to print a word, or part of
one, and to sound a note.

The first number in the SOUND command is for the tone and the second
number is for the length of the tone.  These numbers can be from 1 to
255.

I used quotation marks (" ") for some of the W$ data.  I did this to
add a blank space before a word.

We have covered all the other portions of the program in previous
lessons or in this one.  Follow the lines closely and perhaps you can
get some help typing it in -- don't forget to save it.  Saving can be
done in stages also, so you can type a few lines at a time.  I think
you'll be very pleased with the results and I know Mom will.

Here are the variable names:

    A  = horizontal position
    B  = vertical position
    C  = color
    X  = a beginning horizontal position for a loop
    Y  = a beginning vertical position for a loop
    V  = variable for a vertical loop
    H  = variable for a horizontal loop
    W$ = string data for message
    T  = data for tone in SOUND command
    S  = data for sound length

Have fun with animation and use these ideas to create electronic
greeting cards for other occasions -- they're great to send to other
TRS-80 Color Computer owners.

Next month we'll have something special for Dad.  Have a happy May!
