[Note: This program does not run in TI Extended BASIC because of the
character range it attempts to redefine, and it is too large to run in
TI BASIC on a disk system.

The original game is in the file "original.bas"; "game.bas" contains
an optimized smaller version.  Even so, it may be necessary to claim
more memory by running "CALL FILES(0)" and "NEW" before loading.]

FRACTIONS

  by C. Regena 

  Students do their class assignments on paper in the usual way... and
  then can use the Homework Helper to quickly correct their assignments.

The "Homework Helper" series is designed to quickly give answers to
students checking their assignments.  It is not meant to be a
tutorial; it does not teach concepts nor quiz the student.  Rather, it
gives the answers to problems without showing all the intermediate
steps.

The students are encouraged to do their class assignments on paper in
the usual way, writing the problem down and working the problem
step-by-step.  Then, they can use the "Homework Helper" to quickly
correct their assignments.

This program, involving fractions, is for correcting the homework
problems of elementary school math students (4th, 5th, and 6th
graders).  Written in Tl BASIC, it employs color graphics and sound,
and is user interactive.  There are seven sections -- each introduced
with a simple color representation of what that section is doing with
fractions.  Musical phrases from Mendelssohn, Handel, and Beethoven
are also present.

1. Equivalence.  Two fractions are of the form A/B = C/D.  Anyone of
   the four positions can be the unknown.  The user designates the
   unknown, and inputs the three given values.  The computer finds the
   unknown and prints the equivalent fractions.  A student can also
   use this section to find equivalent ratios.

2. Simplification.  The user inputs a numerator and a denominator.
   The computer simplifies (reduces) the fraction or tells if it
   cannot be simplified.

3. Multiplication.  The user designates the number of fractions to be
   multiplied, then enters the numerator and denominator for each one.
   The computer multiplies them and simplifies the final fraction.

4. Division.  Two fractions arc entered; the first is then divided by
   the second, and the answer is simplified.

5. Addition -- Like Denominators.  The user specifies the number of
   fractions to be added, the common denominator, and then enters the
   numerators.  The computer adds the numbers and simplifies the
   result.

6. Addition -- Unlike Denominators.  This section may be used to add
   fractions with like or unlike denominators.  The user specifies the
   number of fractions up to 5 (which should be sufficient for
   elementary school mathematics), and then inputs the numerator and
   denominator of each.  The computer adds the fractions and
   simplifies the results.  A student can also use either Section 5 or
   6 for subtraction problems by entering a negative numerator.

7. Comparisons.  Up through ten fractions may be compared on a number
   line.  The user enters the number of fractions to be compared (up
   to ten), and then enters the numerator and denominator of each.
   The computer then arranges the fractions from the smallest to the
   largest and prints them.

To stop any section of the program, press SHIFT C. To restart, enter
RUN.
