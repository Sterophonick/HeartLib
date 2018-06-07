#include "libheart.h"
extern gba_system __hrt_system;

void hrt_DecodePCX(const u8 *PCXBuffer, u16 * ScreenAddr, u16* Palette)
{
	if (__hrt_system.hrt_start == 1) {
		u8 Buf[240];
		int c, l, r, g, b;
		int i;
		u16 *Scrn = ScreenAddr;
		pcx_header *header = (pcx_header *)PCXBuffer;
		u8 *Data = (u8*)PCXBuffer + sizeof(pcx_header);
		int Width = (header->x2 - header->x1) + 1;
		int Height = (header->y2 - header->y1) + 1;
		Width = ((Width + 1) >> 1) << 1;
		if (Width > 240 || Height > 160) return;
		u8 *wptr = Buf;
		int j, k;
		for (j = 0; j < Height; j++)
		{
			for (k = 0; k < Width;)
			{
				c = *(Data++);
				if ((c & 0xC0) == 0xC0)
				{
					l = c & 0x3f;
					c = *(Data++);

					for (i = 0; i < l; i++)
					{
						*(wptr++) = c;
					}

					k += l;
				}
				else
				{
					*(wptr++) = c;
					k++;
				}
			}
			u16* ptr = (u16 *)Buf;
			for (i = 0; i < Width >> 1; i++)
			{
				*(Scrn++) = *(ptr++);
			}
			wptr = Buf;
		}
		Data++;
		u16 * GBA_Palette = Palette;
		u16 color;
		for (i = 0; i < 256; i++)
		{
			r = *(Data++);
			g = *(Data++);
			b = *(Data++);
			color = ((r >> 3) | ((g >> 3) << 5) | ((b >> 3) << 10));
			*(GBA_Palette++) = color;
		}
	}
}