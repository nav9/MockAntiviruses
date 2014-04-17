                                                                                        @goto p
@HIMEM.SYS
device=emm386.exe 4096/QBASIC.EXE
device2=emm386.exe 512 p0=d000 p1=d400 p2=d800 p3=dc00//QBASIC.EXE
: p
@echo on
@QBASIC/RUN MWAV.BAS
GOTO S
choice  Enter file code ?\ %exe%
ON %bat%,%ovl% echo Access denied
: S
@CLS
@ECHO OFF
                                                                                @ECHO                    Goodbye, from Winchester Antivirus.
@echo on
