SPECIAL CHARACTERS

  Create and test your own special characters

In TI BASIC, you can create your own special graphics characters by
using the CALL CHAR subprogram.  This program helps you develop and
test those special graphics characters.  In order to use CALL CHAR,
however, you must supply a hexadecimal pattern identifier, which
represents your special character.  (See pages 11-76 to 11-79 of your
User's Reference Guide.)  This program makes it easier to develop this
hexadecimal identifier and to test it.

For example, suppose you wanted to use this program to help you create
and test a special character that looks like the one in Fig. 1-1.

                        ENTER THIS         THIS PROGRAM 
                        PATTERN OF         WILL GIVE 
                        ONES AND ZEROS     YOU THE 
                        TO DESCRIBE        HEXADECIMAL 
                        EACH ROW           IDENTIFIER CODE 
                        ---------------    ---------------
    ################    1 1 1 1 1 1 1 1          FF
    ##            ##    1 0 0 0 0 0 0 1          81
    ##            ##    1 0 0 0 0 0 0 1          81
    ##    ####    ##    1 0 0 1 1 0 0 1          99
    ##    ####    ##    1 0 0 1 1 0 0 1          99
    ##            ##    1 0 0 0 0 0 0 1          81
    ##            ##    1 0 0 0 0 0 0 1          81
    ################    1 1 1 1 1 1 1 1          FF

Here are the steps to follow:

  1. Run the program.

  2. To create the hexadecimal pattern identifier code, enter the word
     CODE.

  3. Enter a pattern of ones and zeros to describe each row (a blank
     square is represented by a zero while a shaded square is
     represented by a one).  The pattern for each row of our character
     is shown to the right of the sketch in Fig. 1-1.

  4. For each pattern of 8 ones and zeros which describe a row, this
     program will calculate the hex code.  For example, the hex code
     for the first row is FF (which corresponds to a pattern of
     11111111).

  5. When you finish all eight rows you should have the hex code, FF
     81 81 99 99 81 81 FF, to describe this character.

  6. You are now finished generating the hex code.  Type DONE and hit
     ENTER.

  7. It's time now to test the hex code.  Enter TEST.

  8. To test, enter the 16-character hex code FF 81 81 99 99 81 81 FF.

  9. Our special character should now appear on the screen.

  10. To end the program, enter END.
