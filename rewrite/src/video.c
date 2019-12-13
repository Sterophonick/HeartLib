#include "hrt_video.h"

void hrt_LoadDataIntoVRAM(u16* data, int length, int offset)
{
	hrt_Memcpy16(&VRAM[offset], data, length);
}

void hrt_DSPSetBGMode(u8 mode)
{
    REG_DISPCNT &= 0xFFF8;
    REG_DISPCNT |= mode;
}
void hrt_DSPConfigureBG(u8 bg, u16 mode)
{
	REG_BGxCNT(bg) = mode;	
}

u16 hrt_GenerateColorFromRGB(u8 red, u8 green, u8 blue)
{
    return red | (green << 5) | (blue << 10);
}

void hrt_DSPEnableBG(u8 bg)
{
	REG_DISPCNT |= 1UL << (8+layer);
}

void hrt_DSPDisableBG(u8 bg)
{
	REG_DISPCNT &= ~(1UL << (8 + layer));
}