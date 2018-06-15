# HeartLib API Automated Build System (ABS)
# This file is designed for HeartLib-compliant makefiles 

PREFIX = arm-none-eabi-
GBFSFILE = build/data.hrt
LIBS += -lheart -lm -lstdc++ -lsupc++ -lgcc -lc -lgcc
OBJECTS += build/crt0.o
SOURCES += $(HRTDIR)\crt0.s
HRT_FLAGS += -nostartfiles
HRTDIR = C:\devkitPro\devkitARM\hrt_system

default: $(PROGNAME).gba 

build/%.o: src/%.c $(HEADERS)
	$(PATH)$(PREFIX)gcc -DHRT_WITH_LIBHEART $(HRT_FLAGS) $(CFLAGS) $(ARCH) -c $< -o $@
	
build/%.o: src/%.cpp $(HEADERS)
	$(PATH)$(PREFIX)g++ -DHRT_WITH_LIBHEART $(HRT_FLAGS) $(CPPFLAGS) $(ARCH) -c $< -o $@
	
build/%.out: src/%.s $(ASMINC)
	$(PATH)$(PREFIX)as -mthumb-interwork $< -o $@
	
build/%.out: data\%.s
	$(PATH)$(PREFIX)as -mthumb-interwork $< -o $@
	
build/crt0.o:
	$(PATH)$(PREFIX)as -mthumb-interwork $(HRTDIR)\crt0.s -obuild\crt0.o
	
build/%.o: data/%.c
	$(PATH)$(PREFIX)gcc -DHRT_WITH_LIBHEART $(HRT_FLAGS) $(CFLAGS) $(ARCH) -c $< -o $@

build\main.elf: $(OBJECTS)
ifeq ($(MAKE_MODE),multiboot)
	$(PATH)$(PREFIX)gcc -specs=gba_mb.specs -nostartfiles $(ARCH) $(OBJECTS) $(LIBDIRS) $(LIBS) -o build/main.elf
else ifeq ($(MAKE_ME),ereader)
	$(PATH)$(PREFIX)gcc -specs=gba_er.specs -nostartfiles $(ARCH) $(OBJECTS) $(LIBDIRS) $(LIBS) -o build/main.elf
else
	$(PATH)$(PREFIX)gcc -specs=gba.specs -nostartfiles $(ARCH) $(OBJECTS) $(LIBDIRS) $(LIBS) -o build/main.elf
endif

$(GBFSFILE): $(COMPFILES)
	gbfs $(GBFSFILE) $(COMPFILES)
	
data\$(MMDATAFILE).s build\$(MMDATAFILE).bin inc\$(MMDATAFILE).h: $(MAXMODFILES)
	mmutil -obuild\$(MMDATAFILE).bin -hinc\$(MMDATAFILE).h $(MAXMODFILES)
	bin2s build/$(MMDATAFILE).bin > data/$(MMDATAFILE).s

$(PROGNAME).gba: build\main.elf $(GBFSFILE)
ifneq ($(GBFSFILE),)
	$(PATH)$(PREFIX)objcopy -O binary build/main.elf $(PROGNAME).gba
	C:\devkitPro\msys\bin\mv $(PROGNAME).gba main.gba
	padbin 256 main.gba
	/usr/bin/cat main.gba $(GBFSFILE)>main2.gba
	/usr/bin/cat main2.gba >$(PROGNAME).gba
	/usr/bin/rm main2.gba main.gba
	$(PATH)gbafix $(PROGNAME).gba -t$(INTERNALNAME) -c$(GAME_CODE) -v$(VERSION)
else
	$(PATH)$(PREFIX)objcopy -O binary build/main.elf $(PROGNAME).gba
	$(PATH)\gbafix $(PROGNAME).gba -t$(INTERNALNAME) -c$(GAME_CODE) -v$(VERSION)
endif
	
clean:
	/usr/bin/rm build/*
	/usr/bin/rm $(PROGNAME).gba
	/usr/bin/rm $(MORECLEAN)