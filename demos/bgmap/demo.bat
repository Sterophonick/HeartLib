@echo off
C:\devkitPro\devkitARM\bin\arm-none-eabi-gcc -g -MMD -MP -MF -Wall -Og -O1 -O2 -O3 -O -Os -ffast-math -mlong-calls -mcpu=arm7tdmi -mtune=arm7tdmi -fomit-frame-pointer -marm -mthumb -c main.c
C:\devkitPro\devkitARM\bin\arm-none-eabi-gcc -specs=gba.specs -mthumb -mthumb-interwork main.o libheart.a -o main.elf
C:\devkitPro\devkitARM\bin\arm-none-eabi-objcopy -O binary main.elf main.gba
C:\devkitPro\devkitARM\bin\gbafix main.gba
pause