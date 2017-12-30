#include "libheart.h"
void hrt_SaveInt(u16 offset, int value) //saves to SRAM
{
	int i;
	char string[7];
	sprintf(string, "%d", value);
	for(i=0; i < 32768; i++)
	{
		if(string[i] == 0)
		{
			break;
		}
		*(u8 *)(SRAM + offset + i) = string[i];
	}
}
int hrt_LoadInt(u16 offset) //Loads from SRAM
{
	int  i;
	char string[7];
	for(i = 0; i != 7; i++)
	{
		string[i] = *(u8 *)(SRAM + offset + i);
	}
	return atoi(string);
}