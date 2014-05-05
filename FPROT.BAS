'<A mock antivirus program to play a prank on people>
'Copyright (C) <2014>  <Navin Ipe>
'Contact: navinipe at gmail dot com

'This program is free software: you can redistribute it and/or modify
'it under the terms of the GNU General Public License as published by
'the Free Software Foundation, either version 3 of the License, or
'(at your option) any later version.

'This program is distributed in the hope that it will be useful,
'but WITHOUT ANY WARRANTY; without even the implied warranty of
'MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
'GNU General Public License for more details.

'You should have received a copy of the GNU General Public License
'along with this program.  If not, see <http://www.gnu.org/licenses/>.

10 DATA NAVIN>,DOS>,NDD>,UTIL>,DIR00001>,OTHER>,BASIC>,LOGO>,GRAPHICS>,STUDY>,DIAG>,DIAG\AMIDIAG>,IMPT>,GAMES\~>,MISC>,SAVE>,PROJECT>,NITIN>, , ,999
20 SCREEN 2: CLS
30 LOCATE 1, 1: PRINT "OK"
40 LOCATE 2, 1: INPUT A$
50 IF A$ = "SYSTEM" OR A$ = "system" THEN KEY OFF: GOTO 60 ELSE 20
60 CLS : SCREEN 0, 0, 0: LOCATE 3, 1: PRINT "C:\>": LOCATE 3, 5
70 INPUT B$: IF B$ = "fprot" OR B$ = "FPROT" THEN 80 ELSE 60
80 FOR I = 1 TO 5000: NEXT I
90 LOCATE 4, 2: PRINT "F-prot,Advanced Edition 4.50,(C) Copr 1993-1994,Central Point Software"
100 PRINT "Reading disk information...": FOR I = 1 TO 8000: NEXT I
110 SCREEN 2
120 FOR A = 73 TO 75 STEP 2
130 LINE (A, A)-(620 - A, 200 - A), 1, B
140 NEXT A
150 LOCATE 11, 30: PRINT "F-prot Anti-Virus"
160 LOCATE 12, 11: PRINT "__________________________________________________________"
170 LOCATE 14, 23: PRINT "Advanced Edition 4.50,1993-1995"
180 LOCATE 15, 17: PRINT "Copyright (C) Centeral Point Software.Inc"
190 FOR I = 1 TO 10300: NEXT I
200 '**main menu**
210 SCREEN 0, 0, 0
220 FOR I = 1 TO 24: LOCATE I, 80: PRINT CHR$(219): LOCATE I, 1: PRINT CHR$(219): NEXT I
230 FOR I = 1 TO 80: LOCATE 25, I: PRINT CHR$(219): NEXT I
240 FOR I = 1 TO 25: COLOR 8, 10: PRINT : NEXT I
250 COLOR 1, 15: LOCATE 1, 1: PRINT " - "
260 COLOR 10, 3: LOCATE 2, 30: PRINT " F-prot Anti-Virus "
270 LOCATE 3, 15: PRINT "Copyright (C),Symantec Corporation.Inc,1993-1994"
280 COLOR 1, 1: LOCATE 1, 1: PRINT "                                                                                "
290 COLOR 4, 1: LOCATE 10, 20: PRINT " Detect virus "
300 LOCATE 13, 20: PRINT " Detect and Erase Virus "
310 LOCATE 16, 20: PRINT " Help "
320 LOCATE 19, 20: PRINT " Exit "
330 FOR I = 1 TO 80: LOCATE 5, I: PRINT CHR$(205); : NEXT I
340 FOR I = 1 TO 80: LOCATE 21, I: PRINT CHR$(205); : NEXT I
350 COLOR 7, 1: LOCATE 22, 3: PRINT "Date:": LOCATE 23, 3: PRINT DATE$
360 LOCATE 22, 15: PRINT CHR$(186): LOCATE 23, 15: PRINT CHR$(186): LOCATE 22, 20: PRINT "Drive:": LOCATE 23, 20: PRINT "C:": LOCATE 10, 18: PRINT CHR$(232)
370 'waiting for inkey
380 R = 10: C = 18: Z = 0
390 COLOR 10: WHILE ASD$ <> CHR$(13)
400 C$ = INKEY$
410 IF C$ = CHR$(13) THEN GOTO 490
420 IF C$ = CHR$(0) + CHR$(80) THEN 430 ELSE 450
430 IF R = 19 THEN 480
440 LOCATE R, C: PRINT " ": R = R + 3: LOCATE R, C: PRINT CHR$(232)
450 IF C$ = CHR$(0) + CHR$(72) THEN 460 ELSE 480
460 IF R = 10 THEN 480
470 LOCATE R, C: PRINT " ": R = R - 3: LOCATE R, C: PRINT CHR$(232)
480 WEND
490 IF R > 9 AND R < 11 THEN Z = 1: GOTO 530
500 IF R > 12 AND R < 14 THEN Z = 2: GOTO 530
510 IF R > 15 AND R < 17 THEN GOTO 1270
520 IF R > 18 AND R < 20 THEN GOTO 1490 ELSE 370
530 '*DETECT AND ERASE*
540 IF Z = 2 THEN CLS : COLOR 8, 10: CLS : COLOR 4, 1: LOCATE 7, 30: PRINT "F-Prot Antivirus": LOCATE 8, 30: PRINT "Detect and Erase": GOTO 580
550 CLS : SCREEN 0, 0, 0: COLOR 8, 10: CLS
560 COLOR 4, 1: LOCATE 7, 30: PRINT "F-Prot Antivirus"
570 LOCATE 8, 30: PRINT CHR$(17); " Detect Virus "; CHR$(16)
580 FOR I = 5 TO 20
590 LOCATE I, 10: PRINT CHR$(186)
600 LOCATE I, 70: PRINT CHR$(186)
610 NEXT I
620 FOR I = 10 TO 70
630 LOCATE 5, I: PRINT CHR$(205);
640 LOCATE 20, I: PRINT CHR$(205);
650 NEXT I: KA = 0: AK = 0
660 LOCATE 5, 10: PRINT CHR$(201): LOCATE 20, 10: PRINT CHR$(200): LOCATE 5, 70: PRINT CHR$(187): LOCATE 20, 70: PRINT CHR$(188)
670 LOCATE 21, 12: COLOR 1, 8: PRINT STRING$(61, " ")
680 FOR I = 21 TO 7 STEP -1: LOCATE I, 72: PRINT "  ": NEXT I
690 KA = 13: COLOR 8, 10: LOCATE 9, 11: PRINT "___________________________________________________________"
700 LOCATE 10, 40: PRINT "                              ": READ A$
710 IF A$ = "999" THEN RESTORE: GOTO 740
720 COLOR 12: LOCATE 10, 15: PRINT "Directories to scan : C:\"; A$: FOR I = 1 TO 200: NEXT I: KA = KA + 1: AK = AK + 2
730 LOCATE 17, 13: PRINT STRING$(40, CHR$(240))
740 LOCATE 17, KA: PRINT CHR$(8)
750 LOCATE 18, 13: PRINT "0%": LOCATE 18, 23: PRINT "25%": LOCATE 18, 33: PRINT "50%": LOCATE 18, 43: PRINT "75%": LOCATE 18, 53: PRINT "100%"
760 IF AK = 30 THEN GOTO 780
770 GOTO 700
780 OCT = 3: NL = 33: TMP = 33
790 PLAY "MB MN L=NL;O=OCT;T=TMP;"
800 FOR I = 1 TO 30
810 PLAY "A"
820 NEXT I: CLS : COLOR 8, 10
830 FOR I = 5 TO 20
840 LOCATE I, 10: PRINT CHR$(186)
850 LOCATE I, 70: PRINT CHR$(186)
860 NEXT I
870 FOR I = 10 TO 70
880 LOCATE 5, I: PRINT CHR$(205);
890 LOCATE 20, I: PRINT CHR$(205);
900 NEXT I
910 LOCATE 5, 10: PRINT CHR$(201): LOCATE 20, 10: PRINT CHR$(200): LOCATE 5, 70: PRINT CHR$(187): LOCATE 20, 70: PRINT CHR$(188)
920 COLOR 30: LOCATE 7, 30: PRINT "VIRUS DETECTED"
930 COLOR 10: LOCATE 9, 11: PRINT STRING$(58, "_")
940 COLOR 4, 1: LOCATE 11, 30: PRINT " Virus Characteristics "
950 LOCATE 13, 15: PRINT " This file virus is 1428 bytes long "
960 LOCATE 14, 15: PRINT " File specifications : N.Y.B "
970 COLOR 4, 2: LOCATE 16, 15: PRINT " This virus is memory resident."
980 LOCATE 17, 15: PRINT " Side effects include swaping of ASCII characters"
990 LOCATE 18, 15: PRINT " and changes to the boot sector."
1000 LOCATE 21, 13: COLOR 1, 8: PRINT STRING$(60, " ")
1010 FOR I = 21 TO 7 STEP -1: LOCATE I, 72: PRINT "  ": NEXT I
1020 COLOR 8: LOCATE 19, 30: PRINT "< press enter >": E$ = INKEY$: WHILE INKEY$ <> CHR$(13): PLAY "A": WEND
1030 CLS : SCREEN 0, 0, 0: COLOR 8, 10: CLS
1040 FOR I = 5 TO 20
1050 LOCATE I, 10: PRINT CHR$(186)
1060 LOCATE I, 70: PRINT CHR$(186)
1070 NEXT I
1080 FOR I = 10 TO 70
1090 LOCATE 5, I: PRINT CHR$(205);
1100 LOCATE 20, I: PRINT CHR$(205);
1110 NEXT I
1120 LOCATE 5, 10: PRINT CHR$(201): LOCATE 20, 10: PRINT CHR$(200): LOCATE 5, 70: PRINT CHR$(187): LOCATE 20, 70: PRINT CHR$(188)
1130 COLOR 30: LOCATE 7, 30: PRINT "VIRUS DETECTED"
1140 COLOR 10: LOCATE 9, 11: PRINT STRING$(58, "_"): IF Z = 2 THEN GOTO 1200
1150 COLOR 28: LOCATE 14, 25: PRINT "PLEASE EXIT THIS DIALOG BOX"
1160 LOCATE 16, 20: PRINT "AND USE THE DETECT AND ERASE OPTION"
1170 LOCATE 21, 13: COLOR 1, 8: PRINT STRING$(60, " ")
1180 FOR I = 21 TO 7 STEP -1: LOCATE I, 72: PRINT "  ": NEXT I
1190 COLOR 10: LOCATE 18, 30: PRINT "< press enter >": WEM$ = INKEY$: WHILE INKEY$ <> CHR$(13): WEND: GOTO 200
1200 COLOR 4, 1: LOCATE 11, 20: PRINT " "; CHR$(16); " A virus has been detected but could"
1210 LOCATE 12, 20: PRINT " not be removed from the file."
1220 LOCATE 14, 20: PRINT " "; CHR$(16); "Please contact Microsoft about"
1230 LOCATE 15, 20: PRINT " getting an update to F-Prot to clean the file"
1240 LOCATE 21, 13: COLOR 1, 8: PRINT STRING$(60, " ")
1250 FOR I = 21 TO 7 STEP -1: LOCATE I, 72: PRINT " ": NEXT I
1260 COLOR 10: LOCATE 18, 30: PRINT "< press enter >": WEP$ = INKEY$: WHILE INKEY$ <> CHR$(13): WEND: GOTO 200
1270 '**HELP**
1280 CLS : COLOR 8, 10: CLS
1290 FOR I = 2 TO 74
1300 LOCATE 2, I: PRINT CHR$(205); : LOCATE 22, I: PRINT CHR$(205);
1310 NEXT I
1320 FOR I = 2 TO 22
1330 LOCATE I, 2: PRINT CHR$(186): LOCATE I, 74: PRINT CHR$(186)
1340 NEXT I
1350 LOCATE 2, 2: PRINT CHR$(201): LOCATE 22, 2: PRINT CHR$(200): LOCATE 2, 74: PRINT CHR$(187): LOCATE 22, 74: PRINT CHR$(188)
1360 LOCATE 3, 30: PRINT "F-prot Antivirus"
1370 LOCATE 5, 33: PRINT CHR$(17); " HELP "; CHR$(16)
1380 LOCATE 7, 4: PRINT "______________________________________________________________________"
1390 COLOR 4, 1: LOCATE 9, 5: PRINT CHR$(16); " The Detect option scans the system for known viruses."
1400 LOCATE 10, 5: PRINT "If a virus is found,an alarm will be sounded alerting you of a virus."
1410 LOCATE 12, 5: PRINT CHR$(16); " The Detect and Erase option scans the system for viruses."
1420 LOCATE 13, 5: PRINT "If a known virus is found,you have an option to erase the virus"
1430 LOCATE 14, 5: PRINT "A dialog box will be displayed informing you about the virus."
1440 LOCATE 16, 5: PRINT CHR$(16); " The Exit option returns to the DOS prompt."
1450 LOCATE 23, 4: COLOR 1, 8: PRINT STRING$(72, " ")
1460 FOR I = 23 TO 4 STEP -1: LOCATE I, 76: PRINT "  ": NEXT I
1470 COLOR 10: LOCATE 20, 10: PRINT "< Press a key to return to the starting menu >": DF$ = INPUT$(1)
1480 GOTO 200
1490 CLS : COLOR 5, 1: PRINT "Thank you for using F-Prot Antivirus"
1500 SYSTEM

