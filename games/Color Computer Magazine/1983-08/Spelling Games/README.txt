(From Color Computer Magazine, August 1983.)

  Learning Games by David Stevens

The three games which draw the most attention in my third grade
classroom are Hangman, Unscramble, and Flash.  My students even stay
in from recess to play them.  I thought you readers might enjoy all
three games written into one package.  It is a rather long listing,
but provides three good, educational games to improve your child's (or
your) own spelling.

To use the spelling programs, once you have typed in the words you
want to practice, Run the program.  You have three choices: Scramble,
Hangman, and Flashcards.  Choose the game you want by pressing the
letter indicated on the screen.

In Scramble, the screen presents a scrambled word that you must type
in correctly.  You work against time depicted by a burning fuse bomb.

In Hangman, a traditional set-up appears on the screen.  Type a letter
-- if it's in the word, it appears in the correct place on top of the
screen.  If the letter is not in the word, a part of the hanged man is
drawn and the rejected letter is listed at the bottom of the screen.

In Flashcards, a word is flashed quickly on the screen.  The user then
types in the word he saw flashed.  An incorrect entry produces a
screen with the correct word.

Further instructions are presented before each game.  Return to the
menu by pressing the Break key.

To change the words which come with this program, simply type Lines 30
and 40 over again, inserting your words.  Be sure you have 50 words
for the computer to read, or edit Line 50 from: WD$(50) to WD$(n), and
change Line 70 from: FOR RD=1 to 50 to: FOR RD=1 to n.  Don't type in
the REM statements because there won't be enough room left over on a
16K machine to Run the program properly.

I put a timing device into these programs (a fused bomb) so my
students wouldn't fall sleep using them.  If you would like to
eliminate this threat, simply defuse it by changing Line 310 from:
FD=2 to: FD=0.  Then be sure to select "speedy" for fuse speed and
don't get more than three in a row wrong.  This program features a
self-adjusting fuse, and if you get three in a row right the speed
will shift up to the next speed until it reaches speedy.  The fuse
will reverse in the same way if you get three in a row wrong.
