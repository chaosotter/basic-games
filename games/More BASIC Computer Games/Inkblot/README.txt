INKBLOT is a program that creates "inkblots" similar to those used in
the famous Rorschach Inkblot Test.  The program generates these
inkblots randomly so that literally millions of different patterns can
be produced.  Many of these patterns are quite interesting and serve
not only as conversation pieces, but also as good examples of computer
"art".

In addition, INKBLOT is interesting from a mathematical point of view.
This is because INKBLOT actually creates inkblots by plotting ellipses
on the left side of the page and their mirror-images on the right
side.  The program first chooses the ellipses to be plotted by
randomly selecting the values a, b, j, k and T in the equation for
a rotated ellipse:

[(x-j) cos T + (y-k) sin T]^2   [(y-k) cos T - (x-j) sin T]^2
----------------------------- + ----------------------------- = 1
              a^2                            b^2

where a = the horizontal radius of the ellipse
      b = the vertical radius of the ellipse
      j = the distance from the ellipse center to the y-axis
      k = the distance from the ellipse center to the x-axis
      T = the angle of rotation in radians

Since the actual method by which the program plots the ellipses is
quite complicated, it won't be discussed here.

INKBLOT could be enhanced in several ways, for example allowing the
user to specify which character is to be used in printing the inkblot.
It could have an option to print the "negative" of an inkblot by
filling in the area around the ellipses rather than the ellipses
themselves.  Finally, it is possible to build in a "repeatable
randomness" features so that exceptional outputs could be reproduced
at any time.  These enhancements are left for the ambitious programmer
to make.

Program and description are by Scott Costello.
