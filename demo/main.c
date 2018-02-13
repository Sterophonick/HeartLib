#include <string.h>
#include "libheart.h"
#include "defs.h"

BG bg3;
int i;
s8 phase;
int boiy, boix;

int main()
{
	hrt_Init();
	bg3.x = 0;
	bg3.y = 0;
	bg3.n = 2;
	hrt_SetMode(MODE_3 | BG2_ENABLE | OBJ_ENABLE | OBJ_MAP_1D);
	hrt_CreateOBJ(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0);
	hrt_loadOBJGFX((void*)arrowTiles, 32);
	hrt_loadOBJPal((void*)arrowPal, 255);
	frames = 0;
	arpos = 0;
	hrt_Print(3, 56, 152, "HEART GBA LIB DEMO V1.O", RED, BLACK);
	hrt_SetMode(MODE_3 | BG2_ENABLE | OBJ_ENABLE | OBJ_MAP_1D);
	hrt_Print(3, 8, 0, "SPRITE", RED, BLACK);
	hrt_Print(3, 8, 9, "SCROLL", RED, BLACK);
	hrt_Print(3, 8, 18, "FADE", RED, BLACK);
	hrt_Print(3, 8, 27, "COMPRESSION", RED, BLACK);
	hrt_Print(3, 8, 36, "PLASMA", RED, BLACK);
	hrt_Print(3, 8, 45, "WIPE", RED, BLACK);
	hrt_Print(3, 8, 54, "DMA", RED, BLACK);
	hrt_Print(3, 8, 63, "BITMAP", RED, BLACK);
	hrt_Print(3, 8, 72, "SOUND", RED, BLACK);
	hrt_CopyOAM();
	while (1)
	{
		if (keyDown(KEY_UP))
		{
			arpos--;
			if (arpos == -1)
			{
				arpos = 0;

			}
			while (keyDown(KEY_UP));
		}
		if (keyDown(KEY_DOWN))
		{
			arpos++;
			if (arpos == 9)
			{
				arpos = 8;
			}
			while (keyDown(KEY_DOWN));
		}
		hrt_SetOBJXY(&sprites[0], 0, 9*arpos);
		if (keyDown(KEY_A))
		{
			if (arpos == 2)
			{
				memcpy(videoBuffer, suchBitmap, 76800);
				hrt_SetMode(MODE_3 | BG2_ENABLE);
				hrt_SetFXMode(0x00F7);
				while (1)
				{
					if (keyDown(KEY_A))
					{
						for (i = 0; i < 17; i++)
						{
							hrt_SetFXLevel(i);
							hrt_SleepF(5);
						}
					}
					if (keyDown(KEY_B))
					{
						for (i = 0; i < 17; i++)
						{
							hrt_SetFXLevel(16-i);
							hrt_SleepF(5);
						}
					}
					if (keyDown(KEY_START))
					{
						asm volatile("swi 0x00"::);
					}
				}
			}
			if (arpos == 1)
			{
				offsetOAM = 0;
				REG_BG2CNT = CHAR_BASE(1) | BG_COLOR_256 | BG_MOSAIC_ENABLE;
				hrt_SetMode(MODE_0 | BG2_ENABLE | OBJ_MAP_1D | OBJ_ENABLE);
				hrt_loadBGPal((void*)bg_hillPal);
				hrt_loadBGTiles((void*)bg_hillTiles, 32800);
				hrt_WaitForVblank();
				for (x = 0; x < 2048; x++) {
					videoBuffer[x] = bg_hillMap[x];
				}
				hrt_EditBG(&bg3);
				hrt_WaitForVblank();
				while (1)
				{
					if (keyDown(KEY_START))
					{
						asm volatile("swi 0x00"::);
					}
				}
			}
			if (arpos == 0)
			{
				hrt_offsetOAMPal = 0;
				offsetOAM = 0;
				hrt_SetFXMode(BLD_OBJ | BLD_STD);
				hrt_CreateOBJ(0, 120, 80, 2, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0);
				hrt_SetMode(MODE_4 | BG2_ENABLE | OBJ_ENABLE | OBJ_MAP_1D);
				hrt_loadOBJGFX((void*)blockTiles, 2048);
				hrt_loadOBJPal((void*)blockPal, 255);
				hrt_CopyOAM();
				x = 120;
				y = 80;
				hrt_AffineOBJ(0, 0, 255, 255);
				x_scale = 255;
				while (1)
				{
					frames++;
					if (keyDown(KEY_SELECT))
					{
						fxlevel++;
						hrt_SetFXLevel(fxlevel);
					}

					if (keyDown(KEY_R))
					{
						rot++;
					}
					if (keyDown(KEY_L))
					{
						rot--;
					}
					if (keyDown(KEY_A))
					{
						x_scale++;
					}
					if (keyDown(KEY_B))
					{
						x_scale--;
					}
					if (keyDown(KEY_UP))
					{
						y--;
					}
					if (keyDown(KEY_DOWN))
					{
						y++;
					}
					if (keyDown(KEY_LEFT))
					{
						x--;
					}
					if (keyDown(KEY_RIGHT))
					{
						x++;
					}
					if (rot == -1)
					{
						rot = 0;
					}
					if (keyDown(KEY_START))
					{
						asm volatile("swi 0x00"::);
					}
					hrt_SetOBJXY(&sprites[0], x, y);
					hrt_AffineOBJ(0, rot % 360, x_scale, x_scale);
					hrt_CopyOAM();
					hrt_WaitForVblank();
				}
			}
		}
		hrt_CopyOAM();
		hrt_WaitForVblank();
	}
	return 0;
}
