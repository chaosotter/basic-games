SNAKE ESCAPE

  by Daryl Biberdorf
  64 Translation by Patrick Parrish

You'll have to watch out for poisonous mushrooms as you race against
the clock towards your goal in "Snake Escape."

In "Snake Escape" your goal is to move a snake out of a poisonous
garden.  There are approximately 150 poisonous plants on the screen
after you enter your skill level.  The snake appears in the upper-left
corner after all poisonous plants have been placed.  You then attempt
to get the snake to the escape hole within the time limit you chose
earlier.

The snake must reach the hole without hitting a poisonous plant,
running into itself, or running out of time.  If it reaches the escape
hole safely, you will receive a bonus in addition to your score.  The
snake grows as it moves along; you receive one point for each body
segment it adds while moving.  If it runs into itself or a poisonous
plant, a cross will appear in the center of the screen with your score
and the number of remaining snakes.  You may stop the snake if you
wish by simply releasing all keys, but remember this costs you time.

Strategy 

If you are running your snake near the left or right edges of the
screen, remember that the 64 has horizontal screen wraparound.  You
may end up hitting a poisonous plant on the other side of the screen,
so be careful!  Occasionally, the snake will be cornered between
plants and itself due to a miscalculation in maneuvering.

Try to fill up all the spaces you can in the comered-off area.  You
may lose a snake, but you will still receive a few extra points.
Also, try to keep moving at all times.  And watch where you're going.

The direction in which the snake moves is determined in lines 200
through 230.  As written, keys I (up), J (left), K (right), and M
(down) move the snake.  If you aren't comfortable controlling the
snake with these keys, you can easily change the program to accept
other key commands.

For instance, suppose you want to use the Z key rather than the J key
to move the snake left.  Since location 197 reads the keyboard, you
must first determine the number which is POKEd into this location when
Z is pressed.  Type the following line:

    1 PRINT PEEK(197):FOR I=1 TO 400:NEXT I:GOTO 1

and then RUN the program.  Next press the Z key, and the number in
location 197 corresponding to the Z key (12) will print repeatedly on
the screen.  Try some other keys, noting their values, then hit the
RUN/STOP key.

You are now ready to make the modification in line 200: substitute 12
for 34.  RUN the program (after deleting line 1, of course); you can
move the snake left with the Z key.
