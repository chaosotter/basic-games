
 �***EXPLOSION*** , �53280,0:�53281,0 I �RB(5,5),SB(5,5),ST(5,5) i D$�"" s( �3000 �� �**COPY RB TO SB** �� � X�1 � SI �� � Y�1 � SI �� SB(X,Y)�RB(X,Y) �� �:� �� � �,�**COPY SB TO RB** �6� X�1 � SI �@� Y�1 � SI 	JRB(X,Y)�SB(X,Y) 	T�:� !	^� 5	��**INITIALIZE** \	�� "�ENTER SIZE OF BOARD (3 OR 4)"; e	�� SI }	�� SI�3 � SI�4 � 410 �	�� X�1 � SI �	�� Y�1 � SI �	�ST(X,Y)�4�(X�1)�(X�SI)�(Y�1)�(Y�SI) �	��:� �	��"DO YOU WANT TO BEGIN (Y/N)"; �	�� AN$ 
�CM�(�(AN$,1)��"Y") #
X�*SETUP SCREEN* -
b� "�" :
l� " � X" H
v� "  � "; d
�� X�1 � SI:� X;" ";:�:� s
�� Y�1 � SI �
�� Y�1 � �" Y ";:� 680 �
��"   "; �
�� X�1 � SI:� "����";:�:� "�" �
�� I�1 � 3 �
��" "; �
�� I�2 � � �(Y);:� 730 �
��"  "; �� X�1 � SI:� "�   ";:�:� "�" "�� I,Y .��"   "; O� X�1 � SI:� "����";:�:� "�" U� j �**PLAYER MOVE** t*� D$; �4� "�YOUR MOVE (X,Y)      ������";MX,MY �>� MX�1 � MX�SI � MY�1 � MY�SI � 810 �H� RB(MX,MY)�0 � 810 �R� 200 �\X�MX:Y�MY:DI��1 f� 1000:� EXPLOSION *p� ET � 2200:� END 4z� 300 :�� T��**OUTPUT EXPLOSION** k�SB(X,Y)�SB(X,Y)�PL t�NE�0 �� DI � X1�X:Y1�Y:� 1400 �XP�0 �� Y�1 � SI �$� X�1 � SI �.� �(SB(X,Y))�ST(X,Y) � 1160 �8XP��1 �BNE�NE�1 LSB(X,Y)�SB(X,Y)�ST(X,Y)�PL 8V� DI � X1�X:Y1�Y:� I�1 � 999:� I:� 1400 O`X1�X:Y1�Y�1:� 1300 fjX1�X�1:Y1�Y:� 1300 }tX1�X:Y1�Y�1:� 1300 �~X1�X�1:Y1�Y:� 1300 ��� X,Y ��ET�(NE�1.5�SI�SI) ��� XP � � ET � 1040 ��� ��**ADD TO NEIGHBOURS** SB(X1,Y1)�PL�(�(SB(X1,Y1))�1) .(� DI � ST(X1,Y1)�0 � � 1400 42� Ix�**PRINT FIELD** ]�� I�1 � 500:� I x�� �(D$,4�Y1�1);�4�X1); ��� "   ���   ���   �����"; ��� SB(X1,Y1)�0 � 1480 ��� PL��1 � � ""; ��� PL�1 � �""; �� "   ���";�(SB(X1,Y1));"� ���   " �� "�"; �� -@�**COMPUTER MOVES** AJ� D$;"�MY MOVE: MTBE�1000 ]^� TX�1 � SI mh� TY�1 � SI �r� RB(TX,TY)�0 � 1720 �|� 200 ��X�TX:Y�TY:DI�0 ��� 1000:� OUTPUT EXPLOSION ��� ET � MX�TX:MY�TY:� 1800 ��� 2000:� EVALUATION +�� EN�BE � (EN�BE � �(0)�.4) � BE�EN:MX�TX:MY�TY 3��:� F�*ACTUAL MOVE* P� 200 dX�MX:Y�MY:DI��1 y&� D$;�8);X;",";Y �0� 1000:� OUTPUT EXPLOSION �:� ET � 2200:� END �D� 300 �N� ���**EVALUATE** ��EN�0 ��� X�1 � SI ��� Y�1 � SI �EN�EN�SB(X,Y) (� �SB(X,Y)�ST(X,Y)�1 � 2110 4EN�EN�2 [� SB(X�1,Y)�ST(X�1,Y)�1 � EN�EN�10 � � SB(X,Y�1)�ST(X,Y�1)�1 � EN�EN�10 �*� SB(X�1,Y)�ST(X�1,Y)�1 � EN�EN�10 �4� SB(X,Y�1)�ST(X,Y�1)�1 � EN�EN�10 �>�:� �H� ���**END** �� D$;"��AN ETERNAL EXPLOSION" *�� PL�1 � � "YOU";:� 2240 5�� "I"; R�� " WON IN";NT;"� TURNS" x�� "DO YOU WANT TO PLAY AGAIN";AN$ ��� �(AN$,1)�"Y" � �646,14:�:�10 ��� ���**MAIN PROGRAM** ��� 400:� INITIALIZE ��� CM � 3040 ��PL�1:� 800:� PLAYER MOVE �PL��1:� 1600:� COMPUTER MOVES )�NT�NT�1 4�� 3030   