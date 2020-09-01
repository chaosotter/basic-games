(From Color Computer Magazine, October 1983.)

CRYPTOGRAPHY

  Want to send a secret message to your boss, your compatriots back
  home, your beloved?  This program will make it easy to do.

  by Robert L Garrett 

Your Color Computer can be a powerful ally, coding or decoding secret
messages for you automatically.  A French nobleman, Blaise de
Vigenere, created a polyalphabetic cipher using more than one cipher
alphabet to encrypt a given message. De Vigenere's cipher sabotages
the method by which cryptographers conventionally broke secret codes
in the past.

For example, if the letter E is coded to be the letter X, then X will
show up for the letter E everywhere in the simpler, earlier-method
secret message.  Cryptographers count the number of X's in the simpler
code and conclude that it represents an E, because E is the most
frequently used letter.  T is the next most frequently used letter,
followed by A, O, N, I, R, S, etc.  By merely taking a frequency count
of the letters, and making substitutions, cryptographers could easily
break a code.

Cryptic Cryptography 

In de Vigenere's code, however, the letter E is represented
differently everywhere in the secret message.  Look at the Table to
see what de Vigenere did; he made a 26 by 26 matrix of alphabetic
letters.  When a secret message is to be sent, the two communicating
parties agree beforehand on a keyword.  The sender must write the
keyword repeatedly above the "clear letters," or plaintext.

                     CAPITALS REPRESENTING KEY LETTER

            A B C D E F G H I J K L M N O P Q R S T U V W X Y Z
          A a b c d e f g h i j k l m n o p q r s t u v w x y z
          B b c d e f g h i j k l m n o p q r s t u v w x y z a
          C c d e f g h i j k l m n o p q r s t u v w x y z a b
          D d e f g h i j k l m n o p q r s t u v w x y z a b c
          E e f g h i j k l m n o p q r s t u v w x y z a b c d
          F f g h i j k l m n o p q r s t u v w x y z a b c d e
          G g h i j k l m n o p q r s t u v w x y z a b c d e f
CAPITALS  H h i j k l m n o p q r s t u v w x y z a b c d e f g
 REPRES-  I i j k l m n o p q r s t u v w x y z a b c d e f g h
 ENTING   J j k l m n o p q r s t u v w x y z a b c d e f g h i
  CLEAR   K k l m n o p q r s t u v w x y z a b c d e f g h i j
 LETTERS  L l m n o p q r s t u v w x y z a b c d e f g h i j k
	  M m n o p q r s t u v w x y z a b c d e f g h i j k l
	  N n o p q r s t u v w x y z a b c d e f g h i j k l m
	  O o p q r s t u v w x y z a b c d e f g h i j k l m n
	  P p q r s t u v w x y z a b c d e f g h i j k l m n o
	  Q q r s t u v w x y z a b c d e f g h i j k l m n o p
	  R r s t u v w x y z a b c d e f g h i j k l m n o p q
	  S s t u v w x y z a b c d e f g h i j k l m n o p q r
	  T t u v w x y z a b c d e f g h i j k l m n o p q r s
	  U u v w x y z a b c d e f g h i j k l m n o p q r s t
	  V v w x y z a b c d e f g h i j k l m n o p q r s t u
	  W w x y z a b c d e f g h i j k l m n o p q r s t u v
	  X x y z a b c d e f g h i j k l m n o p q r s t u v w
	  Y y z a b c d e f g h i j k l m n o p q r s t u v w x
	  Z z a b c d e f g h i j k l m n o p q r s t u v w x y

            Table. De Vigenere's Polyalphabetic Cipher Table 

For example, the keyword "FOXTROT" wiil be used to encode the message
"The Color Computer Is Great."  The encoder would write:

    Keywords:  FOXTROTFOXTROTFOXTROTFO
    Plaintext: THECOLORCOMPUTERISGREAT

Now look at the Table and find the F in the key letters column, and
the T in the clear letters row.  Look down the column and row to find
the first cipher letter, Y.  The complete cipher text, or encoded
message, is: YVBVFZHWQLFGIMJFFLXFXFH using FOXTROT as the keyword.

Encryption Program 

Try this message with the Color Computer program I have written, and
see how easy it is to encode or decode a message provided you know the
keyword.  The computer can do the ciphering more quickly than you can
yourself, but be sure not to leave any spaces between words or the
code will not come out correctly.  De Vigenere claimed this code was
unbreakable, and so it was found to be for many years.  However, it
can now be broken by an expert, but takes quite a bit of time.

The program, once entered into the computer, works as follows: The
program will display: CRYPTOGRAPHY, WAIT 25 SECONDS FOR DATA TO FILL
ARRAY.  After 25 seconds, the 26 by 26 array is filled with the
correct alphabetic characters.  The computer now displays: TO ENCODE
TYPE 1 TO DECODE TYPE 2.  To encode means to encrypt, or make into a
secret message.  To decode means to unscramble the secret message into
a readable message.  After pressing 1 for encode, the computer asks
for the keywords, and then for the plain text, or message to be coded.

If you push 2 for decode, the program asks for the cipher text, or
scrambled message.  Remember, the code you use must be based on de
Vigenere's code.  The program then asks for the keyword, and the
message is unscrambled.

I used an Extended Basic computer to write this program, but Extended
Basic is not required if you remove statements 6 and 7 from the
program.
