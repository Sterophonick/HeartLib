#include "hrt_oam.h"
#include "hrt_bios.h"
OBJ_ATTR OAMBuffer[128];
//OBJ_AFFINE *OAMAffineBuffer = (OBJ_AFFINE*)OAMBuffer;

const s16 SIN[360] = {    0,    4,    8,   13,   17,   22,   26,   31,   35,   40,
  44,   48,   53,   57,   61,   66,   70,   74,   79,   83,
  87,   91,   95,  100,  104,  108,  112,  116,  120,  124,
 127,  131,  135,  139,  143,  146,  150,  154,  157,  161,
 164,  167,  171,  174,  177,  181,  184,  187,  190,  193,
 196,  198,  201,  204,  207,  209,  212,  214,  217,  219,
 221,  223,  226,  228,  230,  232,  233,  235,  237,  238,
 240,  242,  243,  244,  246,  247,  248,  249,  250,  251,
 252,  252,  253,  254,  254,  255,  255,  255,  255,  255,
 255,  255,  255,  255,  255,  255,  254,  254,  253,  252,
 252,  251,  250,  249,  248,  247,  246,  244,  243,  242,
 240,  238,  237,  235,  233,  232,  230,  228,  226,  223,
 221,  219,  217,  214,  212,  209,  207,  204,  201,  198,
 196,  193,  190,  187,  184,  181,  177,  174,  171,  167,
 164,  161,  157,  154,  150,  146,  143,  139,  135,  131,
 128,  124,  120,  116,  112,  108,  104,  100,   95,   91,
  87,   83,   79,   74,   70,   66,   61,   57,   53,   48,
  44,   40,   35,   31,   26,   22,   17,   13,    8,    4,
   0,   -4,   -8,  -13,  -17,  -22,  -26,  -31,  -35,  -40,
 -44,  -48,  -53,  -57,  -61,  -66,  -70,  -74,  -79,  -83,
 -87,  -91,  -95, -100, -104, -108, -112, -116, -120, -124,
-127, -131, -135, -139, -143, -146, -150, -154, -157, -161,
-164, -167, -171, -174, -177, -181, -184, -187, -190, -193,
-196, -198, -201, -204, -207, -209, -212, -214, -217, -219,
-221, -223, -226, -228, -230, -232, -233, -235, -237, -238,
-240, -242, -243, -244, -246, -247, -248, -249, -250, -251,
-252, -252, -253, -254, -254, -255, -255, -255, -255, -255,
-255, -255, -255, -255, -255, -255, -254, -254, -253, -252,
-252, -251, -250, -249, -248, -247, -246, -244, -243, -242,
-240, -238, -237, -235, -233, -232, -230, -228, -226, -223,
-221, -219, -217, -214, -212, -209, -207, -204, -201, -198,
-196, -193, -190, -187, -184, -181, -177, -174, -171, -167,
-164, -161, -157, -154, -150, -146, -143, -139, -135, -131,
-128, -124, -120, -116, -112, -108, -104, -100,  -95,  -91,
 -87,  -83,  -79,  -74,  -70,  -66,  -61,  -57,  -53,  -48,
 -44,  -40,  -35,  -31,  -26,  -22,  -17,  -13,   -8,   -4 };

const s16 COS[360] = {  256,  255,  255,  255,  255,  255,  254,  254,  253,  252,
 252,  251,  250,  249,  248,  247,  246,  244,  243,  242,
 240,  238,  237,  235,  233,  232,  230,  228,  226,  223,
 221,  219,  217,  214,  212,  209,  207,  204,  201,  198,
 196,  193,  190,  187,  184,  181,  177,  174,  171,  167,
 164,  161,  157,  154,  150,  146,  143,  139,  135,  131,
 128,  124,  120,  116,  112,  108,  104,  100,   95,   91,
  87,   83,   79,   74,   70,   66,   61,   57,   53,   48,
  44,   40,   35,   31,   26,   22,   17,   13,    8,    4,
   0,   -4,   -8,  -13,  -17,  -22,  -26,  -31,  -35,  -40,
 -44,  -48,  -53,  -57,  -61,  -66,  -70,  -74,  -79,  -83,
 -87,  -91,  -95, -100, -104, -108, -112, -116, -120, -124,
-127, -131, -135, -139, -143, -146, -150, -154, -157, -161,
-164, -167, -171, -174, -177, -181, -184, -187, -190, -193,
-196, -198, -201, -204, -207, -209, -212, -214, -217, -219,
-221, -223, -226, -228, -230, -232, -233, -235, -237, -238,
-240, -242, -243, -244, -246, -247, -248, -249, -250, -251,
-252, -252, -253, -254, -254, -255, -255, -255, -255, -255,
-255, -255, -255, -255, -255, -255, -254, -254, -253, -252,
-252, -251, -250, -249, -248, -247, -246, -244, -243, -242,
-240, -238, -237, -235, -233, -232, -230, -228, -226, -223,
-221, -219, -217, -214, -212, -209, -207, -204, -201, -198,
-196, -193, -190, -187, -184, -181, -177, -174, -171, -167,
-164, -161, -157, -154, -150, -146, -143, -139, -135, -131,
-128, -124, -120, -116, -112, -108, -104, -100,  -95,  -91,
 -87,  -83,  -79,  -74,  -70,  -66,  -61,  -57,  -53,  -48,
 -44,  -40,  -35,  -31,  -26,  -22,  -17,  -13,   -8,   -4,
   0,    4,    8,   13,   17,   22,   26,   31,   35,   40,
  44,   48,   53,   57,   61,   66,   70,   74,   79,   83,
  87,   91,   95,  100,  104,  108,  112,  116,  120,  124,
 127,  131,  135,  139,  143,  146,  150,  154,  157,  161,
 164,  167,  171,  174,  177,  181,  184,  187,  190,  193,
 196,  198,  201,  204,  207,  209,  212,  214,  217,  219,
 221,  223,  226,  228,  230,  232,  233,  235,  237,  238,
 240,  242,  243,  244,  246,  247,  248,  249,  250,  251,
 252,  252,  253,  254,  254,  255,  255,  255,  255,  255 };
 

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

