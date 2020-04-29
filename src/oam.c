#include <math.h>
#include <string.h>
#include "hrt_oam.h"
#include "hrt_bios.h"
#include "hrt_misc.h"
OBJ_ATTR OAMBuffer[128];
OBJ_AFFINE *OAMAffineBuffer = (OBJ_AFFINE*)OAMBuffer;

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
 

void hrt_SetOBJX(u8 obj, int x)
{
	if(obj > 127) return;
	OAMBuffer[obj].attr1 = OAMBuffer[obj].attr1 & 0xFE00;  //clear the old x value
	OAMBuffer[obj].attr1 = OAMBuffer[obj].attr1 | x;
}

void hrt_SetOBJY(u8 obj, int y)
{
	if(obj > 127) return;
	OAMBuffer[obj].attr0 = OAMBuffer[obj].attr0 & 0xFF00;  //clear the old y value
	OAMBuffer[obj].attr0 = OAMBuffer[obj].attr0 | y;
}

void hrt_CreateOBJ(u8 spr, u8 stx, u8 sty, u8 size, u8 affine, u8 hflip, u8 vflip, u8 shape, u8 dblsize, u8 mosaic, u8 pal, u8 color, u8 mode, u8 priority, u32 offset)
{
	if(spr > 127) return;
	OAMBuffer[spr].attr0 = (color * 8192) | (shape * 0x4000) | (mode * 0x400) | (mosaic * 0x1000) | affine*(0x100) | (dblsize * 0x200) | sty;
	OAMBuffer[spr].attr1 = (size * 16384) | (((spr) << 9)*affine) | (hflip * 4096) | (vflip * 8192) | stx;
	OAMBuffer[spr].attr2 = (512 + offset) | ((priority) << 10) | ((pal) << 12);
	if(affine) hrt_AffineOBJ(spr, 0, 256, 256);
}

void hrt_AffineOBJ(u8 spr, s32 angle, s32 x_scale, s32 y_scale)
{
	if(spr > 127) return;
	u16 temp;
	angle = hrt_DivMod(angle, 360);
	OAMAffineBuffer[spr].pa = (s32)(((x_scale) * (s32)COS[temp]) >> 8);
	OAMAffineBuffer[spr].pb = (s32)(((y_scale) * (s32)SIN[temp]) >> 8);
	OAMAffineBuffer[spr].pc = (s32)(((x_scale) * (s32)-SIN[temp]) >> 8);
	OAMAffineBuffer[spr].pd = (s32)(((y_scale) * (s32)COS[temp]) >> 8);
}

void hrt_CloneOBJ(u8 ospr, u8 nspr)
{
	if(nspr > 127) return;
	if(ospr > 127) return;
	OAMBuffer[nspr].attr0 = OAMBuffer[ospr].attr0;
	OAMBuffer[nspr].attr1 = OAMBuffer[ospr].attr1;
	OAMBuffer[nspr].attr2 = OAMBuffer[ospr].attr2;
	OAMAffineBuffer[nspr].pa = OAMAffineBuffer[ospr].pa;
	OAMAffineBuffer[nspr].pb = OAMAffineBuffer[ospr].pb;
	OAMAffineBuffer[nspr].pc = OAMAffineBuffer[ospr].pc;
	OAMAffineBuffer[nspr].pd = OAMAffineBuffer[ospr].pd;
}

void hrt_HideOBJ(u8 spr)
{
	if(spr > 127) return;
	OAMBuffer[spr].attr0 |= 1 << 9;
}

void hrt_ShowOBJ(u8 spr)
{
	if(spr > 127) return;
	OAMBuffer[spr].attr0 &= ~(1 << 9);
}

void hrt_EnableOBJHFlip(u8 spr)
{
	if(spr > 127) return;
	OAMBuffer[spr].attr1 |= (1 << 12);
}

void hrt_DisableOBJHFlip(u8 spr)
{
	if(spr > 127) return;
	OAMBuffer[spr].attr1 &= ~(1 << 12);
}

void hrt_EnableOBJVFlip(u8 spr)
{
	if(spr > 127) return;
	OAMBuffer[spr].attr1 |= (1 << 13);
}

void hrt_DisableOBJVFlip(u8 spr)
{
	if(spr > 127) return;
	OAMBuffer[spr].attr1 &= ~(1 << 13);
}

void hrt_ToggleOBJHFlip(u8 spr)
{
	if(spr > 127) return;
	OAMBuffer[spr].attr1 ^= 12;
}

void hrt_ToggleOBJVFlip(u8 spr)
{
	if(spr > 127) return;
	OAMBuffer[spr].attr1 ^= 13;
}

void hrt_MoveOBJTowardsDirection(u8 spr, u16 direction, u8 steps)
{
	if(spr > 127) return;
	int x = COS[direction * steps];
	int y = SIN[direction * steps];
	int x2 = hrt_GetOBJX(spr);
	int y2 = hrt_GetOBJY(spr);
	y2+=y;
	x2+=x;
	hrt_SetOBJXY(spr, x2, y2);
}

s16 hrt_GetOBJX(u8 spr)
{
	if(spr > 127) return;
	return ((s16)(OAMBuffer[spr].attr1 << 7)) >> 7;
}

s16 hrt_GetOBJY(u8 spr)
{
	if(spr > 127) return;
	return ((s16)(OAMBuffer[spr].attr0 << 8)) >> 8;
}

void hrt_PointSpriteTowardsPostition(u8 spr, int x, int y)
{
	if(spr > 127) return;
	int x2 = hrt_GetOBJX(spr);
	int y2 = hrt_GetOBJY(spr);
}

void hrt_SetOBJXY(u8 obj, int x, int y)
{
	if(obj > 127) return;
	hrt_SetOBJX(obj, x);
	hrt_SetOBJY(obj, y);
}

void hrt_CopyOBJToOAM(void)
{
	hrt_DMACopy(3, (void*)OAMBuffer, (void*)OAM, 128*4, 0x80000000);
}

void hrt_SetOBJOffset(u8 spr, u16 data)
{
	if(spr > 127) return;
	OAMBuffer[spr].attr2 &= ~(0x1FF);
	OAMBuffer[spr].attr2 |= (data << 0);
}

u16 hrt_GetOBJOffset(u8 spr)
{
	if(spr > 127) return;
	return OAMBuffer[spr].attr2 & 0x1FF;
}

void hrt_MoveOBJInDirection(u8 spr, u16 direction)
{
	if (spr > 127) return;
}

void hrt_PointOBJTowardsPixel(u8 spr, u16 x, u16 y)
{
	if (spr > 127) return;
}