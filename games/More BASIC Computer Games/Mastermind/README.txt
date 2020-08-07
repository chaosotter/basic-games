The original invention of Mastermind is credited to an amateur
mathematican, Mordechai Meirovich, who first displayed it at the 1971
Nurenberg Toy Fair.[*] Rights to the game were bought by Invicta who
had moderate success with the game for 2 1/2 years until the Christmas
season of 1975 when it was the most popular packaged game.  Sales
surpassed even the old standby, Monopoly.

In its most basic form, Mastermind consists of a plastic game board, a
dozen or so pegs which can be grouped into six basic colors, and two
groups of black and white key pegs (sometimes called "inference
pegs".)  The game board resembles the figure below.

     key-peg slots
       |
       |  +-----------------+
       |  |#/-\#/-\#/-\#/-\#|
       v  |#\_/#\-/#\-/#\-/#| <--- hidden code
    +-----+-----------------+
    | x x | /-\ /-\ /-\ /-\ | \
    | x x | \-/ \-/ \-/ \-/ | |
    +-----+-----------------+ | 
    | x x | /-\ /-\ /-\ /-\ | |
    | x x | \-/ \-/ \-/ \-/ |  >--- active player's guesses
    +-----+-----------------+ |       (total of 10 frames)
    | x x | /-\ /-\ /-\ /-\ | |
    | x x | \-/ \-/ \-/ \-/ | |
    +-----+-----------------+ |
    | x x | /-\ /-\ /-\ /-\ | |
    | x x | \-/ \-/ \-/ \-/ | |
    +-----+-----------------+ |
       :           :          |
       :           :          |
    +-----+-----------------+ |
    | x x | /-\ /-\ /-\ /-\ | |
    | x x | \-/ \-/ \-/ \-/ | / 
    +-----+-----------------+

The game is played by two people, whom we shall designate as the
"active" plaer and the "passive" player.  The first step before play
actually commences is to have the passive player (in our case, the
computer) choose a total of four colored pegs at random from any of
the six basic color groups (duplicate colors allowed, of course).  He
then conceals these colors from the active player by placing the four
pegs in the "hidden code" portion of the game board.  It is now up to
the active player to determine, in ten moves or less, the exact color
and location of each of the four pegs comprising the hidden code.

To aid the active player in determining the hidden code, the passive
player must award the active player a number of key pegs (inference
pegs) after each guess, according to the following scheme: for *each*
peg in the active player's current guess which corresponds exactly (in
color *and* position) to a peg in the hidden code, the passive person
places one *black* peg in the key-peg square adjacent to the passive
player's current guess frame.  Placing of the key pegs within the
square is arbitrary since the relative posityion of the key peg
carries no meaning.  Clearly, when four black pegs are obtained, the
hidden code is broken.

Secondly, the passive player must place one *white* key peg in the
current key-peg square for *each* peg in the active player's current
guess which matches (in color, but *not* position) a peg in the midden
code.  Keep in mind that once a color peg in the player's current
guess has been awarded a key peg, its function in determining the
remaining number of key pegs to award for the current guess is
finished.  For example, suppose the hidden code were:

           R  B  Y  G

corresponding to red, blue, yellow, green, and the active player's
current guess were:

           G  B  B  P

corresponding to green, blue, blue and purple.

The passive player should subsequently award one black and one white
key peg for the following reasons: the blue color peg in position 2 of
the current guess matches exactly in color and position with the
hidden code.  Secondly, the green color peg in position 1 of the
current guess matches the color of the peg in position 4 of the hidden
code.  But since the *location* of the green peg is not exact, only a
white peg is awarded.  The blue and purple pegs in positions 3 and 4,
respectively, of the current guess do not match either the color or
position of the remaining pegs in the hidden code (position 1 and 3)
and hence, no other key pegs are awarded.

The game proceeds in this manner until the hidden code is broken or
all ten frames have been filled.  As noted earlier, the computer will
play the passive player in our computer version, generating a hidden
code and awarding the black and white key pegs after each guess.

The program offers the user two options, QUIT and BOARD, which may be
entered at any time *after* the first move.  QUIT instructs the
program that you are fed up with playing Mastermind for the time being
and wish to terminate the session.  BOARD instructs the program to
print out a summary of the moves prior to the time that the BOARD
command was issued, including the guesses and key pegs awarded for
each frame.  Some players find that an arrangement of frames such as
that provided by BOARD is easier to visualize and subsequently
analyze.  Beginners will find it most useful.

The program and this description were written by David G. Struble of
the University of Dayton.  It first appeared in Creative Computing,
Mar/Apr 1976.

[*] Ed. Note: To anyone familiar with children's game, it is obvious
    that Mastermind is simply a commercial adaptation (using colors
    rather than numbers) of the game Bulls and Cows.  This game, much
    more popular in England than the U.S., in not, to my knowledge,
    commercially packaged -- DHA.
