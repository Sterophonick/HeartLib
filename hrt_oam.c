/*******************************************************************\
*             8   8                    8  8     8 8
*             8   8                    8  8       8
*             8   8  888   888  8 888 888 8     8 8 88
*             88888 8   8     8 88     8  8     8 88  8
*             8   8 88888  8888 8      8  8     8 8   8
*             8   8 8     8   8 8      8  8     8 8   8
*             8   8  8888  8888 8       8 88888 8 8888
*                             HeartLib
*A comprehensive game/app engine for the Nintendo® Game Boy Advance™
*                  Licensed under the GNU GPL v3.0
*                 View the LICENSE file for details
*                      2017-2019 Sterophonick
*                          For Tubooboo
\*******************************************************************/
#include "libheart.h"
pRotData rotData = (pRotData)sprites;
u16* OBJPaletteMem 	=(u16*)0x5000200;
u16* OAMData		=(u16*)0x6010000;
u16* OAM = (u16*)0x7000000;
extern gba_system __hrt_system;

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
 
 const FIXED _atan_table[256] = {
  0,   4,   8,  12,  16,  20,  24,  28,  32,  36,  40,  44,  48,  52,  56,  60,
 64,  68,  72,  76,  80,  84,  88,  92,  96, 100, 104, 108, 112, 116, 119, 123,
127, 131, 135, 139, 143, 147, 151, 155, 159, 163, 167, 170, 174, 178, 182, 186,
190, 194, 198, 201, 205, 209, 213, 217, 221, 224, 228, 232, 236, 240, 243, 247,
251, 255, 258, 262, 266, 270, 273, 277, 281, 284, 288, 292, 296, 299, 303, 307,
310, 314, 317, 321, 325, 328, 332, 335, 339, 343, 346, 350, 353, 357, 360, 364,
367, 371, 374, 378, 381, 385, 388, 392, 395, 399, 402, 405, 409, 412, 416, 419,
422, 426, 429, 432, 436, 439, 442, 446, 449, 452, 455, 459, 462, 465, 468, 472,
475, 478, 481, 484, 487, 491, 494, 497, 500, 503, 506, 509, 512, 516, 519, 522,
525, 528, 531, 534, 537, 540, 543, 546, 549, 552, 555, 557, 560, 563, 566, 569,
572, 575, 578, 581, 583, 586, 589, 592, 595, 597, 600, 603, 606, 609, 611, 614,
617, 619, 622, 625, 628, 630, 633, 636, 638, 641, 643, 646, 649, 651, 654, 656,
659, 662, 664, 667, 669, 672, 674, 677, 679, 682, 684, 687, 689, 691, 694, 696,
699, 701, 703, 706, 708, 711, 713, 715, 718, 720, 722, 725, 727, 729, 732, 734,
736, 738, 741, 743, 745, 747, 750, 752, 754, 756, 758, 760, 763, 765, 767, 769,
771, 773, 775, 778, 780, 782, 784, 786, 788, 790, 792, 794, 796, 798, 800, 802
};

void hrt_CopyOAM(void)
{
	if (__hrt_system.hrt_start) {
		register u16* temp;
		temp = (u16*)sprites;
		memcpy(OAM, temp, 128*4);
	}
}
void hrt_CreateOBJ(u8 spr, u8 stx, u8 sty, u8 size, u8 affine, u8 hflip, u8 vflip, u8 shape, u8 dblsize, u8 mosaic, u8 pal, u8 color, u8 mode, u8 priority, u32 offset)
{
	if (__hrt_system.hrt_start) {
		switch(affine)
		{
			case 1:
				sprites[spr].attribute0 = (color * 8192) | (shape * 0x4000) | (mode * 0x400) | (mosaic * 0x1000) | (0x100) | (dblsize * 0x200) | sty;
				sprites[spr].attribute1 = (size * 16384) | ((spr) << 9) | (hflip * 4096) | (vflip * 8192) | stx;
				sprites[spr].attribute2 = (512 + offset) | ((priority) << 10) | ((pal) << 12);
				hrt_AffineOBJ(spr, 0, 256, 256);
				break;
			default:
				sprites[spr].attribute0 = (color * 8192) | (shape * 0x4000) | (mode * 0x400) | (mosaic * 0x1000) | (dblsize * 0x200) | sty;
				sprites[spr].attribute1 = (size * 16384) | hflip * 4096 | (vflip * 8192) | stx;
				sprites[spr].attribute2 = (512 + offset) | ((priority) << 10) | ((pal) << 12);
				break;
		}
	}
}

