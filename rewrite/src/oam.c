#include "hrt_oam.h"
OBJ_ATTR OAMBuffer[128];
OBJ_AFFINE *OAMAffineBuffer = (OBJ_AFFINE*)OAMBuffer;

void hrt_SetOBJX(u8 obj, int x)
{
	OAMBuffer[obj].attr1 = OAMBuffer[obj].attr1 & 0xFE00;  //clear the old x value
	OAMBuffer[obj].attr1 = OAMBuffer[obj].attr1 | x;
}

void hrt_SetOBJY(u8 obj, int y)
{
	OAMBuffer[obj].attr0 = OAMBuffer[obj].attr0 & 0xFF00;  //clear the old y value
	OAMBuffer[obj].attr0 = OAMBuffer[obj].attr0 | y;
}
 
void hrt_CreateOBJ(u8 obj, u16 a0, u16 a1, u16 a2)
{
	OAMBuffer[obj].attr0 = a0;
	OAMBuffer[obj].attr1 = a1;
	OAMBuffer[obj].attr2 = a2;
}
