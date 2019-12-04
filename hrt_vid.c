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
u16* VRAM 	=(u16*)0x6000000;
u16* BGPaletteMem 	=(u16*)0x5000000;
u16* BGTileMem = (u16*)0x6004000;
u16* FrontBuffer = (u16*)0x6000000;
u16* BackBuffer = (u16*)0x600A000;
extern gba_system __hrt_system;
extern s16 SIN[360];
extern s16 COS[360];
extern s16 RAD[360];

void hrt_SetPaletteOfBGMap(u16 mapdata, u16 size, u8 pal)
{
    if (__hrt_system.hrt_start) {
		register u16 i;
		for(i=0; i < size; i++)
		{
			VRAM[(mapdata*2048)+i] &= ~(0xF000);
			VRAM[(mapdata*2048)+i] |= (pal << 12);
		}
	}
}

void hrt_FlipBGBuffer(void)
{
    if (__hrt_system.hrt_start) {
        if (REG_DISPCNT & 0x10) {                                                 //back buffer is current buffer, switch to font buffer
            REG_DISPCNT &= ~0x10;                                                   //flip active buffer to front buffer
            VRAM = BackBuffer;                                                     //point drawing buffer to the back buffer
        }
        else {                                                                         //front buffer is active so switch it to backbuffer
            REG_DISPCNT |= 0x10;                                                    //flip active buffer to back buffer by setting back buffer bit
            VRAM = FrontBuffer;                                                    //now we point our drawing buffer to the front buffer
        }
    }
}

void hrt_LoadBGPal(u16* data, u8 length, u8 offset)
{
    if (__hrt_system.hrt_start) {
        register int i;
        for (i = 0; i < length; i++) {
            BGPaletteMem[i+offset] = data[i];
        }
    }
}

void hrt_DrawPixel(int Mode, int x, int y, unsigned short color)
{
    if (__hrt_system.hrt_start) {
		register u16 pal;
		switch(Mode)
		{
			case 3:
				VRAM[y * 240 + x] = color;
				break;
			case 4:
				pal = VRAM[y * 120 + x]; //returns the pixel color at the position given
				if(hrt_IsNumberOdd(pal)) {
					pal = pal & 0xFF;
					pal |= ((u8)color << 8);
				}else{
					pal = pal & 0xFF00;
					pal |= (u8)color;
				}
				VRAM[y*120+x] = pal;
				break;
			case 5:
				VRAM[y * 120 + x] = color;
				break;
        }
    }
}

u16 hrt_GetPixelInMode3(int x, int y)
{
    if (__hrt_system.hrt_start) {
        return VRAM[y * 240 + x]; //returns the pixel color at the position given
    }
    return 0;
}
u8 hrt_GetPixelInMode4(int x, int y)
{
    if (__hrt_system.hrt_start) {
        register u16 pal;
        pal = VRAM[y * 120 + x]; //returns the pixel color at the position given
        if(hrt_IsNumberOdd(pal)) {
			pal = pal & 0xFF;
		}else{
			pal = pal & 0xFF00;
		}
		return BGPaletteMem[pal];
    }
    return 0;
}

void hrt_CyclePalette(int start, int amount, int pal)
{
    if (__hrt_system.hrt_start) {
		register int i;
		switch(pal)
		{
			case 0:
				ACCESS_16(MEM_PAL_COL_PTR(amount)) = ACCESS_16(MEM_PAL_COL_PTR(1));
				for (i = 0; i < amount; i++) {
					ACCESS_16(MEM_PAL_COL_PTR((i+start))) = ACCESS_16(MEM_PAL_COL_PTR((i + 1 + start)));
				}
				break;
			case 1:
				ACCESS_16(MEM_PAL_OBJ_PTR((amount - start))) = ACCESS_16(MEM_PAL_OBJ_PTR(1));
				for (i = 0; i < amount; i++) {
					ACCESS_16(MEM_PAL_OBJ_PTR((i+start))) = ACCESS_16(MEM_PAL_OBJ_PTR((i + 1 + start)));
				}
				break;
        }
    }
}

