#include "libheart.h"
u16* VRAM 	=(u16*)0x6000000;
u16* BGPaletteMem 	=(u16*)0x5000000;
u16* BGTileMem = (u16*)0x6004000;
u16* FrontBuffer = (u16*)0x6000000;
u16* BackBuffer = (u16*)0x600A000;
extern u8 hrt_start;
extern int	hrt_offsetOAMData;
extern int hrt_offsetOAMPal;
extern int hrt_offsetBGMap;
extern int hrt_offsetBGTile;
extern int hrt_offsetBGPal;

const char* ee = "In loving memory of the HAMLib and ngine.de. HeartLib by Sterophonick. 2018.";
const char* ee2 = "I would like to thank Mark Holloway, Tubooboo, Dwedit, gauauu, DevKitPro, Nintendo, sverx, endrift, GBATek, 3DSage, and DekuTree64 for helping me create this library.";
const char* ee3 = "Without them, this project couldn't have been completed.";

void hrt_FlipBGBuffer(void) {
	if (hrt_start == 1) {
		if (REG_DISPCNT & BACKBUFFER)                                                   //back buffer is current buffer, switch to font buffer
		{
			REG_DISPCNT &= ~BACKBUFFER;                                                   //flip active buffer to front buffer
			VRAM = BackBuffer;                                                     //point drawing buffer to the back buffer
		}
		else                                                                           //front buffer is active so switch it to backbuffer
		{
			REG_DISPCNT |= BACKBUFFER;                                                    //flip active buffer to back buffer by setting back buffer bit
			VRAM = FrontBuffer;                                                    //now we point our drawing buffer to the front buffer
		}
	}
}

u32 hrt_GetOffset(u8 no) {
	if (hrt_start == 1) {
		switch (no) {
		case 0:
			return hrt_offsetOAMData;
			break;
		case 1:
			return hrt_offsetOAMPal;
			break;
		case 2:
			return hrt_offsetBGMap;
			break;
		case 3:
			return hrt_offsetBGPal;
			break;
		case 4:
			return hrt_offsetBGTile;
			break;
		}
	}
	return 0;
}

void hrt_SetOffset(u8 no, u32 amount) {
    if (hrt_start == 1) {
        switch (no) {
        case 0:
            hrt_offsetOAMData = amount;
            break;
        case 1:
            hrt_offsetOAMPal = amount;
            break;
        case 2:
            hrt_offsetBGMap = amount;
            break;
        case 3:
            hrt_offsetBGPal = amount;
            break;
        case 4:
            hrt_offsetBGTile = amount;
            break;
        }
    }
}

void hrt_DMA_Copy(u8 channel, void* source, void* dest, u32 WordCount, u32 mode) {
    if (hrt_start == 1) {
        switch (channel) {
        case 0:
            REG_DMA0SAD = (u32)source;
            REG_DMA0DAD = (u32)dest;
            REG_DMA0CNT = WordCount | mode;
            break;
        case 1:
            REG_DMA1SAD = (u32)source;
            REG_DMA1DAD = (u32)dest;
            REG_DMA1CNT = WordCount | mode;
            break;
        case 2:
            REG_DMA2SAD = (u32)source;
            REG_DMA2DAD = (u32)dest;
            REG_DMA2CNT = WordCount | mode;
            break;
        case 3:
            REG_DMA3SAD = (u32)source;
            REG_DMA3DAD = (u32)dest;
            REG_DMA3CNT = WordCount | mode;
            break;
        }
    }
}

void hrt_EditBG(u8 bg, int x, int y, int x_size, int y_size, int angle, int centerx, int centery) {
    if (hrt_start == 1) {
        switch (bg) {
        case 0:
            REG_BG0HOFS = x;
            REG_BG0VOFS = y;
            break;
        case 1:
            REG_BG1HOFS = x;
            REG_BG1VOFS = y;
            break;
        case 2:
            REG_BG2HOFS = x;
            REG_BG2VOFS = y;
            REG_BG2PA = ((x_size) * (s32)COS[angle % 360]) >> 8;    //(do my fixed point multiplies and shift back down)
            REG_BG2PB = ((y_size) * (s32)SIN[angle % 360]) >> 8;
            REG_BG2PC = ((x_size) * (s32)-SIN[angle % 360]) >> 8;
            REG_BG2PD = ((y_size) * (s32)COS[angle % 360]) >> 8;
            break;
        case 3:
            REG_BG3HOFS = x;
            REG_BG3VOFS = y;
            REG_BG3PA = ((x_size) * (s32)COS[angle % 360]) >> 8;    //(do my fixed point multiplies and shift back down)
            REG_BG3PB = ((y_size) * (s32)SIN[angle % 360]) >> 8;
            REG_BG3PC = ((x_size) * (s32)-SIN[angle % 360]) >> 8;
            REG_BG3PD = ((y_size) * (s32)COS[angle % 360]) >> 8;
        default:
            break;
        }
    }
}

