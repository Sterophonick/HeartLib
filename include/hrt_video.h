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
#define hrt_SetPaletteEntry(entry, color) PALETTE[entry] = color

//Functions
HEART_API void hrt_PlotPixelInMode4(u32 x, u32 y, u32 color); //Doesn't exist'
HEART_API void hrt_InvertPalette(u16 start, u16 amount); //Invert a pallete over a range
HEART_API void hrt_DrawLine3(int x1, int y1, int x2, int y2, unsigned short color); //Draw Line in Mode 3
HEART_API void hrt_FlipBGBuffer(void); //Flip BG Buffers
HEART_API void hrt_CyclePalette(u16 start, u16 amount); // Roll a segment of the palette. Great for plasma effects.

//Inlines
static inline void hrt_LoadDataIntoVRAM(u16* data, u32 offset, u32 length) //Copies data into VRAM
{
	//TODO: Replace with CPUSet/FastSet
	hrt_DMATransfer(3, (void*)data, ((void*)(VRAM + (offset))), length, 0x80000000);
}

static inline void hrt_LoadDataIntoPalette(u16* data, u32 offset, u32 length) //Copies data into Palette
{
	//TODO: Replace with CPUSet/FastSet
	hrt_DMATransfer(3, (void*)data, ((void*)(PALETTE + (offset))), length, 0x80000000);
}

static inline u16 hrt_GenerateColorFromRGB(u8 red, u8 green, u8 blue) //Generates a new BGR color. r/g/b cannot be over 31
{
	return red | (green << 5) | (blue << 10);
}

static inline void hrt_DSPSetBGMode(u8 mode) //Set display mode. 0-5
{
	REG_DISPCNT &= 0xFFF8; REG_DISPCNT |= mode;
}

static inline void hrt_DSPConfigureBG(u8 bg, u16 mode) //Config a BG. Helper found in hrt_memdef.h
{
	REG_BGxCNT(bg) = mode;
}

static inline void hrt_DSPConfigMode(u16 mode) // Fully set DSPCNT. Helpers found in hrt_memdef.h
{
	REG_DISPCNT = mode;
}

static inline void hrt_DSPEnableBG(u8 bg) //Enable a BG
{
	REG_DISPCNT |= 1UL << (8 + bg);
}

static inline void hrt_DSPDisableBG(u8 bg) //Disable a BG
{
	REG_DISPCNT &= ~(1UL << (8 + bg));
}

static inline void hrt_DSPEnableOBJ(void) //Enable OBJ layer
{
	REG_DISPCNT |= 0x1000;
}

static inline void hrt_DSPDisableOBJ(void) //Disable OBJ layer
{
	REG_DISPCNT &= 0xEFFF;
}

static inline void hrt_SetBGX(u8 bg, int x) //Set BG X
{
	REG_BGxHOFS(bg) = x;
}

static inline void hrt_SetBGY(u8 bg, int y) //Set BG Y
{
	REG_BGxVOFS(bg) = y;
}

static inline void hrt_SetBGXY(u8 bg, int x, int y) //Set BG XY
{
	hrt_SetBGX(bg, x); hrt_SetBGY(bg, y);
}

static inline void hrt_PlotPixelInMode3(u8 x, u8 y, u16 color) //Plot Pixel in mode 3
{
	VRAM[y * 240 + x] = color;
}

static inline void hrt_PlotPixelInMode5(u8 x, u8 y, u16 color) //Plot Pixel in Mode 5
{
	VRAM[y * 160 + x] = color;
}

static inline void hrt_DSPEnableForceBlank(void) //Make the screen white
{
	REG_DISPCNT |= 0x0080;
}

static inline void hrt_DSPDisableForceBlank(void) //Stop making the screen white
{
	REG_DISPCNT &= 0xFF7F;
}

static inline void hrt_EnableGreenSwap(void) //Make the screen look fuzzy
{
	REG_UNKNOWN0 = 1;
}

static inline void hrt_DisableGreenSwap(void) //Stop the fuzzy screen
{
	REG_UNKNOWN0 = 0;
}

static inline u16 hrt_GetPixelInMode3(int x, int y) //Get pixel in Mode 3
{
	return VRAM[y * 240 + x];
} //returns the pixel color at the position given 

static inline void hrt_DSPEnableLinearOBJ(void) //Enable Linear OBJ Mapping
{
	REG_DISPCNT |= BIT06;
}

static inline void hrt_DSPDisableLinearOBJ(void) //Disable Linear OBJ Mapping
{
	REG_DISPCNT &= NOT_BIT06;
}

static inline void hrt_BGSet16Color(u8 layer) //Set a BG to use 16 Colors
{
	REG_BGxCNT(layer) &= 0xFF7F;
}

static inline void hrt_BGSet256Color(u8 layer) //Set a BG to use 256 Colors
{
	REG_BGxCNT(layer) |= 0x0080;
}

static inline void hrt_BGEnableMosaic(u8 layer) //Enable BG Mosaic
{
	REG_BGxCNT(layer) |= 0x0040;
}

static inline void hrt_BGDisableMosaic(u8 layer) //Disable BG Mosaic
{
	REG_BGxCNT(layer) &= 0xFFBF;
}

static inline void hrt_BGSetSize(u8 layer, u8 size) //Set BG Size
{
	REG_BGxCNT(layer) &= 0x3FFF; REG_BGxCNT(layer) |= (size << 14);
}

static inline void hrt_BGSetMapBase(u8 layer, u8 no) //Set BG Map Base
{
	REG_BGxCNT(layer) &= 0xE0FF; REG_BGxCNT(layer) |= (no << 8);
}

static inline void hrt_BGSetTileBase(u8 layer, u8 no) //Set BG Tile base
{
	REG_BGxCNT(layer) &= 0xFFF3; REG_BGxCNT(layer) |= (no << 2);
}

static inline void hrt_BGSetPriority(u8 layer, u8 no) //Set BG priority
{
	REG_BGxCNT(layer) &= 0xFFFD; REG_BGxCNT(layer) |= no;
}

static inline void hrt_DestroyBG(u8 bg) //Clear all BG parameters and disable the layer
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
