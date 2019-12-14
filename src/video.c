#include "hrt_video.h"
#include "hrt_misc.h"

void hrt_LoadDataIntoVRAM(u16* data, u32 offset, u32 length)
{
	hrt_DMACopy(3, (void*)data, &VRAM+offset, length, 0x80000000);
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
	REG_DISPCNT |= 1UL << (8+bg);
}

void hrt_DSPDisableBG(u8 bg)
{
	REG_DISPCNT &= ~(1UL << (8 + bg));
}

void hrt_DSPEnableOBJ(void)
{
    REG_DISPCNT |= 0x1000;
}

void hrt_DSPDisableOBJ(void)
{
    REG_DISPCNT &= 0xEFFF;
}

void hrt_DSPConfigBG(u8 bg, u8 priority, u8 tilebase, u8 mosaic, u8 color, u8 mapbase, u8 wraparound, u8 dimensions)
{
	REG_BGxCNT(bg) = 0x01 * priority | 0x04 * tilebase | 0x40 * mosaic | 0x80 * color | 0x100 * mapbase | 0x2000 * wraparound | 0x4000 * dimensions;
}

void hrt_SetBGXY(u8 bg, int x, int y)
{
	REG_BGxHOFS(bg) = x;
	REG_BGxVOFS(bg) = y;
}

void hrt_SetBGX(u8 bg, int x)
{
	REG_BGxHOFS(bg) = x;
}

void hrt_SetBGY(u8 bg, int y)
{
	REG_BGxVOFS(bg) = y;
}

void hrt_InvertPalette(u16 start, u16 amount)
{
    register int i;
    for (i = 0; i < amount; i++) {
		PALETTE[start+i] = PALETTE[start+i] ^ 1;
    }
}