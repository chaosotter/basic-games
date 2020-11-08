PHONE TRANSLATOR

Throughout the United States and Great Britain (and possibly other
countries too) there is a tendency to assign new telephone numbers
using only digits rather than a combination of letters and digits.
The purpose of this change is to make all telephone numbers uniform.

Contrary to what the public relations personnel of the various
telephone companies might say, telephone numbers are not usually that
simple to remember.  However, if we take advantage of the fact that,
on the typical American phone dial, there are three letters of the
alphabet associated with each of the digits 2-9, a mnemonic can often
be constructed out of these digits.

For example, it is much simpler to dial "BARBARA" than it is to
remember its equivalent number, 227-2272.  With this in mind, the
following program has been written which enables a person to type in
any seven-character tele- phone number, be it composed only of digits
or of a com- bination of digits and letters.  Since the digits 0 and 1
on the dial do not have alphabetic letters associated with them, they
are left intact if they are part of a telephone number.  The program
requires only that the user input seven characters, be they letters or
numbers; however, no hyphens are permitted.  If hyphens (or for that
matter, any other character not found on the phone dial) are typed,
they are simply ignored.  (This includes the letters Q and Z, both of
which are not found on the standard American dial.)

The output to this program is quite voluminous, since there are
three-raised-to-the-seventh-power combinations that can be constructed
from a seven-digit telephone number.  In order to print these 2,187
combinations, it is arranged so that they print in two columns —-
giving the viewer ample opportunity to scan the list as it is
displayed to search for a suitable mnemonic.
