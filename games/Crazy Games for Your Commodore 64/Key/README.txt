KEY 

Searching for a key you have lost can be an aggravating experience at
the best of times, but when you have to find it as quickly as possible
and, what's more, it's hidden inside a computer the whole thing
becomes very exasperating, but also very challenging.

The computer has stored inside it a string of 20 ones and zeroes.

    1 0 1 0 0 1 0 1 0 1 1 1 0 1 0 1 0 1 1 0

These figures can be shifted cyclically, that is, digits are moved from the 
lefthand end to the right. This is done three times and the numbers in each 
column added, for instance 

    row 1 --> 0 0 1 0 1 0 1 1 1 0 1 0 1 0 1 1 0 1 0 1
    row 2 --> 0 1 1 1 0 1 0 1 0 1 1 0 1 0 1 0 0 1 0 1 
    row 3 --> 0 1 0 0 1 0 1 0 1 1 1 0 1 0 1 0 1 1 0 1 
              ---------------------------------------
     sums --> 0 2 2 1 2 1 2 2 2 2 3 0 3 0 3 1 1 3 0 3 

This is all kept hidden from you: it is in fact the key you must find.

What you are shown are the three rows of numbers, each shifted again.
For instance if the top row is shifted two positions, the middle row
four positions and the bottom row eight positions you will see

    1 0 1 0 1 1 1 0 1 0 1 0 1 1 0 1 0 1 0 0
    0 1 0 1 0 1 1 0 1 0 1 0 0 1 0 1 0 1 1 1
    1 1 1 0 1 0 1 0 1 1 0 1 0 1 0 0 1 0 1 0
    ---------------------------------------
    2 0 0 0 0 1 1 2 1 1 1 1 2 3 3 1 0 1 2 2 

You are not shown the sum of the new columns but the difference for
each column, between this sum and the first 'hidden' sum.  In the
first column, for instance, the hidden sum was 0 and the new sum is 2
so you see 2; in the second column the hidden sum was 2 and so is the
new sum so you see 0.  You must now shift the three rows until they
are the same as the hidden key, when, of course, all the differences
will be 0.  The rows are numbered (the top row is 1, the middle 2 and
the bottom 3) so that if you enter

    ROW = 2 
    STEPS = 1 

the middle row will shift one position to the left.

How few turns will it take you to find the key?  It has been done in
as few as 10.
