default: $(PROGNAME).gba

build/%.o: src/%.c $(HEADERS)
	$(PATH)$(PREFIX)gcc $(CFLAGS) $(ARCH) -c $< -o $@
	
build/%.o: src/%.cpp $(HEADERS)
	$(PATH)$(PREFIX)g++ $(CFLAGS) $(ARCH) -c $< -o $@
	
build/%.out: src/%.s $(ASMINC)
	$(PATH)$(PREFIX)as $(ARCH) $< -o $@
	
build/%.out: data/%.s
	$(PATH)$(PREFIX)as $(ARCH) $< -o $@
	
build/%.o: data/%.c
	$(PATH)$(PREFIX)gcc $(CFLAGS) $(ARCH) -c $< -o $@
	
build/main.elf: $(OBJECTS)
	$(PATH)$(PREFIX)gcc $(SPECS) $(ARCH) $(OBJECTS) $(LIBDIRS) $(LIBS) -o build/main.elf
	
inc/$(MAXMODFILE).h build/$(MAXMODFILE).bin: $(MAXMODDATA)
	mmutil $(MAXMODDATA) -hinc/$(MAXMODFILE).h -obuild/$(MAXMODFILE).bin

data/$(MAXMODFILE).s: build/$(MAXMODFILE).bin
	bin2s build/$(MAXMODFILE).bin > data/$(MAXMODFILE).s
	
data/%.s: data/%.bin
	bin2s $< > $@
	
$(GBFSFILE): $(COMPFILES)
	gbfs $(GBFSFILE) $(COMPFILES)


$(PROGNAME).gba: build/main.elf $(GBFSFILE)
	$(PATH)$(PREFIX)objcopy -O binary build/main.elf $(PROGNAME).gba
	rename $(PROGNAME).gba main.gba
	padbin 256 main.gba>nul
	/usr/bin/cat main.gba $(GBFSFILE)>main2.gba
	/usr/bin/cat main2.gba >$(PROGNAME).gba
	/usr/bin/rm main2.gba main.gba
	$(PATH)\gbafix $(PROGNAME).gba -t$(INTERNALNAME) -c$(GAME_CODE) -v$(VERSION)
	
clean:
	/usr/bin/rm build/*
	/usr/bin/rm $(PROGNAME).gba