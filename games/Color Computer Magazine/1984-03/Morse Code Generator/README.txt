(From Color Computer Magazine, March 1984.)

MORSE CODE GENERATOR

  Dits and Dahs on your TV 

  by Stephen Ritger 

This programs converts a message entered at the keyboard to its Morse
Code equivalent, producing "dits" and "dahs" via your TV.  You can
change the tone by changing the value of the sound command in Line
150.

Using the fact that each letter and number has an ASCII value assigned
to it I set up an array, called MC$.  This contains the sound
information for each character, indexed under its ASCII value.  The
array A$ contains the ASCII information for each respective character.

I have included data for all the basic codes in the International
Morse Code.  If you wish to add your own special charac- ters, simply
add on to the data state- ments in Lines 280-290.  Make sure the code
for your character doesn't duplicate one of the codes already in the
data statements.  The tones are encoded by numbers, with the number 1
equal to a "dit" (dot), and the number 3 equal to a "dah" (dash).  For
example, the letter A, whose ASCII number is 65, has the code 13,
which stands for "dit-dah."  The letter Z, whose ASCII number is 90,
has the code 3311, which stands for "dah-dah-dit-dit."
