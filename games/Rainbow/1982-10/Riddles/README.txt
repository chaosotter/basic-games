RIDDLES

  Proper Grammar Important in Educational Programs

  by Steve Blyn

(Mr. Blyn, who teaches both exceptional and gifted children, holds two
Master's degrees in the field of education and has won an award for
the design of a computer program to aid handicapped children.  He and
his wife, Cheryl, own Computer Island.)

The users of our programs learn many things from the programmers.
Often, they learn extra, unexpected, unintentional things. This is
referred to as "incidental learning."  An example of this is that
almost all of us have become better typists through using or creating
computer software, although this probably was not the intention of any
of the programs.

As programmers, or even modifiers of programs, we must be careful that
our subjects do not accidentally pick up any bad habits or poor
"incidental learnings."  One such area with which to be particularly
careful is grammar.

It is a shame to ruin a good program with bad grammar.  We should make
certain that our games and teaching programs set proper standards for
their users.  Messages such as "You won the game in four move" or "in
one moves" silly and makes the computer somewhat less effective as a
teaching tool.  It is easy to check whether a plural is needed by
reading the value of the variable immediately preceding it.  A plural
(s) is needed except when the value is one.

Similarly, it is silly to forget to have our articles (A and An) not
agree with the nouns to which they are refer.  There is no reason to
see the words "a eagle" or "an dog.'  They represent poor examples to
set for others and are easily avoidable.  Merely cheek to see if the
noun following begins with a vowel and add an "n" to "a" that you
already preset if it is needed.

The following program illustrates some principles of good computer
grammar.  It is a fun program which asks riddles.  To make the job of
entering the riddles easier, each riddle begins with the word "what,"
which is programmed on line 80.  Each DATA statement contains a
different riddle, a comma, and the riddle's answer.  Notice that the
article is included in the answer, but is not to be input by the
subject.

Line 100 prints the letter "a."  Next we check to see if a letter "n"
is needed.  We only will print an "n" if the first letter of the first
word in B$ starts with a vowel.  This we call C$ on line 110.  (We get
a little practice in using strings here.)  Line 120 checks to see if
we need the "n" and line 130 prints in a space between words.  Line
140 prints the rest of the answer.  The semicolon is very important
because it connects the letters from one line to the next.

The plural is checked after your score is written in on line 160.
Line 170 will print an "s" after the word riddle if R is any value
other than one.  If you want to he fancy and use the words "try" and
"tries" in a program, you can follow a similar pattern.  First, print
the letters "tr" and then read the value of the variable.  If it is
not equal to one, then print "ies" ELSE print "y."

I hope you enjoy the program and can think of and use some riddles of
your own.  Here is one that we didn't use: “What computer tastes
best?"  If you can think of any computer riddles, then drop us a line.
We will print the answer to our riddle and the best of yours in a
future issue.
