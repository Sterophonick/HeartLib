@echo off
C:\devkitPro\devkitARM\bin\arm-none-eabi-gcc -g -MMD -MP -MF -Wall -fno-strict-aliasing -O2 -ffast-math -mlong-calls -mcpu=arm7tdmi -mtune=arm7tdmi -fomit-frame-pointer -marm -mthumb -mthumb-interwork -c main.c
C:\devkitPro\devkitARM\bin\arm-none-eabi-gcc -O2 -MMD -MP -MF -Wall -specs=gba.specs -ffast-math -mlong-calls -mcpu=arm7tdmi -mtune=arm7tdmi -fomit-frame-pointer -marm -mthumb -mthumb-interwork main.o libheart.a -o main.elf
C:\devkitPro\devkitARM\bin\arm-none-eabi-objcopy -O binary main.elf main.gba
C:\devkitPro\devkitARM\bin\gbafix main.gba
pause