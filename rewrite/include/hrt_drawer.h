#ifndef HRT_DRAWER
#define HRT_DRAWER

#include "hrt_types.h"
#include "hrt_memmap.h"

//Structs
typedef struct _s16xy { s16 x, y; } s16xy;
typedef struct _Vector2 { s32 x, y; } Vector2;
typedef struct _MapLayer { u16 *map; Vector2 scroll; } MapLayer;
typedef struct _GameMap
{
	s16xy dimensions;
	const u16 *tileset; // Pointer to map file output from gfx2gba for the tileset bitmap 
	u8 numLayers; // Number of layers actually in use for the current map. Max 4 since that's all the hardware BGs 
	MapLayer layer[4];
} GameMap;
HEART_API GameMap gGameMap;

//Macros
#define BG_SCRN_VRAM(n) ((u16*)(0x6000000 + ((n) << 11))) 
#define fptochar(x) ((x) >> 11) 
#define inttofp(x) ((x) << 8) 

//Functions
HEART_API void hrt_ConfigDrawer(u8 numLayers, u16 *tileset, s16 dimensionsx, s16 dimensionsy, u16 *map, s32 x, s32 y);
HEART_API void hrt_DrawFullDrawerScrollMap(void);
HEART_API void hrt_SetDrawerScrollMapX(s32 x, u8 i);
HEART_API void hrt_SetDrawerScrollMapY(s32 y, u8 i);
HEART_API void hrt_DrawMapLayerStripH(int layerIdx, int srcY);
HEART_API void hrt_DrawMapLayerStripV(int layerIdx, int srcX);
HEART_API void hrt_SetDrawerMapXY(s32 x, s32 y);
HEART_API s32 hrt_GetDrawerMapX(u8 i);
HEART_API s32 hrt_GetDrawerMapY(u8 i);
HEART_API u8 hrt_GetDrawerLayers();



#endif