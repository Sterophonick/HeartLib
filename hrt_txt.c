#include "libheart.h"

void hrt_DrawChar(int mode, int left, int top, char letter) {
    if (hrt_start == 1) {
        int x, y;

        for (y = 0; y < 8; y++)
            for (x = 0; x < 8; x++) {
				if (!(font_matrixBitmap[(letter - 32) * 64 + y * 8 + x] == 0x0000))
				{
					hrt_DrawPixel(mode, left + x, top + y, font_matrixBitmap[(letter - 32) * 64 + y * 8 + x]);
				}
            }
    }
}

void hrt_PrintOnBitmap(int left, int top, char *str) {
    if (hrt_start == 1) {
        int pos = 0;
        while (*str) {
            hrt_DrawChar(3, left + pos, top, *str++);
            pos += 8;
        }
    }
}

void hrt_InitTextTile()
{
	int i;
	if (hrt_start == 1) {
		for (i = 0; i < 2304; i++)
		{
			BGTileMem[i] = font_milkbottleTiles[i];
		}
		hrt_offsetBGTile = 2304;
	}
}

void hrt_DrawTextTile(int x, int y, char* str)
{
	if (hrt_start == 1) {
		int pos;
		while (*str) {
			VRAM[y * 120 + x] = *str++;
		}
		pos++;
	}
}