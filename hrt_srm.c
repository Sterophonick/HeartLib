#include "libheart.h"
extern gba_system __hrt_system;
u8* SRAM = (u8*)0x0E000000;

void hrt_SetSaveMode(u8 mode)
{
	if (__hrt_system.hrt_start == 1) {
		__hrt_system.__hrt_savemode == mode;
	}
}

void hrt_SaveByte(int offset, u8 value)
{
	if (__hrt_system.hrt_start == 1) {
		if(__hrt_system.__hrt_savemode == 0)
		{
			SRAM[offset] = value;
		}else{
			EEPROM[offset] = value;
		}
	}
}

u8 hrt_LoadByte(int offset)
{
	if (__hrt_system.hrt_start == 1) {
		if(__hrt_system.__hrt_savemode == 0)
		{
			return SRAM[offset];
		}else{
			return EEPROM[offset];
		}
	}
	return 0;
}