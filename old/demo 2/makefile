HEADERS = defs.h
OBJECTS = build/arrow.o build/main.o build/l1.o build/such.o build/block.o build/soundbank.o build/such2.o build/monde1.o
SOURCES = main.c arrow.c l1.c such.C block.c soundbank.s such2.c monde1.s
ELFS = build/main.elf
CFLAGS = -DHRT_WITH_LIBHEART -DHRT_USE_MBV2LIB -Wall -O3 -ffast-math -mlong-calls -mcpu=arm7tdmi -mtune=arm7tdmi -fomit-frame-pointer -marm -faggressive-loop-optimizations -fverbose-asm 
ARCH = -mthumb -mthumb-interwork
SPECS = -specs=gba.specs
PREFIX = C:\devkitPro\devkitARM\bin\arm-none-eabi-

default: demo.gba

build/%.o: %.c
	$(PREFIX)gcc $(CFLAGS) $(ARCH) -c $< -o $@
build/%.o: %.s
	$(PREFIX)gcc $(CFLAGS) $(ARCH) -c $< -o $@
build/main.elf: $(OBJECTS) 
	$(PREFIX)gcc $(SPECS) $(ARCH) $(OBJECTS) -lheart -lm -o build/main.elf
demo.gba: $(ELFS)
	$(PREFIX)objcopy -O binary $(ELFS) demo.gba
		padbin 256 demo.gba
			cat demo.gba data.gbfs>demo2.gba
				rm demo.gba
	mv demo2.gba demo.gba
	C:/devkitPro/devkitARM/bin/gbafix demo.gba -tLIBHEART -cLHRT -v1>nul