(From Color Computer Magazine, May 1984.)

WOERTE & SAETZE

  A German tutor for kids or adults. 

  by Bob Jack 

MOVE OVER BERLITZ, Woerte und Saetze is here.  The Woerte und Saetze
program is designed to teach basic German through random drilling in
either English or German.

For the Programmer

Good programs are programs that are written as simply as possible.  If
you pick up a program written six months ago you should be able to
quickly read and understand it.

This program is fairly straightforward and easy to use.  Explanations
are given in the "Program Set-Up" and "Teaching Others" sections.
Some of the subroutines have multiple applications, done to shorten
the program.

The program becomes easier to use if you remember that the sole
purpose of the Words Sentence subroutine is to set the L series of
control variables.  The control variables then set the way the other
routines address the disk files. Table 1, a line oriented program
description, and Table 2, a variable description, will also help you.

Another Language

To use the program with another language change Lines 240, 250, and
260.  These are the N series of string variables.  N1$ is the disk
word file, N2$ is the disk sentence file and N3$ is the language name.
While it is only necessary to change N3$ to use the program with
another language, it is a good idea to change N1$ and N2$ so you will
easily recognize the disk files.

Special Note

The portion of the disk file which deals with pronunciation can be
routed to a speech synthesizer, thus creating a super program for
learning a foreign language.

Program Set-Up 

In learning any language there are three levels of comprehension.  At
the "passive" level the student is able to translate a foreign
language into English.  At the "active" level the student is able to
translate English into a foreign lan- guage.  The most difficult level
is "cognitive," or thinking in the language.  That's what is known as
going native.  This program addresses the first two levels.  The
student can drill in German which is passive and English which is
active.  Passive is the easiest to learn and is the basis of learning
any foreign language.

Before using the drills, disk files must be set up.  This is done by
running the program, answering two questions about the current hour
and minute (used to set up the random function), and selecting the
Enter mode from the main menu.  At this point, a sub-menu will appear
asking if you want words or sentences: start with words.

What type of words should you enter?  Since we are teaching beginning
German, we used a dictionary in the back of a children's book on
German.  In this book we found a translation of English, German, and
the pronunciations. To begin enter about 15 words for each letter of
the alphabet.  We included pronunciation keys only on the really tough
words.  After we mastered this list we added words from an advanced
book.

Next follow the prompts back to the sub-menu and do the same thing for
sentences.  Books written in different levels of German can be
borrowed from your local library.

It may seem like a lot of work to set u p disk files, but it is the
real strength of the program.  You can set up the disk files at a
beginning level and in a general pattern as shown above; or for
teachers, at an advanced level, or in a specific pattern (verb
conjugation, etc.).

Teaching Others

You will find if you are teaching the language to others that the
single most important factor for success is having your students'
attention.  We found that contests between students helped.  We varied
the methods of competition.  The adults competed against the children
at times.  One adult and one child competed against another adult and
child at other times.

A good place to begin teaching is with passive word drills.  Later,
add the passive sentences.  After the students have a grasp of the
passive, start to drill the active words, and then drill sentences.
