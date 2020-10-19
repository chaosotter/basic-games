HANGMAN

Hangman has been a popular game for centuries, and during the last
half decade or so, it has proved very popular as a computerized game
as well.  This game, as presented here, is not significantly different
from others that have been written for computers, at least as far as
the on-screen display is concerned.  However, the programming steps
that were required to arrive at the finished game became quite
involved.  Using standard TI BASIC, it is a bit difficult to
continually print information at one point on the screen and then
update that information without erasing the screen entirely.  Many
dialects of BASIC offer locate statements or print @ statements, which
will allow you to print a line of text at a certain position on the
screen.  Neither of these statements are found in TI BASIC, so it is
necessary to find a different means of accomplishing the same task.

It would be fairly simple to draw a gallows, a rope, and a figure at
the end of the rope on the screen using TI BASIC.  However, the game
of Hangman requires that these graphics be produced on an element by
element basis.  After each element is formed, the player is given the
opportunity to guess another letter.  This involves on-screen text
which will automatically cause the previous graphic image to be
scrolled upward one line. This can be gotten around by clearing the
screen after each guess and then redrawing the previously displayed
graphics along with any new elements that might be added.  For
example, if you progress to a point in the game where you have a
gallows, a rope, and a head on the screen, when you make your next
guess and press the enter key, the screen is cleared.  If your guess
is wrong, the gallows, rope, and head will appear again along with the
graphics that make up the body.  If your guess is correct, the letter
will be displayed on the screen.

In computer Hangman, it is necessary to display each correctly guessed
letter on the screen at all times and at a position that will indicate
its position within the word. For example, if the word is TRACK and
someone guesses A, the letter A should be displayed in the third
horizontal position on the screen to indicate where it falls within
the word.  This can be a real problem, even more of one than
displaying graphic characters at certain positions on the screen.
Again, this is due to the fact that there are no print @ or locate
statements in TI BASIC.  The closest alternatives are the subprograms
Call VCHAR and Call HCHAR.  However, these subprograms cannot be used
directly with letters from the TI-99/4A character set.  Rather, they
must be used with the ASCII values that represent these characters.

Therefore, it is necessary to convert the secret word input at the
beginning of the game by the rival player to ASCII characters and
convert the guessed letters to ASCII code as well.  When this is done,
the two are compared; and in the event of a correct guess, a Call
HCHAR subprogram (Call VCHAR will work as well) is used to insert the
ASCII character at a certain point on the screen.  When displayed, the
character is in alphabetical form.  This was the hardest part of
writing this program.  The graphics part of it went along very well,
but the rest of it consumed many hours of experimentation until a
workable solution was finally arrived at.
