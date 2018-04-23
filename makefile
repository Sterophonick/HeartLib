HEADERS = libheart.h
OBJECTS = build/hrt_oam.o build/hrt_snd.o build/hrt_srm.o build/hrt_swi.o build/hrt_txt.o build/hrt_vid.o build/hrt_gbfs.o build/hrt_start.o build/hrt_logo.o build/hrt_obj.o build/hrt_int.o build/hrt_intdispatch.out build/hrt_font.o build/hrt_font_tile.o build/hrt_syscalls.out build/hrt_misc.o build/hrt_sleep.out build/hrt_ez4exit.out build/hrt_tmr.o build/hrt_pcx.o build/hrt_rng.o maxmod/mm_effect.o maxmod/mm_init_default.o maxmod/mm_main.o maxmod/mm_mas.o maxmod/mm_mas_arm.o maxmod/mm_mixer_gba.o build/hrt_mbv2.o build/SD/dldi_stub.out build/SD/io_scsd_s.out build/SD/disc.o build/SD/dldi.o build/SD/io_cf_common.o build/SD/io_m3_common.o build/SD/io_m3cf.o build/SD/io_m3sd.o build/SD/io_mpcf.o build/SD/io_sc_common.o build/SD/io_sccf.o build/SD/io_scsd.o build/SD/io_sd_common.o build/hrt_xboo.o
CPPFILES =
SOURCES = hrt_oam.c hrt_snd.c hrt_srm.c hrt_swi.c hrt_txt.c hrt_vid.c hrt_gbfs.c hrt_start.c hrt_logo.c hrt_obj.c hrt_int.c hrt_font.c hrt_font_tile.c hrt_misc.c hrt_tmr.c hrt_pcx.c hrt_rng.c hrt_mbv2.c SD/disc.c SD/dldi.c SD/io_cf_common.c SD/io_m3_common.c SD/io_m3cf.c SD/io_m3sd.c SD/io_mpcf.c SD/io_sc_common.c SD/io_sccf.c SD/io_scsd.c SD/io_sd_common.c hrt_xboo.c
ASM = hrt_intdispatch.s hrt_syscalls.s hrt_sleep.s hrt_ez4exit.s SD/dldi_stub.s SD/io_scsd_s.s
LIBS= libheart.a
CFLAGS = -g -Wall -Os -Wno-switch -Wno-multichar -ffast-math -mlong-calls -mcpu=arm7tdmi -mtune=arm7tdmi -marm -faggressive-loop-optimizations -fverbose-asm 
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

clean:
	-rm build/*.o build/*.out
	-rm build/SD/*.o build/SD/*.out 
	-rm libheart.a