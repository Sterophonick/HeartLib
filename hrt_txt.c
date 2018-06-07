#include "libheart.h"
extern gba_system __hrt_system;

const u16 _____colors[3] = {
	0x0000, 0x0421, 0x7FFF
};

void hrt_DrawChar(int mode, int left, int top, char letter) {
    if (__hrt_system.hrt_start == 1) {
        int x, y;
		u8 temp;
        for (y = 0; y < 8; y++)
            for (x = 0; x < 8; x++) {
				temp = font_matrixBitmap[(letter - 32) * 64 + y * 8 + x];
				if (!(temp == 0))
				{
					hrt_DrawPixel(mode, left + x, top + y, _____colors[temp]);
				}
            }
    }
}

void hrt_PrintOnBitmap(int left, int top, char *str) {
    if (__hrt_system.hrt_start == 1) {
        int pos = 0;
        while (*str) {
            hrt_DrawChar(3, left + pos, top, *str++);
            pos += 8;
        }
    }
}

/*
void hrt_InitTextTile(u8 bgno)
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
*/