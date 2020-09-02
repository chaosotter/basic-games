(From Color Computer Magazine, December 1983.)

DREIDEL

  A Hanukkah top game can be lots of fun during the entire year!

  by Harold Schneider

Dreidel is an ancient game you can easily modernize and use to
entertain and educate even your youngest child.  Dreidel (pronounced
"dray'-dl") is traditionally played during the eight nights of
Hanukkah.  It can be enjoyed any time of year, however, and children
don't have to be Jewish to enjoy this simple game of put and take.  As
a fun introduction to computers, for anyone, this game is hard to
beat.

The game is played with a four-sided top, also called a dreidel (see
Figure 1).  The outcome is determined solely by luck, so the game's
appeal is primarily to young children.  In the first through
fourth-grade classes at my synagogue it was a huge success -- even the
eighth-graders seemed to enjoy it.

The Game 

Each player starts with the same number of objects, be they candies,
nuts, coins, oranything else.  Before turns spinning the dreidel are
taken, each player puts one object in the pot.  Carved or painted on
each side of the dreidel is one of four Hebrew letters -- "nun,"
"gimmel," "hey," and "shin."  The dreidel is spun, and once it falls
over, these letters determine what action is taken at the end of each
turn.  The letters are also the first letters of the words of the
Hebrew phrase meaning "a great miracle happened there."

"There" was in a temple built long before the birth of Christ, a
temple lit by menorahs of burning oil.  A cruze, or container, of oil
usually lasted a day or so, but during the first Hanukkah one burned
for eight days and nights, establishing the length of the holiday.

If the letter facing up on the fallen top is "nun," the player takes
no action and the turn passes.  On "shin," the player must put another
object in the pot.  On "hey," half the pot is won.  On "gimmel," the
player wins the whole pot.  Whenever the pot is empty, everyone must
put in an object.  The game continues until one player has won
everything, or until each has had an agreed-on number of turns.  Then
the player with all, or most, of the objects wins.

There's an advantage to being one of the last to play, so change the
order of players if more than one game is played.  Prizes for first,
second, and third place finishers add to the fun.

Running the Program 

The program requires 16K bytes of memory, but doesn't use Extended
Basic.

After loading the program and entering RUN, the title screen appears
as the computer plays the traditional Hanukkah song, "I Had a Little
Dreidel."  The program then asks that a key be hit so the game can
begin.  (If you hit G the program skips the sing-along and goes
straight to the action.)  During the sing-along, the words appear on
the screen, each highlighted with reverse lettering as it's sung.

After the song, the game begins.  The computer asks for each player's
name and for the number of turns in the game.  If you want to play
until one player has all the points, enter a large number, but
remember, in this case the game may take quite a while.  All players
start with 10 points.  If a player loses more than 9 points, he or she
is eliminated before the end of the game.

The dreidel always spins to the tune of the song.  Just like a real
dreidel, the computer version spins quickly at first, then slows down.
The computer's random-number generator is reseeded with each turn, so
the element of chance remains.

When only one player has any points left, or when the allowed number
of turns have been taken, the winner (or winners, if there's a tie)
are announced; then, after any key is hit the computer lists
everyone's score and asks if you'd like to play again.

How It Works 

Data in Lines 120 and 130 contain the notes of the song and the
duration of each note.  These are used during the title song and when
the dreidel is spinning.  The duration numbers are one shorter than
they "should" be to compensate for the extra time taken between notes
when the dreidel is spinning.  This is necessary because of the song
words being printed, and the checking that's going on.

The second set of data, listed in Lines 720 to 790, is for the
sing-along. It consists of PRINT@ locations, words to be printed, and
notes.  The words are in lowercase so they will print in reverse
graphics on the screen.  To type these into the program, hit SHIFT 0
before typing each word.  Hit SHIFT 0 after each word to return to
uppercase.  The words to the song are originally printed by Line 630,
and the sing-along routine is in Lines 800 through 960.

The game runs from Line 140 to Line 560.  It calls the subroutine in
Lines 1390 to 1530 once to construct the low resolution graphics that
form the dreidel.  The subroutine starting at Line 990 spins the
dreidel; those in Lines 1080, 1130, 1180, and 1230 act on the outcome.

One technical point is worth noting: the seemingly useless INKEY$
statement at the end of the page subroutine in Line 970 catches any
extra keystrokes, so a screen will not be flashed by if a key is hit
at the wrong time.
