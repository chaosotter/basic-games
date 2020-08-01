Description: ELIZA is a program that accepts natural English as input
and carries on a reasonably coherent conversation based on the
psychoanalytic techniques of Carl Rogers.  You will have to forgive
ELIZA for being a poor English student.  You'll find that it is best
not to use punctuation in your input, and you'll have to carry the
conversation.  But it does work!

How it works: In order to speak to you, ELIZA must: (1) get a string
from the user, and prepare it for further processing: (2) find the
keywords in the input string: (3) if a keyword is found, take the part
of the string following the keyword and "translate" all the personal
pronouns and verbs ("I" becomes "YOU", "ARE" becomes "AM", etc.); (4)
finally, look up an appropriate reply based on the keyword which was
found, print it and, if necessary, the "translated" string.  ELIZA
uses four types of program data to accomplish this:

(1) 36 keyword, such as "I AM", "WHY DONT YOU", and "COMPUTER".  The
keywords must be in order of priority, so ELIZA will key on "YOU ARE"
before "YOU".

(2) 12 strings used for the translation or conjugation process.  These
are in pairs such that if one member of the pair is found, the other
is substituted for it.  Examples: "Y", "YOU", "AM", "ARE", etc.

(3) 112 reply strings.  The strings are arranged in groups
corresponding to the keywords.  There is no fixed number of different
replies for each keyword.  Replies ending in a "*" are to be followed
by the translated string, while the strings ending in normal
punctuation are to be printed alone.

(4) Numerical data to determine which replies to print for each
keyword.  For each keyword there is a pair of numbers signifying
(start of reply strings, number of reply string).  Thus the fifth pair
of number, (10,4), means that the replies for the fifth keyword ("I
DONT") start with the tenth reply string, and that there are four
replies.

Detailed Explanation:

Line 10-160: Initialization.  Arrays and strings are dimensioned.  N1,
N2, and N3, which represent the number of keywords, number of
translation strings, and number of replies respectively, are defined.
Then the arrays are filled.  S(keyword number) is the ordinal number
of the start of the reply strings for a given keyword, R(keyword
number) is the actual reply to be used next, and N(keyword number) is
the last reply for that keyword.  Finally an introduction is printed.

Lines 170-255: User input section.  This part of the program gets a
string from the user, places a space at the start of the string and
two at the end (to make it easier to correctly locate keywords and to
prevent subscripting out of bounds), throws out all the apostrophes
(so DONT and DON'T are equivalent), and stops if the word SHUT is
found in the input string (which it takes to mean SHUT UP).  ELIZA
also checks for repetitive input by the user.

Line 260-370: Keyword-finding section.  ELIZA scans the input string
for keywords and saves the keyword of highest priority temporarily in
S, T, and F$.  If no keyword is found, the keyword defaults to number
36, NOKEYFOUND (which causes ELIZA to say something noncommital) and
it skips the next section.

Line 380-555: Translation or Conjugation section.  The part of the
input string following the keywork is saved.  Then pairs of
translation strings, as described above, are read and upon the
occurence of one of these strings, the other is substituted for it.
When this is done ELIZA makes sure there is only one leading space in
the translated string.

Line 560,640: Reply printing section.  Using R(keyword number),
S(keyword number), and N(keyword number), the correct reply is
located.  The pointer for the next reply is bumped and reset if it is
too large.  If the reply string ends in a "*" it is printed with the
translated string, otherwise it is printed alone.  The previously
entered input string is saved to permit checking for repetetive input,
and then ELIZA goes back for more input.

Limitations: Runs in 16K of memory.

Modifications: You can easily add, change, or delete any of the
keywords, translation words, or replies.  Remember, you will also have
to change N1, N2, N3, and/or the numerical data.  Just as a
suggestion, if you decide to insert "ME" and "YOU" in the translation
string list, put a nonprinting (control) character in YOU to prevent
ELIZA from substituting I->YOU->ME.  This means that YOU will always
be assumed to be the subjecty of a verb, never the object, but
resolving that difficulty is a whole different problem.

A Few Comments: The structures found in lines 120, 420, and 590 could
be replaced by RESTORE NNNN statments if your BASIC has them.  The use
of an INSTR, SEARCH, or POS function to determine if one string is a
substring of another would probably speed things up considerably (it
takes ELIZA around 10 seconds to think of a reply).

What it all means: we'll leave to you.  Although this program is an
inferior imitation of the original, it does work.  It is pretty
farfetched top believe that a psycholanalyst is nothing but a
sentence-input-keyword-finder-conjugator-reply finder, but if you
really think so, you can buy your computer a speech-recognition unit,
a Computalker and a green couch, and charge $75/hr!  My computer, the
doctor!

Geneology: ELIZA was originally programmed in LISP by Joseph
Weizenbaum at MIT.  It was converted to BASIC by Jeff Shrager and
further modified to work in Microsoft BASIC by Steve North, who also
wrote these notes.

Name           Usage
R(X),S(X)N(X)  See Text
I$             Input string
K$             Keyword string
C$             Translated or conjugated string
F$             Reply string, also used to save K$ in scanning for
               keyword
R$,S$          Strings used in conjugation process
P$             Previous input string
Z$             Scratch (used for simulating RESTORE NNNN statement).
N1             Number of keywords
N2             Number of conjugation strings
N3             Number of replies
K              Keyword number
S,T            Used to save K and L when scanning for keyword
X,L            X,L Scratch.  X is generally used for looping while
               L is used for scanning through strings
V              V Used for scanning for keyword string
