HEADERS = libheart.h
OBJECTS = build/hrt_oam.o build/hrt_snd.o build/hrt_srm.o build/hrt_swi.o build/hrt_txt.o build/hrt_vid.o build/hrt_gbfs.o build/hrt_start.o build/hrt_int.o build/hrt_intdispatch.out build/hrt_font.o build/hrt_syscalls.out build/hrt_misc.o build/hrt_sleep.out build/hrt_ez4exit.out build/hrt_tmr.o build/hrt_pcx.o build/hrt_rng.o build/hrt_mbv2.o build/hrt_sio.o build/hrt_rtc.out build/hrt_jpg.o build/hrt_aplib.o build/hrt_strip.o build/hrt_ndsbios.o build/hrt_fx.o build/hrt_lang.o
CPPFILES =
SOURCES = hrt_oam.c hrt_snd.c hrt_srm.c hrt_swi.c hrt_txt.c hrt_vid.c hrt_gbfs.c hrt_start.c hrt_int.c hrt_font.c hrt_misc.c hrt_tmr.c hrt_pcx.c hrt_rng.c hrt_mbv2.c hrt_sio.c hrt_jpg.c hrt_newlib.c hrt_aplib.c hrt_strip.c hrt_ndsbios.c hrt_fx.c hrt_lang.c
ASM = hrt_intdispatch.s hrt_syscalls.s hrt_sleep.s hrt_ez4exit.s hrt_rtc.s
LIBS= libheart.a
CFLAGS = -DHRT_WITH_LIBHEART -DHRT_USE_MBV2LIB -Wall -Os -march=armv4t -Wno-switch -Wno-multichar -ffast-math -mcpu=arm7tdmi -mtune=arm7tdmi -marm -faggressive-loop-optimizations -mlong-calls
ARCH = -mthumb-interwork
SPECS = -specs=gba.specs
PREFIX = C:\devkitPro\devkitARM\bin\arm-none-eabi-
default: libheart.a
build/%.o: %.c $(HEADERS)
	$(PREFIX)gcc $(CFLAGS) $(ARCH) -c $< -o $@
build/%.o: %.cpp $(HEADERS)
	$(PREFIX)g++ $(CFLAGS) $(ARCH) -c $< -o $@
build/%.out: %.s
	$(PREFIX)as -march=armv4t -mthumb-interwork -mcpu=arm7tdmi $< -o $@
libheart.a: $(OBJECTS)
	$(PREFIX)ar -r libheart.a $(OBJECTS) maxmod/mm_effect.o maxmod/mm_init_default.o maxmod/mm_main.o maxmod/mm_mas.o maxmod/mm_mas_arm.o maxmod/mm_mixer_gba.o 
	cp libheart.a C:\devkitPro\devkitARM\arm-none-eabi\lib
	cp libheart.h C:\devkitPro\devkitARM\arm-none-eabi\include

clean:
	-rm build/*.o build/*.out
	-rm libheart.a