SECRET CODE

Here is an easy way to write a message in a secret code, where one
letter stands for another.  Just type in your message and it will
appear on the screen in code.  The code is contained in the DATA
statements of lines 550 and 560 and may be easily changed.

Here's how it works.  The first letter in line 550 converts to the
first letter in line 560.  The second letter in line 550 con- verts to
the second letter in line 560, etc.  Therefore, A is coded as D, B is
coded as E, and so on.

You can also use this program to decode messages.  Just put the DATA
statement of line 560 in front of the DATA statement of line 550 (at
line 545, for example).  Next, delete line 560.  Type in your coded
message and it will be converted back into English.
