FOLLOW THE LEADER

Although the listing is not very long, so the program will only take
you a few minutes to enter, you'll find FOLLOW THE LEADER a pretty
hard act to follow.

The program generates a sequence of numbers which you must copy.
First, it will put one number on the screen (such as 2) which will
vanish after a short time. You must then enter the number.  After a
pause, the first number will reappear, followed by a second single
digit (say, 27).  You enter this, and if you've got it correct, the
computer will add a third digit to the sequence (such as 273).  The
process continues until the computer thinks you've had enough... or
until you make a mistake.

YOU DID IT CHAMP!! appears on the screen. Just as you're breathing a
sigh of relief at having survived the ordeal, the words STAND BY FOR A
MORE DIFFICULT ONE... come up on your screen.  The game begins again,
but this time the length of time the computer's number is on the
screen is shortened.  The computer will put you to the test five
times, cutting the time to see each number as the games continue.
Finally, if you survive the final mind-boggling round, you'll be told
YOU ARE THE ULTIMATE CHAMP!!! and the program will stop to give you a
well-earned rest.

You'll see (line 240) that, if you make a mistake, the computer
generates the encouraging message:

    YOU BLEW IT TURKEY!
    YOUR SCORE WAS 6734

You should adjust the value of T (line 30) to produce the most
suitable delay when the program cycles through the first round of the
game.  The number by which it is reduced (line 300) and the total
which determines you are the "ultimate champ" (line 280) should also
be worked out to ensure that the game is not too easy, and not
absolutely impossible.
