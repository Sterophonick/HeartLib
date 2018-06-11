# HeartLib API Automated Build System (ABS)
# This file is designed for HeartLib-compliant makefiles 
PREFIX = arm-none-eabi-
GBFSFILE = build/data.hrt

default: $(PROGNAME).gba 

build/%.o: src/%.c $(HEADERS)
	$(PATH)$(PREFIX)gcc -DHRT_WITH_LIBHEART $(HRT_CFLAGS) $(CFLAGS) $(ARCH) -c $< -o $@
	
build/%.o: src/%.cpp $(HEADERS)
	$(PATH)$(PREFIX)g++ -DHRT_WITH_LIBHEART $(HRT_CFLAGS) $(CFLAGS) $(ARCH) -c $< -o $@
	
build/%.out: src/%.s $(ASMINC)
	$(PATH)$(PREFIX)as $(ARCH) $< -o $@
	
build/%.out: data/%.s
	$(PATH)$(PREFIX)as $(ARCH) $< -o $@
	
build/%.o: data/%.c
	$(PATH)$(PREFIX)gcc -DHRT_WITH_LIBHEART $(HRT_CFLAGS) $(CFLAGS) $(ARCH) -c $< -o $@

ifeq ($(USE_MULTIBOOT),yes)
build/main.elf: $(OBJECTS)
	$(PATH)$(PREFIX)gcc -specs=gba_mb.specs $(ARCH) $(OBJECTS) $(LIBDIRS) $(LIBS) -o build/main.elf
else ifneq ($(USE_MULTIBOOT),yes)
build/main.elf: $(OBJECTS)
	$(PATH)$(PREFIX)gcc -specs=gba.specs $(ARCH) $(OBJECTS) $(LIBDIRS) $(LIBS) -o build/main.elf	
endif
	
$(GBFSFILE): $(COMPFILES)
	gbfs $(GBFSFILE) $(COMPFILES)

$(PROGNAME).gba: build/main.elf $(GBFSFILE)
ifneq ($(GBFSFILE),)
	$(PATH)$(PREFIX)objcopy -O binary build/main.elf $(PROGNAME).gba
	C:\devkitPro\msys\bin\mv $(PROGNAME).gba main.gba
	padbin 256 main.gba
	/usr/bin/cat main.gba $(GBFSFILE)>main2.gba
	/usr/bin/cat main2.gba >$(PROGNAME).gba
	/usr/bin/rm main2.gba main.gba
	$(PATH)\gbafix $(PROGNAME).gba -t$(INTERNALNAME) -c$(GAME_CODE) -v$(VERSION)
else
	$(PATH)$(PREFIX)objcopy -O binary build/main.elf $(PROGNAME).gba
	$(PATH)\gbafix $(PROGNAME).gba -t$(INTERNALNAME) -c$(GAME_CODE) -v$(VERSION)
endif
	
clean:
	/usr/bin/rm build/*
	/usr/bin/rm $(PROGNAME).gba