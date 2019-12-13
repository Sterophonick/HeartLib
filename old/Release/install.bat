@echo off
copy /b libheart.a C:\devkitPro\devkitARM\arm-none-eabi\lib
copy libheart.h C:\devkitPro\devkitARM\arm-none-eabi\include
copy agbtypes.h C:\devkitPro\devkitARM\arm-none-eabi\include
mkdir C:\devkitPro\devkitARM\hrt_system\
copy hrt_system C:\devkitPro\devkitARM\hrt_system\
copy tools C:\devkitPro\devkitARM\bin
pause