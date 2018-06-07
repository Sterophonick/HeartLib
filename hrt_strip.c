#include "libheart.h"
extern gba_system __hrt_system;
GameMap gGameMap[4];

void hrt_ConfigMapLayerDrawing(u8 numLayers, u16 *tileset, s16 dimensionsx, s16 dimensionsy, u16 *map, s32 x, s32 y, u8 MapNo)
{
	if (__hrt_system.hrt_start == 1)
	{
		gGameMap[MapNo].numLayers = numLayers;
		gGameMap[MapNo].layer->map = map;
		gGameMap[MapNo].dimensions.x = dimensionsx;
		gGameMap[MapNo].dimensions.y = dimensionsy;
		gGameMap[MapNo].layer[MapNo].scroll.y = y;
		gGameMap[MapNo].layer[MapNo].scroll.x = x;
		gGameMap[MapNo].tileset = tileset;
	}
}

void hrt_SetLargeScrollMapX(u8 MapNo, s32 x)
{
	if (__hrt_system.hrt_start == 1)
	{
		gGameMap[MapNo].layer[MapNo].scroll.x = x;
	}
}

void hrt_SetLargeScrollMapY(u8 MapNo, s32 y)
{
	if (__hrt_system.hrt_start == 1)
	{
		gGameMap[MapNo].layer[MapNo].scroll.y = y;
	}
}

void hrt_DrawMapLayerStripH(u8 MapNo, int layerIdx, int srcY)   // srcY is in 8x8 tiles (even though source map tiles are 16x16) 
{
	if (__hrt_system.hrt_start == 1)
	{
		int i;
		const MapLayer *layer = &gGameMap[MapNo].layer[layerIdx];
		const u16 *src = layer->map + (srcY >> 1) * gGameMap[MapNo].dimensions.x;
		u16 *dest = BG_SCRN_VRAM(28 + layerIdx) + (srcY & 31) * 32;
		const int scrollXChar = fptochar(layer->scroll.x);
		const int yOffset = ((srcY & 1) << 1);
		for (i = 0; i < 32; i++)
		{
			const int xOffset = ((scrollXChar + i) & 1);
			const u16 tile = src[(scrollXChar + i) >> 1];
			dest[(scrollXChar + i) & 31] = gGameMap[MapNo].tileset[(tile << 2) + xOffset + yOffset];
		}
	}
}

void hrt_DrawMapLayerStripV(u8 MapNo, int layerIdx, int srcX)
{
	if (__hrt_system.hrt_start == 1)
	{
		int i;
		const MapLayer *layer = &gGameMap[MapNo].layer[layerIdx];
		const u16 *src = layer->map + (srcX >> 1);
		u16 *dest = BG_SCRN_VRAM(28 + layerIdx) + (srcX & 31);
		const int scrollYChar = fptochar(layer->scroll.y);
		const int xOffset = (srcX & 1);
		for (i = 0; i < 32; i++)
		{
			const int yOffset = ((scrollYChar + i) & 1) << 1;
			const u16 tile = src[((scrollYChar + i) >> 1) * gGameMap[MapNo].dimensions.x];
			dest[((scrollYChar + i) & 31) * 32] = gGameMap[MapNo].tileset[(tile << 2) + xOffset + yOffset];
		}
	}
}