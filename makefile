HEADERS = 
OBJECTS = build/oam.o build/memcpy.o build/fx.o build/font.o build/gbfs.o build/aplib.o build/jpg.o build/rng.o build/rtc.o build/misc.o build/intdispatch.o build/interrupt.o build/bios.o build/text.o build/video.o build/debug.o build/drawer.o build/pucrunch.o build/asm_misc.o build/input.o build/pcx.o
CPPFILES =
SOURCES = src/oam.c data/font.c 
LIBS= libheart.a
CFLAGS = -Wall -Os -march=armv4t -Wno-switch -Wno-multichar -ffast-math -mcpu=arm7tdmi -mtune=arm7tdmi -marm -faggressive-loop-optimizations -mlong-calls -Iinclude
ARCH = -mthumb-interwork
PREFIX = arm-none-eabi-
default: libheart.a
build/%.o: src/%.c $(HEADERS)
	$(PREFIX)gcc $(CFLAGS) $(ARCH) -c $< -o $@
build/%.o: src/%.s $(HEADERS)
	$(PREFIX)gcc $(CFLAGS) $(ARCH) -c $< -o $@
build/%.o: data/%.c $(HEADERS)
	$(PREFIX)gcc $(CFLAGS) $(ARCH) -c $< -o $@
libheart.a: $(OBJECTS)
	$(PREFIX)ar -r libheart.a $(OBJECTS)
	cp libheart.a C:\devkitPro\devkitARM\arm-none-eabi\lib
	cp include/*.h C:/devkitPro/devkitARM/arm-none-eabi/include

clean:
	-rm build/*.o build/*.out
	-rm libheart.a