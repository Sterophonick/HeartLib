HEADERS = libheart.h
OBJECTS = build/hrt_oam.o build/hrt_snd.o build/hrt_srm.o build/hrt_swi.o build/hrt_txt.o build/hrt_vid.o build/hrt_gbfs.o build/hrt_start.o build/hrt_logo.o build/hrt_obj.o build/hrt_int.o build/hrt_intdispatch.out build/hrt_font.o build/hrt_font_tile.o build/hrt_syscalls.out build/hrt_misc.o build/hrt_sleep.out build/hrt_ez4exit.out build/hrt_tmr.o
SOURCES = hrt_oam.c hrt_snd.c hrt_srm.c hrt_swi.c hrt_txt.c hrt_vid.c hrt_gbfs.c hrt_start.c hrt_logo.c hrt_obj.c hrt_int.c hrt_font.c hrt_font_tile.c hrt_misc.c hrt_tmr.c
ASM = hrt_intdispatch.s hrt_syscalls.s hrt_sleep.s hrt_ez4exit.s
LIBS= libheart.a
CFLAGS = -g -MMD -MP -MF -Wall -Og -O1 -O2 -O3 -O -Os -ffast-math -mlong-calls -mcpu=arm7tdmi -mtune=arm7tdmi -fomit-frame-pointer -marm
ARCH = -mthumb -mthumb-interwork
SPECS = -specs=gba.specs
PREFIX = C:\devkitPro\devkitARM\bin\arm-none-eabi-
default: libheart.a
build/%.o: %.c $(HEADERS)
	$(PREFIX)gcc $(CFLAGS) $(ARCH) -c $< -o $@
build/%.out: %.s
	$(PREFIX)as -mthumb -mthumb-interwork -mcpu=arm7tdmi $< -o $@
libheart.a: $(OBJECTS)
	$(PREFIX)ar -r libheart.a $(OBJECTS)
	cp libheart.a C:\devkitPro\devkitARM\lib
	cp libheart.h C:\devkitPro\devkitARM\lib\gcc\arm-none-eabi\7.1.0\include
	
clean:
	-rm build/*.o
	-rm build/*.out
	-rm libheart.a