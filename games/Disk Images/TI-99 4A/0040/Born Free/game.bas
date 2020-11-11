5 REM  BORN FREE (WORDS AND MUSIC) 
6 REM  ADAPTED FROM SCREEN GEMS-COLUMBIA "BORN FREE" BY RICHARD LAMSON 3/22/81. 
10 B$(1)="AS FREE AS THE WIND BLOWS"
20 B$(2)="AND BEAUTY SURROUNDS YOU"
30 B$(3)="AND LIFE IS WORTH LIVING"
40 D$(1)="AS FREE AS THE GRASS GROWS"
50 D$(2)="THE WORLD STILL ASTOUNDS YOU"
60 D$(3)="BUT ONLY WORTH LIVING "
90 A$(1)="BORN FREE"
100 A$(2)="LIVE FREE"
110 A$(3)="BORN FREE"
330 CALL CLEAR
340 T=2500
350 F=1
360 CALL SOUND(T/4,523,2,131,2)
364 CALL CLEAR
365 PRINT A$(F)
370 CALL SOUND(T/4,523,2,196,2,165,2)
380 CALL SOUND(T/4,392,2,196,2,165,2)
390 CALL SOUND(T/4,392,2,196,2,165,2)
400 CALL SOUND(T/4,392,2,175,2,220,2)
404 CALL CLEAR
405 PRINT B$(F)
410 CALL SOUND(T/8,175,2,220,2)
420 CALL SOUND(T/8,392,2,175,2,220,2)
430 CALL SOUND(T/4,440,2,175,2,220,2)
440 CALL SOUND(T/8,392,2,175,2,220,2)
450 CALL SOUND(T/8,349,2,175,2,220,2)
460 CALL SOUND(T/4,330,2,131,2)
470 CALL SOUND(T/4,330,2,196,2,165,2)
480 CALL SOUND(T/2,262,2,196,2,165,2)
490 CALL SOUND(T/4,262,2,220,2,175,2)
494 CALL CLEAR
495 PRINT D$(F)
500 CALL SOUND(T/8,220,2,175,2)
510 CALL SOUND(T/8,392,2,220,2,175,2)
520 CALL SOUND(T/4,440,2,220,2,175,2)
530 CALL SOUND(T/8,392,2,220,2,175,2)
540 CALL SOUND(T/8,349,2,220,2,175,2)
550 CALL SOUND(T/4,494,2,165,2)
560 CALL SOUND(T/4,494,2,247,2,196,2)
570 CALL SOUND(T/4,392,2,247,2,196,2)
580 CALL SOUND(T/8,247,2,196,2)
590 CALL SOUND(T/8,330,2,247,2,196,2)
595 IF F=2 THEN 760
597 IF F=3 THEN 1200
598 CALL CLEAR
599 PRINT "   BORN FREE TO FOLLOW YOUR HEART"
600 CALL SOUND(T/4,349,2,262,2,220,2)
610 CALL SOUND(T/8,262,2,220,2)
620 CALL SOUND(T/8,349,2,262,2,220,2)
630 CALL SOUND(T/8,349,2,247,2,196,2)
640 CALL SOUND(T/8,330,2,247,2,196,2)
650 CALL SOUND(T/4,294,2,247,2,196,2)
660 CALL SOUND(T/4,262,2,196,2,165,2)
670 CALL SOUND(T/4,262,2,196,2,165,2)
680 CALL SOUND(T/4,262,2,175,2,220,2)
690 CALL SOUND(T/4,262,2,175,2,220,2)
700 CALL SOUND(T/4,349,2,247,2,196,2)
710 CALL SOUND(T/4,392,2,247,2,196,2)
720 CALL SOUND(T/4,440,2,247,2,196,2)
730 CALL SOUND(T/4,494,2,247,2,196,2)
740 F=F+1
750 GOTO 360
760 CALL CLEAR
762 PRINT "EACH TIME YOU LOOK AT A STAR"
765 CALL SOUND(3*T/8,392,2,147,2)
770 CALL SOUND(T/8,392,2,147,2)
780 CALL SOUND(T/4,392,2,220,2,175,2)
790 CALL SOUND(T/8,440,2,220,2,175,2)
800 CALL SOUND(T/8,392,2,220,2,175,2)
810 CALL SOUND(T/2,494,2,147,2)
820 CALL SOUND(T/2,494,2,196,2,247,2)
830 CALL SOUND(T/4,494,2,175,2,196,2)
840 CALL SOUND(T/2,494,2,175,2,196,2)
850 CALL SOUND(T/4,494,2,175,2,196,2)
855 CALL CLEAR
856 PRINT "STAY FREE"
860 CALL SOUND(T/4,587,2,147,2)
870 CALL SOUND(T/4,587,2,175,2,220,2)
880 CALL SOUND(T/4,440,2,175,2,220,2)
890 CALL SOUND(T/4,440,2,175,2,220,2)
900 CALL SOUND(3*T/8,440,2,175,2,196,2)
904 CALL CLEAR
906 PRINT "WHERE NO WALLS DIVIDE YOU"
910 CALL SOUND(T/8,440,2,175,2,196,2)
920 CALL SOUND(T/4,494,2,175,2,196,2)
930 CALL SOUND(T/8,440,2,175,2,196,2)
940 CALL SOUND(T/8,392,2,175,2,196,2)
950 CALL SOUND(T/2,330,2,165,2)
960 CALL SOUND(T/2,523,2,262,2,220,2)
970 CALL SOUND(3*T/8,523,2,165,2)
974 CALL CLEAR
976 PRINT "   YOU'RE FREE AS A ROARING TIDE"
980 CALL SOUND(T/8,523,2,165,2)
990 CALL SOUND(T/4,587,2,220,2,196,2)
1000 CALL SOUND(T/8,440,2,220,2,196,2)
1010 CALL SOUND(T/8,523,2,220,2,196,2)
1020 CALL SOUND(3*T/8,587,2,147,2)
1030 CALL SOUND(T/8,523,2,147,2)
1040 CALL SOUND(3*T/8,587,2,220,2,196,2)
1044 CALL CLEAR
1046 PRINT "SO THERE'S NO NEED TO HIDE"
1050 CALL SOUND(T/8,523,2,220,2,196,2)
1060 CALL SOUND(3*T/8,587,2,175,2)
1070 CALL SOUND(T/8,523,2,175,2)
1080 CALL SOUND(T/4,587,2,262,2,208,2)
1090 CALL SOUND(T/8,587,2,262,2,208,2)
1100 CALL SOUND(T/8,523,2,262,2,208,2)
1110 CALL SOUND(T/2,587,2,247,2,196,2)
1120 CALL SOUND(T/4,587,2,147,2)
1130 CALL SOUND(T/4,587,2,147,2)
1140 CALL SOUND(T/4,349,2,147,2)
1150 CALL SOUND(T/4,392,2,165,2)
1160 CALL SOUND(T/4,440,2,175,2)
1170 CALL SOUND(T/4,494,2,196,2)
1180 F=F+1
1190 GOTO 360
1200 CALL CLEAR
1204 PRINT "'CAUSE YOU'RE BORN FREE"
1206 CALL SOUND(T/2,523,2,262,2,220,2)
1210 CALL SOUND(T/4,523,2,247,2,196,2)
1220 CALL SOUND(T/4,523,2,247,2,196,2)
1230 CALL SOUND(T/4,523,2,196,2,165,2)
1240 CALL SOUND(T/4,523,2,196,2,165,2)
1250 CALL SOUND(T/4,523,2,175,2,220,2)
1260 CALL SOUND(T/4,523,2,175,2,220,2)
1270 CALL SOUND(T/2,523,2,196,2,165,2)
1280 CALL SOUND(T/2,523,2,131,2)
1330 CALL CLEAR
