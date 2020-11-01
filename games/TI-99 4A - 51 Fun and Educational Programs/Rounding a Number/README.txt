ROUNDING A NUMBER

  A routine to round off decimal numbers 

Here is a simple method you can use to round off a number.  This
program rounds numbers to the nearest hundredth.  For example, enter
15.7356 and the program will round it to 15.74.  Or, enter 1.234 and
the program will round it off to 1.23.

The rounding routine is given in lines 200 and 210.  It is very handy
and you may want to use it in some of your programs in the future.  It
works like this:

Start with our example number   15.7356 
Add                              0.0050 
                                -------
                                15.7406

Multiply by 100               1574.06
Take the integer value        1574
Divide by 100                   15.74

Had our number been 15.7346, adding the value 0.0050 would have given
15.7396, which would have rounded to 15.73.
