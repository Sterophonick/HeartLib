HEADERS = libheart.h
OBJECTS = build/hrt_oam.o build/hrt_snd.o build/hrt_srm.o build/hrt_swi.o build/hrt_txt.o build/hrt_vid.o build/hrt_gbfs.o build/hrt_start.o build/hrt_logo.o build/hrt_obj.o build/hrt_int.o build/hrt_intdispatch.out build/hrt_font.o build/hrt_font_tile.o build/hrt_syscalls.out build/hrt_misc.o build/hrt_sleep.out build/hrt_ez4exit.out build/hrt_tmr.o build/hrt_pcx.o build/hrt_rng.o maxmod/mm_effect.o maxmod/mm_init_default.o maxmod/mm_main.o maxmod/mm_mas.o maxmod/mm_mas_arm.o maxmod/mm_mixer_gba.o SD/diskio.o SD/ff.o SD/ffsystem.o SD/ffunicode.o build/hrt_mbv2.o
CPPFILES =
SOURCES = hrt_oam.c hrt_snd.c hrt_srm.c hrt_swi.c hrt_txt.c hrt_vid.c hrt_gbfs.c hrt_start.c hrt_logo.c hrt_obj.c hrt_int.c hrt_font.c hrt_font_tile.c hrt_misc.c hrt_tmr.c hrt_pcx.c hrt_rng.c hrt_mbv2.c
ASM = hrt_intdispatch.s hrt_syscalls.s hrt_sleep.s hrt_ez4exit.s
LIBS= libheart.a
CFLAGS = -Wall -Os -ffast-math -mlong-calls -mcpu=arm7tdmi -mtune=arm7tdmi -marm -faggressive-loop-optimizations -fverbose-asm 
ARCH = -mthumb -mthumb-interwork
SPECS = -specs=gba.specs
PREFIX = C:\devkitPro\devkitARM\bin\arm-none-eabi-
default: libheart.a
build/%.o: %.c $(HEADERS)
	$(PREFIX)gcc $(CFLAGS) $(ARCH) -c $< -o $@
build/%.o: %.cpp $(HEADERS)
	$(PREFIX)g++ $(CFLAGS) $(ARCH) -c $< -o $@
build/%.out: %.s
	$(PREFIX)as  -mthumb -mthumb-interwork -mcpu=arm7tdmi $< -o $@
libheart.a: $(OBJECTS)
	$(PREFIX)ar -r libheart.a $(OBJECTS)
	cp libheart.a C:\devkitPro\devkitARM\lib
	cp libheart.h C:\devkitPro\devkitARM\lib\gcc\arm-none-eabi\7.1.0\include
	cp maxmod.h C:\devkitPro\devkitARM\lib\gcc\arm-none-eabi\7.1.0\include
	cp libSD.h C:\devkitPro\devkitARM\lib\gcc\arm-none-eabi\7.1.0\include

clean:
	-rm build/*.o
	-rm build/*.out
	-rm libheart.a