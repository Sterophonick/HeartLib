/*******************************************************************\
*             8   8                    8  8     8 8
*             8   8                    8  8       8
*             8   8  888   888  8 888 888 8     8 8 88
*             88888 8   8     8 88     8  8     8 88  8
*             8   8 88888  8888 8      8  8     8 8   8
*             8   8 8     8   8 8      8  8     8 8   8
*             8   8  8888  8888 8       8 88888 8 8888
*                             HeartLib
*A comprehensive game/app engine for the Nintendo® Game Boy Advance™
*                  Licensed under the GNU GPL v3.0
*                 View the LICENSE file for details
*                      2017-2019 Sterophonick
*                          For Tubooboo
\*******************************************************************/
#include "libheart.h"
extern gba_system __hrt_system;
u8* SRAM = (u8*)0x0E000000;
u8* EEPROM = (u8*)0x0D000000;

void hrt_SetSaveMode(u8 mode)
{
	if (__hrt_system.hrt_start) {
		__hrt_system.__hrt_savemode = mode;
	}
}

void hrt_SaveByte(int offset, u8 value)
{
	if (__hrt_system.hrt_start) {
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
	if (__hrt_system.hrt_start) {
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