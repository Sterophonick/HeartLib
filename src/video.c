#include "hrt_video.h"
#include "hrt_misc.h"

void hrt_LoadDataIntoVRAM(u16* data, u32 offset, u32 length)
{
	hrt_DMACopy(3, (void*)data, ((void*)(VRAM + (offset))), length, 0x80000000);
}

void hrt_LoadDataIntoPalette(u16* data, u32 offset, u32 length)
{
	hrt_DMACopy(3, (void*)data, ((void*)(PALETTE + (offset))), length, 0x80000000);
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
	REG_DISPCNT |= 1UL << (8 + bg);
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
		PALETTE[start + i] = PALETTE[start + i] ^ 1;
	}
}

void hrt_PlotPixelInMode3(u8 x, u8 y, u16 color)
{
	VRAM[y * 240 + x] = color;
}

void hrt_PlotPixelInMode5(u8 x, u8 y, u16 color)
{
	VRAM[y * 160 + x] = color;
}

void hrt_DrawLine3(int x1, int y1, int x2, int y2, unsigned short color)
{
	int i, deltax, deltay, numpixels;
	int d, dinc1, dinc2;
	int x, xinc1, xinc2;
	int y, yinc1, yinc2;
	//calculate deltaX and deltaY
	deltax = abs(x2 - x1);
	deltay = abs(y2 - y1);
	//initialize
	if (deltax >= deltay) {
		//If x is independent variable
		numpixels = deltax + 1;
		d = (2 * deltay) - deltax;
		dinc1 = deltay << 1;
		dinc2 = (deltay - deltax) << 1;
		xinc1 = 1;
		xinc2 = 1;
		yinc1 = 0;
		yinc2 = 1;
	}
	else {
		//if y is independent variable
		numpixels = deltay + 1;
		d = (2 * deltax) - deltay;
		dinc1 = deltax << 1;
		dinc2 = (deltax - deltay) << 1;
		xinc1 = 0;
		xinc2 = 1;
		yinc1 = 1;
		yinc2 = 1;
	}
	//move the right direction
	if (x1 > x2) {
		xinc1 = -xinc1;
		xinc2 = -xinc2;
	}
	if (y1 > y2) {
		yinc1 = -yinc1;
		yinc2 = -yinc2;
	}
	x = x1;
	y = y1;
	//draw the pixels
	for (i = 1; i < numpixels; i++) {
		hrt_PlotPixelInMode3(x, y, color);
		if (d < 0) {
			d = d + dinc1;
			x = x + xinc1;
			y = y + yinc1;
		}
		else {
			d = d + dinc2;
			x = x + xinc2;
			y = y + yinc2;
		}
	}
}

void hrt_DSPEnableForceBlank(void)
{
	REG_DISPCNT |= 0x0080;
}

void hrt_DSPDisableForceBlank(void)
{
	REG_DISPCNT &= 0xFF7F;
}

void hrt_EnableGreenSwap(void)
{
	REG_UNKNOWN0 = 1;
}

void hrt_DisableGreenSwap(void)
{
	REG_UNKNOWN0 = 0;
}

u16 hrt_GetPixelInMode3(int x, int y)
{
	return VRAM[y * 240 + x]; //returns the pixel color at the position given
}

void hrt_DestroyBG(u8 bg)
{
	REG_BGxCNT(bg) = 0;
	REG_BGxVOFS(bg) = 0;
	REG_BGxHOFS(bg) = 0;
	hrt_DSPDisableBG(bg);
}

void hrt_DSPEnableLinearOBJ(void)
{
	REG_DISPCNT |= BIT06;
}

void hrt_DSPDisableLinearOBJ(void)
{
	REG_DISPCNT &= NOT_BIT06;
}

void hrt_BGSet16Color(u8 layer)
{
	REG_BGxCNT(layer) &= 0xFF7F;
}

void hrt_BGSet256Color(u8 layer)
{
	REG_BGxCNT(layer) |= 0x0080;
}

void hrt_BGEnableMosaic(u8 layer)
{
	REG_BGxCNT(layer) |= 0x0040;
}

void hrt_BGDisableMosaic(u8 layer)
{
	REG_BGxCNT(layer) &= 0xFFBF;
}

void hrt_BGSetSize(u8 layer, u8 size)
{
	REG_BGxCNT(layer) &= 0x3FFF;
	REG_BGxCNT(layer) |= (size << 14);
}

void hrt_BGSetMapBase(u8 layer, u8 no)
{
	REG_BGxCNT(layer) &= 0xE0FF;
	REG_BGxCNT(layer) |= (no << 8);
}

void hrt_BGSetTileBase(u8 layer, u8 no)
{
	REG_BGxCNT(layer) &= 0xFFF3;
	REG_BGxCNT(layer) |= (no << 2);
}

void hrt_BGSetPriority(u8 layer, u8 no)
{
	REG_BGxCNT(layer) &= 0xFFFD;
	REG_BGxCNT(layer) |= no;
}