void hrt_InvertPalette(int start, int amount, int pal)
{
    if (__hrt_system.hrt_start) {
        if (pal == 0) {
            register int i;
            for (i = 0; i < amount; i++) {
                u16 Color = ACCESS_16(MEM_PAL_COL_PTR((i+start)));
                register u8 R = 255 - hrt_GetRedValueFromBGR(Color);
                register u8 G = 255 - hrt_GetGreenValueFromBGR(Color);
                register u8 B = 255 - hrt_GetBlueValueFromBGR(Color);
                ACCESS_16(MEM_PAL_COL_PTR((i+start))) = hrt_GenerateColorFromRGB(R, G, B);
            }
        }
        if (pal == 1) {
            register int i;
            for (i = 0; i < 256; i++) {
                register u16 Color = ACCESS_16(MEM_PAL_OBJ_PTR((i+start)));
                register u8 R = 255 - hrt_GetRedValueFromBGR(Color);
                register u8 G = 255 - hrt_GetGreenValueFromBGR(Color);
                register u8 B = 255 - hrt_GetBlueValueFromBGR(Color);
                ACCESS_16(MEM_PAL_OBJ_PTR(((i+start)))) = hrt_GenerateColorFromRGB(R, G, B);
            }
        }
    }
    return;
}

void hrt_DrawRectangle(int r, int c, int width, int height, u16 color, int mode)   //draws rectangle
{
    if (__hrt_system.hrt_start) {
        register int i, j;
        for (i = 0; i < height; i++) {
            for (j = 0; j < width; j++) {
                hrt_DrawPixel(mode, r + i, c + j, color);
            }
        }
    }
}

void hrt_DrawHollowRectangle(int r, int c, int width, int height, u16 color, int mode)   //draws rectangle
{
    if (__hrt_system.hrt_start) {
		//Draw Hollow rect
    }
}

void hrt_FillScreen(u16 color)   //fills screen with a solid color in mode 3
{
    if (__hrt_system.hrt_start) {
        register int i;
        for (i = 0; i < 38400; i++) {
            VRAM[i] = color;
        }
    }
}

