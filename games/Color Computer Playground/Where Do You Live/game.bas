
5 REM *** LEARN YOUR ADDRESS
10 REM THIS PROGRAM HELPS YOUNGER CHILDREN LEARN THEIR ADDRESS
20 REM MELISSA PERDUE
50 CLS
55 PRINT@35,"*** LEARN YOUR ADDRESS ***"
56 FOR PAUSE=1 TO 2000:NEXT PAUSE
60 CLEAR 500
70 FOR J=1 TO 5:READ AD$(J):NEXT J
80 FOR J=1 TO 5:READ RA$(J):NEXT J
91 RESTORE
130 PRINT@109,"HELLO!"
150 PRINT@386,"WHAT IS YOUR:"
155 PRINT@421,"first name";:INPUT N1$
158 PRINT@421," "
159 PRINT@421,"last name";:INPUT N2$
160 N$=N1$+" "+N2$
164 CLS
167 PRINT@64,"HI, THERE, ";N$;"!"
168 GO SUB 3010:REM * DISPLAY ADDRESS
170 CLS
172 FOR J=1 TO 5
180 IF RA$(J)="" THEN 240
187 CLS
188 PRINT@194,"WHAT IS YOUR"
194 PRINT@207,AD$(J):INPUT GAD$
200 IF GAD$=RA$(J) THEN GOSUB 1010:GOTO 240
210 COUNT=COUNT+1:GOSUB 2010:IF COUNT <3 THEN 187
215 CLS
220 PRINT@194,"YOUR ";AD$(J);" IS"
225 PRINT@226, RA$(J)
230 FOR PAUSE=1 TO 1500:NEXT PAUSE
232 COUNT=0
235 GOTO 187
240 NEXT J
250 GOSUB 3010:REM * DISPLAY ADDRESS
260 CLS
270 PRINT@386,"PLAY AGAIN (Y/N)";:INPUT A$ 
280 IF A$="Y" THEN 170
290 IF A$<>"N" THEN 270
300 CLS:END
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
3000 REM *** DISPLAY ADDRESS
3010 CLS
3020 PRINT@74,"YOUR ADDRESS"
3021 PRINT@106,"-----------"
3025 PRINT@164,N$
3030 PRINT@196,RA$(1);"  ";
3035 PRINTRA$(2)
3036 PRINT@228,RA$(3);", ";
3040 PRINTRA$(4);"  ";
3050 PRINTRA$(5)
3080 FOR PAUSE=1 TO 3000:NEXT PAUSE
3090 RETURN
5001 DATA STREET OR ROAD
5002 DATA APARTMENT
5003 DATA CITY
5004 DATA STATE
5005 DATA ZIP
6001 DATA 2117 CARTER ROAD SW
6002 DATA
6003 DATA ROANOKE
6004 DATA VIRGINIA
6005 DATA 24015
