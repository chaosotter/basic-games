SONGBOOK

MICRO-MAESTRO: Using CoCo’s Play Statement 

  by Sara Nolan 

(Mrs. Nolan is a principal in Prickly-Pear Software and the author of
their Big, Big, Big Songbook program.)

[Tutorial omitted.]

Well, this has been fun.  I hope the pointers I have tried to give you
will allow you to build a collection of songs for Coco.  For your
enjoyment during this holiday season, I have included a few melodies
to start your collection.

Just type the program (VERRRY carefully) and run it.  There are 17
tunes included.  All you do is enter the number of the one you want,
and listen to it PLAY.  If you want the computer to play along
unattended, make the following changes:

    Delete line 20 
    Change line 10 to read:  10 FOR X=1 TO 17 
    Change line 30 to read:  30 CLS3:ON X GOTO ...
    Change line 430 to read: 430 FOR Y=1 TO 400:NEXT Y,X

If you want them to repeat over and over, add a line, 440 GOTO 10.