void hrt_AffineOBJ(int rotDataIndex, s32 angle, s32 x_scale, s32 y_scale)
{
	if (__hrt_system.hrt_start) {
		rotData[rotDataIndex].pa = (s32)(((x_scale) * (s32)COS[angle % 360]) >> 8);
		rotData[rotDataIndex].pb = (s32)(((y_scale) * (s32)SIN[angle % 360]) >> 8);
		rotData[rotDataIndex].pc = (s32)(((x_scale) * (s32)-SIN[angle % 360]) >> 8);
		rotData[rotDataIndex].pd = (s32)(((y_scale) * (s32)COS[angle % 360]) >> 8);
	}
}
void hrt_SetOBJX(u8 spr, s16 x)
{
	if (__hrt_system.hrt_start) {
		sprites[spr].attribute1 &= ~(0x1FF);
		sprites[spr].attribute1 |= x & 511;
	}
}

void hrt_SetOBJY(u8 spr, s16 y)
{
	if (__hrt_system.hrt_start) {
		sprites[spr].attribute0 &= ~(0xFF);
		sprites[spr].attribute0 |= y & 255;
	}
}

void hrt_SetOBJXY(u8 spr, s16 x, s16 y)
{
	hrt_SetOBJX(spr, x);
	hrt_SetOBJY(spr, y);
}

void hrt_CloneOBJ(int ospr, int nspr) //duplicates a Sprite
{
	if (__hrt_system.hrt_start) {
		sprites[nspr].attribute0 = sprites[ospr].attribute0;
		sprites[nspr].attribute1 = sprites[ospr].attribute1;
		sprites[nspr].attribute2 = sprites[ospr].attribute2;
		rotData[nspr].pa = rotData[ospr].pa;
		rotData[nspr].pb = rotData[ospr].pb;
		rotData[nspr].pc = rotData[ospr].pc;
		rotData[nspr].pd = rotData[ospr].pd;
	}
}

#define degreesToRadians(angleDegrees) (angleDegrees * M_PI / 180.0)

void hrt_MoveSpriteInDirection(u8 sprite, u16 direction, int steps)
{
	register int x = hrt_GetOBJX(sprite);
	register int y = hrt_GetOBJY(sprite);	
	register int mx,my;
	if (__hrt_system.hrt_start)
	{
		mx = cos(direction) * steps;
		my = sin(direction) * steps;
		x+=mx;
		y+=my;
		hrt_SetOBJXY(sprite, x, y);
	}
}

s32 math_atan2 (FIXED y, FIXED x) {
	register FIXED xabs, yabs;
	register FIXED f, g;

	x = x << 8;
	y = y << 8;

	if (x >= 0) {
		xabs = x;
	} else {
		xabs = -x;
	}

	if (y >= 0) {
		yabs = y;
	} else {
		yabs = -y;
	}

	if (yabs <= xabs) {
		f = (yabs << 8) / xabs;
		g = _atan_table[f];
	} else {
		f = (xabs << 8) / yabs;
		g = 1608 - _atan_table[f];
	}

	if (x >= 0) {
		if (y >= 0) {
			return (g) >> 2;
		} else {
			return -(g >> 2);
		}
	} else {
		if (y >= 0) {
			return (3217- g) >> 2;
		} else {
			return (g - 3217) >> 2;
		}
	}
}

