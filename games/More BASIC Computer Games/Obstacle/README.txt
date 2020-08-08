The game OBSTACLE is an obstacle course game played on a 9x40 grid.

A car is represented by the character '*', the obstacles are the walls
(represented by exclamation points and hyphens) and spaces are where
the car may travel.  The car may not pass over or occupy a wall or
obstacle.  The character 'S' at the upper left corner, indicates where
the car starts from, and the character in the lower right corner, the
'F', is the space the car must occupy at the finish to win.  If the
car tries to occupy or pass through a wall the game is lost.  When the
car lands on the space occupied by the character 'F', the car has
finished the course, and the game is over, and a time is calculated.

Line-by-line, here's how the program works:

Line 610 dimensions the matrix M for 15 rows by 50 columns (allowing
an adequate margin for modification).

Line 620-680 initializes all necessary variables.

Line 700-780, through the use of a random number generator, generates
the obstacle course, where I is the row matrix index and J is the
column matrix index and R1 is the random number.  Line 720 generates a
random number between 0 and 1, multiplies it by a density of 1.2 (to
increase density factor by a few decimal points) and removes
everything right of the decimal point.  R1 is now either 0 or 1.  If
it is 0 the matrix memory location M(I,J) inside the For-Next Loop is
assigned the value of a space, if it is 1, it is assigned the value of
an exclamation point.

Lines 840 and 850 assign the walsl to the course.

Line 890 stores the values of I and J into K and L, these act as value
holders.  After the print routine has been executed, I and J are
reassigned their old values stored in K and L at line 970.

Lines 910-960, through use of a For-Next Loop (as in the
initialization course set up routine), print out the characters
represented by values in matrix M, Line 930, the CHR$ Function turns
the values of the memory location into their ASCII character
equivalent.

Line 990 checks if the car has moved yet, by checking D1.  If D1>0
then it skips the query option and continues with the main body.  If
D1=0 then it executes the option query, asking whether a new course,
or this course or end the game and then executes the respective
option.

Line 1130 checks if D1 is not equal to 1 and if so continues with the
movement routine.  If not then it starts the car at matrix position
2,2 and continues with the movement routine.

Line 1080 starts the main program body, 1100 queries the direction and
1110 checks the input D if it is a valid direction.  Line 1120 inputs
the speed 'S' and Line 1130 initializes the counters S1 and D1.  Lines
1160-1180 direct control to the proper movement routine (1 is up, 2 is
right to left, 3 is down).

Line 1190-1220 is the movement routine for direction 1.  Line 1190
erases the car from the previous position keeping track of I and J.
Line 1200 and 1210 check each character position between matrix
position I,J, and I-S,J for a wall (exclamation or hyphen); if one is
encountered the game is over.  If no walls are encountered, the move
is legal and Line 1220 assigns the car to matrix position I-1,J and
jumps to 1310 to check matrix position 10,41 if it contains a car.  If
so, the game is won and the End of Run routine is executed.  If matrix
position 10,41 is not occupied the game is not over and control jumps
to 870, the matrix print routine.  The Loop can only be exited by
losing (crashing into an obstacle) or by getting the car to matrix
position 10,41 where it executes the End of Run routine.

Line 1380 calculates the time by dividing total number of turns by
total number of character spaces covered by the car and multiples it
by 100.  Line 1390 prints the time and Line 1400 and 1410 query as to
whether to play the game again.

The program and these notes were written by Eric Erickson.
