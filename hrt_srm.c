#include "libheart.h"
extern u8 hrt_start;
extern int	hrt_offsetOAMData;
extern int hrt_offsetOAMPal;
extern int hrt_offsetBGMap;
extern int hrt_offsetBGTile;
extern int hrt_offsetBGPal;

u8* SaveData = (u8*)0xE000000;
void hrt_SaveInt(u16 offset, int value) //saves to SRAM
{
	if (hrt_start == 1) {
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
	if (hrt_start == 1) {
		int  i;
		char string[7];
		for (i = 0; i != 7; i++)
		{
			string[i] = *(u8 *)(SRAM + offset + i);
		}
		return atoi(string);
	}
}

void hrt_SaveByte(int offset, u8 value)
{
	if (hrt_start == 1) {
		SaveData[offset] = value;
	}
}

u8 hrt_LoadByte(int offset)
{
	if (hrt_start == 1) {
		return SaveData[offset];
	}
}