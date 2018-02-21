#include <libheart.h>
#include "defs.h"

int main()
{
	int frames;
    hrt_Init(1); //Initializes Heartlib. If number is set to 1 it plays an intro. REQUIRED FOR USING THIS LIBRARY. IF THIS IS NOT EXECUTED IT WILL NOT WORK!!!!
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

    hrt_LoadOBJGFX((void*)arrowTiles, 32); //loads Sprite Graphics
    hrt_LoadOBJPal((void*)arrowPal, 255); //loads Sprite palette
    frames = 0; //Sets frames to 0
    arpos = 0; //Sets arrow position to 0

    hrt_PrintOnBitmap(56, //X position
                      152, //Y position
                      "HeartLib Demo 2 v1.0"); // String

    hrt_SetDSPMode(3, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0); //Sets REG_DISPCNT, like above
    hrt_PrintOnBitmap(8, 0, "OBJ Window"); //draws text
	hrt_PrintOnBitmap(8, 9, "Rotate Background"); //draws text
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
            if (arpos == 2) {
                arpos = 1;
            }
            while (keyDown(KEY_DOWN));
        }

        hrt_SetOBJXY(&sprites[0], //Sprite
                     0, //X Position
                     9*arpos); //Y Position

        if (keyDown(KEY_A)) {
			if (arpos == 1)
			{
				hrt_SetDSPMode(1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0); //Sets REG_DISPCNT, like above
				hrt_offsetOAMData = 0;
				hrt_ConfigBG(2, 0, 1, 0, 1, 0, 0, 1);
				hrt_LoadBGPal((void*)l1Pal, 255);
				hrt_LoadBGTiles((void*)l1Tiles, 32768);
				hrt_offsetBGTile = 0x2000;
				hrt_LoadBGMap((void*)l1Map, 1024);
				int bgx=0, bgy=0, angle=0, scale=256;
				hrt_EditBG(2, bgx, bgy, 256, 256, 0);
				hrt_VblankIntrWait();
				hrt_CopyOAM();
				while (1)
				{
					frames++;
					hrt_VblankIntrWait();
					hrt_EditBG(2, bgx, bgy, scale, scale, angle);
					if (keyDown(KEY_A))
					{
						scale++;
					}
					if (keyDown(KEY_B))
					{
						scale--;
					}
					if (keyDown(KEY_L))
					{
						angle--;
					}
					if (keyDown(KEY_R))
					{
						angle++;
					}
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
        }
        hrt_CopyOAM();
        hrt_VblankIntrWait();
    }
    return 0;
}
