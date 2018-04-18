arm-none-eabi-gcc -c -Wall -Os -ffast-math -mlong-calls -mcpu=arm7tdmi -mtune=arm7tdmi -marm -faggressive-loop-optimizations -fverbose-asm  diskio.c
arm-none-eabi-gcc -c -Wall -Os -ffast-math -mlong-calls -mcpu=arm7tdmi -mtune=arm7tdmi -marm -faggressive-loop-optimizations -fverbose-asm  ff.c
arm-none-eabi-gcc -c -Wall -Os -ffast-math -mlong-calls -mcpu=arm7tdmi -mtune=arm7tdmi -marm -faggressive-loop-optimizations -fverbose-asm  ffsystem.c
arm-none-eabi-gcc -c -Wall -Os -ffast-math -mlong-calls -mcpu=arm7tdmi -mtune=arm7tdmi -marm -faggressive-loop-optimizations -fverbose-asm  ffunicode.c
arm-none-eabi-ar -r libSD.a ffsystem.o ffunicode.o ff.o diskio.o
pause
