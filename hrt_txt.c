/*****************************************************\
*    								8       8                                            8     8            8  8                                          *
*    								8       8                                            8     8                8                                          *
*    								88888    888       888    8  88    888  8            8  8  88                                   *
*    								8       8  8       8           8  88    8    8     8            8  88    8                                 *
*    								8       8  88888    8888  8             8     8            8  8      8                                 *
*    								8       8  8           8       8  8             8     8            8  8      8                                 *
*    								8       8    8888    8888  8               8    88888  8  8888                                  *
*    																		HeartLib                                                                   *
*    A comprehensive game/app engine for the Nintendo® Game Boy Advance™        *
*    												Licensed under the GNU GPL v3.0                                             *
*                                               View the LICENSE file for details                                         *
*    														2017-2019 Sterophonick                                                    *
*    																	For Tubooboo                                                               *
\*****************************************************/
#include "libheart.h"
extern gba_system __hrt_system;
extern unsigned char font_matrixBitmap[6080];
u16* tram = (u16*)0x06000800;
char __outstr2[32];

u16 _____colors[3] = {
	0x0000, 0x0421, 0x7FFF
};

void hrt_SetPaletteOfTiledText(u8 pal)
{
	if(__hrt_system.hrt_start) {
		__hrt_system.__hrt_tiledtext_palno = pal;
		hrt_SetPaletteOfBGMap(0, 1024, pal);
	}
}

void hrt_SetBitmapTextColors(u16 outside, u16 inside)
{
	if(__hrt_system.hrt_start) {
		_____colors[1] = outside;
		_____colors[2] = inside;
	}
}

void hrt_DrawChar(int mode, int left, int top, char letter) {
    if (__hrt_system.hrt_start) {
		register u8 temp;
        for (register int y = 0; y < 8; y++)
            for (register int x = 0; x < 8; x++) {
				temp = font_matrixBitmap[(letter - 32) * 64 + y * 8 + x];
				if (!(temp == 0))
				{
					hrt_DrawPixel(mode, left + x, top + y, _____colors[temp]);
				}
            }
    }
}

void hrt_PrintOnBitmap(int left, int top, char *str, ...) {
    if (__hrt_system.hrt_start) {
		va_list args;
		char *string = __outstr2;
		va_start(args, str);
		vsprintf(__outstr2, str, args);
		va_end(args);
        register int pos = 0;
        while (*string) {
            hrt_DrawChar(3, left + pos, top, *string++);
            pos += 8;
        }
    }
}

void hrt_InitTiledText(u8 bg)
{
	BUP temp;
    if (__hrt_system.hrt_start) {
		temp.SrcNum = 6080;
		temp.SrcBitNum = 8;
		temp.DestBitNum = 4;
		temp.DestOffset = 0;
		temp.DestOffset0_On = 0;
		hrt_BitUnPack((void*)font_matrixBitmap, (u16*)0x06000800, &temp);
		hrt_SetBGPalEntry(0, 0x0000);
		hrt_SetBGPalEntry(1, 0x0421);
		hrt_SetBGPalEntry(2, 0x7FFF);
		REG_BGxCNT(bg) = 0x0000;
		hrt_ClearTiledText();
	}
}

void hrt_PrintOnTilemap(u8 tx, u8 ty, char* str, ...)
{
	if (__hrt_system.hrt_start) {
		va_list args;
		char *string = __outstr2;
		va_start(args, str);
		vsprintf(__outstr2, str, args);
		va_end(args);
		register int pos = 0;
        while (*string) {
            VRAM[(ty*32+tx+pos)%1024] = *string++;
			VRAM[(ty*32+tx+pos)%1024] += 32;
            pos += 1;
        }
		hrt_SetPaletteOfTiledText(__hrt_system.__hrt_tiledtext_palno);
	}
}

void hrt_ClearTiledText(void)
{
	if(__hrt_system.hrt_start) {
		for(register u16 i=0; i<1024; i++)
		{
			VRAM[i] = 64;
		}
	}
}