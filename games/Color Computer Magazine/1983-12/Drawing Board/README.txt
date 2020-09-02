(From Color Computer Magazine, December 1983.)

DRAWING BOARD

  Here's a program that will put you on your colorful way.

  by Scott L. Bain and Andrea R. Chartier

By now you have a good grasp of the fundamental graphics commands and
techniques employed by the Color Computer.  Those of you who are still
confused by the bevy of syntax and parameters we've covered thus far,
or who are worried you may have difficulty remembering all the rules
and specifications, don't worry!  Although the graphics commands are
involved, they are not really complicated -- once you get used to
them, they will make pretty good sense.

If you've totally forgotten the order of parameters in a certain
command, for instance, the Circle command, and you can't locate your
manual, it is helpful to ask yourself: "What order would make sense?"
For the Circle command, the computer first needs to know where the
circle is to be drawn (the x-y coordinates of the center), then what
the radius is to be, etc...  If you look up the syntax of the Circle
command, you'll see the format follows this logic exactly.

Fine, you say, but how can I use these Draw, Line and Circle commands
in some coordinated fashion that will yield a recognizable design?
How can I get some practice now, and enjoy my computer before I become
an expert?  In short, how can I draw a picture on my computer?

Here is a program called "DRAWBORD" that should answer this request.

DRAWBORD will let you use all the Color Computer's graphics
capabilities without requiring you to write any Basic code.  Its real
purpose is to give you some experience with the parameters so you will
be able to start writing your own game program variant without lots of
trouble.

Type the program in exactly as it is.  Don't add any extra spaces or
leave any out, or it may not work properly.  Check everything over
carefully and CSAVE to tape what you've typed before you Run it.

When you Run the program you should see a graphics screen full of
random "garbage" with a small dot flashing in the middle of the mess.
The Color Computer powers up this way, so it's important to enter
PCLS, which will clear the screen, before you start any graphics work.
In the DRAWBORD program screen clearing is accomplished by pushing the
Shift and Clear keys simultaneously.  Using the Shift key here is to
help you avoid clearing the screen accidentally.

The Cursor 

That flashing dot on your screen is very important.  It's called a
cursor, and its location will be used by most of the subroutines in
the program.  You can easily move it by pressing the arrow keys or 1,
2, W, or Q keys (for diagonals).

The cursor location indicates one point on the screen. Many graphics
commands, like the Line command, need two locations or endpoints to
specify their function.  The E command in DRAWBORD solves this problem
by setting an endpoint dot on the screen that can be used in
conjunction with the cursor for several graphics functions.

As an example, move the cursor to any location on the screen and press
E.  Now move the cursor to some other location.  You'll notice a small
dot remains in the first location.  This is the endpoint dot.  Now
press the L key, which will cause the program to execute a Line
command, using the cursor and the endpoint dot as endpoints.  Move the
cursor again and hit L. Another line is drawn using the new cursor
position and the old endpoint dot -- in fact, the endpoint dot will
remain stationary until you hit E again.

Now try the same procedure, but press C instead of L.  As you might
have guessed, you'll get a circle instead of a line, using the
endpoint dot as the center and the distance between it and the cursor
as the radius.

Control 

The Circle command has many options (such as height, start, and
finish) the user would want to control.  The same is true for Get (G),
Put (P), Color, and many of the other commands.  The program has a
format menu that can be reached by pressing the M key.  In the menu
you can easily set any of these special parameters, as well as
changing the PMODE, the Page, the Screen etc... by just pressing the
key indicated on the menu and answering the questions that follow.
The menu will also list all current values for the parameters and will
remind you of your current cursor coordinates (and tell you the color
of the pixel the cursor is currently on).

Once you set a parameter to a certain value, it is important to
remember it will stay that way until you change it again.  Also, you
must use legal entries in the option menu.  The program will not
correct mistakes (like using four colors in a two-color mode),
although it will warn you if you make a syntax error (like asking for
color 9 when there is no such color).  X will take you back to the
graphics screen.

If you get confused at any time, press H (for help) and a list of the
commands will be summarized for you.

One note before you start: this program does support the Paint
command, but since P is already used to generate Put, Z will indicate
the Paint command.

DRAWBORD Commands 

The following keys are used for commands with DRAWBORD:

  + -- cursor begins leaving a trail. 

  - -- cursor begins erasing (leaving a "background color" trail). 

  0 -- cursor begins normal movement (will not affect any pixels it
       moves through).

  E -- set the endpoint dot for future use. 

  L -- draw a line between the cursor and the endpoint dot.

  B -- create a box using the cursor and endpoint dot as corners.

  F -- same as B, but a filled box.

  C -- create a circle with the endpoint dot as the center and the
       cursor as a point along the circle.

  G -- Get area in rectangle defined by the cursor and endpoint dot.
       If you try to Get an area that is too large, a tone will sound.

  P -- Put the array created by G at cursor position.
  
  D -- Draw current draw string at cursor position.

  M -- go to format menu.

  K -- toggle endpoint dot.  If the dot is "on" this will turn it
       "off" and vice versa.  Note that the dot really remains the
       same; this merely determines whether it is visible.

  Z -- Paint, beginning at the cursor.

  H -- go to help screen.

We could spend a lot more time teaching you how to use this program,
but it will be more instructive (and a whole lot more fun) for you to
simply play with it until you get a feel for the way it works.

Of course, this is far from the absolute limit of the Color Computer's
graphics capabilities.  Techniques for quicker animation, putting four
colors in high resolution, etc... are being developed constantly.  The
best way to keep up with it all is to stay current on articles and by
all means, experiment.  Keep in mind that nothing you can do in Basic
will ever harm your machine.  The worst that can happen is that you'll
get unpredictable results and have to start again from scratch.

And, that wouldn't be so bad, would it?
