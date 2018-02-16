#include <libheart.h>
#include <gbfs.h>
#include "defs.h"

int i;
s8 phase;
int boiy, boix;
int bgx, bgy;
u8 g_newframe;
int x, y;

void vblfunc(void)
{
	hrt_CopyOAM();
	g_newframe = 1;
}

int main()
{
	hrt_Init(1); //Initializes Heartlib. If number is set to 1 it plays an intro. REQUIRED FOR USING THIS LIBRARY. IF THIS IS NOT EXECUTED IT WILL NOT WORK!!!!
	const GBFS_FILE *dat = find_first_gbfs_file(find_first_gbfs_file); //defines GBFS file
	hrt_initsound8(0, 22050, 5252832, (void*)hrt_snd); //initialises sound
	//Sets the Display Mode, like which mode, OBJ Settings, and which backgrounds are enabled.
	hrt_SetDSPMode(3, //Mode
		0,								  //CGB Mode
		0,								  //Frame Select
		0,                               //Unlocked HBlank
		1,                               //Linear OBJ Tile Mapping
		0,                               //Force Blank
		0,                               //BG 0
		0,                               //BG 1
		1,                               //BG 2
		0,                               //BG 3
		1,                               //OBJ
		0,                               //Win 0
		0,                               //Win 1
		0);							  //OBJWin

	hrt_CreateOBJ(0,   //Sprite ID
		0,							     //Start X
		0,							     //Start Y
		0,							     //Size
		0,							     //Affine
		0,							     //Horizontal Flip
		0,							     //Vertical Flip
		0,							     //Shape
		0,							     //Double Size
		0,							     //Mosaic
		0,							     //Palette (16-Color only)
		1,							     //Color setting
		0,							     //Mode
		0,								 //Priority
		0);							 //Offset

	hrt_loadOBJGFX((void*)arrowTiles, 32); //loads Sprite Graphics
	hrt_loadOBJPal((void*)arrowPal, 255); //loads Sprite palette
	frames = 0; //Sets frames to 0
	arpos = 0; //Sets arrow position to 0

	hrt_PrintOnBitmap(56, //X position
		152, //Y position
		"HEART GBA LIB DEMO V1.O"); // String

	hrt_SetDSPMode(3, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0); //Sets REG_DISPCNT, like above
	hrt_PrintOnBitmap(8, 0, "SPRITE"); //draws text
	hrt_PrintOnBitmap(8, 9, "SCROLL");//draws text
	hrt_PrintOnBitmap(8, 18, "FADE");//draws text
	hrt_PrintOnBitmap(8, 27, "COMPRESSION");//draws text
	hrt_PrintOnBitmap(8, 36, "PLASMA");//draws text
	hrt_PrintOnBitmap(8, 45, "DMA");//draws text
	hrt_PrintOnBitmap(8, 54, "GETPIXEL");//draws text
	hrt_PrintOnBitmap(8, 63, "SOUND");//draws text
	hrt_PrintOnBitmap(8, 72, "WIPE");//draws text
	hrt_PrintOnBitmap(8, 81, "ALPHA");//draws text
	hrt_PrintOnBitmap(8, 90, "INTERRUPT");//draws text
	hrt_PrintOnBitmap(8, 99, "ASSERT");//draws text
	hrt_PrintOnBitmap(8, 108, "AGBPRINT (VBA ONLY)");//draws text
	hrt_CopyOAM(); //Copies OBJ Data to OAM
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
			if (arpos == 13)
			{
				arpos = 12;
			}
			while (keyDown(KEY_DOWN));
		}

		hrt_SetOBJXY(&sprites[0], //Sprite
			0, //X Position
			9*arpos); //Y Position

		if (keyDown(KEY_A))
		{
			if (arpos == 12)
			{
				hrt_PrintToVBA_ARM("HeartLib AGBPrint Test. Hello World!");
				hrt_PrintToVBA_ARM("NOTE: CRASHES ON HARDWARE. VBA ONLY.");
			}
			if (arpos == 11)
			{
				hrt_ConfigBG(5, 0, 1, 1, 1, 0, 1, 0);
			}
			if (arpos == 9)
			{
				hrt_SetDSPMode(0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0);
				hrt_offsetOAMData = 0;
				hrt_offsetOAMPal = 0;
				hrt_ConfigBG(2, 0, 1, 1, 1, 0, 1, 0);
				hrt_SetFXMode(0, //BG 0 Target 1
					0,                             //BG 1 Target 1
					0,                             //BG 2 Target 1
					0,                             //BG 3 Target 1
					1,                             //OBJ Target 1
					0,                             //Backdrop Target 1
					1,                             //Blend Mode
					0,                             //BG 0 Target 2
					0,                             //BG 1 Target 2
					0,                             //BG 2 Target 2
					0,                             //BG 3 Target 2
					1,                             //OBJ Target 2
					0);                           //Backdrop Target 2
				hrt_fillscreen(0x0000, 3);
				hrt_loadBGPal((void*)ballsPal, 255);
				hrt_loadBGTiles((void*)ballsTiles, 32800);
				hrt_loadBGMap((void*)ballsMap, 2048);
				hrt_loadOBJGFX((void*)busterTiles, 512); //loads Sprite Graphics
				hrt_loadOBJPal((void*)busterPal, 16); //loads Sprite palette
				hrt_EditBG(2, bgx, bgy, 256, 256, 0);
				hrt_CreateOBJ(0,   //Sprite ID
					0,							     //Start X
					0,							     //Start Y
					3,							     //Size
					0,							     //Affine
					0,							     //Horizontal Flip
					0,							     //Vertical Flip
					2,							     //Shape
					0,							     //Double Size
					0,							     //Mosaic
					0,							     //Palette (16-Color only)
					0,							     //Color setting
					1,							     //Mode
					0,
					0);							 //Offset
				hrt_CopyOAM();
				frames = 0;
				int alpha = 0;
				while (1)
				{
					bgx++;
					bgy++;
					hrt_EditBG(2, bgx, bgy, 256, 256, 0);
					hrt_WaitForVblank();
					alpha++;
					REG_BLDALPHA = alpha;
					hrt_CopyOAM();
				}
			}
			if (arpos == 8)
			{
				hrt_fillscreen(0xFFFF, 3); //Fills Screen with white in mode 3.
				hrt_SetDSPMode(3, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0); //Sets REG_DISPCNT, like above
				while (1)
				{
					hrt_scanlines(0x0000, 1, 3);
					hrt_leftwipe(RED, 1, 3);
					hrt_rightwipe(BLUE, 1, 3);
					hrt_bottomwipe(BROWN, 1, 3);
					hrt_topwipe(GREEN, 1, 3);
					hrt_coolscanlines(MAGENTA, 1, 3);
					hrt_circlewipe(ORANGE, 1, 3);
					hrt_LineWipe(CYAN, 0, 3);
				}
			}
			if (arpos == 6)
			{
				hrt_DrawPixel(3, 120, 80, 0xFFFF);
				if (hrt_GetPixel(3 ,120, 80) == 0xFFFF)
				{
					hrt_DrawPixel(3, 121, 81, 0x07FF);
				}
			}
			if (arpos == 7)
			{
				frames = 0;
				hrt_playSound(0);
				while (1)
				{
					hrt_SleepF(14280);
					REG_SOUNDCNT1_H = 0;                                                       //REG_SOUNDCNT_H = 0000 1011 0000 0100, volume = 100, sound goes to the left, sound goes to the right, timer 0 is used, FIFO buffer reset
					REG_SOUNDCNT1_X = 0;                                                       //REG_SOUNDCNT_X = 0000 0000 1000 0000, enable the sound system, DMA 1
					REG_SD1SAD = 0;                                //REG_DM1SAD = NAME, address of DMA source is the digitized music sample
					REG_SD1DAD = 0;                                                   //REG_DM1DAD = REG_SGFIFOA, address of DMA destination is FIFO buffer for direct sound A
					REG_SD1CNT_H = 0;                                                       //REG_DM1CNT_H = 1011 0110 0100 0000, DMA destination is fixed, repeat transfer of 4 bytes when FIFO , buffer is empty, enable DMA 1 (number of DMA transfers is ignored), INTERRUPT
					REG_TM0SD = 0;                          //REG_TM0D = 65536-(16777216/frequency);, play sample every 16777216/frequency CPU cycles
					REG_TMSDCNT = 0;
					hrt_playSound(0);
				}
			}
			if (arpos == 5)
			{
				hrt_SetDSPMode(4, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0);
				hrt_DMA_Copy(3, (u16*)conceptBitmap, videoBuffer, 19200, 0x80000000);
				hrt_loadBGPal((void*)conceptPal, 255);
				while (1)
				{
					if (keyDown(KEY_START))
					{
						asm volatile("swi 0x00"::);
					}
				}
			}
			if (arpos == 3)
			{
				hrt_SetDSPMode(4, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0);
				hrt_LZ77UnCompVRAM((u32)gbfs_get_obj(dat, "imadog.img.lz", NULL), (u32)videoBuffer); //LZ77 decompresses file "sramc.img.lz" to VRAM
				hrt_LZ77UnCompVRAM((u32)gbfs_get_obj(dat, "imadog.pal.lz", NULL), (u32)BGPaletteMem); //LZ77 decompresses file "sramc.pal.lz" to BGPaletteMem
				while (1)
				{
					if (keyDown(KEY_START))
					{
						asm volatile("swi 0x00"::);
					}
				}
			}
			if (arpos == 4)
			{
				hrt_SetDSPMode(4, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0);
				hrt_DMA_Copy(3, (u16*)plasmaBitmap, videoBuffer, 19200, 0x80000000); //DMA Copy
				hrt_loadBGPal((void*)plasmaPalette, 255);
				while (1)
				{
					hrt_WaitForVblank();
					hrt_CyclePalette(0, 187, 0);
					if (keyDown(KEY_START))
					{
						asm volatile("swi 0x00"::);
					}
				}
			}
			if (arpos == 2)
			{
				memcpy(videoBuffer, suchBitmap, 76800);
				hrt_SetDSPMode(3, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0);
				hrt_SetFXMode(0, //BG 0 Target 1
					0,                             //BG 1 Target 1
					1,                             //BG 2 Target 1
					0,                             //BG 3 Target 1
					0,                             //OBJ Target 1
					0,                             //Backdrop Target 1
					2,                             //Blend Mode
					0,                             //BG 0 Target 2
					0,                             //BG 1 Target 2
					0,                             //BG 2 Target 2
					0,                             //BG 3 Target 2
					0,                             //OBJ Target 2
					0);                           //Backdrop Target 2
				hrt_PrintOnBitmap(0, 144, "HEARTLIB FADE DEMO");
				hrt_PrintOnBitmap(0, 152, "A TO FADE OUT, B TO FADE IN");
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
				hrt_offsetOAMData = 0;
				hrt_ConfigBG(2, 0, 1, 1, 1, 0, 1, 0);
				hrt_SetDSPMode(0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0);
				hrt_loadBGPal((void*)bg_hillPal, 255);
				hrt_loadBGTiles((void*)bg_hillTiles, 32800);
				hrt_loadBGMap((void*)bg_hillMap, 2048);
				hrt_EditBG(2, bgx, bgy, 256, 256, 0);
				hrt_WaitForVblank();
				while (1)
				{
					frames++;
					hrt_WaitForVblank();
					hrt_EditBG(2, bgx, bgy, 256, 256, 0);
					if (keyDown(KEY_LEFT))
					{
						bgx--;
					}
					if (keyDown(KEY_RIGHT))
					{
						bgx++;
					}
					if (keyDown(KEY_UP))
					{
						bgy--;
					}
					if (keyDown(KEY_DOWN))
					{
						bgy++;
					}
					if (keyDown(KEY_START))
					{
						hrt_SetDSPMode(4, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0);
						asm volatile("swi 0x01"::);
						asm volatile("swi 0x00"::);
					}
				}
			}
			if (arpos == 0)
			{
				hrt_offsetOAMPal = 0;
				hrt_offsetOAMData = 0;
				hrt_CreateOBJ(0, 120, 80, 2, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0);
				hrt_SetDSPMode(3, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0);
				hrt_loadOBJGFX((void*)blockTiles, 2048);
				hrt_loadOBJPal((void*)blockPal, 255);
				hrt_CopyOAM();
				x = 120;
				y = 80;
				hrt_AffineOBJ(0, 0, 255, 255);
				x_scale = 255;
				g_newframe = 1;
				hrt_fillscreen(0x0000, 3);
				hrt_PrintOnBitmap(0, 0, "HEARTLIB SPRITE DEMO");
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
						hrt_WaitForVblank();
						hrt_CopyOAM();
				}
			}
			if (arpos == 10)
			{
				hrt_offsetOAMPal = 0;
				hrt_offsetOAMData = 0;
				hrt_CreateOBJ(0, 120, 80, 2, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0);
				hrt_SetDSPMode(4, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0);
				hrt_loadOBJGFX((void*)blockTiles, 2048);
				hrt_loadOBJPal((void*)blockPal, 255);
				hrt_CopyOAM();
				x = 120;
				y = 80;
				hrt_AffineOBJ(0, 0, 255, 255);
				x_scale = 255;
				g_newframe = 1;
				hrt_irqInit();
				hrt_irqEnable(IRQ_VBLANK);
				hrt_irqSet(IRQ_VBLANK, vblfunc);
				REG_IME = 1;
				while (1)
				{
					if (g_newframe == 1)
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
						g_newframe = 0;
					}
				}
			}
		}
		hrt_CopyOAM();
		hrt_WaitForVblank();
	}
	return 0;
}
