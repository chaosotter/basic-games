[NOTE: I believe that the code for this program is complete and
correct, but it is too large to run on a disk-based Coco, as the
floppy controller consumes just a bit too much RAM.  I've had no luck
with getting a tape-based configuration working, but I would gladly
assist with any attempts or image contributions.]


(From Color Computer Magazine, February 1984.)

JACKPOT POKER

  by Jack and Pegi Tindle

Jackpot Poker requires 32K Extended Color Basic.  Enter the program,
save it to tape, and Run it.  Expect a short pause, a color test,
title page, then menu.  Six menu options are presented, including Help
and Quit options.  Help presents the instructions; Quit ends a game
and returns the computer to Basic.  The game is played against the
computer or against other players.  There is a standard poker game
(option 1), a timed hand, in which you play for a specified number of
minutes (option 2), and a game where you play a specified number of
hands (option 3).  The fourth option lets you set the amount of money
you begin the game with -- default value is Zero.  Screen prompts
guide you in number key selection.

The game uses two short machine language routines to speed up
graphics; disk drives must be disconnected during use of this game.
If your machine won't take high-speed, (POKE65495,0), omit that
statement from Lines 30, 1120 and 5250.

            Key Code Summary 

    Up/Down Arrows  Change Chip Values
    1-5 (in menu)   Select Numbers of Chips Bet 
    Break or M      Return to Menu
    Enter           Deal Cards
    1-5 (in game)   Hold Cards (Indicated by Position)
    Enter           Deal New Cards
    P or @          Pause After Winning Hand
    Q (enter)       Quit Game
