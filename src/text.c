/*******************************************************************\
*             8   8                    8  8     8 8
*             8   8                    8  8       8
*             8   8  888   888  8 888 888 8     8 8 88
*             88888 8   8     8 88     8  8     8 88  8
*             8   8 88888  8888 8      8  8     8 8   8
*             8   8 8     8   8 8      8  8     8 8   8
*             8   8  8888  8888 8       8 88888 8 8888
*                             HeartLib
*A comprehensive game/app engine for the Nintendo� Game Boy Advance�
*                  Licensed under the GNU GPL v3.0
*                 View the LICENSE file for details
*                      2017-2019 Sterophonick
*                          For Tubooboo
\*******************************************************************/
#include <stdarg.h>
#include "hrt_video.h"
#include "hrt_text.h"
#include "hrt_bios.h"
HEART_API unsigned char font_matrixBitmap[6080];
u16 _____colors[3] = {
	0x0000, 0x0421, 0x7FFF
};

void hrt_SetTextColors(u16 out, u16 in)
{
	hrt_SetPaletteEntry(1, out);
	hrt_SetPaletteEntry(2, in);
}

void hrt_ClearText()
{
	//Clear the screen
	for(register u16 i=0; i<1024; i++)
	{
		VRAM[i] = 64;
	}
}

void hrt_InitTextEngine(u8 bg)
{
	//BitUnPack the font to the tilemap
	//This is because to save space, we should ideally have our font be 16-color tiles
	//a BUP object is created to make this work
	//so we translate the 8-bit data to 16-bit
	BUP temp;
	temp.SrcNum = 6080;
	temp.SrcBitNum = 8;
	temp.DestBitNum = 4;
	temp.DestOffset = 0;
	temp.DestOffset0_On = 0;
	hrt_BitUnPack((void*)font_matrixBitmap, (u16*)0x06000800, &temp);

	//Set up the display mode
	hrt_SetPaletteEntry(0, 0x0000);
	hrt_SetPaletteEntry(1, 0x0421);
	hrt_SetPaletteEntry(2, 0x7FFF);
	REG_BGxCNT(bg) = 0x0000;
	hrt_DSPEnableBG(bg);

	//Clear the existing text
	hrt_ClearText();
}
char __outstr2[40];

void hrt_Print(u8 tx, u8 ty, char* str, ...)
{
	//set up a temporary string
	char *string = __outstr2;
	va_list args;
	va_start(args, str);
	vsprintf(__outstr2, str, args);
	va_end(args);
	register u16 pos = 0;
	//scroll through VRAM and write bytes to
    while (*string) {
        VRAM[(ty*32+tx+pos)%1024] = *string++;
		VRAM[(ty*32+tx+pos)%1024] += 32;
        pos += 1;
    }
		//hrt_SetPaletteOfTiledText(__hrt_system.__hrt_tiledtext_palno);
}

void hrt_PrintFast(u8 tx, u8 ty, char* str)
{
	register u16 pos = 0;
	while (*str) {
		VRAM[(ty*32+tx+pos)%1024] = *str++;
		VRAM[(ty*32+tx+pos)%1024] += 32;
		pos += 1;
	}
}
