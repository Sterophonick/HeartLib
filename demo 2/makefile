HEADERS = defs.h
OBJECTS = build/arrow.o build/main.o build/l1.o
SOURCES = main.c arrow.c l1.c
ELFS = build/main.elf
CFLAGS = -MMD -MP -MF -Wall -O3 -ffast-math -mlong-calls -mcpu=arm7tdmi -mtune=arm7tdmi -fomit-frame-pointer -marm -faggressive-loop-optimizations -fverbose-asm 
ARCH = -mthumb -mthumb-interwork
SPECS = -specs=gba.specs
PREFIX = C:\devkitPro\devkitARM\bin\arm-none-eabi-

default: demo.gba

build/%.o: %.c
	$(PREFIX)gcc $(CFLAGS) $(ARCH) -c $< -o $@
build/main.elf: $(OBJECTS) 
	$(PREFIX)gcc $(SPECS) $(ARCH) $(OBJECTS)  -LC:\devkitPro\devkitARM\lib -lheart -lm -o build/main.elf
demo.gba: $(ELFS)
	$(PREFIX)objcopy -O binary $(ELFS) demo.gba
	C:/devkitPro/devkitARM/bin/gbafix demo.gba -tLIBHEART -cLHRT -v1>nul