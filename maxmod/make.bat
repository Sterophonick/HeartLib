arm-none-eabi-gcc -MMD -MP -MF mm_effect.d -x assembler-with-cpp -Wall -Os -ffast-math -mlong-calls -mcpu=arm7tdmi -mtune=arm7tdmi -marm -DSYS_GBA -DUSE_IWRAM  -march=armv4t -mthumb -mthumb-interwork -c mm_effect.s -o mm_effect.o

arm-none-eabi-gcc -MMD -MP -MF mm_main.d -x assembler-with-cpp -Wall -Os -ffast-math -mlong-calls -mcpu=arm7tdmi -mtune=arm7tdmi -marm -DSYS_GBA -DUSE_IWRAM  -march=armv4t -mthumb -mthumb-interwork -c mm_main.s -o mm_main.o

arm-none-eabi-gcc -MMD -MP -MF mm_mas.d -x assembler-with-cpp -Wall -Os -ffast-math -mlong-calls -mcpu=arm7tdmi -mtune=arm7tdmi -marm -DSYS_GBA -DUSE_IWRAM  -march=armv4t -mthumb -mthumb-interwork -c mm_mas.s -o mm_mas.o

arm-none-eabi-gcc -MMD -MP -MF mm_mas_arm.d -x assembler-with-cpp -Wall -Os -ffast-math -mlong-calls -mcpu=arm7tdmi -mtune=arm7tdmi -marm -DSYS_GBA -DUSE_IWRAM  -march=armv4t -mthumb -mthumb-interwork -c mm_mas_arm.s -o mm_mas_arm.o

arm-none-eabi-gcc -MMD -MP -MF mm_init_default.d -x assembler-with-cpp -Wall -Os -ffast-math -mlong-calls -mcpu=arm7tdmi -mtune=arm7tdmi -marm -DSYS_GBA -DUSE_IWRAM  -march=armv4t -mthumb -mthumb-interwork -c mm_init_default.s -o mm_init_default.o

arm-none-eabi-gcc -MMD -MP -MF mm_mixer_gba.d -x assembler-with-cpp -Wall -Os -ffast-math -mlong-calls -mcpu=arm7tdmi -mtune=arm7tdmi -marm -DSYS_GBA -DUSE_IWRAM  -march=armv4t -mthumb -mthumb-interwork -c mm_mixer_gba.s -o mm_mixer_gba.o