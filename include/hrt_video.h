#ifndef HRT_VIDEO
#define HRT_VIDEO

//Includes
#include "hrt_types.h"
#include "hrt_memmap.h"

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
#define CHAR_BASE_ADR(m)	((void *)(VRAM + ((m) << 14)))
#define CHAR_BASE_BLOCK(m)	((void *)(VRAM + ((m) << 14)))
#define MAP_BASE_ADR(m)		((void *)(VRAM + ((m) << 11)))
#define SCREEN_BASE_BLOCK(m)((void *)(VRAM + ((m) << 11)))
#define SCREEN_BASE(m)		((m) << 8)
#define BG_MAP_BASE(m)		((m) << 8)

#define hrt_SetPaletteEntry(entry, color) PALETTE[entry] = color

//Functions
HEART_API void hrt_PlotPixelInMode4(u32 x, u32 y, u32 color);
HEART_API void hrt_LoadDataIntoVRAM(u16* data, u32 offset, u32 length);
HEART_API void hrt_DSPSetBGMode(u8 mode);
HEART_API void hrt_DSPConfigureBG(u8 bg, u16 mode);
HEART_API u16 hrt_GenerateColorFromRGB(u8 red, u8 green, u8 blue);
HEART_API void hrt_DSPEnableBG(u8 bg);
HEART_API void hrt_DSPDisableBG(u8 bg);
HEART_API void hrt_DSPEnableOBJ(void);
HEART_API void hrt_DSPDisableOBJ(void);
HEART_API void hrt_DSPConfigBG(u8 bg, u8 priority, u8 tilebase, u8 mosaic, u8 color, u8 mapbase, u8 wraparound, u8 dimensions);
HEART_API void hrt_SetBGXY(u8 bg, int x, int y);
HEART_API void hrt_SetBGX(u8 bg, int x);
HEART_API void hrt_SetBGY(u8 bg, int y);
HEART_API void hrt_InvertPalette(u16 start, u16 amount);

//Inlines


#endif