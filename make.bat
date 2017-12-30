del *.o
C:\Devkitpro\devkitarm\bin\arm-none-eabi-gcc -c -g -MMD -MP -MF -O3 -mlong-calls -fomit-frame-pointer -mcpu=arm7tdmi -marm -mthumb -mthumb-interwork -ffast-math -Wall -mlong-calls -fverbose-asm hrt_vid.c
C:\Devkitpro\devkitarm\bin\arm-none-eabi-gcc -c -g -MMD -MP -MF -O3 -mlong-calls -fomit-frame-pointer -mcpu=arm7tdmi -marm -mthumb -mthumb-interwork -ffast-math -Wall -mlong-calls -fverbose-asm hrt_txt.c
C:\Devkitpro\devkitarm\bin\arm-none-eabi-gcc -c -g -MMD -MP -MF -O3 -mlong-calls -fomit-frame-pointer -mcpu=arm7tdmi -marm -mthumb -mthumb-interwork -ffast-math -Wall -mlong-calls -fverbose-asm hrt_swi.c
C:\Devkitpro\devkitarm\bin\arm-none-eabi-gcc -c -g -MMD -MP -MF -O3 -mlong-calls -fomit-frame-pointer -mcpu=arm7tdmi -marm -mthumb -mthumb-interwork -ffast-math -Wall -mlong-calls -fverbose-asm hrt_snd.c
C:\Devkitpro\devkitarm\bin\arm-none-eabi-gcc -c -g -MMD -MP -MF -O3 -mlong-calls -fomit-frame-pointer -mcpu=arm7tdmi -marm -mthumb -mthumb-interwork -ffast-math -Wall -mlong-calls -fverbose-asm hrt_oam.c
C:\Devkitpro\devkitarm\bin\arm-none-eabi-gcc -c -g -MMD -MP -MF -O3 -mlong-calls -fomit-frame-pointer -mcpu=arm7tdmi -marm -mthumb -mthumb-interwork -ffast-math -Wall -mlong-calls -fverbose-asm hrt_srm.c
C:\Devkitpro\devkitarm\bin\arm-none-eabi-gcc -c -g -MMD -MP -MF -O3 -mlong-calls -fomit-frame-pointer -mcpu=arm7tdmi -marm -mthumb -mthumb-interwork -ffast-math -Wall -mlong-calls -fverbose-asm libgbfs.c
C:\Devkitpro\devkitarm\bin\arm-none-eabi-ar -r libheart.a hrt_vid.o hrt_txt.o hrt_swi.o hrt_snd.o hrt_oam.o hrt_srm.o libgbfs.o
pause