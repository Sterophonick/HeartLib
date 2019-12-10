#include <string.h>
#include "hrt_oam.h"
#include "hrt_video.h"
extern unsigned short blockTiles[512];
extern unsigned short blockPal[256];

int main()
{
	hrt_CreateOBJ(square, 0);
	//hrt_LoadDataIntoVRAM(blockTiles, 512, 0x1000);
	memcpy((void*)PALETTE[257], blockPal, 256);
	hrt_DSPSetMode(DSP_MODE(4) | ENABLE_BG(2) | OBJ_MAP_1D | ENABLE_BG(3) | ENABLE_BG(0) | 0x1000);
	hrt_SetOBJAttributes(square, OBJ_SQUARE, ATTR1_SIZE_64, 0);
	hrt_SetOBJXY(square, 0, 0);
	hrt_CopyOBJToOAM();
	while(1);
}