default: $(PROGNAME).gba
build/%.o: $(S0URCES) $(HEADERS)
	$(PATH)$(PREFIX)gcc $(CFLAGS) $(ARCH) -c $< -o $@
build/%.o: %.cpp $(HEADERS)
	$(PATH)$(PREFIX)g++ $(CFLAGS) $(ARCH) -c $< -o $@
build/%.out: *.s $(ASMINC)
	$(PATH)$(PREFIX)as $(ARCH) -mcpu=arm7tdmi $< -o $@
build/main.elf: $(OBJECTS) 
	$(PATH)$(PREFIX)gcc $(SPECS) $(ARCH) $(OBJECTS) $(LIBDIRS) $(LIBS) -o build/main.elf
$(GBFSFILE): $(COMPFILES)
	gbfs $(GBFSFILE) $(COMPFILES)
$(PROGNAME).gba: build/main.elf
	$(PATH)$(PREFIX)objcopy -O binary $(ELFS) $(PROGNAME).gba
	$(PATH)padbin 256 main.gba>nul
	cat main.gba $(GBFSFILES)>main2.gba
	cat main2.gba data/ee.dat>sbj.gba
	rm main2.gba main.gba>nul
	$(PATH)gbafix $(PROGNAME).gba -t$(INTERNALNAME) -c$(GAME_CODE) -v$(VERSION)