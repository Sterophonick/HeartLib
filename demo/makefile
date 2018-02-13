HEADERS = defs.h
OBJECTS = arrow.o block.o main.o libheart.a bg_hill.o such.o
SOURCES = main.c block.o arrow.o bg_hill.c such.c
ELFS = main.elf
CFLAGS = -g -MMD -MP -MF -Wall -Og -O1 -O2 -O3 -O -Os -ffast-math -mlong-calls -mcpu=arm7tdmi -mtune=arm7tdmi -fomit-frame-pointer -marm
ARCH = -mthumb -mthumb-interwork
SPECS = -specs=gba.specs
PREFIX = C:\devkitPro\devkitARM\bin\arm-none-eabi-

default: demo.gba

%.o: %.c
	$(PREFIX)gcc $(CFLAGS) $(ARCH) -c $< -o $@
main.elf: $(OBJECTS) 
	$(PREFIX)gcc $(SPECS) $(ARCH) $(OBJECTS) -o main.elf
demo.gba: $(ELFS)
	$(PREFIX)objcopy -O binary $(ELFS) demo.gba
	C:\devkitPro\devkitARM\bin\gbafix demo.gba