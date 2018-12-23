#include "libheart.h"
extern gba_system __hrt_system;
u8* SRAM = (u8*)0x0E000000;
u8* EEPROM = (u8*)0x0D000000;

void hrt_SetSaveMode(u8 mode)
{
	if (__hrt_system.hrt_start == 1) {
		__hrt_system.__hrt_savemode = mode;
	}
}

void hrt_SaveByte(int offset, u8 value)
{
	if (__hrt_system.hrt_start == 1) {
		switch(__hrt_system.__hrt_savemode)
		{
			case 0:
				SRAM[offset] = value;
				break;
			case 1:
				EEPROM[offset] = value;
				break;
		}
	}
}

u8 hrt_LoadByte(int offset)
{
	if (__hrt_system.hrt_start == 1) {
		switch(__hrt_system.__hrt_savemode)
		{
			case 0:
				return SRAM[offset];
				break;
			case 1:
				return EEPROM[offset];
				break;
		}
	}
	return 0;
}