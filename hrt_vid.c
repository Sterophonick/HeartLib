#include "libheart.h"
u16* VideoBuffer 	=(u16*)0x6000000;
u16* BGPaletteMem 	=(u16*)0x5000000;
u16* BGTileMem = (u16*)0x6004000;
u8* VideoBuffer4 	=(u8*)0x6000000;
u16* FrontBuffer = (u16*)0x6000000;
u16* BackBuffer = (u16*)0x600A000;
volatile u16* ScanlineCounter = (u16*)0x4000006;
void hrt_WaitForVblank() {
	while (REG_VCOUNT >= 160);   // wait till VDraw
	while (REG_VCOUNT < 160);    // wait till VBlank
}

void hrt_DMA_Copy(u8 channel, void* source, void* dest, u32 WordCount, u32 mode) {
    if (hrt_start == 1) {
        switch (channel) {
        case 0:
            REG_DM0SAD = (u32)source;
            REG_DM0DAD = (u32)dest;
            REG_DM0CNT = WordCount | mode;
            break;
        case 1:
            REG_DM1SAD = (u32)source;
            REG_DM1DAD = (u32)dest;
            REG_DM1CNT = WordCount | mode;
            break;
        case 2:
            REG_DM2SAD = (u32)source;
            REG_DM2DAD = (u32)dest;
            REG_DM2CNT = WordCount | mode;
            break;

        case 3:
            REG_DM3SAD = (u32)source;
            REG_DM3DAD = (u32)dest;
            REG_DM3CNT = WordCount | mode;
            break;

        }
    }
}

