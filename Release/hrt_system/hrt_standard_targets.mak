# HeartLib API Automated Build System (ABS)
# This file is designed for HeartLib-compliant makefiles 

DEVKITPRO = C:\devkitPro\devkitARM
PREFIX = arm-none-eabi-
GBFSFILE = build/data.hrt
LIBS += -lheart -lm -lstdc++ -lsupc++ -lgcc -lc -lgcc -lsysbase -lc
LIBDIRS += -L$(DEVKITPRO)\arm-none-eabi\lib -L$(DEVKITPRO)\lib\gcc\arm-none-eabi\8.1.0 -L$(DEVKITPRO)\lib -L$(DEVKITPRO)\lib\gcc\arm-none-eabi\8.1.0\thumb -L$(DEVKITPRO)\arm-none-eabi\lib\thumb -L$(DEVKITPRO)\lib\gcc\arm-none-eabi\8.1.0\be
OBJECTS += build/crt0.o
SOURCES += $(HRTDIR)\crt0.s
HRT_FLAGS += -nostartfiles
HRTDIR = $(DEVKITPRO)\hrt_system
EXECPATH = $(DEVKITPRO)\bin

default: $(PROGNAME).gba 

build/%.o: src/%.c $(HEADERS)
	$(EXECPATH)\$(PREFIX)gcc -DHRT_WITH_LIBHEART $(HRT_FLAGS) $(CFLAGS) $(ARCH) -c $< -o $@
	
build/%.o: src/%.cpp $(HEADERS)
	$(EXECPATH)\$(PREFIX)g++ -DHRT_WITH_LIBHEART $(HRT_FLAGS) $(CPPFLAGS) $(ARCH) -c $< -o $@
	
build/%.out: src/%.s $(ASMINC)
	$(EXECPATH)\$(PREFIX)as -mthumb-interwork $< -o $@
	
build/%.out: data\%.s
	$(EXECPATH)\$(PREFIX)as -mthumb-interwork $< -o $@
	
build/crt0.o:
	$(EXECPATH)\$(PREFIX)as -mthumb-interwork $(HRTDIR)\crt0.s -obuild\crt0.o
	
build/%.o: data/%.c
	$(EXECPATH)\$(PREFIX)gcc -DHRT_WITH_LIBHEART $(HRT_FLAGS) $(CFLAGS) $(ARCH) -c $< -o $@

build\main.elf: $(OBJECTS)
ifeq ($(USE_MULTIBOOT),yes)
	$(EXECPATH)\$(PREFIX)cpp -P -DHRT_MB $(HRTDIR)\lnkscript.x -o $(HRTDIR)\hrt_lnkscript.ld
else
	$(EXECPATH)\$(PREFIX)cpp -P $(HRTDIR)\lnkscript.x -o $(HRTDIR)\hrt_lnkscript.ld
endif
	$(EXECPATH)\$(PREFIX)ld --gc-sections -T$(HRTDIR)\hrt_lnkscript.ld -nostartfiles -nostdlib $(ARCH) $(LIBDIRS)  $(OBJECTS)  $(LIBS) -o build/main.elf

$(GBFSFILE): $(COMPFILES)
	gbfs $(GBFSFILE) $(COMPFILES)
	
data\$(MMDATAFILE).s build\$(MMDATAFILE).bin inc\$(MMDATAFILE).h: $(MAXMODFILES)
	mmutil -obuild\$(MMDATAFILE).bin -hinc\$(MMDATAFILE).h $(MAXMODFILES)
	bin2s build/$(MMDATAFILE).bin > data/$(MMDATAFILE).s

$(PROGNAME).gba: build\main.elf $(GBFSFILE)
ifneq ($(GBFSFILE),)
	$(EXECPATH)\$(PREFIX)objcopy -O binary build/main.elf $(PROGNAME).gba
	C:\devkitPro\msys\bin\mv $(PROGNAME).gba main.gba
	padbin 256 main.gba
	/usr/bin/cat main.gba $(GBFSFILE)>main2.gba
	/usr/bin/cat main2.gba >$(PROGNAME).gba
	/usr/bin/rm main2.gba main.gba
	$(EXECPATH)\gbafix $(PROGNAME).gba -t$(INTERNALNAME) -c$(GAME_CODE) -v$(VERSION)
else
	$(EXECPATH)\$(PREFIX)objcopy -O binary build/main.elf $(PROGNAME).gba
	$(EXECPATH)\gbafix $(PROGNAME).gba -t$(INTERNALNAME) -c$(GAME_CODE) -v$(VERSION)
endif
	
clean:
	/usr/bin/rm build/*
	/usr/bin/rm $(PROGNAME).gba
	/usr/bin/rm $(MORECLEAN)