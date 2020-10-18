BLACK BOX

Armed only with a laser beam you must discover the whereabouts of a
handful of atoms hidden in a vast black box.

The box consists of 8 x 8 x 8 cubes.  Atoms can be hidden in any of
the cubes apart from those in the outer layer.  However, there are
never more than five atoms in the box.  These atoms will reflect or
divert laser beams according to the following rules:

  -- a beam which strikes an atom is reflected straight back in the
     opposite direction

         +---+---+---+
         | O | =========>
         +---+---+---+

  -- a beam which is set to pass through a cube directly adjacent to
     an atom will be reflected at right angles

         +---+
         | O |
         +---+---+---+---+
             | /----------------
             +-|-+---+---+---+
             | | |
             +-|-+
               v
	 
  -- a beam which is set to pass through a cube diagonally adjacent to
     an atom will be reflected in a direction which can be obtained by
     adding two right-angled reflections

The computer will ask you to enter P1, P2, and P3, the coordinates of
the position where you want the beam to enter the box.  Obviously,
this must be on the surface, so at least one of the coordinates must
be 1 or 8.  When you have entered the shot the computer will tell you
where the beam has emerged.  Remember that a beam may be reflected by
more than one atom.  After you have had a few shots you should be able
to work out where the atoms are -- but then how few is "a few"?
