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
HEART_API void hrt_SetOBJX(u8 spr, int x);
HEART_API void hrt_SetOBJY(u8 obj, int y);
HEART_API void hrt_CreateOBJ(u8 spr, u8 stx, u8 sty, u8 size, u8 affine, u8 hflip, u8 vflip, u8 shape, u8 dblsize, u8 mosaic, u8 pal, u8 color, u8 mode, u8 priority, u32 offset);
HEART_API void hrt_AffineOBJ(u8 spr, s32 angle, s32 x_scale, s32 y_scale); //Rotates and scales a sprite
HEART_API void hrt_CloneOBJ(u8 ospr, u8 nspr); //Clones a sprite
HEART_API void hrt_MoveOBJTowardsDirection(u8 spr, u16 direction, u8 steps);
HEART_API void hrt_PointSpriteTowardsPostition(u8 spr, int x, int y);
HEART_API void hrt_SetOBJXY(u8 obj, int x, int y);
HEART_API void hrt_CopyOBJToOAM();
HEART_API void hrt_SetOBJOffset(u8 spr, u16 data);
HEART_API void hrt_MoveOBJInDirection(u8 spr, u16 direction);
HEART_API void hrt_PointOBJTowardsPixel(u8 spr, u16 x, u16 y);

//Inlines
inline void hrt_HideOBJ(u8 spr)
{
	if (spr <= 127)
		OAMBuffer[spr].attr0 |= 1 << 9;
}

inline void hrt_ShowOBJ(u8 spr)
{
	if (spr <= 127)
		OAMBuffer[spr].attr0 &= ~(1 << 9);
}

inline void hrt_EnableOBJHFlip(u8 spr)
{
	if (spr <= 127)
		OAMBuffer[spr].attr1 |= (1 << 12);
}

inline void hrt_DisableOBJHFlip(u8 spr)
{
	if (spr <= 127)
		OAMBuffer[spr].attr1 &= ~(1 << 12);
}

inline void hrt_EnableOBJVFlip(u8 spr)
{
	if (spr <= 127)
		OAMBuffer[spr].attr1 |= (1 << 13);
}

inline void hrt_DisableOBJVFlip(u8 spr)
{
	if (spr <= 127)
		OAMBuffer[spr].attr1 &= ~(1 << 13);
}

inline void hrt_ToggleOBJHFlip(u8 spr)
{
	if (spr <= 127)
		OAMBuffer[spr].attr1 ^= 12;
}

inline void hrt_ToggleOBJVFlip(u8 spr)
{
	if (spr <= 127)
		OAMBuffer[spr].attr1 ^= 13;
}

inline s16 hrt_GetOBJX(u8 spr)
{
	if (spr <= 127)
		return ((s16)(OAMBuffer[spr].attr1 << 7)) >> 7;
	return 0;
}

inline s16 hrt_GetOBJY(u8 spr)
{
	if (spr <= 127)
		return ((s16)(OAMBuffer[spr].attr0 << 8)) >> 8;
	return 0;
}

inline u16 hrt_GetOBJOffset(u8 spr)
{
	if (spr <= 127)
		return OAMBuffer[spr].attr2 & 0x1FF;
	return 0;
}

#endif

#ifdef __cplusplus
}
#endif