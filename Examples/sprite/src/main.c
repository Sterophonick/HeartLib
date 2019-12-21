#include <string.h>
#include "hrt_oam.h"
#include "hrt_video.h"
extern unsigned short blockTiles[512];
extern unsigned short blockPal[256];

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
	hrt_CreateOBJ(0, 120, 80, 2, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0);
	hrt_CopyOBJToOAM();
	while(1);
}