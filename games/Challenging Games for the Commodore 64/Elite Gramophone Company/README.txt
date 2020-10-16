ELITE GRAMOPHONE COMPANY

Your computer has the ability to set up and manage a large number of
variables.  The uses of this amazing capability are only limited by
your imagination.  The "Elite Gramophone Company" demonstrates just
how effectively your computer can handle simulated information,
manipulating it according to ground rules laid down by the programmer.

This program allows you to experience the excitement and despair of
running a factory in a harsh economic environment.

The computer will provide you with a weekly balance sheet.  This will
contain all the information you require, such as the current week of
trading, capital on hand, stock on hand, the number of employees you
have and their estimated productivity.

You must keep a close watch on the amount of capital you have on hand
in order that you will be able to meet your production costs and
weekly wages bill.  This may be the key to your success or failure as
a factory manager.  The computer will give you the opportunity to hire
and fire staff as the need arises, but you may find that the workers
have a strong union if you try to put off too many of them.

You will be able to set weekly production targets (within the limits
of your available capital and the productivity of your workers).  Then
you have the agonising wait for the sales figures.

At various times you will have to cope with union demands for higher
wages, suppliers putting up the price of raw materials and the
occasional disaster.  There will be opportunities to raise the price
of your gramophones but you must be careful.  Don't price them right
out of the market-place.

The object of the game is firstly to avoid the shame of bankruptcy and
hopefully to go on to make a million dollars.

The program listing is quite long but playing it will reward the
patience required to type it in.

The program consists of a control section, from lines 50 to 150, which
calls up the relevant subroutines when they are required.

Line 30 calls up the subroutine which gives the title and sound at the
start of the game.  Line 40 calls up the routine beginning at line
1500.  This subroutine sets up all the variables and parameters for
the game.

Line 50 is the start of the game proper.  This line increments the
variable WE which counts the weeks.

GOSUB 950 in the next line provides the print out of the factory's
status.  This is called up at several points during the game to keep
you up to date on what is happening.

GOSUB 1220 controls the hiring and firing of staff, plus any union
reaction to your efforts to cut down on your work force.

GOSUB 1100 is your production line.  It allows you to set a production
target and then works out how many gramaphones were actually produced.

GOSUB 790 is your sales team.  This routine provides the good news or
the bad news about the current week's sales.  The sales figures can
include gramophones from your warehouse as well as the week's
production.  Any unsold gramophones are automatically placed in
storage.

GOSUB 360 controls the "unpredictables".  These nasty little events
include price rises for raw materials and union demands for higher
pay.  Not to mention the possibility of a warehouse fire.

[Note: This game closely resembles "Chairman of the Board", also found
in the collection.]