u16 hrt_PointOBJTowardsPosition(u8 sprite, int x, int y)
{
	if (__hrt_system.hrt_start)
	{
		register u16 temp;
		register int dx;
		register int dy;
		dx = x - hrt_GetOBJX(sprite);
		dy = y - hrt_GetOBJY(sprite);
		temp = hrt_ArcTan2(dx, dy);
		return temp % 360;
	}
	return 0;
}

u16 hrt_GetOBJX(u8 sprite)
{
	if (__hrt_system.hrt_start)
	{
		register u16 temp;
		temp = sprites[sprite].attribute1;
		temp &= 0x1FF;
		return temp;
	}
	return 0;
}

u8 hrt_GetOBJY(u8 sprite)
{
	if (__hrt_system.hrt_start)
	{
		register u8 temp;
		temp = sprites[sprite].attribute0;
		temp &= 0xFF;
		return temp;
	}
	return 0;
}

void hrt_EnableOBJHFlip(u8 objno)
{
	if (__hrt_system.hrt_start)
	{
		sprites[objno].attribute1 |= (1 << 12);
	}
}

void hrt_DisableOBJHFlip(u8 objno)
{
	if (__hrt_system.hrt_start)
	{
		sprites[objno].attribute1 &= ~(1 << 12);
	}
}

void hrt_EnableOBJVFlip(u8 objno)
{
	if (__hrt_system.hrt_start)
	{
		sprites[objno].attribute1 |= (1 << 13);
	}
}

void hrt_DisableOBJVFlip(u8 objno)
{
	if (__hrt_system.hrt_start)
	{
		sprites[objno].attribute1 &= ~(1 << 13);
	}
}

void hrt_SetOBJMode(u8 objno, u8 mode)
{
	if(__hrt_system.hrt_start)
	{
		sprites[objno].attribute0 |= (mode << 10);
	}
}

void hrt_EnableOBJMosaic(u8 objno)
{
	if (__hrt_system.hrt_start)
	{
		sprites[objno].attribute0 |= (1 << 12);
	}
}

void hrt_DisableOBJMosaic(u8 objno)
{
	if (__hrt_system.hrt_start)
	{
		sprites[objno].attribute0 &= ~(1 << 12);
	}
}

void hrt_SetOBJColor16(u8 objno)
{
	if (__hrt_system.hrt_start)
	{
		sprites[objno].attribute0 &= ~(1 << 13);
	}
}

void hrt_SetOBJColor256(u8 objno)
{
	if (__hrt_system.hrt_start)
	{
		sprites[objno].attribute0 |= (1 << 13);
	}
}

void hrt_SetOBJShape(u8 objno, u8 shape)
{
	if (__hrt_system.hrt_start)
	{
		sprites[objno].attribute0 |= (shape << 14);
	}
}

void hrt_SetOBJSize(u8 objno, u8 size)
{
	if (__hrt_system.hrt_start)
	{
		sprites[objno].attribute1 |= (size << 14);
	}
}

void hrt_SetOBJOffset(u8 objno, u8 data)
{
	if (__hrt_system.hrt_start)
	{
		sprites[objno].attribute2 |= (data << 0);
	}
}

void hrt_SetOBJPriority(u8 objno, u8 prior)
{
	if (__hrt_system.hrt_start)
	{
		sprites[objno].attribute2 |= (prior << 10);
	}
}

void hrt_SetOBJPalette(u8 objno, u8 palette)
{
	if (__hrt_system.hrt_start)
	{
		sprites[objno].attribute2 |= (palette << 12);
	}
}

void hrt_DestroyOBJ(u8 objno)
{
	if (__hrt_system.hrt_start)
	{
		sprites[objno].attribute0 = 0;
		sprites[objno].attribute1 = 0;
		sprites[objno].attribute2 = 0;
	}
}

