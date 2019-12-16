#include <stdarg.h>
#include <stdio.h>
#include "hrt_video.h"
#include "hrt_text.h"
#include "hrt_bios.h"
HEART_API unsigned char font_matrixBitmap[6080];
u16 _____colors[3] = {
	0x0000, 0x0421, 0x7FFF
};

void hrt_ClearText()
{
	for(register u16 i=0; i<1024; i++)
	{
		VRAM[i] = 64;
	}
}

void hrt_InitTextEngine(u8 bg)
{
	BUP temp;
	temp.SrcNum = 6080;
	temp.SrcBitNum = 8;
	temp.DestBitNum = 4;
	temp.DestOffset = 0;
	temp.DestOffset0_On = 0;
	hrt_BitUnPack((void*)font_matrixBitmap, (u16*)0x06000800, &temp);
	hrt_SetPaletteEntry(0, 0x0000);
	hrt_SetPaletteEntry(1, 0x0421);
	hrt_SetPaletteEntry(2, 0x7FFF);
	REG_BGxCNT(bg) = 0x0000;
	hrt_ClearText();
}
char __outstr2[32];

void hrt_Print(u8 tx, u8 ty, char* str, ...)
{
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
		//hrt_SetPaletteOfTiledText(__hrt_system.__hrt_tiledtext_palno);
}