110 CALL CLEAR
120 T=375
130 CALL SOUND(2*T,494,2,392,6,165,8)
140 CALL CHAR(152,"0001010303FF7F1F")
150 CALL CHAR(153,"07070F1F1C30304")
160 CALL SCREEN(2)
170 CALL CHAR(154,"8080C0C0E0FFFEF8")
180 CALL CHAR(155,"E0E0F078180C0C02")
190 CALL CHAR(33,"0000000515DF7F78")
200 CALL SOUND(T,440,2,370,6,165,9)
210 CALL CHAR(34,"02066660606773F1")
220 CALL CHAR(35,"0000000040C0E0F")
230 CALL SOUND(2*T,392,2,330,6,165,8)
240 CALL CHAR(36,"E0C0D29293333373")
250 CALL CHAR(37,"0107010001010101")
260 CALL CHAR(38,"50F0C0103080B0B0")
270 CALL CHAR(39,"01000103070704")
280 CALL CHAR(40,"F000808898C86")
290 PRINT TAB(10);"!"
300 CALL SOUND(T,330,2,196,6,165,9)
310 CALL CHAR(41,"7B7B7BFBFBFBFBFB")
320 CALL CHAR(42,"808080E0FCF8F8F")
330 CALL SOUND(T,370,2,311,6,123,9)
340 CALL CHAR(43,"0303070604010307")
350 CALL CHAR(44,"90000020F0F0F0F")
360 CALL SOUND(T,392,2,311,7,123,9)
370 CALL CHAR(45,"03070707070F0F0F")
380 CALL CHAR(46,"80C0C0C0E0E0E0F")
390 CALL SOUND(T,370,2,311,6,123,8)
400 CALL CHAR(47,"0000080818183839")
410 CALL CHAR(48,"F9F9F8F8F9FDFDFC")
420 CALL SOUND(2*T,330,2,196,6,165,8)
430 PRINT TAB(10);CHR$(34)
440 PRINT TAB(8);"# $  %&"
450 CALL CHAR(49,"F6E6E040089CFEFE")
460 CALL CHAR(50,"070707000E0F01")
470 CALL CHAR(51,"F0F0F8FC7E7C3911")
480 CALL CHAR(52,"00000000001C3F8F")
490 PRINT TAB(7);"'( )* +,"
500 CALL CHAR(53,"000000000030F8FC")
510 CALL CHAR(54,"000001030707071B")
520 CALL CHAR(55,"1F9FCFC7E7F3F9FC")
530 CALL SOUND(2*T,494,2,392,6,165,8)
540 CALL CHAR(56,"F0F0E6F0E0C3CF1F")
550 CALL CHAR(57,"39190949E1F1F9F9")
560 CALL CHAR(58,"FDFDFDFDFDFDFDFD")
570 CALL CHAR(59,"7C0CE0FCFFFFFFFF")
580 CALL CHAR(60,"000103030383C7C7")
590 CALL SOUND(T,440,2,370,6,165,9)
600 CALL CHAR(61,"E7F3F8FCFEFFFFFF")
610 CALL CHAR(62,"C0E6FE7E3F1F8FC7")
620 CALL SOUND(2*T,392,2,330,6,165,8)
630 CALL CHAR(63,"070F00383F000F3F")
640 CALL CHAR(64,"FFFFFF3F8000FEFE")
650 CALL CHAR(65,"80C0C0D0102C4C1C")
660 PRINT TAB(7);"-./01 2345"
670 CALL CHAR(66,"03030703091C1F3F")
680 CALL CHAR(67,"FCFEFFFFFF1FC0CE")
690 CALL SOUND(T,330,2,196,6,165,9)
700 CALL CHAR(68,"FCFEFFFFFF1FC0CE")
710 CALL CHAR(69,"0000010101091939")
720 CALL SOUND(T,370,2,311,6,123,8)
730 CALL CHAR(70,"7BF9F9F8F8FCFEFF")
740 CALL CHAR(71,"F8F0E0C3070F1F3F")
750 CALL SOUND(T,392,2,311,5,123,8)
760 CALL CHAR(72,"9F9F9F9F9F9F9F9F")
770 CALL CHAR(73,"F9F9F9F1F1F1F3F3")
780 CALL SOUND(T,370,2,311,6,123,8)
790 CALL CHAR(74,"FFFFFFFFFFFF")
800 CALL CHAR(75,"E7E7E7EFEF870723")
810 CALL SOUND(2*T,330,2,196,6,165,8)
820 CALL CHAR(76,"FFFFFFFFFFFFFFFFF")
830 CALL CHAR(77,"E1F0F8FCFCFEFEFE")
840 CALL CHAR(78,"3F3F3F3F3F3F3F3F")
850 PRINT TAB(6);"6789:;<=>?@ABCD"
860 CALL CHAR(79,"FCF8F0E0C0C1C1C3")
870 CALL CHAR(80,"180080808")
880 CALL CHAR(81,"3F7F00007FFFFFFF")
890 CALL CHAR(82,"FF930040C0818101")
900 PRINT TAB(5);"EFGHI:JKLMNOPQRS"
910 CALL SOUND(2*T,392,4,330,8,165,10)
920 CALL CHAR(83,"38387810808")
930 CALL CHAR(84,"79F9F9F9F9710101")
940 CALL CHAR(85,"FFFFFFFEFEFCF8F")
950 PRINT TAB(5);"TUVHW:LXLYVZ[\]"
960 CALL CHAR(86,"3F7F7F7FFFFFFFFF")
970 CALL CHAR(87,"F3F3F3F3F3F3F3F3")
980 CALL SOUND(T,392,5,330,9,165,11)
990 CALL CHAR(88,"636171717078787C")
1000 CALL CHAR(89,"F7F7F7FCF8F8F1E1")
1010 CALL SOUND(2*T,440,4,370,8,147,10)
1020 CALL CHAR(90,"C28286888080802")
1030 CALL CHAR(91,"0101010303070F1F")
1040 CALL CHAR(92,"FEFCFCF8F8F8F8F")
1050 PRINT TAB(4);"^_'LHWaLbcdVeHf"
1060 CALL CHAR(93,"03030306040C18E")
1070 CALL CHAR(94,"0707070707070703")
1080 CALL SOUND(T,440,5,370,9,147,11)
1090 CALL CHAR(95,"F9F9F9F9F9F9F9F9")
1100 CALL CHAR(96,"F8F0F0F0E0E4E4C4")
1110 CALL SOUND(2*T,494,3,392,7,196,9)
1120 CALL CHAR(97,"FCFCFCFCFCFCFCFC")
1130 CALL CHAR(98,"600000030F3F3F3F")
1140 CALL CHAR(99,"3F3F1F0080E1FBFA")
1150 PRINT TAB(4);"g_hLHijLNklmno"
1160 CALL CHAR(100,"C3870F3F7F7F7F75")
1170 CALL CHAR(101,"337373F3F3F3F3F3")
1180 CALL SOUND(T,494,4,392,8,196,10)
1190 CALL CHAR(102,"F0F0E0E0C0808")
1200 CALL CHAR(103,"23236363C3C38383")
1210 CALL SOUND(T,523,2,370,6,220,8)
1220 CALL CHAR(104,"C4C68E0E0E0E0E9E")
1230 CALL CHAR(105,"E7E7E7E7E0E0E0E5")
1240 CALL SOUND(T,523,2,370,6,220,8)
1250 CALL CHAR(106,"FCFCFCFC000000F4")
1260 CALL CHAR(107,"F2F2F2F2F2E60404")
1270 CALL SOUND(T,494,2,392,6,196,8)
1280 CALL CHAR(108,"7F7FFCFCF0C1031F")
1290 CALL CHAR(109,"8F0F1F1F1F9DBC38")
1300 CALL SOUND(T,440,3,370,7,220,9)
1310 CALL CHAR(110,"F3F3F3F3F3F0F0F0")
1320 CALL CHAR(111,"9E9C98808")
1330 CALL SOUND(T,494,3,392,7,220,9)
1340 CALL CHAR(112,"070F1F3F7F7F7E7C")
1350 CALL CHAR(113,"F8F1E3C78E18")
1360 CALL SOUND(T,440,3,370,7,220,9)
1370 CALL CHAR(114,"9C9983070F1F3F7F")
1380 CALL CHAR(115,"1F1F1F000000707")
1390 CALL SOUND(2*T,392,3,330,7,247,9)
1400 CALL CHAR(116,"E5E5E50000387C78")
1410 CALL CHAR(117,"F4F4F400000C1C7C")
1420 CALL CHAR(118,"FFFFFF000000E0E")
1430 PRINT TAB(4);"pqrUstuvwxyz{"
1440 CALL CHAR(119,"3C3C3C3C3E3E3E3E")
1450 CALL CHAR(120,"C07F3F03")
1460 CALL SOUND(T,370,3,311,7,123,9)
1470 CALL CHAR(121,"FFFEFEF000010101")
1480 CALL CHAR(122,"38307070F0E0E0E")
1490 CALL SOUND(3*T,330,3,196,7,165,9)
1500 CALL CHAR(156,"FF")
1510 CALL CHAR(157,"0102040810204080")
1520 CALL CHAR(158,"8080808080808080")
1530 PRINT TAB(4);"| } ~"
1540 PRINT TAB(4);"|"
1550 CALL HCHAR(2,27,152)
1560 CALL HCHAR(3,27,153)
1570 CALL HCHAR(2,28,154)
1580 CALL HCHAR(3,28,155)
1590 CALL CHAR(123,"F87C7C3C3E1F1F0E")
1600 CALL CHAR(124,"3030303030303030")
1610 CALL CHAR(125,"FFFCFCF8F0F0E0E0")
1620 CALL SOUND(2*T,370,2,294,6,220,8)
1630 CALL CHAR(126,"707070F0F0F0F0F8")
1640 CALL CHAR(127,"F8F1F1E1E1E0E0E0")
1650 CALL CHAR(128,"FCF8F0F0F0F0F0F0")
1660 CALL HCHAR(22,11,127)
1670 CALL HCHAR(22,12,128)
1680 CALL CHAR(129,"C0C0C0C0C0C0C0C0")
1690 CALL CHAR(130,"1F1F0F0F07070703")
1700 CALL SOUND(T,440,2,262,8)
1710 CALL CHAR(131,"0103030303030303")
1720 CALL CHAR(132,"C0C0C08080800000")
1730 CALL SOUND(2*T,392,0,294,6,196,8)
1740 CALL COLOR(16,16,1)
1750 CALL CHAR(133,"0E0C1C1C383060E0")
1760 CALL CHAR(134,"0000010103030307")
1770 CALL CHAR(135,"E0C0C08080000000")
1780 CALL HCHAR(22,13,129)
1790 CALL CHAR(136,"78783C1C0C030606")
1800 CALL CHAR(137,"6060404040400000")
1810 CALL SOUND(T,392,1,294,7,196,9)
1820 CALL HCHAR(2,23,156,3)
1830 CALL VCHAR(4,28,158,5)
1840 CALL HCHAR(4,26,157)
1850 CALL HCHAR(5,25,157)
1860 CALL SOUND(2*T,392,0,294,6,196,8)
1870 CALL CHAR(138,"0303030101010000")
1880 CALL CHAR(139,"808080808080C0C0")
1890 CALL CHAR(140,"0606030C0C1C1C3C")
1900 CALL HCHAR(22,14,130)
1910 CALL HCHAR(22,16,131)
1920 CALL CHAR(141,"0103070F0F0E0E0C")
1930 CALL CHAR(141,"C0C0800000000000")
1940 CALL SOUND(T,294,1,247,6,196,8)
1950 CALL CHAR(143,"30383C3C0E000000")
1960 CALL CHAR(144,"0603030F0F070707")
1970 CALL SOUND(2*T,392,1,247,7,165,9)
1980 CALL CHAR(145,"000000000080C0E0")
1990 CALL CHAR(146,"000080C0E0E00000")
2000 CALL CHAR(147,"E0F0703800000000")
2010 CALL HCHAR(22,17,132)
2020 CALL HCHAR(22,18,133)
2030 CALL CHAR(148,"C0C0C0C0F0783C1C")
2040 CALL CHAR(149,"3C1C0E0707000000")
2050 CALL SOUND(T,330,1,262,6,131,8)
2060 CALL CHAR(150,"1C1C180800000000")
2070 CALL HCHAR(23,7,134)
2080 CALL HCHAR(23,8,135)
2090 CALL HCHAR(23,10,136)
2100 CALL HCHAR(23,11,137)
2110 CALL SOUND(2*T,392,1,294,6,165,8)
2120 CALL HCHAR(23,12,124)
2130 CALL HCHAR(23,13,129)
2140 CALL HCHAR(23,14,138)
2150 CALL HCHAR(23,15,139)
2160 CALL HCHAR(23,16,140)
2170 CALL HCHAR(23,17,141)
2180 CALL HCHAR(23,18,142)
2190 CALL HCHAR(24,6,143)
2200 CALL HCHAR(24,7,144)
2210 CALL HCHAR(24,8,145)
2220 CALL HCHAR(24,10,138)
2230 CALL HCHAR(24,11,146)
2240 CALL HCHAR(24,12,143)
2250 CALL HCHAR(24,13,147)
2260 CALL HCHAR(24,15,148)
2270 CALL HCHAR(24,16,149)
2280 CALL HCHAR(24,17,150)
2290 CALL SOUND(T/2,9999,30)
2300 CALL SOUND(2*T,392,2,294,7,165,9)
2310 CALL SOUND(T,392,4,294,9,165,11)
2320 CALL SOUND(T*2,392,2,294,7,165,9)
2330 CALL SOUND(T,294,2,247,6,196,8)
2340 CALL SOUND(2*T,392,2,247,6,165,8)
2350 CALL SOUND(T,330,2,262,6,131,8)
2360 CALL SOUND(2*T,392,2,294,6,196,8)
2370 CALL SOUND(T,9999,30)
2380 CALL SOUND(2*T,392,3,247,7,165,9)
2390 FOR C=1 TO 15
2400 CALL COLOR(C,16,1)
2410 NEXT C
2420 CALL SOUND(T,392,4,247,8,165,10)
2430 CALL SOUND(2*T,440,2,370,6,147,8)
2440 CALL SOUND(T,494,2,370,7,147,9)
2450 CALL SOUND(2*T,523,1,392,5,131,8)
2460 CALL SOUND(T,494,1,392,5,196,7)
2470 CALL SOUND(2*T,440,1,392,6,147,8)
2480 CALL SOUND(T,494,2,370,6,147,9)
2490 CALL SOUND(2*T,392,2,247,6,196,8)
2500 CALL SOUND(T,392,3,294,7,196,9)
2510 CALL SOUND(2*T,392,2,247,6,196,8)
2520 CALL SOUND(T,294,2,196,7,123,8)
2530 CALL SOUND(2*T,392,2,330,6,131,8)
2540 CALL SOUND(T,330,2,262,6,131,9)
2550 CALL SOUND(3*T,392,2,294,6,247,9)
2560 CALL COLOR(16,12,1)
2570 CALL COLOR(16,16,1)
2580 CALL KEY(0,K,S)
2590 IF S<1 THEN 2560
2600 CALL CLEAR
2610 PRINT "HAVE A HAPPY HOLIDAY SEASON!": : : : :
2620 END
