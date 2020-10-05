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
#include "hrt_misc.h"
typedef struct {
    char		manufacturer;
    char		version;
    char		encoding;
    char		bpp;
    short int	x1, y1;
    short int	x2, y2;
    short int	hres;
    short int	vres;
    char		palette[48];
    char		reserved;
    char		color_planes;
    short int	BytesPerLine;
    short int	PaletteType;
    char		dummy[58];
} __attribute__((packed)) pcx_header;

void hrt_DecodePCX(const u8 *PCXBuffer, u16 * ScreenAddr, u16* Palette)
{
	u8 Buf[240];
	register int c, l, r, g, b;
	register int i;
	register u16 *Scrn = ScreenAddr;
	register pcx_header *header = (pcx_header *)PCXBuffer;
	register u8 *Data = (u8*)PCXBuffer + sizeof(pcx_header);
	register int Width = (header->x2 - header->x1) + 1;
	register int Height = (header->y2 - header->y1) + 1;
	Width = ((Width + 1) >> 1) << 1;
	if (Width > 240 || Height > 160) return;
	register u8 *wptr = Buf;
	register int j, k;
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
		register u16* ptr = (u16 *)Buf;
		for (i = 0; i < Width >> 1; i++)
		{
			*(Scrn++) = *(ptr++);
		}
		wptr = Buf;
	}
	Data++;
	register u16 * GBA_Palette = Palette;
	register u16 color;
	for (i = 0; i < 256; i++)
	{
		r = *(Data++);
		g = *(Data++);
		b = *(Data++);
		color = ((r >> 3) | ((g >> 3) << 5) | ((b >> 3) << 10));
		*(GBA_Palette++) = color;
	}
}