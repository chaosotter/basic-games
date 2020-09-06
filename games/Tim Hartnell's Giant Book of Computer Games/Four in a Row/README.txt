FOUR IN A ROW

In this game, FOUR IN A ROW, as its name suggests, the aim is to get
four of your pieces (the H's) in a line in any direction, before the
computer (using the C's) manages to do so.

You indicate your choice of move by specifying the column in which you
want to move your piece.  The piece then drops to the lowest available
position within that column.

The computer plays this game fairly well, and surprisingly quickly,
considering the number of times it can go through those loops within
the program.

I was not particularly pleased when I finished the first hand-written
version of this program, because it seemed to me that I had taken a
"brute force" approach to solving the problem.  I was sure there would
be a more clever way to do it.  However, I continued with the program,
and then entered it into the computer.  It won the first game, even
though it played a little oddly, so I knew I was onto a winner,
despite the programming approach.  Then, when thinking about it later
I realized that if the program was correctly structured (as it was),
had no redundant code (and it hasn't, as far as I can see), ran
quickly and well, it did not need "fiddling" to make the programming
more tricky.  Transparent code is always better than overly clever
convoluted code which, although it may occupy less space, and may run
a few microseconds faster, is almost impossible to modify.

So the program you have here is my "brute force" version.  It is
generously supplied with REM statements so you have little trouble in
working out what each section of code does.  It should also prove
fairly simple to modify, once you have played a few games with it in
its present form.

In this version of FOUR IN A ROW, the computer always allows the human
to have the first move, and bases its initial move on that made by the
human. You may wish to modify the program so that there is an option
for the computer to have the opening move.

Before we get to the listing of FOUR IN A ROW, here's one game played
against the program.