void hrt_LoadBGPal(u16* data, u16 length) {
    if (hrt_start == 1) {
        int i;
        for (i = 0; i < 255; i++) {
            BGPaletteMem[i+hrt_offsetBGPal] = data[i];
        }
        hrt_offsetBGPal += length;
    }
}

void hrt_DrawPixel(int Mode, int x, int y, unsigned short color) {
    if (hrt_start == 1) {
        if (Mode == 3) {
            VRAM[y * 240 + x] = color;
        } else if (Mode == 4) {
            VRAM[y * 120 + x] = color;
        } else if (Mode == 5) {
            VRAM[y * 120 + x] = color;
        }
    }
}

u16 hrt_GetPixelInMode3(int x, int y) {
	if (hrt_start == 1) {
		return VRAM[y * 240 + x]; //returns the pixel color at the position given
	}
	return 0;
}
u16 hrt_GetPixelInMode4(int x, int y) {
	if (hrt_start == 1) {
		u8 pal;
		pal = (u8)VRAM[y * 120 + x]; //returns the pixel color at the position given
		return BGPaletteMem[pal];
	}
	return 0;
}

void hrt_CyclePalette(int start, int amount, int pal) {
    if (hrt_start == 1) {
        if (pal == 0) {
            int i;
            ACCESS_16(MEM_PAL_COL_PTR(amount)) = ACCESS_16(MEM_PAL_COL_PTR(1));
            for (i = 0; i < amount; i++) {
                ACCESS_16(MEM_PAL_COL_PTR((i+start))) = ACCESS_16(MEM_PAL_COL_PTR((i + 1 + start)));
            }
        }
        if (pal == 1) {
            int i;
            ACCESS_16(MEM_PAL_OBJ_PTR((amount - start))) = ACCESS_16(MEM_PAL_OBJ_PTR(1));
            for (i = 0; i < amount; i++) {
                ACCESS_16(MEM_PAL_OBJ_PTR((i+start))) = ACCESS_16(MEM_PAL_OBJ_PTR((i + 1 + start)));
            }
        }
    }
    return;
}

void hrt_InvertPalette(int start, int amount, int pal) {
    if (hrt_start == 1) {
        if (pal == 0) {
            int i;
            for (i = 0; i < amount; i++) {
                u16 Color = ACCESS_16(MEM_PAL_COL_PTR((i+start)));
                u8 R = 255 - hrt_GetRedValueFromBGR(Color);
                u8 G = 255 - hrt_GetGreenValueFromBGR(Color);
                u8 B = 255 - hrt_GetBlueValueFromBGR(Color);
                ACCESS_16(MEM_PAL_COL_PTR((i+start))) = hrt_GenerateColorFromRGB(R, G, B);
            }
        }
        if (pal == 1) {
            int i;
            for (i = 0; i < 256; i++) {
                u16 Color = ACCESS_16(MEM_PAL_OBJ_PTR((i+start)));
                u8 R = 255 - hrt_GetRedValueFromBGR(Color);
                u8 G = 255 - hrt_GetGreenValueFromBGR(Color);
                u8 B = 255 - hrt_GetBlueValueFromBGR(Color);
                ACCESS_16(MEM_PAL_OBJ_PTR(((i+start)))) = hrt_GenerateColorFromRGB(R, G, B);
            }
        }
    }
    return;
}

void hrt_DrawRectangle(int r, int c, int width, int height, u16 color, int mode) { //draws rectangle
    if (hrt_start == 1) {
        int i, j;
        for (i = 0; i < height; i++) {
            for (j = 0; j < width; j++) {
                hrt_DrawPixel(mode, r + i, c + j, color);
            }
        }
    }
}

