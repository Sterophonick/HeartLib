#include <libheart.h>
#include "defs.h"
extern int	hrt_offsetOAMData;
extern int hrt_offsetOAMPal;
extern int hrt_offsetBGMap;
extern int hrt_offsetBGTile;
extern int hrt_offsetBGPal;

int i;
s8 phase;
int boiy, boix;
int bgx, bgy;
u8 g_newframe;
int x, y;
int g_sram = 0;
char* buf[256];
unsigned char *p = (unsigned char*)&g_sram; //Splits int g_sram into 4 bytes for use with the Structure "SaveData." Needed for use with anything larger than char.

int main()
{
	hrt_EnableSoftReset();
	hrt_EnableRTC();
	hrt_EnableCopyOAMOnVBL();
	hrt_EnablemmFrameonVBL();
    hrt_Init(); //Initializes Heartlib. If number is set to 1 it plays an intro. REQUIRED FOR USING THIS LIBRARY. IF THIS IS NOT EXECUTED IT WILL NOT WORK!!!!
    p[0] = hrt_LoadByte(0x00);
    p[1] = hrt_LoadByte(0x01);
    p[2] = hrt_LoadByte(0x02);
    p[3] = hrt_LoadByte(0x03);
    const GBFS_FILE *dat = find_first_gbfs_file(find_first_gbfs_file); //defines GBFS file
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
                   0,                               //Win 0a
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

    hrt_LoadOBJGFX((void*)arrowTiles, 32); //loads Sprite Graphics
    hrt_LoadOBJPal((void*)arrowPal, 255); //loads Sprite palette
    frames = 0; //Sets frames to 0
    arpos = 0; //Sets arrow position to 0

    hrt_PrintOnBitmap(56, //X position
                      152, //Y position
                      "HeartLib Demo v1.0"); // String

    hrt_SetDSPMode(3, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0); //Sets REG_DISPCNT, like above
    hrt_PrintOnBitmap(8, 0, "Sprite"); //draws text
    hrt_PrintOnBitmap(8, 9, "Scroll");//draws text
    hrt_PrintOnBitmap(8, 18, "Fade");//draws text
    hrt_PrintOnBitmap(8, 27, "LZ77 Compression");//draws text
    hrt_PrintOnBitmap(8, 36, "Palette Cycle");//draws text
    hrt_PrintOnBitmap(8, 45, "DMA Transfer");//draws text
    hrt_PrintOnBitmap(8, 54, "GetPixel");//draws text
    hrt_PrintOnBitmap(8, 63, "OBJWin");//draws text
    hrt_PrintOnBitmap(8, 72, "Mode 3 Wipes");//draws text
    hrt_PrintOnBitmap(8, 81, "Alpha Blending");//draws text
    hrt_PrintOnBitmap(8, 90, "SRAM");//draws text
    hrt_PrintOnBitmap(8, 99, "Assert");//draws text
    hrt_PrintOnBitmap(8, 108, "AGBPrint");//draws text
    hrt_PrintOnBitmap(8, 117, "Sleep");//draws text
    hrt_PrintOnBitmap(8, 126, "EZ-Flash IV Exit");//draws text
    hrt_PrintOnBitmap(8, 135, "Cold Reset");//draws text
    hrt_PrintOnBitmap(8, 144, "Parallax Scrolling");//draws text
    hrt_CopyOAM(); //Copies OBJ Data to OAM
    while (1) {
        if (keyDown(KEY_UP)) {
            arpos--;
            if (arpos == -1) {
                arpos = 0;

            }
            while (keyDown(KEY_UP));
        }
        if (keyDown(KEY_DOWN)) {
            arpos++;
            if (arpos == 17) {
                arpos = 16;
            }
            while (keyDown(KEY_DOWN));
        }

        hrt_SetOBJXY(0, //Sprite
                     0, //X Position
                     9*arpos); //Y Position

        if (keyDown(KEY_A)) {
            if (arpos == 16) {
                hrt_offsetOAMData = 0;
                hrt_ConfigBG(2, 0, 1, 0, 1, 0, 0, 0);
                hrt_ConfigBG(3, 0, 2, 0, 1, 1, 0, 0);
                hrt_SetDSPMode(0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0);
                hrt_LoadBGPal((void*)master_Palette, 255);
                hrt_LoadBGTiles((void*)l1_Tiles, 1664);
                hrt_offsetBGTile = 0x2000;
                hrt_LoadBGTiles((void*)l2_Tiles, 1664);
                hrt_LoadBGMap((void*)l1_Map, 1024);
                hrt_LoadBGMap((void*)l2_Map, 1024);
                hrt_EditBG(2, bgx, bgy, 256, 256, 0, 0, 0);
                hrt_EditBG(3, bgx/2, bgy/2, 256, 256, 0, 0, 0);
                hrt_VblankIntrWait();
                while (1) {
                    frames++;
                    hrt_VblankIntrWait();
                    hrt_EditBG(2, bgx, bgy, 256, 256, 0, 0, 0);
                    hrt_EditBG(3, bgx / 2, bgy / 2, 256, 256, 0, 0, 0);
                    if (keyDown(KEY_LEFT)) {
                        bgx--;
                    }
                    if (keyDown(KEY_RIGHT)) {
                        bgx++;
                    }
                    if (keyDown(KEY_UP)) {
                        bgy--;
                    }
                    if (keyDown(KEY_DOWN)) {
                        bgy++;
                    }
                    if (keyDown(KEY_START)) {
                        hrt_SetDSPMode(4, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0);
                        asm volatile("swi 0x01"::);
                        asm volatile("swi 0x00"::);
                    }
                }
            }
            if (arpos == 15) {
                hrt_ColdReset();
            }
            if (arpos == 14) {
                hrt_EZ4Exit();
            }
            if (arpos == 13) {
				hrt_irqEnable(IRQ_KEYPAD);
                hrt_Suspend();
            }
            if (arpos == 12) {
                hrt_AGBPrint("Hello. This is a test for AGBPrint in HeartLib. Kudos to DevKitPro for getting this function.");
            }
            if (arpos == 11) {
                hrt_ConfigBG(5, 0, 1, 1, 1, 0, 1, 0);
            }
            if (arpos == 9) {
                hrt_FillPalette(1, 0x0000);
                hrt_SetDSPMode(0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0);
                hrt_offsetOAMData = 0;
                hrt_offsetOAMPal = 0;
                hrt_offsetBGMap = 0;
                hrt_offsetBGPal = 0;
                hrt_offsetBGTile = 0;
                hrt_ConfigBG(2, 0, 1, 0, 0, 0, 1, 0);
                hrt_SetFXMode(0, //BG 0 Target 1
                              0,                             //BG 1 Target 1
                              0,                             //BG 2 Target 1
                              0,                             //BG 3 Target 1
                              1,                             //OBJ Target 1
                              0,                             //Backdrop Target 1
                              1,                             //Blend Mode
                              0,                             //BG 0 Target 2
                              0,                             //BG 1 Target 2
                              1,                             //BG 2 Target 2
                              0,                             //BG 3 Target 2
                              0,                             //OBJ Target 2
                              1);                           //Backdrop Target 2
                hrt_FillScreen(0x0000);
                hrt_LoadBGPal((void*)balls_Palette, 16);
                hrt_LoadBGTiles((void*)balls_Tiles, 1088);
                hrt_LoadBGMap((void*)balls_Map, 2048);
                hrt_LoadOBJGFX((void*)busterTiles, 512); //loads Sprite Graphics
                hrt_LoadOBJPal((void*)busterPal, 16); //loads Sprite palette
                hrt_EditBG(2, bgx, bgy, 256, 256, 0, 0, 0);
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
                u8 g_EffectValueA = 0;
                u8 g_EffectValueB = 0;
                int g_EffectIncrease = 0;
                while (1) {
                    bgx++;
                    bgy++;
                    if (16 == g_EffectValueA) {
                        g_EffectIncrease = -1;
                    }
                    if (0 == g_EffectValueA) {
                        g_EffectIncrease = 1;
                    }
                    hrt_EditBG(2, bgx, bgy, 256, 256, 0, 0, 0);
                    hrt_VblankIntrWait();
                    hrt_SetFXAlphaLevel(g_EffectValueA,             // Source intensity
                                        16 - g_EffectValueB);
                    g_EffectValueA += g_EffectIncrease;
                    g_EffectValueB += g_EffectIncrease;
                    hrt_CopyOAM();
                    if (keyDown(KEY_START)) {
                        asm volatile("swi 0x00"::);
                    }
                }
            }
            if (arpos == 8) {
                hrt_FillScreen(0xFFFF); //Fills Screen with white in mode 3.
                hrt_SetDSPMode(3, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0); //Sets REG_DISPCNT, like above
                while (1) {
                    hrt_ScanLines(0x0000, 1, 3);
                    hrt_LeftWipe(COLOR_RED, 1, 3);
                    hrt_RightWipe(COLOR_BLUE, 1, 3);
                    hrt_BottomWipe(0x0110, 1, 3); //Brown
                    hrt_TopWipe(COLOR_GREEN, 1, 3);
                    hrt_CoolScanLines(0x7c1f, 1, 3); //Magenta
                    hrt_CircleWipe(COLOR_ORANGE, 1, 3);
                    hrt_LineWipe(COLOR_CYAN, 0, 3);
                }
            }
            if (arpos == 6) {
                hrt_DrawPixel(3, 120, 80, 0xFFFF);
                if (hrt_GetPixelInMode3(120, 80) == 0xFFFF) {
                    hrt_DrawPixel(3, 121, 81, 0x07FF);
                }
            }
            if (arpos == 7) {
				hrt_offsetOAMData = 0;
				hrt_ConfigBG(2, 0, 1, 1, 1, 0, 1, 0);
				hrt_SetDSPBGMode(0);
				hrt_DSPEnableBG2();
				hrt_DSPEnableWINOBJ();
				hrt_DSPEnableLinearOBJ();
				hrt_DSPEnableOBJ();
				REG_WINOUT = 0x1F00;
				hrt_LoadBGPal((void*)bg_hillPal, 255);
				hrt_LoadBGTiles((void*)bg_hillTiles, 32800);
				hrt_LoadBGMap((void*)bg_hillMap, 2048);
				hrt_EditBG(2, bgx, bgy, 256, 256, 0, 0, 0);
				hrt_VblankIntrWait();
				hrt_offsetOAMPal = 0;
				hrt_offsetOAMData = 0;
				hrt_LoadOBJGFX((void*)blockTiles, 2048);
				hrt_LoadOBJPal((void*)blockPal, 255);
				hrt_CopyOAM();
				x = 120;
				y = 80;
				hrt_CreateOBJ(0, 120, 80, 2, 1, 0, 0, 0, 1, 0, 0, 1, OBJ_MODE_WINDOW, 0, 0);
				hrt_AffineOBJ(0, 0, 255, 255);
				while (1)
				{
					frames++;
					if (keyDown(KEY_R)) {
						rot++;
					}
					if (keyDown(KEY_L)) {
						rot--;
					}
					if (keyDown(KEY_A)) {
						x_scale++;
					}
					if (keyDown(KEY_B)) {
						x_scale--;
					}
					if (keyDown(KEY_UP)) {
						y--;
					}
					if (keyDown(KEY_DOWN)) {
						y++;
					}
					if (keyDown(KEY_LEFT)) {
						x--;
					}
					if (keyDown(KEY_RIGHT)) {
						x++;
					}
					if (rot == -1) {
						rot = 0;
					}
					if (keyDown(KEY_START)) {
						asm volatile("swi 0x00"::);
					}
					hrt_SetOBJXY(0, x, y);
					hrt_AffineOBJ(0, rot % 360, x_scale, x_scale);
					hrt_VblankIntrWait();
					hrt_CopyOAM();
				}
            }
            if (arpos == 5) {
                hrt_SetDSPMode(4, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0);
                hrt_DMA_Copy(3, (u16*)conceptBitmap, VRAM, 19200, 0x80000000);
                hrt_LoadBGPal((void*)conceptPal, 255);
                while (1) {
                    if (keyDown(KEY_START)) {
                        asm volatile("swi 0x00"::);
                    }
                }
            }
            if (arpos == 3) {
                hrt_SetDSPMode(4, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0);
                hrt_LZ77UnCompVRAM((u32)gbfs_get_obj(dat, "imadog.img.lz", NULL), (u32)VRAM); //LZ77 decompresses file "sramc.img.lz" to VRAM
                hrt_LZ77UnCompVRAM((u32)gbfs_get_obj(dat, "imadog.pal.lz", NULL), (u32)BGPaletteMem); //LZ77 decompresses file "sramc.pal.lz" to BGPaletteMem
                while (1) {
                    if (keyDown(KEY_START)) {
                        asm volatile("swi 0x00"::);
                    }
                }
            }
            if (arpos == 4) {
                hrt_SetDSPMode(4, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0);
                hrt_DMA_Copy(3, (u16*)plasmaBitmap, VRAM, 19200, 0x80000000); //DMA Copy
                hrt_LoadBGPal((void*)plasmaPalette, 255);
                while (1) {
                    hrt_VblankIntrWait();
                    hrt_CyclePalette(0, 187, 0);
                    if (keyDown(KEY_START)) {
                        asm volatile("swi 0x00"::);
                    }
                }
            }
            if (arpos == 2) {
                hrt_DMA_Copy(3, (u16*)suchBitmap, VRAM,  38400, 0x80000000);
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
                hrt_PrintOnBitmap(0, 144, "HeartLib Fade Demo");
                hrt_PrintOnBitmap(0, 152, "A to Fade Out, B to Fade In ");
                while (1) {
                    if (keyDown(KEY_A)) {
                        for (i = 0; i < 17; i++) {
                            hrt_SetFXLevel(i);
                            hrt_SleepF(5);
                        }
                    }
                    if (keyDown(KEY_B)) {
                        for (i = 0; i < 17; i++) {
                            hrt_SetFXLevel(16-i);
                            hrt_SleepF(5);
                        }
                    }
                    if (keyDown(KEY_START)) {
                        asm volatile("swi 0x00"::);
                    }
                }
            }
            if (arpos == 1) {
                hrt_offsetOAMData = 0;
                hrt_ConfigBG(2, 0, 1, 1, 1, 0, 1, 0);
                hrt_SetDSPMode(0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0);
                hrt_LoadBGPal((void*)bg_hillPal, 255);
                hrt_LoadBGTiles((void*)bg_hillTiles, 32800);
                hrt_LoadBGMap((void*)bg_hillMap, 2048);
                hrt_EditBG(2, bgx, bgy, 256, 256, 0, 0, 0);
                hrt_VblankIntrWait();
                while (1) {
                    frames++;
                    hrt_VblankIntrWait();
                    hrt_EditBG(2, bgx, bgy, 256, 256, 0, 0, 0);
                    if (keyDown(KEY_LEFT)) {
                        bgx--;
                    }
                    if (keyDown(KEY_RIGHT)) {
                        bgx++;
                    }
                    if (keyDown(KEY_UP)) {
                        bgy--;
                    }
                    if (keyDown(KEY_DOWN)) {
                        bgy++;
                    }
                    if (keyDown(KEY_START)) {
                        hrt_SetDSPMode(4, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0);
                        asm volatile("swi 0x01"::);
                        asm volatile("swi 0x00"::);
                    }
                }
            }
            if (arpos == 0) {
                hrt_offsetOAMPal = 0;
                hrt_offsetOAMData = 0;
                hrt_CreateOBJ(0, 120, 80, 2, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0);
                hrt_SetDSPMode(3, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0);
                hrt_LoadOBJGFX((void*)blockTiles, 2048);
                hrt_LoadOBJPal((void*)blockPal, 255);
                hrt_CopyOAM();
                x = 120;
                y = 80;
                hrt_AffineOBJ(0, 0, 255, 255);
                x_scale = 255;
                g_newframe = 1;
                hrt_FillScreen(0x0000);
                hrt_PrintOnBitmap(0, 0, "HeartLib Sprite Demo");
                while (1) {
                    frames++;
                    if (keyDown(KEY_SELECT)) {
                        fxlevel++;
                        hrt_SetFXLevel(fxlevel);
                    }

                    if (keyDown(KEY_R)) {
                        rot++;
                    }
                    if (keyDown(KEY_L)) {
                        rot--;
                    }
                    if (keyDown(KEY_A)) {
                        x_scale++;
                    }
                    if (keyDown(KEY_B)) {
                        x_scale--;
                    }
                    if (keyDown(KEY_UP)) {
                        y--;
                    }
                    if (keyDown(KEY_DOWN)) {
                        y++;
                    }
                    if (keyDown(KEY_LEFT)) {
                        x--;
                    }
                    if (keyDown(KEY_RIGHT)) {
                        x++;
                    }
                    if (rot == -1) {
                        rot = 0;
                    }
                    if (keyDown(KEY_START)) {
                        asm volatile("swi 0x00"::);
                    }
                    hrt_SetOBJXY(0, x, y);
                    hrt_AffineOBJ(0, rot % 360, x_scale, x_scale);
                    hrt_VblankIntrWait();
                    hrt_CopyOAM();
                }
            }
            if (arpos == 10) {
                hrt_FillScreen(0x0000);
                sprintf((char*)buf, "%d", g_sram);
                hrt_PrintOnBitmap(0, 0, (char*)buf);
                hrt_SetDSPMode(3, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0);
                while (1) {
                    hrt_SaveByte(0x00, p[0]);
                    hrt_SaveByte(0x01, p[1]);
                    hrt_SaveByte(0x02, p[2]);
                    hrt_SaveByte(0x03, p[3]);
                    if (keyDown(KEY_UP)) {
                        g_sram++;
                        hrt_Memcpy(VRAM, (char*)0x06000ED0, 240 * 16);
                        sprintf((char*)buf, "%d", g_sram);
                        hrt_PrintOnBitmap(0, 0, (char*)buf);
                        while(keyDown(KEY_UP));
                    }
                    if (keyDown(KEY_DOWN)) {
                        g_sram--;
                        hrt_Memcpy(VRAM, (char*)0x06000ED0, 240 * 16);
                        sprintf((char*)buf, "%d", g_sram);
                        hrt_PrintOnBitmap(0, 0, (char*)buf);
                        while (keyDown(KEY_DOWN));
                    }
                    if (keyDown(KEY_START)) {
						
                        asm volatile("swi 0x00"::);
                    }
                    hrt_VblankIntrWait();
                }
            }
        }
        hrt_CopyOAM();
        hrt_VblankIntrWait();
    }
    return 0;
}
