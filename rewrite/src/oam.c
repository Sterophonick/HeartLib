#include "hrt_oam.h"
OBJ_ATTR OAMBuffer[128];
OBJ_AFFINE *OAMAffineBuffer = (OBJ_AFFINE*)OAMBuffer;

void hrt_SetOBJX(OBJ_ATTR* obj, int x)
{
	obj->attr1 = obj->attr1 & 0xFE00;  //clear the old x value
	obj->attr1 = obj->attr1 | x;
}

void hrt_SetOBJY(OBJ_ATTR* obj, int y)
{
	obj->attr0 = obj->attr0 & 0xFF00;  //clear the old y value
	obj->attr0 = obj->attr0 | y;
}
 
OBJ_ATTR *hrt_CreateOBJ(OBJ_ATTR *obj, u16 a0, u16 a1, u16 a2)
{
	obj->attr0 = a0;
	obj->attr1 = a1;
	obj->attr2 = a2;
	return obj;
}
