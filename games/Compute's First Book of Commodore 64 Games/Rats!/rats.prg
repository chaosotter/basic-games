. � DISK USERS SAVE WITH THE FILENAME RATS I � �(142):GX�49152:� 38 ] � DRAW 3-D VIEW } N�2:A�H:B�V:FF�2�(F�1):� IN � Z�M%(A,B)�FF:� ((Z�16) � 1)�1 � RL��1:� 25:� 8 � W�M%(A�S,B�R)�FF:� ((W�128) � 1)�1 � RL��1:� 21 
	 � ((Z�64) � 1)�1 � RL�1:� 25:� 10 =		 W�M%(A�S,B�R)�FF:� ((W�128) � 1)�1 � RL�1:� 21 X	
 � ((Z�128) � 1)�1 � 14 m	 N�N�1:� N�8 � 15 �	 A�A�R:B�B�S:� B�2 � 15 �	 � 6 �	 � 17 �	 � �	 � DRAW CENTER BACK �	 � HX,VX�DX(N):� HY,YU(N):� PL:� HY,YD(N):� LI "
 � HX,VX�DX(N):� LI:� HY,YU(N):� LI:� HX,VX�DX(N):� LI (
 � =
 � DRAW BACK SIDE z
 � HX,VX�RL�DX(N�1):� HY,YU(N):� PL:� HX,VX�RL�DX(N):� LI �
 � HY,YD(N):� LI:� HX,VX�RL�DX(N�1):� LI �
 � �
 � DRAW RIGHT OR LEFT SIDE  � HX,VX�RL�DX(N�1):� HY,YU(N�1):� PL:� HX,VX�RL�DX(N) ; � HY,YU(N):� LI:� HY,YD(N):� LI:� HX,VX�RL�DX(N�1) k � HY,YD(N�1):� LI:� HY,YU(N�1):� N�2 � � LI q � � � GET KEYBOARD CHARACTER � � A$:� A$�"" � 30 � � �% � INITIALIZE �& HX�828:HY�829:LINE�12288:PLOT�12665:INIT�12685:SCR�12725  ' FL�12726:FH�12730:TL�12734:TH�12738 D( � "�RATS! s) � "SOLVE A MAZE FROM A RAT'S EYE VIEW �* � "MAZE SIZE (H,V)   3,3�����";H,V �+ � H�3 � H�15 � V�3 � V�15 � 40 �, � "�PLEASE WAIT... - � �(LI)�32 � �(LI�1)�33 � �(LI�2)�48 � 48 L. CK�0:� L�12288 � 12761:� A:� L,A:CK�CK�A:�:�K�GX�GX�23:�GX �/ �K,GX:�:� CK��50144 � � "ERROR IN DATA STATEMENTS":� �0 N�H�V�1:H�H�1:V�V�1:D�1 �1 � M%(17,17),WALK(100),CUT(5),DX(8),YU(8),YD(8) �2 � J�1 � V�1:M%(1,J)�4:M%(H�1,J)�1:� 3 MX�79:MY�49:VX�39:VY�24:X�VX a4 � J�1 � 8:DX(J)�X:YU(J)��(VY�X�VY�VX):YD(J)��(VY�X�(MY�VY)�VX) s5 X��(X�7�10):� �6 � I�2 � H:M%(I,V�1)�8:M%(I,1)�2:� J�2 � V:M%(I,J)�15:�:� �7 R��(H�2)�1:S��(V�2)�1:M%(R,S)�15 �8 � "�GENERATING MAZE...";:� 2000 >9 � GENERATE RANDOM MAZE (ALGORITHM FROM ROGERS AND STRASSBERGER) P: � IWALK�1 � N X; I�Z |< � M%(R�1,S)�14 � I�I�1:CUT(I)�1 �= � M%(R,S�1)�14 � I�I�1:CUT(I)�2 �> � M%(R�1,S)�14 � I�I�1:CUT(I)�3 �? � M%(R,S�1)�14 � I�I�1:CUT(I)�4 �@ � I�0 � 75 A � I��1 � I��(�(1)�I)�1 -B � CUT(I) � 67,69,71,73 UC M%(R,S)�M%(R,S)�(M%(R,S) � 1):R�R�1 �D M%(R,S)�M%(R,S)�((M%(R,S)�4) � 1)�4:� 86 �E M%(R,S)�M%(R,S)�((M%(R,S)�8) � 1)�8:S�S�1 �F M%(R,S)�M%(R,S)�((M%(R,S)�2) � 1)�2:� 86 G M%(R,S)�M%(R,S)�((M%(R,S)�4) � 1)�4:R�R�1 2H M%(R,S)�M%(R,S)�(M%(R,S) � 1):� 86 `I M%(R,S)�M%(R,S)�((M%(R,S)�2) � 1)�2:S�S�1 �J M%(R,S)�M%(R,S)�((M%(R,S)�8) � 1)�8:� 86 �K � D��1 � 79 �L � R��H � 83 �M � S��V � 82 �N R�2:S�2:� 84 �O � R��2 � 83 �P � S��V � 82 �Q R�H:S�2:� 84 R S�S�1:D��D:� 84 S R�R�D 3T � M%(R,S)�15 � 75 <U � 59 HV � IWALK iW MH�H:MV�V:I��(�(1)�(MH�1))�2 �X M%(I,1)�0:M%(I,2)�M%(I,2)�((M%(I,2)�8) � 1)�8 �Y H��(�(1)�(MH�1))�2:H1�H:V1�V �Z � "�MAZE COMPLETED.":� 2000:� 105 [ � DISPLAY TOP VIEW OF MAZE \ HZ��(79�MH):VZ��(49�MV) F] � IN:� 214,24:� �25);"�         "; u^ � HX,1�HZ:� HY,1�VZ:� PL:� HY,MV�VZ�1:� LI �_ � J�1 � MV:� I�2 � MH:N�M%(I,J):X�I�HZ�1:Y�J�VZ�1 �` � ((N�2) � 1)�1 � � HX,X:� HY,Y:� PL:� HX,X�HZ:� LI a � ((N�4) � 1)�1 � � HX,X:� HY,Y:� PL:� HY,Y�VZ:� LI #b �:� )c � Fd � MARK PLAYER'S POSITION se X�H�HZ�1:Y�V�VZ�1:� HX,X�1:� HY,Y�1:� PL �f � HX,X�HZ�2:� HY,Y�VZ�2:� LI:� HY,Y�2:� PL �g � HX,X�2:� HY,Y�VZ�2:� LI �h � �i � X�1 � MH:� Y�1 � MV:M%(X,Y)�M%(X,Y)�M%(X,Y)�16:�:� 
j � PLAY 2k F��(�(1)�4)�1:� F � 108,109,110,111 El R�0:S��1:� 112 Xm R��1:S�0:� 112 kn R�0:S��1:� 112 xo R��1:S�0 �p � "�PRESS J� TO TURN LEFT �q � "PRESS L� TO TURN RIGHT �r � "PRESS SPACE� TO GO FORWARD 
s � "PRESS M� TO DISPLAY TOP VIEW OF MAZE 2t � " PRESS ANY KEY TO CONTINUE " Mu � 30:� "�";:�49152:� 5 av � GET KEYSTROKE jw � 30 �x � �(A$�"J")�2�(A$�"L")�3�(A$�" ")�4�(A$�"M") � 122,124,131,136 �y �2000:� 112 �z F�F�1:� F�1 � F�4 �{ � 125 �| F�F�1:� F�4 � F�1 } � F � 126,127,128,129  ~ R�0:S��1:� 130 3 R��1:S�0:� 130 F� R�0:S��1:� 130 S� R��1:S�0 ]� � 135 �� Z�M%(H,V):T�Z�2�(F�1):T�(T�128) � 1:� T�1 � � 2000:� 119 �� NM�NM�1:� 214,24:� �25);"�MOVE";NM;""; �� � NM�100 � WALK(NM)�F �� H�H�R:V�V�S:� V�2 � 147 
� � 5:� 119 � � � MS � 138 K� � FL,218:� FH,49:� TL,0:� TH,128:� SC:� 139 �� � 92:� FL,0:� FH,128:� TL,218:� TH,49:� SC:MS��1 �� � 101:� "YOU ARE FACING ";: � F � 140,141,142,143 �� � "NORTH";:� 144 �� � "EAST";:� 144 �� � "SOUTH";:� 144 � � "WEST"; 1� � ".  PRESS ANY KEY TO":� "CONTINUE":� 30 o� � "                                       ":� "        " }� � 5:� 119 �� �2000:V�V1:H�H1:� MS � � FL,218:� FH,49:� TL,0:� TH,128 �� � MS � � SC:� 150 �� � 92 �� � 101 � � "CONGRATULATIONS-YOU'RE OUT IN";NM;"STEP!��S" /� � DRAW PATH WALKED Z� � HX,H�HZ�HZ�2�1:� HY,V�VZ�VZ�2�1:� PL w� � N�1 � NM:� N�100 � 158 �� F�WALK(N):V�V�(F�1)�(F�3):H�H�(F�4)�(F�2) �� � HX,H�HZ�HZ�2�1:� HY,V�VZ�VZ�2�1:� LI �� � �� �:� � � 32, 33, 48, 173, 58, 3, 133, 2  *� � 173, 59, 3, 133, 195, 32, 0, 49 N� � 173, 62, 3, 205, 63, 3, 16, 8 s� � 240, 6, 32, 173, 48, 76, 3, 48 �� � 96, 169, 128, 24, 109, 60, 3, 56 �� � 237, 58, 3, 141, 63, 3, 169, 128 �� � 24, 109, 61, 3, 56, 237, 59, 3 � � 141, 64, 3, 162, 128, 142, 66, 3 4� � 142, 69, 3, 232, 142, 67, 3, 142 [� � 68, 3, 173, 63, 3, 201, 128, 176 �� 11, 169, 127, 141, 68, 3, 169, 0 �� 56, 237, 63, 3, 41, 127, 141, 63 �� 3, 173, 64, 3, 201, 128, 176, 11 �"� 169, 127, 141, 67, 3, 169, 0, 56 ,� 237, 64, 3, 41, 127, 141, 64, 3 C6� 173, 63, 3, 205, 64, 3, 176, 32 i@� 174, 63, 3, 172, 64, 3, 142, 64 �J� 3, 140, 63, 3, 173, 68, 3, 141 �T� 66, 3, 173, 67, 3, 141, 69, 3 �^� 169, 128, 141, 67, 3, 141, 68, 3 �h� 173, 63, 3, 74, 141, 65, 3, 169 #r� 0, 141, 62, 3, 96, 173, 68, 3 K|� 56, 233, 128, 24, 109, 58, 3, 141 q�� 58, 3, 173, 69, 3, 56, 233, 128 ��� 24, 109, 59, 3, 141, 59, 3, 173 ��� 65, 3, 24, 109, 64, 3, 141, 65 ��� 3, 238, 62, 3, 173, 65, 3, 205 �� 63, 3, 48, 35, 240, 33, 56, 237 +�� 63, 3, 141, 65, 3, 173, 66, 3 S�� 56, 233, 128, 24, 109, 58, 3, 141 y�� 58, 3, 173, 67, 3, 56, 233, 128 ��� 24, 109, 59, 3, 141, 59, 3, 96 ��� 169, 0, 133, 168, 169, 32, 133, 196 ��� 165, 2, 201, 80, 176, 56, 165, 195  �� 201, 50, 176, 50, 234, 234, 234, 234 D �� 70, 2, 38, 168, 106, 38, 168, 133 l � 195, 10, 10, 101, 195, 10, 10, 38 � � 196, 10, 38, 196, 234, 234, 234, 133 � � 195, 166, 168, 189, 99, 49, 133, 168 � &� 164, 2, 177, 195, 162, 15, 221, 103 !0� 49, 240, 4, 202, 16, 248, 96, 173 ;!:� 98, 49, 240, 6, 138, 5, 168, 170 b!D� 208, 8, 138, 73, 255, 5, 168, 73 �!N� 255, 170, 189, 103, 49, 164, 2, 145 �!X� 195, 96, 1, 1, 2, 4, 8, 32 �!b� 126, 123, 97, 124, 226, 255, 236, 108 "l� 127, 98, 252, 225, 251, 254, 160, 234 *"v� 0, 173, 60, 3, 141, 58, 3, 133 O"�� 2, 173, 61, 3, 141, 59, 3, 133 w"�� 195, 32, 0, 49, 96, 162, 128, 160 �"�� 0, 134, 254, 132, 253, 177, 253, 41 �"�� 127, 201, 64, 48, 2, 169, 32, 145 �"�� 253, 200, 208, 241, 232, 224, 132, 208 #�� 232, 169, 0, 170, 157, 58, 3, 232 I#�� 224, 12, 208, 248, 96, 169, 218, 133 s#�� 251, 169, 49, 133, 252, 169, 0, 133 �#�� 253, 169, 128, 133, 254, 162, 4, 160 �#�� 0, 177, 251, 145, 253, 136, 208, 249 �#�� 230, 252, 230, 254, 202, 48, 2, 208 $�� 240, 96 ($�� 162, 0, 169, 1, 157, 0, 216, 157 O$�� 0, 217, 157, 0, 218, 157, 0, 219 y$�� 232, 208, 241, 96, 234, 234, 234, 0 �$�S0�54272:�E�S0�S0�28:�E,0:� �$��54296, 15 :�54277, 51 :�54278, 211 �$�� 54276, 33 :� 54273, 63 :�54272, 75 %��T�1� 200 :�:�54276, 32:�T�1� 100:�  *%��E�S0�S0�28:�E,0:� 0%�   