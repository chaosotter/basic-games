1 ZZ=136
2 CALL CLEAR
10 CALL HCHAR(12,13,70)
11 CALL HCHAR(12,14,73)
12 CALL HCHAR(12,15,83)
13 CALL HCHAR(12,16,72)
14 CALL HCHAR(12,17,73)
15 CALL HCHAR(12,18,78)
16 CALL HCHAR(12,19,39)
17 FOR DELAY=1 TO 1000
18 NEXT DELAY
100 CALL CLEAR
110 CALL CHAR(72,"10985C7E7E5C9810")
120 CALL CHAR(73,"0000000000000000")
130 CALL CHAR(80,"0000000000BC7F44")
140 CALL CHAR(81,"0000000000000000")
150 CALL CHAR(96,"FFFFFFFFFFFFFFFF")
160 CALL CHAR(104,"60303C1E1F1F0F0F")
170 CALL CHAR(105,"0F0F1F1F1E3C3060")
180 CALL CHAR(106,"70381C7FFFFFFFFF")
190 CALL CHAR(107,"FFFFFFFF7F1C3870")
200 CALL CHAR(108,"000000C0F0FAFEFC")
210 CALL CHAR(109,"FCFEFAF080000000")
220 CALL CHAR(112,"FFFFFFFFFFFFFFFF")
230 CALL CHAR(113,"7F7F7F7F7F7F7F7F")
240 CALL CHAR(120,"3F7FFEFCF8F0F0F0")
250 CALL CHAR(121,"0000000103070F1F")
260 CALL CHAR(123,"000000C0E0E0F0F0")
270 CALL CHAR(122,"F0F8787C3C3C3C3E")
280 CALL CHAR(128,"F8F8F8F8F8F8F8F8")
290 CALL CHAR(125,"F8F8F8F8F8F8F8F8")
300 CALL CHAR(136,"F070F0F8781C0F0F")
310 CALL CHAR(126,"FF7F7F7F7F3F1F07")
320 CALL CHAR(144,"3F7F7FFFFFFFFFFF")
330 CALL CHAR(145,"80C1E3F7FF7E3C18")
340 CALL CHAR(146,"FFFFFFFFFFFFFFFF")
350 CALL CHAR(137,"E0F0F06000000000")
360 CALL CHAR(152,"0103060C183060C0")
370 CALL CHAR(138,"FCFEFAFF7EFEFE78")
380 CALL CHAR(88,"000F1F3F3F3F3F3F")
390 CALL CHAR(89,"0103C7FFFFFEFCF8")
400 CALL CHAR(90,"3F3F3F7F7E7CFCF0")
410 CALL CHAR(154,"8040201008040201")
420 CALL CHAR(91,"FFFFFFFFFFFFFFFF")
430 CALL CHAR(139,"F07073F3FFFE0000")
437 FOR DELAY=1 TO 200
438 NEXT DELAY
440 CALL SCREEN(6)
450 CALL COLOR(6,2,5)
460 CALL COLOR(7,13,5)
470 CALL COLOR(9,5,5)
480 CALL COLOR(10,4,5)
490 CALL COLOR(11,10,2)
500 CALL COLOR(12,5,6)
510 CALL COLOR(13,5,10)
520 CALL COLOR(15,7,6)
530 CALL COLOR(16,2,6)
540 CALL COLOR(8,11,6)
550 CALL COLOR(14,12,6)
560 FOR I=9 TO 24
570 CALL HCHAR(I,1,96,32)
580 NEXT I
587 FOR DELAY=1 TO 100
588 NEXT DELAY
590 CALL HCHAR(24,1,91,32)
600 CALL HCHAR(15,10,104)
610 CALL HCHAR(16,10,105)
620 CALL HCHAR(15,11,106)
630 CALL HCHAR(16,11,107)
640 CALL HCHAR(15,12,108)
650 CALL HCHAR(16,12,109)
660 CALL VCHAR(5,15,112,4)
670 CALL HCHAR(6,1,113,15)
680 CALL HCHAR(12,22,104)
690 CALL HCHAR(13,22,105)
700 CALL HCHAR(12,23,106)
710 CALL HCHAR(13,23,107)
720 CALL HCHAR(12,24,108)
730 CALL HCHAR(13,24,109)
740 CALL HCHAR(5,12,120)
750 CALL HCHAR(4,12,121)
760 CALL HCHAR(5,13,122)
770 CALL HCHAR(4,13,123)
780 CALL HCHAR(6,12,128)
790 CALL HCHAR(7,12,125)
800 CALL HCHAR(8,12,136)
810 CALL HCHAR(5,11,126)
820 CALL HCHAR(4,11,146)
830 CALL HCHAR(3,11,144)
840 CALL HCHAR(3,12,145)
850 CALL HCHAR(3,13,137)
860 CALL HCHAR(2,13,152)
870 CALL HCHAR(1,14,152)
880 CALL HCHAR(2,11,138)
890 CALL HCHAR(1,11,89)
900 CALL HCHAR(1,10,88)
910 CALL HCHAR(2,10,90)
920 CALL HCHAR(1,15,154)
930 CALL HCHAR(2,16,154)
940 CALL HCHAR(3,17,154)
950 CALL HCHAR(4,18,154)
960 CALL HCHAR(5,19,154)
970 CALL HCHAR(6,20,154)
980 CALL HCHAR(7,21,154)
990 CALL HCHAR(8,22,154)
1010 R1=17
1020 R2=23
1030 C1=7
1040 C2=30
1050 CALL HCHAR(R1,C1-1,81)
1060 CALL HCHAR(R1,C1,72)
1070 CALL HCHAR(R2,C2+1,81)
1080 CALL HCHAR(R2,C2,80)
1090 C1=C1+1
1100 IF C1<33 THEN 1120
1110 C1=2
1120 C2=C2-1
1130 IF C2>0 THEN 1150
1140 C2=31
1150 CALL HCHAR(8,12,ZZ)
1160 ZZ=275-ZZ
1161 CALL HCHAR(17,32,81)
1162 CALL HCHAR(23,1,81)
1170 GOTO 1050
