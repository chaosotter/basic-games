5 CLS: COLOR 12
10 PRINT TAB(31); "Buzzword Generator"
20 PRINT TAB(31); "Creative Computing"
25 PRINT TAB(29); "Morristown, New Jersey"
30 PRINT: PRINT: PRINT: RANDOMIZE TIMER: COLOR 14
40 PRINT "This program prints highly acceptable phrases in 'educator-speak' that you can"
50 PRINT "work into reports and speeches."
70 COLOR 15
80 PRINT: PRINT: PRINT "Here's the first phrase:"
90 DIM A$(40)
100 FOR I = 1 TO 39: READ A$(I): NEXT I
110 COLOR 11: PRINT: PRINT "    "; A$(INT(13 * RND(1) + 1)); " ";
120 PRINT A$(INT(13 * RND(1) + 14)); " ";
130 PRINT A$(INT(13 * RND(1) + 27)): PRINT: COLOR 15
150 COLOR 10: PRINT "Another (Y/N)";
160 INPUT Y$: COLOR 15: IF LEFT$(Y$, 1) = "Y" OR LEFT$(Y$, 1) = "y" THEN 110
170 GOTO 999
200 DATA "ability","basal","behavioral","child-centered"
210 DATA "differentiated","discovery","flexible","heterogeneous"
220 DATA "homogeneous","manipulative","modular","Tavistock"
230 DATA "individualized","learning","evaluative","objective"
240 DATA "cognitive","enrichment","scheduling","humanistic"
250 DATA "integrated","non-graded","training","vertical age"
260 DATA "motivational","creative","grouping","modification"
270 DATA "accountability","process","core curriculum","algorithm"
280 DATA "performance","reinforcement","open classroom","resource"
290 DATA "structure","facility","environment"
999 PRINT: PRINT "Come back when you need help with another report!": END

