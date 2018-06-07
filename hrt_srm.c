#include "libheart.h"
extern gba_system __hrt_system;

u8* SaveData = (u8*)0x0E000000;
void hrt_SaveInt(u16 offset, int value) //saves to SRAM
{
	if (__hrt_system.hrt_start == 1) {
		int i;
		char string[7];
		sprintf(string, "%d", value);
		for (i = 0; i < 32768; i++)
		{
			if (string[i] == 0)
			{
				break;
			}
			*(u8 *)(SRAM + offset + i) = string[i];
		}
	}
}
int hrt_LoadInt(u16 offset) //Loads from SRAM
{
	if (__hrt_system.hrt_start == 1) {
		int  i;
		char string[7];
		for (i = 0; i != 7; i++)
		{
			string[i] = *(u8 *)(SRAM + offset + i);
		}
		return atoi(string);
	}
	return 0;
}

void hrt_SaveByte(int offset, u8 value)
{
	if (__hrt_system.hrt_start == 1) {
		SaveData[offset] = value;
	}
}

u8 hrt_LoadByte(int offset)
{
	if (__hrt_system.hrt_start == 1) {
		return SaveData[offset];
	}
	return 0;
}