void hrt_DrawLine(int x1, int y1, int x2, int y2, unsigned short color, int mode)
{
    if (__hrt_system.hrt_start) {
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
            hrt_DrawPixel(mode, x, y, color);
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
}

void hrt_DrawCircle(int xCenter, int yCenter, int radius, u16 color, int mode)
{
    if (__hrt_system.hrt_start) {
        register int x = 0;
        register int y = radius;
        register int p = 3 - 2 * radius;
        while (x <= y) {
            hrt_DrawPixel(mode, xCenter + x, yCenter + y, color);
            hrt_DrawPixel(mode, xCenter - x, yCenter + y, color);
            hrt_DrawPixel(mode, xCenter + x, yCenter - y, color);
            hrt_DrawPixel(mode, xCenter - x, yCenter - y, color);
            hrt_DrawPixel(mode, xCenter + y, yCenter + x, color);
            hrt_DrawPixel(mode, xCenter - y, yCenter + x, color);
            hrt_DrawPixel(mode, xCenter + y, yCenter - x, color);
            hrt_DrawPixel(mode, xCenter - y, yCenter - x, color);
            if (p < 0) {
                p += 4 * x++ + 6;
            }
            else {
                p += 4 * (x++ - y--) + 10;
            }
        }
    }
}

void hrt_ScanLines(u16 color, int time, int mode)
{
    if (__hrt_system.hrt_start) {
        register int x, y;
        for (x = 0; x < 240; x += 2) {
            for (y = 0; y < 160; y += 2) {
                hrt_DrawPixel(mode, x - 1, y, color);
                hrt_DrawPixel(mode, x, y, color);
                hrt_DrawPixel(mode, 240 - x + 1, y - 1, color);
                hrt_DrawPixel(mode, 240 - x, y - 1, color);
            }
            hrt_SleepF(time);
        }
    }
}

void hrt_LeftWipe(u16 color, int time, int mode)
{
    if (__hrt_system.hrt_start) {
        register int x1, y1;
        for (x1 = 0; x1 < 240; x1++) {
            for (y1 = 0; y1 < 160; y1++) {
                hrt_DrawPixel(mode, x1, y1, color);
            }
            hrt_SleepF(time);
        }
    }
}

void hrt_RightWipe(u16 color,int time, int mode)
{
    if (__hrt_system.hrt_start) {
        register int x1, y1;
        for (x1 = 240; x1 > 0; x1--) {
            for (y1 = 0; y1 < 160; y1++) {
                hrt_DrawPixel(mode, x1, y1, color);
            }
            hrt_SleepF(time);
        }
    }
}

void hrt_TopWipe(u16 color, int time, int mode)
{
    if (__hrt_system.hrt_start) {
        register int x1, y1;
        for (y1 = 0; y1 < 160; y1++) {
            for (x1 = 240; x1 != -1; x1--) {
                hrt_DrawPixel(mode, x1, y1, color);
            }
            hrt_SleepF(time);
        }
    }
}

void hrt_BottomWipe(u16 color, int time, int mode)
{
    if (__hrt_system.hrt_start) {
        register int x1, y1;
        for (y1 = 160; y1 > 0; y1--) {
            for (x1 = 240; x1 > 0; x1--) {
                hrt_DrawPixel(mode, x1, y1, color);
            }
            hrt_SleepF(time);
        }
    }
}

void hrt_CircleWipe(u16 color, int time, int mode)
{
    if (__hrt_system.hrt_start) {
        register int r;
        for (r = 0; r < 120; r++) {
            hrt_DrawCircle(120, 80, r, color, mode);
            hrt_SleepF(time);
        }
    }
}

void hrt_CoolScanLines(u16 color, int time, int mode)
{
    if (__hrt_system.hrt_start) {
        register int i;
        for (i = 1; i < 160; i += 2) {
            hrt_DrawLine(0, i, 240, i, color, mode);
            hrt_SleepF(time);
        }
        for (i = 240; i > 0; i -= 2) {
            hrt_DrawLine(0, i, 240, i, color, mode);
            hrt_SleepF(time);
        }
    }
}

u16 hrt_GetBGPalEntry(int slot)
{
    if (__hrt_system.hrt_start) {
        return BGPaletteMem[slot];
    }
    return 0;
}

u16 hrt_GetOBJPalEntry(int slot)
{
    if (__hrt_system.hrt_start) {
        return OBJPaletteMem[slot];
    }
    return 0;
}

void hrt_SetBGPalEntry(int slot, u16 color)
{
    if (__hrt_system.hrt_start) {
        BGPaletteMem[slot] = color;
    }
}

void hrt_SetOBJPalEntry(int slot, u16 color)
{
    if (__hrt_system.hrt_start) {
        OBJPaletteMem[slot] = color;
    }
}


void hrt_LoadDataIntoVRAM(u16* data, int length, int offset)
{
    if (__hrt_system.hrt_start) {
        register int i;
        for (i = 0; i < length; i++) {
            VRAM[i+offset] = data[i];
        }
    }
}

void hrt_FillPalette(int paltype, u16 color)   //fills a palette of the selection with the same color for each slot
{
    if (__hrt_system.hrt_start) {
		switch(paltype)
		{
			case 0: //BGPaletteMem
				memset(BGPaletteMem, color, 256);
				break;
			case 1: //OBJPaletteMem
				memset(OBJPaletteMem, color, 256);
				break;
		}
   }
}

void hrt_SetDSPMode(u8 mode, u8 CGB, u8 framesel, u8 unlockedhblank, u8 objmap, u8 forceblank, u8 bg0, u8 bg1, u8 bg2, u8 bg3, u8 obj, u8 win0, u8 win1, u8 objwin)
{
    if (__hrt_system.hrt_start) {
        REG_DISPCNT = 0x1 * mode | 0x8 * CGB | 0x10 * framesel | 0x20 * unlockedhblank | 0x40 * objmap | 0x80 * forceblank | 0x100 * bg0 | 0x200 * bg1 | 0x400 * bg2 | 0x800 * bg3 | 0x1000 * obj | 0x2000 * win0 | 0x4000 * win1 | 0x8000 * objwin;
    }
}

void hrt_ConfigBG(u8 bg, u8 priority, u8 tilebase, u8 mosaic, u8 color256, u8 tilemapbase, u8 wraparound, u8 dimensions)
{
    if (__hrt_system.hrt_start) {
		REG_BGxCNT(bg) = 0x01 * priority | 0x04 * tilebase | 0x40 * mosaic | 0x80 * color256 | 0x100 * tilemapbase | 0x2000 * wraparound | 0x4000 * dimensions;
	}
}

void hrt_LineWipe(u16 color, int time, u8 mode)
{
    if (__hrt_system.hrt_start) {
        register int x, y;
        for (y = 0; y < 160; y++) {
            hrt_DrawLine(240, 0, 0, y, color, mode);
            hrt_SleepF(time);
        }
        for (x = 0; x < 240; x++) {
            hrt_DrawLine(240, 0, x, 160, color, mode);
            hrt_SleepF(time);
        }
    }
}

void hrt_LoadOBJPal(unsigned int * pal, u16 size, u8 offset)
{
    if (__hrt_system.hrt_start) {
        register int 	x;
        for (x = 0; x < size; x++) {
            OBJPaletteMem[x + offset] = ((unsigned short*)pal)[x];
        }
    }
}

int hrt_ConfigDMA(u8 dstoff, u8 srcoff, u8 repeat, u8 b32, u8 starttiming, u8 irq, u8 enable)
{
    if (__hrt_system.hrt_start) {
        return 0x20 * dstoff | 0x80 * srcoff | 0x200 * repeat | 0x400 * b32 | 0x1000 * starttiming | 0x4000 * irq | 0x8000 * enable;
    }
    return 0;
}

u16 hrt_GenerateColorFromRGB(u32 red, u32 green, u32 blue)
{
    if (__hrt_system.hrt_start) {
        return red | (green << 5) | (blue << 10);
    }
    return 0;
}

u16 hrt_GetRedValueFromBGR(u16 bgr)
{
    if (__hrt_system.hrt_start) {
        return ((bgr & 0x001f) << 3);
    }
    return 0;
}

u16 hrt_GetGreenValueFromBGR(u16 bgr)
{
    if (__hrt_system.hrt_start) {
        return (((bgr >> 5) & 0x001f) << 3);
    }
    return 0;
}

u16 hrt_GetBlueValueFromBGR(u16 bgr)
{
    if (__hrt_system.hrt_start) {
        return (((bgr >> 10) & 0x001f) << 3);
    }
    return 0;
}

void hrt_DSPSetBGMode(u8 mode)
{
    if (__hrt_system.hrt_start) {
        REG_DISPCNT &= 0xFFF8;
        REG_DISPCNT |= mode;
    }
}

void hrt_DSPEnableForceBlank(void)
{
    if (__hrt_system.hrt_start) {
        REG_DISPCNT |= 0x0080;
    }
}

void hrt_DSPDisableForceBlank(void)
{
    if (__hrt_system.hrt_start) {
        REG_DISPCNT &= 0xFF7F;
    }
}

void hrt_DSPEnableBG(u8 layer)
{
	if (__hrt_system.hrt_start)
	{
		REG_DISPCNT |= 1UL << (8+layer);
	}
}

void hrt_DSPDisableBG(u8 layer)
{
	if (__hrt_system.hrt_start)
	{
		REG_DISPCNT &= ~(1UL << (8 + layer));
	}
}

void hrt_DSPEnableOBJ(void)
{
    if (__hrt_system.hrt_start) {
        REG_DISPCNT |= 0x1000;
    }
}

void hrt_DSPDisableOBJ(void)
{
    if (__hrt_system.hrt_start) {
        REG_DISPCNT &= 0xEFFF;
    }
}

void hrt_DSPEnableWIN(u8 win)
{
    if (__hrt_system.hrt_start) {
        REG_DISPCNT |= (1UL << (13+win));
    }
}

void hrt_DSPDisableWIN(u8 win)
{
    if (__hrt_system.hrt_start) {
        REG_DISPCNT &= ~(1UL << (13+win));
    }
}

void hrt_DSPEnableLinearOBJ(void)
{
	if (__hrt_system.hrt_start)
	{
		REG_DISPCNT |= BIT06;
	}
}

void hrt_DSPDisableLinearOBJ(void)
{
	if (__hrt_system.hrt_start -= 1)
	{
		REG_DISPCNT &= NOT_BIT06;
	}
}

u8 hrt_DSPGetBGMode(void)
{
    if (__hrt_system.hrt_start) {
		register u8 temp = REG_DISPCNT;
		temp &= 0x0007;
        return temp;
    }
    return 0;
}

void hrt_BGSet16Color(u8 layer)
{
    if (__hrt_system.hrt_start) {
        REG_BGxCNT(layer) &= 0xFF7F;
    }
}

void hrt_BGSet256Color(u8 layer)
{
    if (__hrt_system.hrt_start) {
		REG_BGxCNT(layer) |= 0x0080;
    }
}

void hrt_BGEnableMosaic(u8 layer)
{
    if (__hrt_system.hrt_start) {
		REG_BGxCNT(layer) |= 0x0040;
    }
}

void hrt_BGDisableMosaic(u8 layer)
{
    if (__hrt_system.hrt_start) {
		REG_BGxCNT(layer) &= 0xFFBF;
    }
}

void hrt_BGSetSize(u8 layer, u8 size)
{
    if (__hrt_system.hrt_start) {
		REG_BGxCNT(layer) &= 0x3FFF;
		REG_BGxCNT(layer) |= (size << 14);
    }
}

void hrt_BGSetMapBase(u8 layer, u8 no)
{
    if (__hrt_system.hrt_start) {
		REG_BGxCNT(layer) &= 0xE0FF;
		REG_BGxCNT(layer) |= (no << 8);
    }
}

void hrt_BGSetTileBase(u8 layer, u8 no)
{
    if (__hrt_system.hrt_start) {
		REG_BGxCNT(layer) &= 0xFFF3;
		REG_BGxCNT(layer) |= (no << 2);
    }
}

void hrt_BGSetPriority(u8 layer, u8 no)
{
    if (__hrt_system.hrt_start) {
		REG_BGxCNT(layer) &= 0xFFFD;
		REG_BGxCNT(layer) |= no;
    }
}


void hrt_SetBGXY(u8 bg, s16 x, s16 y)
{
	if(__hrt_system.hrt_start)
	{
		REG_BGxHOFS(bg) = x;
		REG_BGxVOFS(bg) = y;
	}
}

void hrt_SetBGX(u8 bg, s16 x)
{
	if(__hrt_system.hrt_start)
	{
		REG_BGxHOFS(bg) = x;
	}
}

void hrt_SetBGY(u8 bg, s16 y)
{
	if(__hrt_system.hrt_start)
	{
		REG_BGxVOFS(bg) = y;
	}
}

s16 hrt_GetBGX(u8 bg)
{
	if(__hrt_system.hrt_start)
	{
		return REG_BGxHOFS(bg);
	}
	return 0;
}

s16 hrt_GetBGY(u8 bg)
{
	if(__hrt_system.hrt_start)
	{
		return REG_BGxVOFS(bg);
	}
	return 0;
}

u8 hrt_GetBGPriority(u8 bg)
{
	if(__hrt_system.hrt_start)
	{
		register u16 temp = REG_BGxCNT(bg);
		temp &= 0x3;
		return temp;
	}
	return 0;
}

u8 hrt_GetBGTileBase(u8 bg)
{
	if(__hrt_system.hrt_start)
	{
		register u16 temp = REG_BGxCNT(bg);
		temp &= 0xC;
		return temp >> 2;
	}
	return 0;
}

u8 hrt_GetBGMapBase(u8 bg)
{
	if(__hrt_system.hrt_start)
	{
		register u16 temp = REG_BGxCNT(bg);
		temp &= 0x1E00;
		return temp >> 8;
	}
	return 0;
}

u8 hrt_GetBGScreenSize(u8 bg)
{
	if(__hrt_system.hrt_start)
	{
		register u16 temp = REG_BGxCNT(bg);
		temp &= 0xC000;
		return temp >> 14;
	}
	return 0;
}

u8 hrt_IsBGWraparound(u8 bg)
{
	if(__hrt_system.hrt_start)
	{
		return REG_BGxCNT(bg) & 13;
	}
	return 0;
}

u8 hrt_IsBGMosaic(u8 bg)
{
	if(__hrt_system.hrt_start)
	{
		return REG_BGxCNT(bg) & 6;
	}
	return 0;
}

u8 hrt_DSPIsBGEnabled(u8 bgno)
{
	if(__hrt_system.hrt_start)
	{
		return REG_BGxCNT(bgno) & (8+bgno);
	}
	return 0;
}

u8 hrt_DSPIsHBlankUnlocked()
{
	if(__hrt_system.hrt_start)
	{
		return REG_DISPCNT & 5;
	}
	return 0;
}

u8 hrt_DSPIsFrameSelect()
{
	if(__hrt_system.hrt_start)
	{
		return REG_DISPCNT & 4;
	}
	return 0;
}

u8 hrt_DSPIsWinEnabled(u8 window)
{
	if(__hrt_system.hrt_start)
	{
		return REG_DISPCNT & (0xD+window);
	}
	return 0;
}

u8 hrt_DSPIsLinearOBJEnabled()
{
	if(__hrt_system.hrt_start)
	{
		return REG_DISPCNT & 6;
	}
	return 0;
}

void hrt_EnableGreenSwap()
{
	if(__hrt_system.hrt_start)
	{
		REG_UNKNOWN0 = 1;
	}
}

void hrt_DisableGreenSwap()
{
	if(__hrt_system.hrt_start)
	{
		REG_UNKNOWN0 = 0;
	}
}

void hrt_DSPEnableBGWraparound(u8 layer)
{
	if (__hrt_system.hrt_start)
	{
		REG_BGxCNT(layer) |= 1UL << (0xD);
	}
}

void hrt_DSPDisableBGWraparound(u8 layer)
{
	if (__hrt_system.hrt_start)
	{
		REG_BGxCNT(layer) &= ~(0xDFFF);
	}
}

void hrt_AffineBG(u8 layer, s32 angle, u32 zoom, u32 cx, u32 cy)
{
	register u32 center_y;
	register u32 center_x;
	if (__hrt_system.hrt_start)
	{
		switch(layer)
		{
			case 2:
				center_y = (cy * zoom) >> 8;
				center_x = (cx * zoom) >> 8;
				REG_BG2X = (REG_BG2HOFS - center_y * SIN[angle] - center_x * COS[angle]);
				REG_BG2Y = (REG_BG2VOFS - center_y * COS[angle] + center_x * SIN[angle]);
				REG_BG2PA = (COS[angle] * zoom) >> 8;
				REG_BG2PB = (SIN[angle] * zoom) >> 8;
				REG_BG2PC = (-SIN[angle] * zoom) >> 8;
				REG_BG2PD = (COS[angle] * zoom) >> 8;
				break;
			case 3:
				center_y = (cy * zoom) >> 8;
				center_x = (cx * zoom) >> 8;
				REG_BG3X = (REG_BG3HOFS - center_y * SIN[angle] - center_x * COS[angle]);
				REG_BG3Y = (REG_BG3VOFS - center_y * COS[angle] + center_x * SIN[angle]);
				REG_BG3PA = (COS[angle] * zoom) >> 8;
				REG_BG3PB = (SIN[angle] * zoom) >> 8;
				REG_BG3PC = (-SIN[angle] * zoom) >> 8;
				REG_BG3PD = (COS[angle] * zoom) >> 8;		
				break;
		}
	}
}
		
		
void hrt_DrawBitmapSector(u16* pbg,u16 x, u16 y, u16 w, u16 h)
{
	if (__hrt_system.hrt_start)
	{
		register u16 *p;
		register u16 yi,ww,hh;
		p=VRAM;
		hh = (y+h>160)?160:(y+h);
		ww  = (x+w>240)?(240-x):w;
		for(yi=y; yi < hh; yi++) {
			hrt_DMACopy(3, pbg+yi*240+x, p+yi*240+x,ww*2>>1,0x80000000);
		}
	}
}

void hrt_DSPToggleBG(u8 bgno)
{
	if (__hrt_system.hrt_start)
	{
		REG_DISPCNT ^= 1UL << (8+bgno);
	}
}

void hrt_DSPToggleOBJ(void)
{
    if (__hrt_system.hrt_start) {
        REG_DISPCNT ^= 0x1000;
    }
}

void hrt_DSPToggleForceBlank(void)
{
    if (__hrt_system.hrt_start) {
        REG_DISPCNT ^= 0x0080;
    }
}

void hrt_DSPToggleLinearOBJ(void)
{
    if (__hrt_system.hrt_start) {
        REG_DISPCNT ^= 0x0040;
    }
}


void hrt_DSPToggleFrameSelect(void)
{
    if (__hrt_system.hrt_start) {
        REG_DISPCNT ^= 0x0010;
    }
}

void hrt_DSPToggleWin(u8 win)
{
    if (__hrt_system.hrt_start) {
       REG_DISPCNT ^= (1UL << (13+win));
    }
}

void hrt_ToggleBGMosaic(u8 bg)
{
	if(__hrt_system.hrt_start)
	{
		REG_BGxCNT(bg) ^= 0x40;
	}
}

void hrt_DestroyBG(u8 bg)
{
	if(__hrt_system.hrt_start)
	{
		REG_BGxCNT(bg) = 0;
		REG_BGxVOFS(bg) = 0;
		REG_BGxHOFS(bg) = 0;
		hrt_DSPDisableBG(bg);
	}
}

void hrt_SetMapTileAttributes(u32 ptr, u16 tilenumber, u8 hflip, u8 vflip, u8 palettenum)
{
	if(__hrt_system.hrt_start)
	{
		register u16 map = 0;
		map |= tilenumber % 1024;
		map |= hflip << 10;
		map |= vflip << 11;
		map |= (palettenum % 16) << 12;
		VRAM[ptr] = map;
	}
}

void hrt_PalFade(u8 start, u8 count, u8 steps, u8 mode)
{
		register u8 i;
		register u8 r,g,b;
		register u8 i2;
		register u16 color;
		for(i=0;i<count;i++)
		{
			r = hrt_GetRedValueFromBGR(BGPaletteMem[i+start]);
			g = hrt_GetGreenValueFromBGR(BGPaletteMem[i+start]);
			b = hrt_GetBlueValueFromBGR(BGPaletteMem[i+start]);
			for(i2=0;i2<steps;i2++)
			{
				if(mode == 0)//darken
				{
					if((r > 0)) r--;
					if((g > 0)) g--;
					if((b > 0)) b--;
				}else{ //brighten
					if((r < 31)) r++;
					if((g < 31)) g++;
					if((b < 31)) b++;			
				}
			}		
			BGPaletteMem[i+start] = hrt_GenerateColorFromRGB(r, g, b);
		}
	}
