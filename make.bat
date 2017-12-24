del *.o
C:\Devkitpro\devkitarm\bin\arm-none-eabi-gcc -c -g -MMD -MP -MF -O3 -mlong-calls -fomit-frame-pointer -mcpu=arm7tdmi -marm -mthumb -mthumb-interwork -ffast-math -Wall -mlong-calls -fverbose-asm libheart.c
C:\Devkitpro\devkitarm\bin\arm-none-eabi-gcc -c -g -MMD -MP -MF -O3 -mlong-calls -fomit-frame-pointer -mcpu=arm7tdmi -marm -mthumb -mthumb-interwork -ffast-math -Wall -mlong-calls -fverbose-asm libgbfs.c
C:\Devkitpro\devkitarm\bin\arm-none-eabi-ar -r libheart.a libheart.o libgbfs.o
pause