void hrt_FillScreen(u16 color) { //fills screen with a solid color in mode 3
    if (hrt_start == 1) {
        int i;
        for (i = 0; i < 38400; i++) {
            VRAM[i] = color;
        }
    }
}

void hrt_DrawLine(int x1, int y1, int x2, int y2, unsigned short color, int mode) {
    if (hrt_start == 1) {
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
        } else {
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
            } else {
                d = d + dinc2;
                x = x + xinc2;
                y = y + yinc2;
            }
        }
    }
}

void hrt_DrawCircle(int xCenter, int yCenter, int radius, u16 color, int mode) {
    if (hrt_start == 1) {
        int x = 0;
        int y = radius;
        int p = 3 - 2 * radius;
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
            } else {
                p += 4 * (x++ - y--) + 10;
            }
        }
    }
}

void hrt_ScanLines(u16 color, int time, int mode) {
    if (hrt_start == 1) {
        int x, y;

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

void hrt_LeftWipe(u16 color, int time, int mode) {
    if (hrt_start == 1) {
        int x1, y1;
        for (x1 = 0; x1 < 240; x1++) {
            for (y1 = 0; y1 < 160; y1++) {
                hrt_DrawPixel(mode, x1, y1, color);
            }
            hrt_SleepF(time);
        }
    }
}

void hrt_RightWipe(u16 color,int time, int mode) {
    if (hrt_start == 1) {
        int x1, y1;
        for (x1 = 240; x1 > 0; x1--) {
            for (y1 = 0; y1 < 160; y1++) {
                hrt_DrawPixel(mode, x1, y1, color);
            }
            hrt_SleepF(time);
        }
    }
}

void hrt_TopWipe(u16 color, int time, int mode) {
    if (hrt_start == 1) {
        int x1, y1;
        for (y1 = 0; y1 < 160; y1++) {
            for (x1 = 240; x1 != -1; x1--) {
                hrt_DrawPixel(mode, x1, y1, color);
            }
            hrt_SleepF(time);
        }
    }
}

void hrt_BottomWipe(u16 color, int time, int mode) {
    if (hrt_start == 1) {
        int x1, y1;
        for (y1 = 160; y1 > 0; y1--) {
            for (x1 = 240; x1 > 0; x1--) {
                hrt_DrawPixel(mode, x1, y1, color);
            }
            hrt_SleepF(time);
        }
    }
}

void hrt_CircleWipe(u16 color, int time, int mode) {
    if (hrt_start == 1) {
        int r;
        for (r = 0; r < 120; r++) {
            hrt_DrawCircle(120, 80, r, color, mode);
            hrt_SleepF(time);
        }
    }
}

void hrt_CoolScanLines(u16 color, int time, int mode) {
    if (hrt_start == 1) {
        int i;
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

u16 hrt_GetBGPalEntry(int slot) {
    if (hrt_start == 1) {
        return BGPaletteMem[slot];
    }
    return 0;
}

u16 hrt_GetOBJPalEntry(int slot) {
    if (hrt_start == 1) {
        return OBJPaletteMem[slot];
    }
    return 0;
}

void hrt_SetBGPalEntry(int slot, u16 color) {
    if (hrt_start == 1) {
        BGPaletteMem[slot] = color;
    }
}

void hrt_SetOBJPalEntry(int slot, u16 color) {
    if (hrt_start == 1) {
        OBJPaletteMem[slot] = color;
    }
}

void hrt_LoadBGTiles(u16* data, int length) {
    if (hrt_start == 1) {
        int i;
        for (i = 0; i < length; i++) {
            BGTileMem[i+hrt_offsetBGTile] = data[i];
        }
        hrt_offsetBGTile += length;
    }
}

void hrt_LoadBGMap(u16* data, int length) {
    if (hrt_start == 1) {
        int i;
        for (i = 0; i < length; i++) {
            VRAM[i+hrt_offsetBGMap] = data[i];
        }
        hrt_offsetBGMap += length;
    }
}

void hrt_FillPalette(int paltype, u16 color) { //fills a palette of the selection with the same color for each slot
    if (hrt_start == 1) {
        int pixpos;
        if (paltype == 0) { //BGPaletteMem
            for (pixpos = 0; pixpos < 256; pixpos++) {
                BGPaletteMem[pixpos] = color;
            }
        } else {
            if (paltype == 1) { //OBJPaletteMem
                for (pixpos = 0; pixpos < 256; pixpos++) {
                    OBJPaletteMem[pixpos] = color;
                }
            } else { //if no kind of mem is selected
                hrt_SetDSPMode(3, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);
                hrt_Assert("HRT_FILLPAL()", 1, "INVALID ARGUMENT");
                while (1); //stops the program due to an invalid type
            }
        }
    }
}

void hrt_SetFXMode(u8 bg0, u8 bg1, u8 bg2, u8 bg3, u8 obj, u8 backdrop, u8 mode, u8 bg0_2, u8 bg1_2, u8 bg2_2, u8 bg3_2, u8 obj_2, u8 backdrop_2) {
    if (hrt_start == 1) {
        REG_BLDCNT = 1 * bg0 | 2 * bg1 | 4 * bg2 | 8 * bg3 | 0x10 * obj | 0x20 * backdrop | 0x40 * mode | 0x100 * bg0_2 | 0x200 * bg1_2 | 0x400 * bg2_2 | 0x800 * bg3_2 | 0x1000 * obj_2 | 0x2000 * backdrop_2;
    }
}

void hrt_SetFXLevel(u8 level) {
    if (hrt_start == 1) {
        REG_BLDY = level;
    }
}

void hrt_SetDSPMode(u8 mode, u8 CGB, u8 framesel, u8 unlockedhblank, u8 objmap, u8 forceblank, u8 bg0, u8 bg1, u8 bg2, u8 bg3, u8 obj, u8 win0, u8 win1, u8 objwin) {
    if (hrt_start == 1) {
        REG_DISPCNT = 0x1 * mode | 0x8 * CGB | 0x10 * framesel | 0x20 * unlockedhblank | 0x40 * objmap | 0x80 * forceblank | 0x100 * bg0 | 0x200 * bg1 | 0x400 * bg2 | 0x800 * bg3 | 0x1000 * obj | 0x2000 * win0 | 0x4000 * win1 | 0x8000 * objwin;
    }
}

void hrt_ConfigBG(u8 bg, u8 priority, u8 tilebase, u8 mosaic, u8 color256, u8 tilemapbase, u8 wraparound, u8 dimensions) {
    if (hrt_start == 1) {
        if (bg == 0) {
            REG_BG0CNT = 0x01 * priority | 0x04 * tilebase | 0x40 * mosaic | 0x80 * color256 | 0x100 * tilemapbase | 0x4000 * dimensions;
        } else if (bg == 1) {
            REG_BG1CNT = 0x01 * priority | 0x04 * tilebase | 0x40 * mosaic | 0x80 * color256 | 0x100 * tilemapbase | 0x4000 * dimensions;
        } else if (bg == 2) {
            REG_BG2CNT = 0x01 * priority | 0x04 * tilebase | 0x40 * mosaic | 0x80 * color256 | 0x100 * tilemapbase | 0x2000 * wraparound | 0x4000 * dimensions;
        } else if (bg == 3) {
            REG_BG3CNT = 0x01 * priority | 0x04 * tilebase | 0x40 * mosaic | 0x80 * color256 | 0x100 * tilemapbase | 0x2000 * wraparound | 0x4000 * dimensions;
        } else {
            hrt_Assert("HRT_CONFIGBG()", 1, "INVALID ARGUMENT");
        }
    }
}

void hrt_Assert(char* func, int arg, char* desc) {
    if (hrt_start == 1) {
        u8* buf[256];
        hrt_SetDSPMode(3, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0);
        hrt_FillScreen(0x0000);
        hrt_PrintOnBitmap(0, 0, "HEARTLIB HAS CRASHED!");
        hrt_PrintOnBitmap(0, 9, "FUNCTION: ");
        hrt_PrintOnBitmap(80, 9, (char*)func);
		sprintf((char*)buf, "ARG: %d", arg);
        hrt_PrintOnBitmap(0, 18, (char*)buf);
        hrt_PrintOnBitmap(0, 27, (char*)desc);
		hrt_PrintOnBitmap(0, 54, "PLEASE RESET THE CONSOLE");
        while (1);
    }
}

void hrt_LineWipe(u16 color, int time, u8 mode) {
    if (hrt_start == 1) {
        int x, y;
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

void hrt_SetMosaic(u8 bh, u8 bv, u8 oh, u8 ov) {
    if (hrt_start == 1) {
		REG_MOSAIC = ((bh)+(bv << 4) + (oh << 8) + (ov << 12));
    }
}

void hrt_LoadOBJPal(unsigned int * pal, u16 size)
{
	if (hrt_start == 1) {
		int 	x;
		for (x = 0; x < size; x++)
			OBJPaletteMem[x + hrt_offsetOAMPal] = ((unsigned short*)pal)[x];
		hrt_offsetOAMPal += size;
	}
}

void hrt_LoadOBJGFX(unsigned int * gfx, int size)
{
	if (hrt_start == 1) {
		int 	x;
		for (x = 0; x < size; x++)
			OAMData[(8192 + hrt_offsetOAMData) + x] = ((unsigned short*)gfx)[x];
		hrt_offsetOAMData += size;
	}
}

void hrt_SetTile(u8 x, u8 y, int tileno)
{
	if (hrt_start == 1) {
		VRAM[y * 256 + x] = tileno;
	}
}

void hrt_SetFXAlphaLevel(u8 src, u8 dst)
{
	if (hrt_start == 1)
	{
		REG_BLDALPHA_L = src;
		REG_BLDALPHA_H = dst;
	}
}

int hrt_ConfigDMA(u8 dstoff, u8 srcoff, u8 repeat, u8 b32, u8 starttiming, u8 irq, u8 enable)
{
	if (hrt_start == 1)
	{
		return 0x20 * dstoff | 0x80 * srcoff | 0x200 * repeat | 0x400 * b32 | 0x1000 * starttiming | 0x4000 * irq | 0x8000 * enable;
	}
    return 0;
}

void hrt_ConfigWININ(u8 bg0, u8 bg1, u8 bg2, u8 bg3, u8 obj, u8 bld, u8 bg0_2, u8 bg1_2, u8 bg2_2, u8 bg3_2, u8 obj_2, u8 bld_2)
{
	if (hrt_start == 1)
	{
		REG_WININ = bg0 * 0x0001 | bg1 * 0x0002 | bg2 * 0x0004 | bg3 * 0x0008 | obj * 0x0010 | bld * 0x0020 | bg0_2 * 0x0100 | bg1_2 * 0x0200 | bg2_2 * 0x0400 | bg3_2 * 0x0800 | obj_2 * 0x1000 | bld_2 * 0x2000;
	}
}
void hrt_ConfigWINOUT(u8 bg0, u8 bg1, u8 bg2, u8 bg3, u8 obj, u8 bld, u8 bg0_obj, u8 bg1_obj, u8 bg2_obj, u8 bg3_obj, u8 obj_obj, u8 bld_obj)
{
	if (hrt_start == 1)
	{
		REG_WINOUT = bg0 * 0x0001 | bg1 * 0x0002 | bg2 * 0x0004 | bg3 * 0x0008 | obj * 0x0010 | bld * 0x0020 | bg0_obj * 0x0100 | bg1_obj * 0x0200 | bg2_obj * 0x0400 | bg3_obj * 0x0800 | obj_obj * 0x1000 | bld_obj * 0x2000;
	}
}

u16 hrt_GenerateColorFromRGB(u32 red, u32 green, u32 blue)
{
	if (hrt_start == 1)
	{
		return red | (green << 5) | (blue << 10);
	}
	return 0;
}

u16 hrt_GetRedValueFromBGR(u16 bgr)
{
	if (hrt_start == 1)
	{
		return ((bgr & 0x001f) << 3);
	}
	return 0;
}

u16 hrt_GetGreenValueFromBGR(u16 bgr)
{
	if (hrt_start == 1)
	{
		return (((bgr >> 5) & 0x001f) << 3);
	}
	return 0;
}

u16 hrt_GetBlueValueFromBGR(u16 bgr)
{
	if (hrt_start == 1)
	{
		return (((bgr >> 10) & 0x001f) << 3);
	}
	return 0;
}

void hrt_SetDSPBGMode(u8 mode)
{
	if (hrt_start == 1)
	{
		REG_DISPCNT &= 0xFFF8;
		REG_DISPCNT |= mode;
	}
}

void hrt_DSPEnableForceBlank(void)
{
	if (hrt_start == 1)
	{
		REG_DISPCNT |= 0x0080;
	}
}

void hrt_DSPDisableForceBlank(void)
{
	if (hrt_start == 1)
	{
		REG_DISPCNT &= 0xFF7F;
	}
}

void hrt_DSPEnableBG0(void)
{
	if (hrt_start == 1)
	{
		REG_DISPCNT |= 0x0100;
	}
}

void hrt_DSPDisableBG0(void)
{
	if (hrt_start == 1)
	{
		REG_DISPCNT &= 0xFEFF;
	}
}

void hrt_DSPEnableBG1(void)
{
	if (hrt_start == 1)
	{
		REG_DISPCNT |= 0x0200;
	}
}

void hrt_DSPDisableBG1(void)
{
	if (hrt_start == 1)
	{
		REG_DISPCNT &= 0xFDFF;
	}
}

void hrt_DSPEnableBG2(void)
{
	if (hrt_start == 1)
	{
		REG_DISPCNT |= 0x0400;
	}
}

void hrt_DSPDisableBG2(void)
{
	if (hrt_start == 1)
	{
		REG_DISPCNT &= 0xFBFF;
	}
}

void hrt_DSPEnableBG3(void)
{
	if (hrt_start == 1)
	{
		REG_DISPCNT |= 0x0800;
	}
}

void hrt_DSPDisableBG3(void)
{
	if (hrt_start == 1)
	{
		REG_DISPCNT &= 0xF7FF;
	}
}

void hrt_DSPEnableOBJ(void)
{
	if (hrt_start == 1)
	{
		REG_DISPCNT |= 0x1000;
	}
}

void hrt_DSPDisableOBJ(void)
{
	if (hrt_start == 1)
	{
		REG_DISPCNT &= 0xEFFF;
	}
}

void hrt_DSPEnableWIN0(void)
{
	if (hrt_start == 1)
	{
		REG_DISPCNT |= 0x2000;
	}
}

void hrt_DSPDisableWIN0(void)
{
	if (hrt_start == 1)
	{
		REG_DISPCNT &= 0xDFFF;
	}
}

void hrt_DSPEnableWIN1(void)
{
	if (hrt_start == 1)
	{
		REG_DISPCNT |= 0x4000;
	}
}

void hrt_DSPDisableWIN1(void)
{
	if (hrt_start == 1)
	{
		REG_DISPCNT &= 0xBFFF;
	}
}

void hrt_DSPEnableWINO(void)
{
	if (hrt_start == 1)
	{
		REG_DISPCNT |= 0x8000;
	}
}

void hrt_DSPDisableWINO(void)
{
	if (hrt_start == 1)
	{
		REG_DISPCNT &= 0x7FFF;
	}
}

u8 hrt_DSPGetBGMode(void)
{
	if (hrt_start == 1)
	{
		return REG_DISPCNT & 0x7;
	}
	return 0;
}

void hrt_BG0Set16Color(void)
{
	if (hrt_start == 1)
	{
		REG_BG0CNT &= 0xFF7F;
	}
}

void hrt_BG0Set256Color(void)
{
	if (hrt_start == 1)
	{
		REG_BG0CNT |= 0x0080;
	}
}

void hrt_BG0EnableMosaic(void)
{
	if (hrt_start == 1)
	{
		REG_BG0CNT |= 0x0040;
	}
}

void hrt_BG0DisableMosaic(void)
{
	if (hrt_start == 1)
	{
		REG_BG0CNT &= 0xFFBF;
	}
}

void hrt_BG0SetSize(u8 size)
{
	if (hrt_start == 1)
	{
		REG_BG0CNT &= 0x3FFF;
		REG_BG0CNT |= (size << 14);
	}
}

void hrt_BG0SetMapBase(u8 no)
{
	if (hrt_start == 1)
	{
		REG_BG0CNT &= 0xE0FF;
		REG_BG0CNT |= (no << 8);
	}
}

void hrt_BG0SetTileBase(u8 no)
{
	if (hrt_start == 1)
	{
		REG_BG0CNT &= 0xFFF3;
		REG_BG0CNT |= (no << 2);
	}
}

void hrt_BG0SetPriority(u8 no)
{
	if (hrt_start == 1)
	{
		REG_BG0CNT &= 0xFFFD;
		REG_BG0CNT |= no;
	}
}

void hrt_BG1Set16Color(void)
{
	if (hrt_start == 1)
	{
		REG_BG1CNT &= 0xFF7F;
	}
}

void hrt_BG1Set256Color(void)
{
	if (hrt_start == 1)
	{
		REG_BG1CNT |= 0x0080;
	}
}

void hrt_BG1EnableMosaic(void)
{
	if (hrt_start == 1)
	{
		REG_BG1CNT |= 0x0040;
	}
}

void hrt_BG1DisableMosaic(void)
{
	if (hrt_start == 1)
	{
		REG_BG1CNT &= 0xFFBF;
	}
}

void hrt_BG1SetSize(u8 size)
{
	if (hrt_start == 1)
	{
		REG_BG1CNT &= 0x3FFF;
		REG_BG1CNT |= (size << 14);
	}
}

void hrt_BG1SetMapBase(u8 no)
{
	if (hrt_start == 1)
	{
		REG_BG1CNT &= 0xE0FF;
		REG_BG1CNT |= (no << 8);
	}
}

void hrt_BG1SetTileBase(u8 no)
{
	if (hrt_start == 1)
	{
		REG_BG1CNT &= 0xFFF3;
		REG_BG1CNT |= (no << 2);
	}
}

void hrt_BG1SetPriority(u8 no)
{
	if (hrt_start == 1)
	{
		REG_BG1CNT &= 0xFFFD;
		REG_BG1CNT |= no;
	}
}

void hrt_BG2Set16Color(void)
{
	if (hrt_start == 1)
	{
		REG_BG2CNT &= 0xFF7F;
	}
}

void hrt_BG2Set256Color(void)
{
	if (hrt_start == 1)
	{
		REG_BG2CNT |= 0x0080;
	}
}

void hrt_BG2EnableMosaic(void)
{
	if (hrt_start == 1)
	{
		REG_BG2CNT |= 0x0040;
	}
}

void hrt_BG2DisableMosaic(void)
{
	if (hrt_start == 1)
	{
		REG_BG2CNT &= 0xFFBF;
	}
}

void hrt_BG2SetSize(u8 size)
{
	if (hrt_start == 1)
	{
		REG_BG2CNT &= 0x3FFF;
		REG_BG2CNT |= (size << 14);
	}
}

void hrt_BG2SetMapBase(u8 no)
{
	if (hrt_start == 1)
	{
		REG_BG2CNT &= 0xE0FF;
		REG_BG2CNT |= (no << 8);
	}
}

void hrt_BG2SetTileBase(u8 no)
{
	if (hrt_start == 1)
	{
		REG_BG2CNT &= 0xFFF3;
		REG_BG2CNT |= (no << 2);
	}
}

void hrt_BG2SetPriority(u8 no)
{
	if (hrt_start == 1)
	{
		REG_BG2CNT &= 0xFFFD;
		REG_BG2CNT |= no;
	}
}

void hrt_BG3Set16Color(void)
{
	if (hrt_start == 1)
	{
		REG_BG3CNT &= 0xFF7F;
	}
}

void hrt_BG3Set256Color(void)
{
	if (hrt_start == 1)
	{
		REG_BG3CNT |= 0x0080;
	}
}

void hrt_BG3EnableMosaic(void)
{
	if (hrt_start == 1)
	{
		REG_BG3CNT |= 0x0040;
	}
}

void hrt_BG3DisableMosaic(void)
{
	if (hrt_start == 1)
	{
		REG_BG3CNT &= 0xFFBF;
	}
}

void hrt_BG3SetSize(u8 size)
{
	if (hrt_start == 1)
	{
		REG_BG3CNT &= 0x3FFF;
		REG_BG3CNT |= (size << 14);
	}
}

void hrt_BG3SetMapBase(u8 no)
{
	if (hrt_start == 1)
	{
		REG_BG3CNT &= 0xE0FF;
		REG_BG3CNT |= (no << 8);
	}
}

void hrt_BG3SetTileBase(u8 no)
{
	if (hrt_start == 1)
	{
		REG_BG3CNT &= 0xFFF3;
		REG_BG3CNT |= (no << 2);
	}
}

void hrt_BG3SetPriority(u8 no)
{
	if (hrt_start == 1)
	{
		REG_BG3CNT &= 0xFFFD;
		REG_BG3CNT |= no;
	}
}