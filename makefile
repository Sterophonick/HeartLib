HEADERS = libheart.h
OBJECTS = build/hrt_oam.o build/hrt_snd.o build/hrt_srm.o build/hrt_swi.o build/hrt_txt.o build/hrt_vid.o build/libgbfs.o build/hrt_start.o build/hrt_logo.o build/hrt_obj.o build/hrt_int.o build/hrt_intdispatch.out build/hrt_font.o build/hrt_font_tile.o
SOURCES = hrt_oam.c hrt_snd.c hrt_srm.c hrt_swi.c hrt_txt.c hrt_vid.c libgbfs.c hrt_start.c hrt_logo.c hrt_obj.c hrt_int.c hrt_font.c hrt_font_tile.c
ASM = hrt_intdispatch.s
LIBS= libheart.a
CFLAGS = -g -MMD -MP -MF -Wall -Og -O1 -O2 -O3 -O -Os -ffast-math -mlong-calls -mcpu=arm7tdmi -mtune=arm7tdmi -fomit-frame-pointer -marm
ARCH = -mthumb -mthumb-interwork
SPECS = -specs=gba.specs
PREFIX = C:\devkitPro\devkitARM\bin\arm-none-eabi-
default: libheart.a
build/%.o: %.c $(HEADERS)
	$(PREFIX)gcc $(CFLAGS) $(ARCH) -c $< -o $@
build/%.out: %.s
	$(PREFIX)as -mthumb -mthumb-interwork -mcpu=arm7tdmi $< -o hrt_intdispatch.out
	mv hrt_intdispatch.out build
libheart.a: $(OBJECTS)
	$(PREFIX)ar -r libheart.a $(OBJECTS)
	
clean:
	-rm build/*.o
	-rm libheart.a