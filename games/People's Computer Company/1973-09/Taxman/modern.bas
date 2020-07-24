10 DIM L(50), T(10)
100 CLS: COLOR 15
104 PRINT "Hi, I'm the Taxman."
106 COLOR 10: PRINT "Do you want the regulations (Y/N)";
108 INPUT Z$: COLOR 15
110 IF LEFT$(Z$, 1) = "Y" OR LEFT$(Z$, 1) = "y" THEN 900
120 REM *** INITIALIZATION
122 GOSUB 800
124 REM *** THE HUMAN TAKES A NUMBER
126 GOSUB 500
128 REM *** COMPUTE THE HUMAN'S AND TAXMAN'S TOTALS
130 GOSUB 570
132 REM ** PRINT THE NEW LIST
134 GOSUB 600
136 REM *** CHECK IF ANY NUMBERS STILL HAVE FACTORS
138 GOSUB 650
140 IF M = 1 THEN 126
142 REM *** FIND THE WINNER
144 GOSUB 700
146 REM *** AGAIN?
148 GOTO 750
496 REM
497 REM  ***  THE HUMAN MOVES
498 REM
500 PRINT
502 PRINT
504 COLOR 10: PRINT "You take";
506 INPUT K: COLOR 15
508 LET K = INT(K)
510 IF K <= 0 THEN 750
512 IF K <= N THEN 518
514 PRINT K; "is not in the list -- try again."
516 GOTO 502
518 IF L(K) = 0 THEN 514
520 REM  FIND ALL THE FACTORS
522 IF K > 1 THEN 530
524 PRINT "There are no factors of"; K; "for me."
526 PRINT "Are you trying to short-change the Taxman?"
528 GOTO 502
530 LET M = 0
532 FOR I = 1 TO K / 2
534 IF L(I) = 0 THEN 544
536 IF K <> I * INT(K / I) THEN 544
538 LET M = M + 1
540 LET T(M) = I
542 LET L(I) = 0
544 NEXT I
546 REM  CHECK WHETHER THERE WERE ANY FACTORS
548 IF M = 0 THEN 524
550 LET L(K) = 0
552 RETURN
566 REM
567 REM  ***  COMPUTE THE HUMAN'S AND TAXMAN'S TOTALS
568 REM
570 LET Y = Y + K
572 PRINT "Your total is"; Y
574 PRINT "I get ";: COLOR 13
576 FOR I = 1 TO M
578 PRINT T(I);
580 LET Z = Z + T(I)
582 NEXT I
584 COLOR 15: PRINT
586 PRINT "My total is"; Z
588 RETURN
596 REM
597 REM  ***  PRINT THE NEW LIST
598 REM
600 PRINT
602 PRINT "New list:";: COLOR 13
604 LET M = 0
606 FOR I = 1 TO N
608 IF L(I) = 0 THEN 614
610 PRINT I;
612 LET M = I
614 NEXT I: COLOR 15
616 RETURN
646 REM
647 REM  ***  CHECK IF ANY NUMBERS STILL HAVE FACTORS
648 REM
649 REM  CHECK IF THE LIST IS EMPTY
650 IF M = 0 THEN 690
652 FOR I = N TO 4 STEP -1
654 FOR J = 2 TO I / 2
656 IF L(J) = 0 THEN 664
658 IF I <> J * INT(I / J) THEN 664
660 LET M = 1
662 RETURN
664 NEXT J
666 NEXT I
668 REM  THE TAXMAN GETS THE REST OF THE NUMBERS
670 PRINT
672 PRINT "I get ";: COLOR 13
674 FOR I = 1 TO N
676 IF L(I) = 0 THEN 682
678 PRINT I;
680 LET Z = Z + I
682 NEXT I: COLOR 15
684 PRINT "because no factors of any number are left."
686 PRINT "My total is"; Z
688 LET M = 0
690 RETURN
696 REM
697 REM  ***  FIND THE WINNER
698 REM
700 PRINT
702 IF Z > Y THEN 708
704 PRINT "You"; Y; "   Taxman"; Z; "     You win!!!"
706 RETURN
708 PRINT "Taxman"; Z; "   You"; Y; "     The Taxman wins."
710 RETURN
746 REM
747 REM  ***  AGAIN?
748 REM
750 PRINT
752 PRINT
754 COLOR 10: PRINT "Again (Y/N)";
756 INPUT Z$: COLOR 15
758 IF LEFT$(Z$, 1) <> "Y" AND LEFT$(Z$, 1) <> "y" THEN 999
760 GOTO 122
796 REM
797 REM  ***  INITIALIZATION
798 REM
800 PRINT
802 COLOR 10: PRINT "How many numbers do you want in the list";
804 INPUT N: COLOR 15
806 LET N = INT(N)
808 IF N <= 0 THEN 999
810 IF N <= 50 THEN 816
812 PRINT "At this time, regulations allow a maximum of 50 numbers."
814 GOTO 800
816 REM
818 LET Y = 0
820 LET Z = 0
822 PRINT
824 PRINT "The list is: ";: COLOR 13
826 FOR I = 1 TO N
828 PRINT I;
830 LET L(I) = 1
832 NEXT I: COLOR 15
834 IF N > 1 THEN 844
836 PRINT
838 PRINT "How very generous of you to forfeit all to the Taxman."
840 PRINT "Taxman  1    You  0       The Taxman wins."
842 GOTO 750
844 RETURN
896 REM
897 REM  ***  INSTRUCTIONS
898 REM
900 PRINT: COLOR 14
901 PRINT "You try to beat the Taxman."
902 PRINT
904 PRINT "We start with a list of whole numbers in numerical order (you decide how many)."
908 PRINT
910 PRINT "You take a number from the list -- the Taxman gets all the factors of your"
912 PRINT "number that are still left.  Your number and all its factors are then deleted"
914 PRINT "from the list."
918 PRINT
920 PRINT "For example, suppose you want 10 numbers to be in the list."
922 PRINT "Then the list would be:  ";: COLOR 13: PRINT "1  2  3  4  5  6  7  8  9  10": COLOR 14
924 PRINT
926 PRINT "If you took 8, the taxman would get 1, 2, and 4."
928 PRINT "And the new list would be:  ";: COLOR 13: PRINT "3  5  6  7  9  10": COLOR 14
930 PRINT
932 PRINT "The Taxman must get something every time, so you can only pick a number that"
934 PRINT "has factors left."
936 PRINT
938 PRINT "When none of the remaining numbers has any factors, the Taxman gets them!!"
942 PRINT
944 PRINT "You score is the sum of the numbers you take."
946 PRINT "If you want to give up, take 0.  Good luck!"
950 GOTO 122
999 END

