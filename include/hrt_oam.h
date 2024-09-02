#ifdef __cplusplus
extern "C" {
#endif

#ifndef HRT_OAM
#define HRT_OAM

//Includes
#include "hrt_types.h"
#include "hrt_memmap.h"

//Structs
HEART_API OBJ_ATTR OAMBuffer[128];
HEART_API OBJ_AFFINE* OAMAffineBuffer;

HEART_API OBJ_ATTR* OAM;
HEART_API OBJ_AFFINE* OAMAff;

HEART_API const s16 SIN[360];
HEART_API const s16 COS[360];

//Macros
#define hrt_ClearOAM()

//Functions
HEART_API void hrt_SetOBJX(u8 spr, s16 x); //Set X of sprite
HEART_API void hrt_SetOBJY(u8 obj, s16 y); //Set Y of sprite
HEART_API void hrt_CreateOBJ(u8 spr, u8 stx, u8 sty, u8 size, u8 affine, u8 hflip, u8 vflip, u8 shape, u8 dblsize, u8 mosaic, u8 pal, u8 color, u8 mode, u8 priority, u32 offset); //Create a new sprite
HEART_API void hrt_AffineOBJ(u8 spr, s32 angle, s32 x_scale, s32 y_scale); //Rotates and scales a sprite
HEART_API void hrt_CloneOBJ(u8 ospr, u8 nspr); //Clones a sprite
HEART_API void hrt_MoveOBJTowardsDirection(u8 spr, u16 direction, u8 steps); // BROKEN
HEART_API void hrt_PointSpriteTowardsPostition(u8 spr, int x, int y); // BROKEN
HEART_API void hrt_SetOBJXY(u8 obj, int x, int y); //Set XY of sprite
HEART_API void hrt_SetOBJOffset(u8 spr, u16 data); //Set graphics pointer of sprite

//Inlines
static inline void hrt_HideOBJ(u8 spr) //Hide an object
{
	if (spr <= 127)
		OAMBuffer[spr].attr0 |= 1 << 9;
}

static inline void hrt_ShowOBJ(u8 spr) //Show an object
{
	if (spr <= 127)
		OAMBuffer[spr].attr0 &= ~(1 << 9);
}

static inline void hrt_EnableOBJHFlip(u8 spr) //Enable OBJ horizontal flip
{
	if (spr <= 127)
		OAMBuffer[spr].attr1 |= (1 << 12);
}

static inline void hrt_DisableOBJHFlip(u8 spr) //Disable OBJ horizontal flip
{
	if (spr <= 127)
		OAMBuffer[spr].attr1 &= ~(1 << 12);
}

static inline void hrt_EnableOBJVFlip(u8 spr) //Enable OBJ Vertical Flip
{
	if (spr <= 127)
		OAMBuffer[spr].attr1 |= (1 << 13);
}

static inline void hrt_DisableOBJVFlip(u8 spr) //Disable OBJ Vertical flip
{
	if (spr <= 127)
		OAMBuffer[spr].attr1 &= ~(1 << 13);
}

static inline void hrt_ToggleOBJHFlip(u8 spr) //Toggle OBJ horizontal flip
{
	if (spr <= 127)
		OAMBuffer[spr].attr1 ^= 12;
}

static inline void hrt_ToggleOBJVFlip(u8 spr) //Toggle OBJ vertical flip
{
	if (spr <= 127)
		OAMBuffer[spr].attr1 ^= 13;
}

static inline s16 hrt_GetOBJX(u8 spr) //Gets the X coordinate of a sprite
{
	if (spr <= 127)
		return ((s16)(OAMBuffer[spr].attr1 << 7)) >> 7;
	return 0;
}

static inline s16 hrt_GetOBJY(u8 spr) //Gets the Y coordinate of a sprite
{
	if (spr <= 127)
		return ((s16)(OAMBuffer[spr].attr0 << 8)) >> 8;
	return 0;
}

static inline u16 hrt_GetOBJOffset(u8 spr) //Gets the tile pointer of a sprite
{
	if (spr <= 127)
		return OAMBuffer[spr].attr2 & 0x1FF;
	return 0;
}

static inline void hrt_CopyOBJToOAM(void) //Copy the OAM buffer data to the screen
{
	hrt_CpuFastSet((void*)OAMBuffer, (void*)OAM, 128*4);
}

#endif

#ifdef __cplusplus
}
#endif
