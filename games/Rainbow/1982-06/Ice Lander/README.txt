ICE LANDER

Ice Lander Can Be a Slick Run

Ted Shorter writes us from Cuyahoga Falls, Ohio, to say that he is 13
years old "and a computer freak."

We’re not certain what the definition of a "computer freak" is, but if
it means a promising young programmer, then Ted fills the bill.

He explains this game, the listing of which follows, this way:

I’d been using SET and PSET to move dots around the screen when I
decided to try my hand with GET and PUT to move objects instead.  It
would look better to have actual space ships moving around than dots.

After a long period of trial and error I got an idea for a lunar
lander type of game.

It took me an afternoon to write the basic loop, but it took me about
a week to get everything down just right.

So here it is.  I was surprised at how long it was.  I couldn’t
believe I did all that!

Here is a description of the lines in the program:

    1-4     -- Credits 
    10      -- Dimension arrays 
    30-60   -- Menu 
    70-400  -- Main loop 
    410-810 -- Various subroutines 
    10000   -- High score subroutine 

Note: This game uses a POKE 65495,0 to speed up the game.  If your
computer can’t handle it, then delete lines 460, 630 and 710 and edit
line 200 to read GOSUB470.

This game also features a high score subroutine that requires
joysticks so you can put your name in.  Just for interest, my high
score is 1610.
