WORD PUZZLE PLUS

This program is the one that sprang from the preceding word puzzle
routine.  It is handled in almost exactly the same manner, except a
number of words are purposely programmed into the puzzle.

[Note: The "preceding" routine is available as "One Million Words".]

These words are contained in the data statements found in hnes 510
through 540.  The puzzle discussed previously is printed on the
screen, and the data statement words are written over the other
letters at random locations.  Sometimes, one data statement word will
cover up another, so all of the words contained in the data statement
lines may not appear in any given puzzle.  Each line contains the
words that will be contained in one puzzle, and as written, there are
enough data statement lines to produce four separate puzzles.  You can
produce many others by simply adding more data statement lines between
current program lines 540 and 550.  Each data statement line is
terminated with the word "END".  This serves as an indication that no
further data statement words are to be added.  When one puzzle is
completed, you simply press the enter key to get a completely
different puzzle.

After four puzzles have been worked, the last data statement line,
which contains the word "END" twice, is encountered.  This is a sign
to the computer that there are no more data statement lines and the
program is to be terminated.  Lines 410 through 490 read the number of
letters in each data statement word and assign them to various random
positions in the puzzle.  These lines assure that no words will be
started at a point near the right-hand side where there are not enough
additional screen column positions to complete the word.
Theoretically, you may input words of any length up to 28 letters via
the data statement lines.  The puzzle is a total of 28 columns wide.