u8 hrt_GetOBJPalette(u8 objno)
{
	if (__hrt_system.hrt_start)
	{
		register u16 temp = sprites[objno].attribute2;
		temp &= 0xF000;
		return temp >> 12;
	}
	return 0;
}

u8 hrt_GetOBJPriority(u8 objno)
{
	if (__hrt_system.hrt_start)
	{
		register u16 temp = sprites[objno].attribute2;
		temp &= 0x0C00;
		return temp >> 10;
	}
	return 0;
}

u16 hrt_GetOBJOffset(u8 objno)
{
	if (__hrt_system.hrt_start)
	{
		register u16 temp = sprites[objno].attribute2;
		temp &= 0x03FF;
		return temp;
	}
	return 0;
}

u8 hrt_GetOBJSize(u8 objno)
{
	if (__hrt_system.hrt_start)
	{
		register u16 temp = sprites[objno].attribute1;
		temp &= 0xC000;
		return temp >> 14;
	}
	return 0;
}

void hrt_EnableOBJAffine(u8 objno)
{
	if (__hrt_system.hrt_start)
	{
		sprites[objno].attribute0 |= (1 << 8);
	}
}

void hrt_DisableOBJAffine(u8 objno)
{
	if (__hrt_system.hrt_start)
	{
		sprites[objno].attribute0 &= ~(NOT_BIT08);
	}
}

u8 hrt_IsOBJAffine(u8 objno)
{
	if (__hrt_system.hrt_start)
	{
		return sprites[objno].attribute0 & 8;
	}
	return 0;
}

u8 hrt_IsOBJDoubleSize(u8 objno)
{
	if (__hrt_system.hrt_start)
	{
		return sprites[objno].attribute0 & 9;
	}
	return 0;
}

u8 hrt_IsOBJMosaic(u8 objno)
{
	if (__hrt_system.hrt_start)
	{
		return sprites[objno].attribute0 & 12;
	}
	return 0;
}

u8 hrt_GetOBJColorMode(u8 objno)
{
	if (__hrt_system.hrt_start)
	{
		return sprites[objno].attribute0 & 13;
	}
	return 0;
}

bool hrt_IsOBJHFlip(u8 objno)
{
	if (__hrt_system.hrt_start)
	{
		return sprites[objno].attribute1 & 12;
	}
	return 0;
}

bool hrt_IsOBJVFlip(u8 objno)
{
	if (__hrt_system.hrt_start)
	{
		return sprites[objno].attribute1 & 13;
	}
	return 0;
}

u8 hrt_GetOBJShape(u8 objno)
{
	if (__hrt_system.hrt_start)
	{
		register u16 temp = sprites[objno].attribute0;
		temp &= 0xC000;
		return temp >> 14;
	}
	return 0;
}

u8 hrt_GetOBJMode(u8 objno)
{
	if (__hrt_system.hrt_start)
	{
		register u16 temp = sprites[objno].attribute0;
		temp &= 0x0C00;
		return temp >> 10;
	}
	return 0;
}

void hrt_ToggleOBJAffine(u8 objno)
{
	if (__hrt_system.hrt_start)
	{
		sprites[objno].attribute0 ^= (1 << 8);
	}
}

void hrt_ToggleOBJHFlip(u8 objno)
{
	if (__hrt_system.hrt_start)
	{
		sprites[objno].attribute1 ^= 12;
	}
}


void hrt_ToggleOBJVFlip(u8 objno)
{
	if (__hrt_system.hrt_start)
	{
		sprites[objno].attribute1 ^= 13;
	}
}

void hrt_ToggleOBJMosaic(u8 objno)
{
	if (__hrt_system.hrt_start)
	{
		sprites[objno].attribute0 ^= 12;
	}
}

void hrt_ToggleOBJDoubleSize(u8 objno)
{
	if (__hrt_system.hrt_start)
	{
		sprites[objno].attribute0 ^= 9;
	}
}
