
10 REM *** AL'S TOUR OF THE STATES
12 CLEAR 500
50 CLS
65 PRINT"*** AL'S TOUR OF THE STATES ***"
66 FOR PAUSE=1 TO 1000: NEXT PAUSE
70 FOR X=65 TO 90
75 IF X=66 OR X=69 OR X=74 OR X=81 OR X>87 THEN 168
120 CLS
125 FOR I=1 TO 25
130 P=RND(350):PRINT@P,CHR$(X);
140 SOUND RND(87)+88,1
142 NEXT I
145 FOR PAUSE=1 TO 250:NEXT PAUSE
146 CLS
150 PRINT@288,"WHAT STATE IS AL IN";:INPUT A$
154 IFA$="" THEN CLS:GOSUB 3010:GOTO 120
156 RESTORE
157 FOR STATE=1 TO 50:READ B$:IF B$<>A$ THEN NEXT STATE
158 IF B$=A$ AND ASC(LEFT$(A$,1))=X THEN GOSUB 1010:GOTO 168
164 GOSUB 2010:GOTO 120
168 NEXT X
170 CLS:END
1000 REM ***HAPPY FACE***
1010 FOR A=0 TO 2
1015 PRINT @A*32+365,CHR$(128);
1020 PRINT CHR$(128);CHR$(128);
1025 PRINT CHR$(128);
1030 NEXT A
1050 REM MOUTH RED
1055 SET(27,26,4):SET(28,27,4)
1060 SET(29,27,4):SET(30,27,4)
1065 SET(31,27,4):SET(32,26,4)
1070 REM NOSE ORANGE
1075 SET(29,25,8)
1110 SET(28,23,3)
1140 SET(31,23,3)
1200 PRINT@492,"RIGHT!";
1260 FOR W=180 TO 240 STEP 8
1270 SOUND W,1
1280 NEXT W
1290 FOR A=1 TO 900:NEXT A
1300 FOR A=1 TO 4:PRINT @(333+32*A)," ":NEXT A:PRINT @492,"      ";
1350 RETURN
2000 REM ***SAD FACE***
2010 FOR A=0 TO 2
2020 PRINT @A*32+365,CHR$(128);
2025 PRINT CHR$(128);CHR$(128);
2030 PRINT CHR$(128);
2035 NEXT A
2050 REM MOUTH RED
2055 SET(28,26,4):SET(29,25,4)
2070 SET(30,25,4):SET(31,26,4)
2075 SET(27,27,4):SET(32,27,4)
2105 REM EYES BLUE
2110 SET(28,23,3)
2140 SET(31,23,3)
2150 PRINT@486, "SORRY ... TRY AGAIN";
2160 REM SAD SOUND
2170 SOUND 32,8
2180 SOUND 16,16
2220 FOR A=1 TO 500: NEXT A
2230 FOR A=1 TO 5
2235 PRINT@(288+32*A)," ":NEXT A:PRINT@486,"                   ";
2250 RETURN
3000 REM *** DISPLAY STATES
3010 PRINT@32, "STATES BEGINNING WITH THE LETTER ";CHR$(X)
3020 PRINT "==============================="
3022 PRINT
3025 RESTORE:FOR NUM=1 TO 50:READ B$:IF ASC(LEFT$(B$,1))=X THEN PRINT"    ";B$
3028 NEXT NUM
3100 A$=INKEY$:IF A$="" THEN 3100
3140 RETURN
4000 DATA ALABAMA,ALASKA,ARIZONA,ARKANSAS,CALIFORNIA
4005 DATA COLORADO,CONNECTICUT,DELAWARE,FLORIDA,GEORGIA
4010 DATA HAWAII,IDAHO,ILLINOIS,INDIANA,IOWA
4015 DATA KANSAS,KENTUCKY,LOUISIANA,MAINE,MARYLAND
4020 DATA MASSACHUSETTS,MICHIGAN,MINNESOTA,MISSISSIPPI,MISSOURI
4025 DATA MONTANA,NEBRASKA,NEVADA,NEW HAMPSHIRE,NEW JERSEY
4030 DATA NEW MEXICO,NEW YORK,NORTH CAROLINA,NORTH DAKOTA,OHIO
4035 DATA OKLAHOMA,OREGON,PENNSYLVANIA,RHODE ISLAND,SOUTH CAROLINA
4040 DATA SOUTH DAKOTA,TENNESSEE,TEXAS,UTAH,VERMONT
4045 DATA VIRGINIA,WASHINGTON,WEST VIRGINIA,WISCONSIN,WYOMING
