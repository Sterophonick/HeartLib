#ifdef __cplusplus
extern "C" {
#endif

#ifndef HRT_OAM
#define HRT_OAM

//Includes
#include "hrt_types.h"
#include "hrt_memmap.h"

//Structs
typedef struct {
    u16 attr0;
    u16 attr1;
    u16 attr2;
    u16 filler;
}ATTR_ALIGNED(4) OBJ_ATTR;

typedef struct OBJ_AFFINE
{
	u16 fill0[3];	s16 pa;
	u16 fill1[3];	s16 pb;
	u16 fill2[3];	s16 pc;
	u16 fill3[3];	s16 pd;
}ATTR_ALIGNED(4) OBJ_AFFINE;

HEART_API OBJ_ATTR OAMBuffer[128];
HEART_API OBJ_AFFINE *OAMAffineBuffer;

HEART_API OBJ_ATTR* OAM;
HEART_API OBJ_AFFINE* OAMAff;

HEART_API const s16 SIN[360];
HEART_API const s16 COS[360];

//Macros
#define hrt_ClearOAM()

#define OBJ_SHAPE(m)		((m)<<14)

#define OBJ_Y(m)			((m)&0x00ff)
#define OBJ_ROT_SCALE_ON	(1<<8)
#define OBJ_DISABLE			(1<<9)
#define OBJ_DOUBLE			(1<<9)
#define OBJ_MODE(m)			((m)<<10)
#define OBJ_MOSAIC			(1<<12)
#define	OBJ_256_COLOR		(1<<13)
#define	OBJ_16_COLOR		(0<<13)
#define ATTR0_MOSAIC			(1<<12)
#define ATTR0_COLOR_256			(1<<13)
#define ATTR0_COLOR_16			(0<<13)
#define ATTR0_TYPE_NORMAL		(0<<10)
#define ATTR0_TYPE_BLENDED		(1<<10)
#define ATTR0_TYPE_WINDOWED		(2<<10)
#define ATTR0_NORMAL			(0<<8)
#define ATTR0_ROTSCALE			(1<<8)
#define ATTR0_DISABLED			(2<<8)
#define ATTR0_ROTSCALE_DOUBLE	(3<<8)
#define ATTR0_SQUARE	OBJ_SHAPE(SQUARE)
#define ATTR0_WIDE		OBJ_SHAPE(WIDE)
#define ATTR0_TALL		OBJ_SHAPE(TALL)

#define OBJ_X(m)			((m)&0x01ff)
#define OBJ_ROT_SCALE(m)	((m)<<9)
#define OBJ_HFLIP			(1<<12)
#define OBJ_VFLIP			(1<<13)
#define ATTR1_ROTDATA(n)      ((n)<<9)  // note: overlaps with flip flags
#define ATTR1_FLIP_X          (1<<12)
#define ATTR1_FLIP_Y          (1<<13)
#define ATTR1_SIZE_8          (0<<14)
#define ATTR1_SIZE_16         (1<<14)
#define ATTR1_SIZE_32         (2<<14)
#define ATTR1_SIZE_64         (3<<14)
#define OBJ_SIZE(m)		((m)<<14)

#define OBJ_CHAR(m)		((m)&0x03ff)
#define OBJ_PRIORITY(m)	((m)<<10)
#define OBJ_PALETTE(m)	((m)<<12)
#define ATTR2_PRIORITY(n)     ((n)<<10)
#define ATTR2_PALETTE(n)      ((n)<<12)
#define OBJ_TRANSLUCENT	OBJ_MODE(1)
#define OBJ_OBJWINDOW	OBJ_MODE(2)
#define OBJ_SQUARE		OBJ_SHAPE(0)
#define OBJ_WIDE		OBJ_SHAPE(1)
#define OBJ_TALL		OBJ_SHAPE(2)

//Functions
HEART_API void hrt_SetOBJX(u8 spr, int x);
HEART_API void hrt_SetOBJY(u8 obj, int y);
HEART_API void hrt_CreateOBJ(u8 spr, u8 stx, u8 sty, u8 size, u8 affine, u8 hflip, u8 vflip, u8 shape, u8 dblsize, u8 mosaic, u8 pal, u8 color, u8 mode, u8 priority, u32 offset);
HEART_API void hrt_AffineOBJ(u8 spr, s32 angle, s32 x_scale, s32 y_scale); //Rotates and scales a sprite
HEART_API void hrt_CloneOBJ(u8 ospr, u8 nspr); //Clones a sprite
HEART_API void hrt_HideOBJ(u8 spr);
HEART_API void hrt_ShowOBJ(u8 spr); 
HEART_API void hrt_EnableOBJHFlip(u8 spr); 
HEART_API void hrt_DisableOBJHFlip(u8 spr);
HEART_API void hrt_EnableOBJVFlip(u8 spr);
HEART_API void hrt_DisableOBJVFlip(u8 spr);
HEART_API void hrt_ToggleOBJHFlip(u8 spr);
HEART_API void hrt_ToggleOBJVFlip(u8 spr);
HEART_API void hrt_MoveOBJTowardsDirection(u8 spr, u16 direction, u8 steps);
HEART_API s16  hrt_GetOBJX(u8 spr);
HEART_API s16  hrt_GetOBJY(u8 spr);
HEART_API void hrt_PointSpriteTowardsPostition(u8 spr, int x, int y);
HEART_API void hrt_SetOBJXY(u8 obj, int x, int y);
HEART_API void hrt_CopyOBJToOAM();
HEART_API void hrt_SetOBJOffset(u8 spr, u16 data);


//Inline function definitions

#endif

#ifdef __cplusplus
}
#endif