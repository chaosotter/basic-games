10 N1 = 1: D1 = 1
20 REM ***  CAVES1  ***
30 REM ***  PROGRAM MAKES A SET OF LINKED ROOMS FOR YOU TO EXPLORE
40 REM *** PROGRAMMER - DAVID KAUFMAN
45 RANDOMIZE TIMER
50 G = 1
60 G2 = 1
70 PRINT "WELCOME TO THE CAVES"
80 PRINT
90 PRINT "IS THIS YOUR FIRST VISIT (1=YES, 0=NO)";
100 INPUT X
110 IF X = 1 THEN 170
120 PRINT
130 PRINT "HOW HARD SHOULD I MAKE THE CAVES?"
140 PRINT "  1=USUAL,  2=HARDER,  3=!!!   ";
150 INPUT G
160 G = ABS(G): IF G > 3 THEN G = 3
170 V1 = 0
180 GOSUB 7500
190 R = 2
200 FOR I = 1 TO 4
210 GOSUB 1360
220 GOSUB 1500
230 FOR J = 1 TO G - 1
240 GOSUB 1450
250 GOSUB 1500
260 NEXT J
270 NEXT I
280 W = R - 1
290 IF G2 > 1 THEN 520
300 PRINT
310 PRINT "DO YOU WANT AN INTRODUCTION (1=YES, 0=NO)";
320 INPUT X
330 IF X = 0 THEN 520
340 PRINT
350 PRINT "   IMAGINE YOURSELF AN EXPLORER OF THE FAMOUS"
360 PRINT "DUZZLEDORF CAVES.  YOU'VE BEEN UNDERGROUND"
370 PRINT "FOR DAYS, TRIPPING THROUGH THE CAVERNS AND"
380 PRINT "TUNNELS.  UNFORTUNATELY, YOU'RE LOST, AND"
390 PRINT "YOUR FOOD HAS RUN OUT."
400 PRINT
410 PRINT "   THERE IS ONLY ONE PATH OUT.  SEE IF YOU"
420 PRINT "CAN FIND IT."
430 PRINT
440 PRINT "   WHEN I TYPE A '?', YOU GIVE ME THE NUMBER"
450 PRINT "OF THE CAVERN YOU WANT TO GO TO. LIKE THIS:"
460 PRINT
470 PRINT "WHERE NEXT?  7"
480 PRINT
490 PRINT "ADVICE: MAKE A MAP AS YOU GO - IN THE HARDER CAVES"
500 PRINT "        YOU SOMETIMES HAVE TO GO BACK AND TRY ANOTHER"
510 PRINT "        WAY. GOOD LUCK!"
520 D1 = 1
530 V1 = 8
540 GOSUB 7500
550 X = 9999
560 PRINT
570 PRINT "YOU'RE IN CAVERN #"; N1
580 D1 = 9999
590 V1 = 7
600 FOR I = 1 TO 3
610 GOSUB 7500
620 PRINT "#"; D1;
630 IF D1 = W THEN 660
640 NEXT I
650 IF N1 = 1 THEN 720
660 V1 = 4
670 GOSUB 7500
680 PRINT "#"; N1;
690 X = N1
700 V1 = 6
710 GOSUB 7500
720 PRINT "ARE WHERE YOU CAN GO"
730 PRINT "WHERE NEXT";
740 INPUT D1
750 IF D1 = N1 THEN 730
760 IF D1 <> X THEN 800
770 V1 = 4
780 GOSUB 7500
790 GOTO 560
800 V1 = 6
810 GOSUB 7500
820 IF V2 > 0 THEN 850
830 PRINT "ILLEGAL MOVE"
840 GOTO 730
850 IF N1 = W THEN 940
860 D1 = 9999
870 V1 = 7
880 GOSUB 7500
890 IF D1 <> 9999 THEN 560
900 PRINT "DEADEND"
910 V1 = 4
920 GOSUB 7500
930 GOTO 730
940 PRINT
950 PRINT
960 PRINT TAB(10); "!!!   SUNLIGHT   !!!"
970 PRINT
980 PRINT TAB(10); "!!!  FRESH  AIR  !!!"
990 PRINT
1000 PRINT TAB(10); "...  REPORTERS   ..."
1010 PRINT
1020 PRINT
1030 PRINT "WELL, AT LEAST YOU'RE OUT"
1040 IF G > 1 THEN 1100
1050 PRINT
1060 PRINT "CONGRATULATIONS, INTREPID EXPLORER"
1070 PRINT "OF THE FEARSOME CAVES.  IF YOU WANT TO"
1080 PRINT "EXPLORE AGAIN, YOU CAN CHOOSE A HARDER SET"
1090 PRINT "OF CAVES OR ANOTHER ONE JUST AS DIFFICULT"
1100 PRINT
1110 PRINT "AGAIN (1=YES, 0=NO)";
1120 INPUT X
1130 IF X = 0 THEN 1210
1140 G2 = G2 + 1
1150 IF G = 3 THEN 160
1160 PRINT "HARDER";
1170 INPUT X
1180 IF X = 0 THEN 160
1190 G = G + 1
1200 GOTO 160
1210 STOP: 'CHAIN "CAVESM"
1360 REM *** ADD DAUGHTERS TO CURRENT NODE
1370 V1 = 1
1380 FOR J1 = 1 TO 3
1390 IF R = 50 THEN 1440
1400 D1 = R
1410 GOSUB 7500
1420 R = R + 1
1430 NEXT J1
1440 RETURN
1450 REM *** CREATE DAUGHTERS, AND RETURN
1460 GOSUB 1360
1470 V1 = 4
1480 GOSUB 7500
1490 RETURN
1500 REM *** PICK A DAUGHTER NODE AT RANDOM AND GO DOWN
1510 V1 = 7
1520 FOR J1 = 1 TO INT(RND(1) * 3) + 1
1530 GOSUB 7500
1540 IF D1 = 9999 THEN 1530
1550 NEXT J1
1560 V1 = 6
1570 GOSUB 7500
1580 D1 = 9999
1590 V1 = 7
1600 GOSUB 7500
1610 IF D1 = 9999 THEN 1650
1620 V1 = 4
1630 GOSUB 7500
1640 GOTO 1510
1650 RETURN
7400 REM *** TREE SUBROUTINES BEGIN ***
7402 REM SACRED NAMES: N(127),P(385),L(99),N9,P1,P2,P3,P4,P5,P9,
7404 REM               L1,FND,FNN,FNU
7406 REM ARGUMENT: V1,V2,N1,D1
7408 REM N1 IS NAME OF CURRENT NODE (FOR TOP NODE, N1=1)
7410 REM D1 IS NAME OF DAUGHTER NODE
7412 REM NODE NAMES CAN BE ANY NUMBER EXCEPT 9999
7414 REM
7416 REM V1=  0 INITIALIZE TREE; MAKE #1 THE CURRENT NODE
7418 REM      1 ADD D1 AS NEXT DAUGHTER TO CURRENT NODE
7420 REM      2 CUT D1 OFF FROM CURRENT NODE (BUT LEAVE IT AND
7422 REM        ALL BELOW IT)
7424 REM      3 PRUNE D1 (AND ALL BELOW IT) FROM TREE
7426 REM      4 GO UP FROM N1 TO MOTHER NODE (UNLESS AT TOP)
7428 REM      5 GO UP FROM N1 THE WAY YOU CAME (UNLESS AT TOP)
7430 REM      6 GO DOWN TO D1 FROM CURRENT NODE (IF LEGAL)
7432 REM      7 RETURN WITH NEXT DAUGHTER NODE (AFTER D1) IN D1
7434 REM        IF NO MORE, D1=9999
7436 REM        IF D1 ISN'T A DAUGHTER OF CURRENT NODE, RETURN WITH
7438 REM        FIRST DAUGHTER NODE
7440 REM      8 RESET CURRENT NODE TO D1, WHEREVER IT IS IN TREE
7442 REM
7444 REM V2=  2  INSTRUCTION CARRIED OUT, BUT D1 IS A NEW NODE NAME
7446 REM      1  INSTRUCTION CARRIED OUT
7448 REM     -1 CANNOT MOVE UP (OR DOWN) BECAUSE ON TOP (BOTTOM)
7450 REM     -2 MORE THAN 127 NODES
7452 REM     -3 TOO MANY CONNECTIONS
7454 REM     -4 D1 IS NOT A NODE NAME
7480 DIM SHARED N(127), P(385), L(99)
7482 ' DEF FNP(X) = INT(P(X) / 512)
7484 ' DEF FNN(X) = P(X) - INT(P(X) / 512) * 512
7500 REM ***ENTRY POINT FOR TREE SUBROUTINES
7505 V2 = 1
7510 ON V1 + 1 GOSUB 7525, 7600, 7700, 7800, 7900, 8000, 8100, 8200, 8300
7515 N1 = N(P1)
7520 RETURN
7525 REM *** V1=0 ***
7526 REM *** INITIALIZE TREE
7530 N(1) = 1
7531 FOR P1 = 2 TO 127
7532 N(P1) = 9999
7533 NEXT P1
7535 N9 = 2
7540 FOR P1 = 2 TO 384
7545 P(P1) = P1 + 1
7550 NEXT P1
7551 P(1) = 0
7552 P(127) = 0
7553 P(385) = 0
7555 P1 = 1
7557 P2 = 1
7560 P9 = 128
7565 L1 = 1
7570 RETURN
7600 REM *** V1=1 ***
7601 REM *** ADD D1 AS THE NEXT DAUGHTER TO CURRENT NODE
7602 GOSUB 8400
7604 IF P2 > 0 THEN 7622
7606 IF N9 <> 0 THEN 7612
7608 V2 = -2
7610 RETURN
7612 V2 = 2
7614 N(N9) = D1
7618 P2 = N9
7620 N9 = P(N9)
7621 P(P2) = 0
7622 P3 = P1
7624 IF FNN(P3) = 0 THEN 7632
7626 P3 = FNN(P3)
7628 IF FNP(P3) = P2 THEN 7646
7630 GOTO 7624
7632 IF P9 <> 0 THEN 7638
7634 V2 = -3
7636 RETURN
7638 P(P3) = P(P3) + P9
7640 P3 = P9
7642 P9 = P(P9)
7644 P(P3) = P2 * 512
7646 IF FNP(P2) <> 0 THEN 7650
7648 P(P2) = P(P2) + P1 * 512
7650 RETURN
7700 REM *** V1=2 ***
7701 REM *** CUT D1 OFF FROM CURRENT NODE (BUT LEAVE IT  & ALL BELOW)
7702 GOSUB 8400
7704 IF V2 < 0 THEN 7740
7706 P3 = P1
7708 P4 = P3
7710 P3 = FNN(P3)
7712 IF FNP(P3) = P2 THEN 7718
7714 IF P3 = 100 THEN 7740
7716 GOTO 7708
7718 IF FNP(P2) <> P1 THEN 7734
7720 P(P2) = P(P2) - P1 * 512
7734 P(P4) = P(P4) + FNN(P3) - P3
7736 P(P3) = P9
7738 P9 = P3
7740 RETURN
7800 REM *** V1=3 ***
7801 REM *** PRUNE D1 AND ALL BELOW IT
7802 GOSUB 8400
7804 IF V2 < 0 THEN 7899
7806 REM * ADD TO FREE LISTS ALL N AND P ENTRIES IN SUBTREE
7808 IF FNN(P2) <> 0 THEN 7818
7810 N(P2) = 9999
7812 P(P2) = N9
7814 N9 = P2
7816 GOTO 7870
7818 P(P2) = FNN(P2)
7820 N(P2) = 9999
7822 P3 = FNN(P2)
7823 IF P3 = 0 THEN 7856
7824 P4 = FNP(P3)
7826 IF N(P4) = 9999 THEN 7844
7828 IF FNP(P4) = 0 THEN 7838
7830 REM DROP DOWN TO DAUGHTER
7832 P(P4) = P(P4) + (P2 - FNP(P4)) * 512
7834 P2 = P4
7836 GOTO 7820
7838 N(P4) = 9999
7840 P(P4) = N9
7842 N9 = P4
7844 REM MOVE TO NEXT DAUGHTER
7845 P4 = FNN(P3)
7846 IF P4 = 0 THEN 7851
7847 P(P3) = P(P4)
7848 P(P4) = P9
7849 P9 = P4
7850 GOTO 7824
7851 P(P3) = P9
7852 P9 = P3
7856 REM GO UP TO MOTHER NODE
7858 P3 = FNP(P2)
7860 P(P2) = N9
7862 N9 = P2
7864 P2 = P3
7866 IF P2 <> 0 THEN 7822
7870 REM * DELETE ALL REFERENCES TO PRUNED NODES
7872 FOR P2 = 1 TO 127
7874 IF N(P2) = 9999 THEN 7898
7876 REM LOOK AT ALL DAUGHTERS
7878 P3 = P2
7880 P4 = P3
7882 P3 = FNN(P3)
7884 IF P3 = 0 THEN 7898
7886 IF N(FNP(P3)) <> 9999 THEN 7880
7888 P(P4) = P(P4) + FNN(P3) - FNN(P4)
7890 P(P3) = P9
7892 P9 = P3
7894 P3 = FNN(P4)
7896 GOTO 7884
7898 NEXT P2
7899 RETURN
7900 REM *** V1=4 ***
7901 REM *** GO UP FROM N1 TO ITS MOTHER NODE (UNLESS AT TOP)
7905 IF FNP(P1) = 0 THEN 7935
7910 P2 = P1
7915 D1 = N1
7920 P1 = FNP(P1)
7925 L1 = L1 - 1: IF L1 < 1 THEN L1 = 1
7930 RETURN
7935 V2 = -1
7940 RETURN
8000 REM *** V1=5 ***
8001 REM *** GO UP THE WAY YOU CAME (UNLESS AT TOP)
8005 IF L1 > 1 THEN 8020
8010 V2 = -1
8015 RETURN
8020 L1 = L1 - 1
8021 IF N(L(L1)) = 9999 THEN 8010
8022 P2 = P1
8025 P1 = L(L1)
8027 D1 = N1
8030 RETURN
8100 REM *** V1=6 ***
8101 REM *** GO DOWN TO D1 FROM CURRENT NODE (IF LEGAL)
8115 GOSUB 8400
8120 IF V2 < 0 THEN 8150
8125 P3 = P1
8127 P3 = FNN(P3)
8130 IF P3 = 0 THEN 8145
8135 IF FNP(P3) = P2 THEN 8155
8140 GOTO 8127
8145 V2 = -1
8150 RETURN
8155 L(L1) = P1
8160 P1 = P2
8165 L1 = L1 + 1
8170 RETURN
8200 REM *** V1=7 ***
8201 REM *** RETURN WITH NEXT DAUGHTER NODE IN D1 (IF NO MORE, D1=9999)
8205 IF FNN(P1) = 0 THEN 8275
8210 GOSUB 8400
8220 P3 = P1
8225 P3 = FNN(P3)
8230 IF P3 = 0 THEN 8245
8235 IF FNP(P3) = P2 THEN 8250
8240 GOTO 8225
8245 P3 = P1
8250 P2 = FNN(P3)
8255 IF P2 = 0 THEN 8275
8257 P2 = FNP(P2)
8260 D1 = N(P2)
8265 RETURN
8275 D1 = 9999
8280 RETURN
8300 REM *** V1=8 ***
8301 REM **: RESET TO NODE D1
8310 GOSUB 8400
8320 IF V2 < 0 THEN 8350
8330 P1 = P2
8340 L1 = L1
8350 RETURN
8400 REM *** FIND POINTER FOR D1
8402 IF D1 = 9999 THEN 8440
8403 IF P2 < 1 OR P2 > 127 THEN 8406
8404 IF N(P2) = D1 THEN 8460
8406 IF D1 < 1 OR D1 > 127 THEN 8414
8408 IF N(D1) <> D1 THEN 8414
8410 P2 = D1
8412 RETURN
8414 FOR P2 = 1 TO 127
8420 IF N(P2) = D1 THEN 8460
8430 NEXT P2
8440 V2 = -4
8450 P2 = -1
8460 RETURN

FUNCTION FNP (X)
  FNP = INT(P(X) / 512)
END FUNCTION

FUNCTION FNN (X)
  FNN = P(X) - INT(P(X) / 512) * 512
END FUNCTION

