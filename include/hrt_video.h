#ifdef __cplusplus
extern "C" {
#endif

#ifndef HRT_VIDEO
#define HRT_VIDEO

//Includes
#include "hrt_types.h"
#include "hrt_memmap.h"
#include "hrt_misc.h"

//Structs

//Macros
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

#define hrt_SetPaletteEntry(entry, color) PALETTE[entry] = color

//Functions
HEART_API void hrt_PlotPixelInMode4(u32 x, u32 y, u32 color);
HEART_API void hrt_DSPConfigBG(u8 bg, u8 priority, u8 tilebase, u8 mosaic, u8 color, u8 mapbase, u8 wraparound, u8 dimensions);
HEART_API void hrt_InvertPalette(u16 start, u16 amount);
HEART_API void hrt_DrawLine3(int x1, int y1, int x2, int y2, unsigned short color);
HEART_API void hrt_FlipBGBuffer(void);
HEART_API void hrt_CyclePalette(u16 start, u16 amount);

//Inlines
inline void hrt_LoadDataIntoVRAM(u16* data, u32 offset, u32 length)
{
	hrt_DMACopy(3, (void*)data, ((void*)(VRAM + (offset))), length, 0x80000000);
}

inline void hrt_LoadDataIntoPalette(u16* data, u32 offset, u32 length)
{
	hrt_DMACopy(3, (void*)data, ((void*)(PALETTE + (offset))), length, 0x80000000);
}

inline u16 hrt_GenerateColorFromRGB(u8 red, u8 green, u8 blue)
{
	return red | (green << 5) | (blue << 10);
}

inline void hrt_DSPSetBGMode(u8 mode)
{
	REG_DISPCNT &= 0xFFF8; REG_DISPCNT |= mode;
}

inline void hrt_DSPConfigureBG(u8 bg, u16 mode)
{
	REG_BGxCNT(bg) = mode;
}

inline void hrt_DSPEnableBG(u8 bg)
{
	REG_DISPCNT |= 1UL << (8 + bg);
}

inline void hrt_DSPDisableBG(u8 bg)
{
	REG_DISPCNT &= ~(1UL << (8 + bg));
}

inline void hrt_DSPEnableOBJ(void)
{
	REG_DISPCNT |= 0x1000;
}

inline void hrt_DSPDisableOBJ(void)
{
	REG_DISPCNT &= 0xEFFF;
}

inline void hrt_SetBGX(u8 bg, int x)
{
	REG_BGxHOFS(bg) = x;
}

inline void hrt_SetBGY(u8 bg, int y)
{
	REG_BGxVOFS(bg) = y;
}

inline void hrt_SetBGXY(u8 bg, int x, int y)
{
	hrt_SetBGX(bg, x); hrt_SetBGY(bg, y);
}

inline void hrt_PlotPixelInMode3(u8 x, u8 y, u16 color)
{
	VRAM[y * 240 + x] = color;
}

inline void hrt_PlotPixelInMode5(u8 x, u8 y, u16 color)
{
	VRAM[y * 160 + x] = color;
}

inline void hrt_DSPEnableForceBlank(void)
{
	REG_DISPCNT |= 0x0080;
}

inline void hrt_DSPDisableForceBlank(void)
{
	REG_DISPCNT &= 0xFF7F;
}

inline void hrt_EnableGreenSwap(void)
{
	REG_UNKNOWN0 = 1;
}

inline void hrt_DisableGreenSwap(void)
{
	REG_UNKNOWN0 = 0;
}

inline u16 hrt_GetPixelInMode3(int x, int y)
{
	return VRAM[y * 240 + x];
} //returns the pixel color at the position given 

inline void hrt_DSPEnableLinearOBJ(void)
{
	REG_DISPCNT |= BIT06;
}

inline void hrt_DSPDisableLinearOBJ(void)
{
	REG_DISPCNT &= NOT_BIT06;
}

inline void hrt_BGSet16Color(u8 layer)
{
	REG_BGxCNT(layer) &= 0xFF7F;
}

inline void hrt_BGSet256Color(u8 layer)
{
	REG_BGxCNT(layer) |= 0x0080;
}

inline void hrt_BGEnableMosaic(u8 layer)
{
	REG_BGxCNT(layer) |= 0x0040;
}

inline void hrt_BGDisableMosaic(u8 layer)
{
	REG_BGxCNT(layer) &= 0xFFBF;
}

inline void hrt_BGSetSize(u8 layer, u8 size)
{
	REG_BGxCNT(layer) &= 0x3FFF; REG_BGxCNT(layer) |= (size << 14);
}

inline void hrt_BGSetMapBase(u8 layer, u8 no)
{
	REG_BGxCNT(layer) &= 0xE0FF; REG_BGxCNT(layer) |= (no << 8);
}

inline void hrt_BGSetTileBase(u8 layer, u8 no)
{
	REG_BGxCNT(layer) &= 0xFFF3; REG_BGxCNT(layer) |= (no << 2);
}

inline void hrt_BGSetPriority(u8 layer, u8 no)
{
	REG_BGxCNT(layer) &= 0xFFFD; REG_BGxCNT(layer) |= no;
}

inline void hrt_DestroyBG(u8 bg)
{
	REG_BGxCNT(bg) = 0;
	REG_BGxVOFS(bg) = 0;
	REG_BGxHOFS(bg) = 0;
	hrt_DSPDisableBG(bg);
}

#endif

#ifdef __cplusplus
}
#endif