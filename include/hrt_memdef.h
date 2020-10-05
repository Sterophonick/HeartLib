#ifdef __cplusplus
extern "C" {
#endif

#ifndef HRT_MEMDEF
#define HRT_MEMDEF

#include <hrt_types.h>

//Memory Definitions
#define FX_MODE_NONE 		0
#define FX_MODE_ALPHA 		1
#define FX_MODE_BRIGHTEN	2
#define FX_MODE_DARKEN		3
#define FX_LAYER_BG(bg, target) 	1UL << (bg + (target*8))
#define FX_LAYER_OBJ(target)	 	1UL << (4 + (target*8))
#define FX_LAYER_BACKDROP(target) 	1UL << (5 + (target*8))

#define DSP_MODE(mode)	mode
#define OBJ_MAP_1D		0x40
#define OBJ_MAP_2D		0x0
#define H_BLANK_OAM		0x20
#define FORCE_BLANK		0x80
#define	ENABLE_BG(bg)	1UL << (8+bg)
#define WIN1_ENABLE		0x2000
#define WIN2_ENABLE		0x4000
#define OBJWIN_ENABLE	0x8000
#define OBJ_ENABLE		0x1000

#define	CHAR_BASE(m)		((m) << 2)
#define BG_TILE_BASE(m)		((m) << 2)
#define CHAR_BASE_ADR(m)	((m) << 14)
#define MAP_BASE_ADR(m)		((m) << 11)
#define BG_MAP_BASE(m)		((m) << 8)
#define OBJ_TILE_BASE(m)	((m+2048) << 4)

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

#endif

#ifdef __cplusplus
}
#endif