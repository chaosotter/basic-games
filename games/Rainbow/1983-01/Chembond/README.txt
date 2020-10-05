CHEMBOND

  Lecture Graphics: Chemical Bonding Simulation 

  by Lane P. Lester 

While of professional use to few of our readers, the following article
and listing is both an interesting glimpse into atomic structures and
chemical bonding, and an excellent example of the use of computer
programming as a graphics aid for instructional purposes in general.

The bold graphics of the Color Computer offer the teacher a tool in
computer-aided instruction that has not yet been fully explored;
namely, lecture graphics.  While some concepts can be best illustrated
with the use of the chalkboard, overhead transparencies, 35mm slides,
or 16mm film, other concepts can be discussed with enhanced clarity by
the use of computer graphics synchronized with the teacher’s oral
presentation.  A major breakthrough in the development of lecture
graphics occurred with the invention of Motion Picture Programming by
the late Arnold Pouch.  This technique has eliminated most of the
tedium of programming graphic presentations in Basic and is available
commercially from Superior Graphic Software (reviewed in the Rainbow,
July, 1982).  Arnold also unselfishly made the MPP technique available
free by publishing it in the March and April, 1982, issues of the
Rainbow.

Most courses in general biology include a discussion of simple
concepts in chemistry, since so much of recent research has
concentrated on the study of life at the chemical level.  CHEMBOND,
the program which follows, was developed for use in explaining some
basic ideas in atomic structure and chemical bonding.  In order to
pace the execution of the program to match my discussion of the topic,
the joystick and fire button provide a convenient remote control.
CHEMBOND was developed before the invention of MPP and contains the
usual multitude of screen locations in DATA statements.  The following
"table of contents" provides both instructions for use and comments on
the program.

CHEMBOND Table of Contents

1. TV Calibration Routine (Lines 50-70)

   This is a frequently-used routine that displays bars of all eight
   colors so that the controls of the television can be adjusted for
   optimum classroom viewing.  Line 70 illustrates the need to call
   JOYSTK(0) before one can call JOYSTK(1).

   (Move stick forward to advance.) 

2. Biology Title (Lines 80-360)

   In all of my lecture graphics I have begun each presentation with
   some kind of title that includes some attractive graphics to
   stimulate interest.  I start this routine several minutes before
   class is scheduled to start, and the students can see it as they
   come into the room.  Several of the magazines which support the
   Color Computer have printed programs that produce "pretty pictures"
   of one kind or another and these can be used with or without the
   addition of graphic characters announcing the topic.

   (Move stick forward to advance.)

3. Hydrogen Atom (Lines 370-390)

   (Move stick back and press button to show.)

   The hydrogen atom, with its single proton and electron, serves to
   introduce atomic structure.  The orbital of the electron is
   randomized to illustrate the electron cloud idea.

   (Move stick forward to advance.)

4. Atomic Shells and Fluorescence (Lines 400-470)

   (Move stick back and press button to show.)

   a. Shells -- The concentric partial circles illustrate the
      different energy levels that electrons can occupy.

      (Press button.)

   b. Inner electrons -- This simulates electrons orbiting in the next
      to outermost shell.

      (Press button.)

   c. Outer electrons -- A flash of yellow illustrates the input of
      energy required to drive an electron to a higher shell.

      (Press button to illustrate fluorescence or move stick forward
      and press button to advance.)

5. Covalent Bond (Lines 480-540) 

   (Move stick back and press button to show.)

   The formation of the diatomic hydrogen molecule is used to
   illustrate the concept that sharing electrons allows two atoms to
   achieve a stable number of electrons.

   a. Hydrogen atom with moving electron.

      (Press button.)

   b. Hydrogen atom with stationary electron.

      (Press button.)

   c. Two hydrogen atoms with stationary electrons.

      (Press button)

   d. Two hydrogen atoms sharing electrons.

      (Press button to repeat or move stick forward and press button
      to advance.)

6. Ionic Bond (Lines 550-750)

   (Move stick back and press button to show.)

   The formation of sodium chloride serves to demonstrate the complete
   transfer of electrons as a means of achieving a stable number.

   a. Sodium and chlorine atoms.

      (Press button.)

   b. Formation of ionic bond.

      (Press button to repeat or move stick forward and press button
      to advance.)

7. Hydrogen Bond (Lines 760-790)

   (Press button to show.)

   This simulates the water molecule in which the shared electrons
   spend more time orbiting around the oxygen than the hydrogens.
   This produces the polarity of the molecule that makes hydrogen
   bonding possible.  I'm not satisfied with this one, but I've never
   gotten around to doing more with it.

   (Move stick forward to advance.)

8. Random Circles and Lines (Lines 800-830)

   This is a version of a somewhat classic random graphics routine
   which I consider preferable to a blank screen as an end to the
   presentation.
