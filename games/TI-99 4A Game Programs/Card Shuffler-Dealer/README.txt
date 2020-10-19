CARD SHUFFLER/DEALER

The bingo game program discussed previously can also serve as the
basis for a program that will shuffle and deal cards.  In bingo, there
are 75 number possibilities, while in most card games, there are only
52.  In bingo, it was necessary to fit an appropriate letter with each
number, while in a card game, the appropriate suits must be matched.
When you break the two games down in this manner (mathematically), you
can see the similarities, programming-wise, in the two types of games.

The simplest card shuffler program will consist of an array that will
hold 52 elements sequentially numbered from 1 to 52.  A random number
generator routine is used to pull an element from the array at random.
After this, the value of that element is reassigned to 0.  As before,
whenever an element that has a value of is accessed, there is a branch
back to the random number generator.  In this manner, the same card is
never dealt twice during a single game.

One might think that it's a bit simpler to write a program to shuffle
and deal cards than it is to write a similar one called bingo.  This
assumption is based on the fact that bingo contains 75 numbers,
whereas most card games require only 52 cards.  While there are fewer
cards to deal with than there are bingo calls, a practical card
shuffler/dealer program will be far more difficult to write.  In
bingo, you have only two criteria to worry about.  These are the value
of the number and the matching letter.  There, the letter B is matched
to the first 15 numbers, the letter I to the next 15, and so on.  The
numbers which have been input to the array (1-75) may be used directly
to represent bingo call numbers.

The situation is different in a card game, however.  While there are
52 cards in the deck, they are not sequentially labeled from 1 to 52.
There is a more complex combination with names in sets of four.  Each
card will have a number and a name, or a name and a name. For example,
there is the 2 of hearts, which is identified by a number and a name.
Then again, there is the ace of spades, which is identified by two
names, ace and spades. We can use numeric variables, such as A(Y) to
represent numerical values, but string variables must be used to print
the names on the screen.  This increases complexity quite a bit.  Out
of necessity, we must use a random number output of from 1 to 52.
However, each number must be linked to the numeric and/or string
naming of each card.  In other words, the number 2 cannot necessarily
represent the 2 of hearts.  If it does, another number must represent
the 2 of spades, another, the 2 of diamonds, and so on.  Accessing a
random number between 1 and 52 that cannot be repeated a second time
is only part of what the program must accomplish.  A large number of
if-then statements are required to assign each number a particular
playing card in a standard 52-card deck.