void hrt_CreateOBJ(OBJ_ATTR* spr, u8 stx, u8 sty, u8 size, u8 affine, u8 rotdata, u8 hflip, u8 vflip, u8 shape, u8 dblsize, u8 mosaic, u8 pal, u8 color, u8 mode, u8 priority, u32 offset)
{
	spr->attr0 = (color * 8192) | (shape * 0x4000) | (mode * 0x400) | (mosaic * 0x1000) | affine*(0x100) | (dblsize * 0x200) | sty;;
	spr->attr1 = (size * 16384) | (((rotdata) << 9)*affine) | (hflip * 4096) | (vflip * 8192) | stx;
	spr->attr2 = (512 + offset) | ((priority) << 10) | ((pal) << 12);
	if(affine) hrt_AffineOBJ(spr, 0, 256, 256);
}

void hrt_AffineOBJ(OBJ_ATTR* spr, s32 angle, s32 x_scale, s32 y_scale)
{
	u16 temp;
	angle = hrt_DivMod(angle, 360);
	spr->pa = (s32)(((x_scale) * (s32)COS[temp]) >> 8);
	spr->pb = (s32)(((y_scale) * (s32)SIN[temp]) >> 8);
	spr->pc = (s32)(((x_scale) * (s32)-SIN[temp]) >> 8);
	spr->pd = (s32)(((y_scale) * (s32)COS[temp]) >> 8);
}

void hrt_CloneOBJ(OBJ_ATTR* ospr, OBJ_ATTR* nspr)
{
	nspr->attr0 = ospr->attr0;
	nspr->attr1 = ospr->attr1;
	nspr->attr2 = ospr->attr2;
	nspr->pa = ospr->pa;
	nspr->pb = ospr->pb;
	nspr->pc = ospr->pc;
	nspr->pd = ospr->pd;
}

void hrt_HideOBJ(OBJ_ATTR* spr)
{
	spr->attr0 |= 1 << 9;
}

void hrt_ShowOBJ(OBJ_ATTR* spr)
{
	spr->attr0 &= ~(1 << 9);
}

void hrt_EnableOBJHFlip(OBJ_ATTR* spr)
{
	spr->attr1 |= (1 << 12);
}

void hrt_DisableOBJHFlip(OBJ_ATTR* spr)
{
	spr->attr1 &= ~(1 << 12);
}

void hrt_EnableOBJVFlip(OBJ_ATTR* spr)
{
	spr->attr1 |= (1 << 13);
}

void hrt_DisableOBJVFlip(OBJ_ATTR* spr)
{
	spr->attr1 &= ~(1 << 13);
}

void hrt_ToggleOBJHFlip(OBJ_ATTR* spr)
{
	spr->attr1 ^= 12;
}

void hrt_ToggleOBJVFlip(OBJ_ATTR* spr)
{
	spr->attr1 ^= 13;
}

void hrt_MoveOBJTowardsDirection(OBJ_ATTR* spr, u16 direction, u8 steps)
{
	
}

int hrt_GetOBJX(OBJ_ATTR* spr)
{
	register u16 temp;
	temp = spr->attr1;
	temp &= 0x1FF;
	return temp;
}

int hrt_GetOBJY(OBJ_ATTR* spr)
{
	register u8 temp;
	temp = spr->attr0;
	temp &= 0xFF;
	return temp;
}

void hrt_PointSpriteTowardsPostition(OBJ_ATTR* spr, int x, int y)
{
	
}