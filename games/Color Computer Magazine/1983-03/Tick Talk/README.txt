(From Color Computer Magazine, March 1983.)

I wrote Tick Talk, an Extended Color Basic program, to help my
children learn to tell time the old-fashioned way -- on a round clock
with hands.  The program displays a moving graphic of a clock face.
Random times are shown, the learner types in the time, and the program
tells you whether the answer is right or wrong.

Tick Talk is not Robbie the Robot.  You can't just chain the child to
the computer and expect him to come away able to tell time.  You must
teach the concepts, and help the child get into the program.  When the
child begins to understand what's happening, then you can slip away
and let the time game continue.

In teaching my children, I narrowed the idea of time telling to a
simple set of rules:

* To avoid confusion, have the child state the time as hours and
  minutes, with each pronounced as a seperate number.  In this style,
  the time would be seven-fifteen and eleven fifty-nine.  Don't say
  fifteen after seven, a quarter past, or a minute before noon as this
  can confuse the child.  Teach the simple style of writing the time
  -- 7:15, 11:59 or 9:02.  This is the way it appears in the program.

* All traditional clock have at least two hands.  The big, or minute,
  hand takes one hour to go from the number 12 all the way around to
  the 12 again.  The small, or hour, hand takes an hour to move from
  one number to the next.

* To tell time, you first say the hour and then the minute.

* The hour is the number the hour hand points to, or the last number
  it passed.

* The minute hand is at zero when it's pointing at 12; add five
  minutes for every number it passed beyond that.

The minute concept is toughest for the child to grasp.  It doesn't
make sense that a three can turn into a 15 or a nine into a 45.  I
approached this from different sides and let the logic sink in.  I let
my kids count all the minutes after the hour; then pointed out that
they could use the numbers one through 12 and count by fives.  I
suggested they multiply the minute hand number by five.  I told them
that the 60 minutes of an hour are divided into 12, five-minute parts
marked by each number, and suggested how they could gauge the one to
four minutes between the two minute numbers.

Understanding this, the child can tell time.  Later, you can explain
the finer points, such as A.M. and P.M. stating minutes before and
after.

Now, let's run through the program so you can see what the learner
faces.

The program starts with a brief title.  Then the clock face is drawn
and the hands tick-tock their way through one hour (very fast).  Next,
the screen offers a choice of Lesson One, which present exact hour
times such as 1:00 and 3:00, or Lesson Two, which randomly selects and
displays any time from 1:00 to 11:59.  When you make the lesson
selection, the program notes that the graphic clock's hands are
different colors: orange for the hour hand and blue for the minute
hand.

The program then gives instructions on how to type in the time as read
on the graphic clock.  At this point, the child needs your help.  Make
sure the child understands that the entry must conform to the hours
and minutes Arabic style -- 7:00, 11:09, 8:41, and so on.  Also, it's
a good idea to have the child say the times he types in, and to speak
the hours and minutes separately.  This might be a good time to
explain that if the time is exactly on the hour, you can express it as
eight o'clock or one o'clock.

In the time game (or drill), the hour hand points at a number, and the
minute hjand starts at 12 and revolves until it reaches the time to be
read.  The learner can study the time for as long as necessary.  Then
press Enter; the clock disappears and the prompt AND THE TIME
IS... appears.  The learner types in the time in the correct style --
5:38 -- and presses Enter.  The program responds either with RIGHT or,
if the answer is wrong, it gives the correct answer.

To go from Lesson One to Lesson Two, restart the program by pressing
Break and typing RUN.  At the option menu select Lesson Two.

Because a precise statment of time is not often needed in the real
world, I have build a bit of grace into the program.  If the child's
answer is right or one minute on either side of right, the computer
accepts the answer as correct.  If you are a stickler for precision or
the child has advanced to a point where exactitude is best, change
line 1220 to read:

    IF K=J AND L=P THEN PRINT "RIGHT";:GOTO 1260

The most important thing to remember is not to force the child to play
the game beyond the point of his interest.  If you haven't adequately
explained time telling, the game will be unbeatable; if he loses
interest, he'll learn nothing more during that session anyway.

I'd like to stick around and help with all this, but I discovered
today that my kids can't tie their shoelaces, and I'm going to write a
program that tells them how.
