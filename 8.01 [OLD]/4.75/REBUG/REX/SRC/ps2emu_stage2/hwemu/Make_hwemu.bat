@echo off
cls

set PS3SDK=/c/PSDK3v2
set WIN_PS3SDK=C:/PSDK3v2
set PS3DEV=%PS3SDK%/ps3dev2
set PATH=%WIN_PS3SDK%/mingw/msys/1.0/bin;%WIN_PS3SDK%/mingw/bin;%PS3DEV%/ppu/bin;
set CYGWIN=nodosfilewarning

if not exist ..\..\..\BIN mkdir ..\..\..\BIN
rm -f *.o *.elf *.bin *.map ../../ps2emu/src/*.o ../../lv1/src/*.o ../../debug/src/*.o
make all

pause