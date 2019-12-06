#include <string.h>
#include "hrt_oam.h"

int main()
{
	OBJ_ATTR *square = &OAMBuffer[0];
	PALETTE[257] = 0x7FFF;
	memset((u16*)0x06014000, 0x1111, 32);
	REG_DISPCNT = 0x1040;
	hrt_CreateOBJ(square, OBJ_SQUARE, ATTR1_SIZE_8, 0);
	hrt_SetOBJXY(square, 0, 0);
	hrt_CopyOBJToOAM();
	while(1);
}