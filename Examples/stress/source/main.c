//Includes
#include <string.h>
#include "hrt_video.h"
#include "hrt_misc.h"
#include "hrt_interrupt.h"
#include "hrt_text.h"
#include "hrt_bios.h"
#include "hrt_oam.h"
#define NUM_CLONES 7 

extern unsigned short blockTiles[512];
extern unsigned short blockPal[256];
extern u8 wobble[256];
extern u8 wobble2[256];

#define block 0

u8 CPUUsage;
u8 spritecnt;
u8 frames;

void vblFunc(void)
{
	frames++;
	while(spritecnt < NUM_CLONES)
	{
		hrt_SetOBJY(block,wobble[(spritecnt+frames)%256]);
	}
	//hrt_CopyOBJToOAM();
}

int main()
{
	hrt_Init(); //Does some recommended initializations
	hrt_DSPSetBGMode(0); //Sets the BG Mode to 4-Tile layers
	hrt_DSPEnableBG(0); //Enables BG 0
	hrt_DSPEnableOBJ(); //Enables the OBJ Layer
	hrt_DSPDisableForceBlank(); //Unblanks the screen
	hrt_InitTextEngine(0); //Initializes the text engine on BG 0
	hrt_SetIRQ(IRQ_VBLANK, vblFunc);
	hrt_Print(0,0,"HeartLib CPU Stress Demo"); //Text
	hrt_DMACopy(3, blockTiles, 0x06010000, 512, 0x80000000);
	hrt_DMACopy(3, blockPal, &PALETTE[256], 256, 0x80000000);
	//hrt_CreateOBJ(block, 0, 0, 2, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0);
	//hrt_LoadDataIntoVRAM(blockTiles, 0x10000, 512);
	//hrt_LoadDataIntoPalette(blockPal, 257, 256);
	for(;;)
	{
		hrt_VblankIntrWait(); //Stops CPU until frame is done
	}
}