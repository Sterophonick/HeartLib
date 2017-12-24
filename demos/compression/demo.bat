@echo off
gbfs tutor.gbfs titlescreen.lz
C:\devkitPro\devkitARM\bin\arm-none-eabi-gcc -g -MMD -MP -MF -Wall -Og -O1 -O2 -O3 -O -Os -ffast-math -mlong-calls -mcpu=arm7tdmi -mtune=arm7tdmi -fomit-frame-pointer -marm -mthumb -mthumb-interwork -c main.c
C:\devkitPro\devkitARM\bin\arm-none-eabi-gcc -specs=gba.specs -mthumb -mthumb-interwork main.o libheart.a -o main.elf
C:\devkitPro\devkitARM\bin\arm-none-eabi-objcopy -O binary main.elf main.gba
padbin 256 main.gba
copy /b main.gba+tutor.gbfs compression.gba
C:\devkitPro\devkitARM\bin\gbafix compression.gba
del main.gba *.o *.elf
pause