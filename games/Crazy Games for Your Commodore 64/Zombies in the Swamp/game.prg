!
 �***ZOMBIES IN THE SWAMP*** / � A(14,9) > � C�0 � 14 V( A(C,0)��1:A(C,9)��1 \2 � j< � C�0 � 9 �= A(0,C)��1:A(14,C)��1 �? � �A � 53280,2 �F A(1,0)�1:A(0,1)�1 �P � �R(X)��(X��(0)�1) �Z EM$�"�   ���   ���   "  	n PL$�"�###���###���###" 	� MO$�"***���***���***" @	� DR$�"   ��� �* ���   " d	� D$�"" o	� � 2000 �	� �**PRINT T$ ON X,Y** �	� � �(D$,3�(Y�1)�1);�3�(X�1));T$; �	� � �	,�**INITIALIZE** �	6� "�"; �	@� LI�1 � 24 
J� "                                       ":� 39 SPACES %
T� B
^M�0:PX�13:PY�8:A(13,8)�1 P
hX�PX:Y�PY a
rT$�PL$:� 200 g
|� ~
��**PLAYER'S MOVE** �
�� INPUT �
�� IN$:� IN$�"" � 420 �
�DX��(IN$�"�")�(IN$�"") �
�DY��(IN$�"�")�(IN$�"") �
�� DX�0 � DY�0 � 420 �� A(PX�DX,PY�DY)�1 � 500,550 �� 420 0��*THROW RAFT* D�X�PX�DX:Y�PY�DY UT$�EM$:� 200 bA(X,Y)�1 h� t&�*MOVE* �0X�PX:Y�PY �:T$�EM$:� 200 �DPX�PX�DX:PY�PY�DY �N� PX�0 � PY�0 � 630 �XX�PX:Y�PY �bT$�PL$:� 200 �l� �v�*WON* �� D$;�10) "�CONGRATULATIONS !"; ,�� I�1 � 10:� S$:� C�� S$:� S$�"" � 660 I�� Z��**MONSTER** i�MX�13:MY�8 w�X�MX:Y�MY ��T$�MO$:� 200 ��� �R(2) � 880,890 ��LX�DX:LY�DY ���*NEW DIRECTION* ��� A(MX�LX,MY�LY)�1 � 800 � A(MX�LY,MY�LX)�1 � A(MX�LY,MY�LX)�1 � 840 &�*SAME DIRECTION* 6DX�LX:DY�LY @� 820 R �*INTO SWAMP* p*� �R(4) � 880,890,900,910 �4� A(MX�DX,MY�DY)��1 � 810 �>� 920 �H�*POSSIBLE MOVE* �R� �R(4) � 880,890,900,910 �\� DX��LX � DY��LY � A(MX�DX,MY�DY)�1 � 780 f� 920 pDX� 0:DY��1:� (zDX��1:DY �0:� :�DX� 0:DY� 1:� L�DX� 1:DY� 0:� X��*MOVE* f�X�MX:Y�MY w�T$�EM$:� 200 ��MX�MX�DX ��MY�MY�DY ��LX�DX:LY�DY ��� A(MX,MY)�0 � 1030 ��X�MX:Y�MY ��T$�MO$:� 200 ��� MX�PX � MY�PY � 1080 ��� 750 �*MONSTER DROWNED* $A(MX,MY)��1 2X�MX:Y�MY C$T$�DR$:� 200 I.� ^8�*PLAYER CAUGHT* �B� D$;�8) "�YOU'VE JUST BEEN EATEN!" �L� I�1 � 10:� S$:� �V� S$:� S$�"" � 1110 �`� ���**MAIN PROGRAM** ��� 300:� INITIALIZE �� 400:� PLAYER'S MOVE �M�M�1 +�� �R(PX�PY)�4 � M�5 � 2020 ?� 700:� MONSTER J� 2020   