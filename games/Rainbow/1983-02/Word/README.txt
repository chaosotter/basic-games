THE WORD

  Here, The Word is 'Grammatical'
  by R. Bartly Betts 

The Word is an educational program dealing with parts of speech.  As
set up, it reviews nouns, verbs, pronouns, adverbs, adjectives,
prepositions articles and conjunctions.  Each sentence contains a word
that matches one of these parts of speech.

The heart of the program prints sentences on the screen in which a
word is flashed and then highlighted.  The parts of speech are
presented in a menu, from which the student chooses the correct
answer.  If he answers correctly, the word "Right" is flashed in a
blue box with accompanying sound.  If he is incorrect, the word
"Wrong" is flashed in an orange box, with sound, and he is shown the
correct answer.

Unlimited Questions: 

The program listing contains 20 sentences, but could have as few or as
many as desired by adding to or substituting the data appearing at
lines 490 to 590.  Line 590 must be retained as is to end the program.
After the student answers ten questions he is given his score
percentage and asked to press ENTER to continue.  He is then given the
next ten questions.  This will continue until all of the sentences
have been used.  The program then asks if the student would like to
review the questions or quit.

The format for adding new data lines or changing existing ones is
quite simple.  The first part of the data line contains all of the
sentence up to the target word, followed by a comma.  After the comma,
and without a space, the remaining portion of the sentence is added
and ended with the proper punctuation.  A second comma is then
inserted followed by the answer (e.g. noun, verb, adjective, etc,).
See program line 490 for an example.

Line 335 contains the parts of speech featured in this program.  These
could easily be changed if different review questions are desired.  To
change the number of student choices (e,g. to only feature adverbs and
adjectives), there are several program changes that are necessary.

The first change will be in line 35.  The loop to read the parts of
speech into WD$ would have to be changed from 8 to 2.  Line 335 should
read - 335 DATA 1. ADVERB, 2.  ADJECTIVE.  In line 330 the 8 should be
changed to a 2.

Line 375 should read "ADVERB" instead of "NOUN" and line 380 should
read "ADJECTIVE" instead of "VERB."  Lines 380 through 410 should be
deleted.  In line 370, "S" should be changed to "2" and finally, in
line 620, the "43" must be changed to "41".

These same lines would also be the major keys to changing the program
over entirely and using it for a quiz in some other subject.

Color and Sound: 

The program is quite flashy and has a lot of sound.  A short machine
language program is loaded in at the beginning, lines 5 through 15,
and it is used to flash the title graphics through 42 changes.  The
program was so fast that I had to insert a sound routine into the loop
to slow it down to something less than one swift blur.  The routine is
called in line 195.  By inserting the data lines and the machine
language driver (lines 5 through 15), this routine could be used in
other programs for the same effect.

As written, the program operates in 32K.  To run it in 16K you will
need to change 32384 in line 5 to 16200.  Change 32384 to 16200 in
line 15 as well as both occurrences of 32418 to 16234.
