3-D Plot

3-D PLOT will plot the family of curves of any function. The function
Z is plotted as "rising" out of the x-y plane with x and y inside a
circle of radius 30.  The resultant plot looks almost 3-dimensional.

You set the function you want plotted in line 5.  As with any
mathematical plot, some functions come out "prettier" than
others. Here are some that work nicely:

    5 DEF FNA(Z) = 30*EXP(-Z*Z/100)
    5 DEF FNA(Z) = SQR(900.01-Z*Z)*.9-2
    5 DEF FNA(Z) = 30*(COS(Z/16)^2
    5 DEF FNA(Z) = 30-30*SIN(Z/18)
    5 DEF FNA(Z) = 30*EXP(-COS(Z/16))-30

      (Bessel function -- Summerfeld's Integral)

    5 DEF FNA(Z) = 30*SIN (Z/10) 

The author of this amazingly clever program is Mark Bramhall of DEC.
