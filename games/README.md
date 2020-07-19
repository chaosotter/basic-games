# Games

This is where the actual games files live!

The tree can be of variable depth depending on the organization of
each source, but the general layout is `title/game` for books and
`title/issue/game` for magazines.

Each leaf directory represents a single game.  Within that directory,
you'll find a number of files with standard names:

* **config.json**: The configuration for this game.  There does not
    yet exist proper documentation for the collection of fields
    required and supported, as this functionality is in flux.  Proceed
    by coding-by-example for now.

* **classic.bas**: Source code for the "classic" version of the game,
    which contains only enough modifications to the original published
    version to make it execute on the target platform.  This file
    should always be in text format (non-tokenized).  Our default
    choice for platform-agnostic games is "IBM PC", and all instances
    of `classic.bas` should be compatible with Borland Turbo BASIC
    1.0 for MS-DOS.

* **modern.bas**: Source code for the "modern" version of the game,
    which contains improvements to make it more palatable to modern
    tastes (lowercase, screen clearing, Y/N prompts, mild use of
    color, etc.).  These improvements should not modify the underlying
    logic but simply make the existing game more enjoyable to
    experience.  Again, the default choice of platform is Borland
    Turbo BASIC 1.0 for MS-DOS.

* **classic.qb64.bas**: Some games that work in Turbo BASIC are not
    compatible with QB64, our chosen BASIC for creating
    Windows-compatible executables.  This is generally because QB64
    has not yet implemented the `DEF FN` statement.  The source file
    should be identical to `classic.bas`, but with appropriate
    conversions.

* **modern.qb64.bas**: Like `classic.qb64.bas`, but with respect to
    `modern.bas`.

* **README.txt**: The documentation file for the game.
