5 CC=3
10 CALL CLEAR
11 PRINT "LEARNING BASIC": :"TABLE OF CONTENTS": : : :
14 CALL SCREEN(CC)
20 PRINT "B0":"TABLE OF CONTENTS": :
25 GOSUB 1000
30 PRINT "B1":"INTRODUCTION":"   BASIC,ENTER KEY,SHIFT-S,":"   PRINT,+,-,*,/,^,":"   OPERATORS,EXPRESSIONS": :
35 GOSUB 1000
40 PRINT "B2":"MORE NUMBERS":"   HIERARCHY OF OPERATIONS,":"   PARENTHESES,NUMBERS,":"   SCIENTIFIC NOTATION": :
50 GOSUB 1000
60 PRINT "B3":"CONTROLLING YOUR COMPUTER":"   SHIFT-C,RUN,CONTINUE,"
70 PRINT "   DIRECT & PROGRAM MODES,":"   PROGRAMS,LINE NUMBERS,":"   END,INPUT,PRINT,SQR,"
80 PRINT "   TRACE,UNTRACE,LIST": : :
85 GOSUB 1000
90 PRINT "B4":"PROGRAMMING":"   CALL CLEAR,PRINT,(:),(;),":"   INPUT,IF-THEN": : :
100 GOSUB 1000
110 PRINT "B5":"MORE PROGRAMMING":"   INPUT,ARRAYS,DIM,":"   FOR,NEXT,GOTO": : :
115 GOSUB 1000
120 PRINT "B6":"FUNCTIONS":"   ABS,ATN,COS,EXP,INT,LOG,":"   RND,RANDOMIZE,SGN,SIN,":"   SQR,TAN,DEF": : :
130 GOSUB 1000
140 PRINT "B7":"STRINGS":"   POS,SEG$,LEN,CHR$,":"   ASC,STR$,VAL": : :
145 GOSUB 1000
150 PRINT "B8":"MORE PROGRAMMING":"   DATA,READ,RESTORE,REM,":"   GOSUB,RETURN,ON GOSUB,":"   ON GOTO,NEW": : :
160 GOSUB 1000
170 PRINT "B9":"DATA HANDLING":"   SAVE,OLD,DELETE,OPEN,":"   CLOSE,RESTORE,PRINT#,":"   INPUT#": : :
180 GOSUB 1000
190 PRINT "B10":"CALL STATEMENTS":"   CLEAR,HCHAR,VCHAR":"   SCREEN,COLOR,SOUND,CHAR": : :
200 GOSUB 1000
210 CALL CLEAR
900 END
1000 INPUT " PRESS ENTER":Q$
1020 CALL HCHAR(23,1,32,32)
1030 CC=CC+1
1040 CALL SCREEN(CC)
1050 RETURN