void hrt_EditBG(BG *bg) {
    if (hrt_start == 1) {
        switch (bg->n) {
        case 0:
            REG_BG0HOFS = bg->x;
            REG_BG0VOFS = bg->y;
            break;
        case 1:
            REG_BG1HOFS = bg->x;
            REG_BG1VOFS = bg->y;
            break;
        case 2:
            REG_BG2HOFS = bg->x;
            REG_BG2VOFS = bg->y;
            REG_BG2PA = ((bg->x_size) * (s32)COS[bg->angle % 360]) >> 8;    //(do my fixed point multiplies and shift back down)
            REG_BG2PB = ((bg->y_size) * (s32)SIN[bg->angle % 360]) >> 8;
            REG_BG2PC = ((bg->x_size) * (s32)-SIN[bg->angle % 360]) >> 8;
            REG_BG2PD = ((bg->y_size) * (s32)COS[bg->angle % 360]) >> 8;
            break;
        case 3:
            REG_BG3HOFS = bg->x;
            REG_BG3VOFS = bg->y;
            REG_BG3PA = ((bg->x_size) * (s32)COS[bg->angle % 360]) >> 8;    //(do my fixed point multiplies and shift back down)
            REG_BG3PB = ((bg->y_size) * (s32)SIN[bg->angle % 360]) >> 8;
            REG_BG3PC = ((bg->x_size) * (s32)-SIN[bg->angle % 360]) >> 8;
            REG_BG3PD = ((bg->y_size) * (s32)COS[bg->angle % 360]) >> 8;
            break;
        default:
            break;
        }
    }
}
void hrt_loadBGPal(u16* data) {
    if (hrt_start == 1) {
        int i;
        for (i = 0; i > 255; i++) {
            BGPaletteMem[i] = data[i];
        }
    }
}
void hrt_DrawPixel(int Mode, int x, int y, unsigned short color) {
    if (hrt_start == 1) {
        if (Mode == 3) {
            VideoBuffer[y * 240 + x] = color;
        } else if (Mode == 4) {
            VideoBuffer4[y * 120 + x] = color;
        } else if (Mode == 5) {
            VideoBuffer[y * 120 + x] = color;
        }
    }
}
int hrt_GetPixel(u8 mode, int x, int y) {
    if (hrt_start == 1) {
        u16 temp;
        switch (mode) {
        case 3:
            return VideoBuffer[y * 240 + x]; //returns the pixel color at the position given
            break;
        case 4:
            temp = VideoBuffer4[y * 120 + x]; //returns the pixel color at the position given
            return BGPaletteMem[temp];
            break;
        case 5:
            return VideoBuffer[y * 120 + x]; //returns the pixel color at the position given
            break;
        }
        return 0;
    }
}
void hrt_CycleBGPalette(void) {
    if (hrt_start == 1) {
        int i;
        /*
        	Output from gfx2gba:

        	Saving masterpalette to..: master.pal.c ... ok

        	Total files read & converted.:   1
        	Colors used before converting: 240
        	Colors used after converting.: 187
        	Colors saved.................:  53
        */
#define COLORS_AFTER_CONVERTING 255


        // Save the last colorvalue
        ACCESS_16(MEM_PAL_COL_PTR(COLORS_AFTER_CONVERTING)) = ACCESS_16(MEM_PAL_COL_PTR(1));

        // go trough all indices
        for (i = 0; i < COLORS_AFTER_CONVERTING; i++) {
            // Swap color of index
            ACCESS_16(MEM_PAL_COL_PTR(i)) = ACCESS_16(MEM_PAL_COL_PTR((i + 1)));
        }
    }
    return;
}
void hrt_InvertBGPalette(void) {
    if (hrt_start == 1) {
        int i;

        // go trough all 256 colors
        for (i = 0; i < 256; i++) {
            // Invert color of index i
            u16 Color = ACCESS_16(MEM_PAL_COL_PTR(i));

            // Calc new R,G,B Values
            u8 R = 255 - RGB_GET_R_VALUE(Color);
            u8 G = 255 - RGB_GET_G_VALUE(Color);
            u8 B = 255 - RGB_GET_B_VALUE(Color);

            // Set new color
            ACCESS_16(MEM_PAL_COL_PTR(i)) = RGB(R, G, B);
        }
    }
    return;
}
void hrt_drawRect(int r, int c, int width, int height, u16 color, int mode) { //draws rectangle
    if (hrt_start == 1) {
        int i, j;
        for (i = 0; i < height; i++) {
            for (j = 0; j < width; j++) {
                hrt_DrawPixel(mode, r + i, c + j, color);
            }
        }
    }
}
void hrt_fillscreen(u16 color, int mode) { //fills screen with a solid color in mode 3
    if (hrt_start == 1) {
        int x1, y1;
        for (y1 = 0; y1 < 160; y1++) {
            for (x1 = 0; x1 < 240; x1++) {
                hrt_DrawPixel(mode, x1, y1, color);
            }
        }
    }
}
void hrt_DrawLine(int x1, int y1, int x2, int y2, unsigned short color, int mode) {
    int i, deltax, deltay, numpixels;
    int d, dinc1, dinc2;
    int x, xinc1, xinc2;
    int y, yinc1, yinc2;
//calculate deltaX and deltaY
    deltax = abs(x2 - x1);
    deltay = abs(y2 - y1);
//initialize
    if(deltax >= deltay) {
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
    if(x1 > x2) {
        xinc1 = -xinc1;
        xinc2 = -xinc2;
    }
    if(y1 > y2) {
        yinc1 = -yinc1;
        yinc2 = -yinc2;
    }
    x = x1;
    y = y1;
//draw the pixels
    for(i = 1; i < numpixels; i++) {
        hrt_DrawPixel(mode, x, y, color);
        if(d < 0) {
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
void hrt_DrawCircle(int xCenter, int yCenter, int radius, u16 color, int mode) {
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
void hrt_scanlines(u16 color, float time, int mode) {
    int x,y;

    for(x=0; x<240; x+=2) {
        while(REG_VCOUNT>160);
        for(y=0; y<160; y+=2) {
            hrt_DrawPixel(mode, x-1,y,color);
            hrt_DrawPixel(mode, x,y,color);
            hrt_DrawPixel(mode, 240-x+1,y-1,color);
            hrt_DrawPixel(mode, 240-x,y-1,color);
        }
        hrt_SleepF(time);
    }
}
void hrt_leftwipe(u16 color, float time, int mode) {
    int x1,y1;
    for(x1=0; x1<240; x1++) {
        for(y1=0; y1<160; y1++) {
            hrt_DrawPixel(mode, x1,y1,color);
        }
        hrt_SleepF(time);
    }
}

void hrt_rightwipe(u16 color, float time, int mode) {
    int x1,y1;
    for(x1=240; x1>0; x1--) {
        for(y1=0; y1<160; y1++) {
            hrt_DrawPixel(mode, x1,y1,color);
        }
        hrt_SleepF(time);
    }
}
void hrt_topwipe(u16 color, float time, int mode) {
    int x1,y1;
    for(y1=0; y1<160; y1++) {
        for(x1=240; x1!=-1; x1--) {
            hrt_DrawPixel(mode, x1,y1,color);
        }
        hrt_SleepF(time);
    }
}
void hrt_bottomwipe(u16 color, float time, int mode) {
    int x1,y1;
    for(y1=160; y1>0; y1--) {
        for(x1=240; x1>0; x1--) {
            hrt_DrawPixel(mode, x1,y1,color);
        }
        hrt_SleepF(time);
    }
}
void hrt_circlewipe(u16 color, float time, int mode) {
    if (hrt_start == 1) {
        int r;
        for (r = 0; r < 120; r++) {
            hrt_DrawCircle(mode, 120, 80, r, color);
            hrt_SleepF(time);
        }
    }
}

void hrt_coolscanlines(u16 color, float time, int mode) {
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
int hrt_GetBGPalEntry(int slot) {
    if (hrt_start == 1) {
        return BGPaletteMem[slot];
    }
}

int hrt_GetVCOUNT() {
    if (hrt_start == 1) {
        return REG_VCOUNT;
    }
}

int hrt_GetOBJPalEntry(int slot) {
    if (hrt_start == 1) {
        return OBJPaletteMem[slot];
    }
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
void hrt_loadBGTiles(u16* data, int length) {
    if (hrt_start == 1) {
        int i;
        for (i = 0; i != length; i++) {
            data++;
            BGTileMem[i] = data[i];
        }
    }
}

void hrt_loadBGMap(u16* data, int length) {
    if (hrt_start == 1) {
        int i;
        for (i = 0; i != length; i++) {
            data++;
            videoBuffer[i] = data[i];
        }
    }
}
void hrt_Sleep(double i) {
    if (hrt_start == 1) {
        int x, y;
        int c;
        for (y = 0; y < i; y++) {
            for (x = 0; x < 4000; x++) {
                c = c + 2;    // do something to slow things down
            }
        }
    }
}
void hrt_SleepF(u32 frames) {
        int i;
        i = frames;
        while (i--) {
            hrt_WaitForVblank();
        }
}

void hrt_fillpal(int paltype, u16 color) { //fills a palette of the selection with the same color for each slot
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
                hrt_SetMode(MODE_3 | BG2_ENABLE); //resets everyhing
                for (pixpos = 0; pixpos < 256; pixpos++) {
                    BGPaletteMem[pixpos] = 0x0000;
                    OBJPaletteMem[pixpos] = 0x0000;
                }
                hrt_fillscreen(0x0000, 3);
                hrt_Print(3, 8, 8, "ERROR. INVALID PAL TYPE.", RED, BLACK); //error messgae
                while (1); //stops the program due to an invalid type
            }
        }
    }
}