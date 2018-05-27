HEADERS = defs.h
OBJECTS = build/arrow.o build/block.o build/main.o build/bg_hill.o build/such.o build/plasma.o build/hrt_snd.o build/concept.o build/buster.o build/balls.o build/parallax.o
SOURCES = main.c block.o arrow.o bg_hill.c such.c plasma.c concept.c buster.c balls.c parallax.c
ELFS = build/main.elf
CFLAGS = -g -MMD -MP -MF -Wall -O3 -ffast-math -mlong-calls -mcpu=arm7tdmi -mtune=arm7tdmi -fomit-frame-pointer -marm -faggressive-loop-optimizations -fverbose-asm 
ARCH = -mthumb -mthumb-interwork
SPECS = -specs=gba.specs
PREFIX = C:\devkitPro\devkitARM\bin\arm-none-eabi-

default: demo.gba

build/%.o: %.c
	$(PREFIX)gcc $(CFLAGS) $(ARCH) -c $< -o $@
build/hrt_snd.o: hrt_snd.c
	$(PREFIX)gcc $(CFLAGS) $(ARCH) -c $< -o $@
build/main.elf: $(OBJECTS) 
	$(PREFIX)gcc $(SPECS) $(ARCH) $(OBJECTS)  -LC:\devkitPro\devkitARM\lib -lheart -lm -o build/main.elf
demo.gba: $(ELFS) build/data.hrt
	$(PREFIX)objcopy -O binary $(ELFS) demo.gba
	tools/padbin 256 demo.gba>nul
	cat demo.gba build/data.hrt>demo2.gba
	rm demo.gba
	mv demo2.gba demo.gba
	C:/devkitPro/devkitARM/bin/gbafix demo.gba -tLIBHEART -cLHRT -v1>nul