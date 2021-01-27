HEADERS = 
OBJECTS = build/oam.o build/memcpy.o build/fx.o build/font.o build/gbfs.o build/aplib.o build/jpg.o build/rng.o build/rtc.o build/misc.o build/intdispatch.o build/interrupt.o build/bios.o build/text.o build/video.o build/debug.o build/drawer.o build/pucrunch.o build/asm_misc.o build/input.o build/pcx.o build/rumble.o
CPPFILES =
SOURCES = src/oam.c data/font.c 
LIBS= libheart.a
CFLAGS = -Wall -O3 -march=armv4t -Wno-switch -Wno-multichar -ffast-math -mcpu=arm7tdmi -mtune=arm7tdmi -marm -faggressive-loop-optimizations -mlong-calls -Iinclude
ARCH = -mthumb -mthumb-interwork
PREFIX = /bin/arm-none-eabi-

ifeq ($(OS),Windows_NT)
	SUDO = 
else
	SUDO = sudo
endif

default: libheart.a
build/%.o: src/%.c $(HEADERS)
	$(DEVKITARM)$(PREFIX)gcc $(CFLAGS) $(ARCH) -c $< -o $@
build/%.o: src/%.s $(HEADERS)
	$(DEVKITARM)$(PREFIX)gcc $(CFLAGS) $(ARCH) -c $< -o $@
libheart.a: $(OBJECTS)
	$(DEVKITARM)$(PREFIX)ar -r libheart.a $(OBJECTS)
	$(SUDO) cp libheart.a $(DEVKITPRO)/devkitARM/arm-none-eabi/lib
	$(SUDO) cp include/*.h $(DEVKITPRO)/devkitARM/arm-none-eabi/include

clean:
	-rm build/*.o
	-rm libheart.a