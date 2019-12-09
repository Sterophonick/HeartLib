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

//Functions
ivoid hrt_LoadDataIntoVRAM(u16* data, int length, int offset);
ivoid hrt_DSPSetMode(u16 mode);
ivoid hrt_DSPConfigureBG(u8 bg, u16 mode);
ivoid hrt_SetPaletteEntry(u16 entry, u16 color);

//Inlines
ivoid hrt_LoadDataIntoVRAM(u16* data, int length, int offset)
{
	hrt_Memcpy16(&VRAM[offset], data, length);
}

ivoid hrt_DSPSetMode(u16 mode)
{
	REG_DISPCNT = mode;
}

ivoid hrt_DSPConfigureBG(u8 bg, u16 mode)
{
	REG_BGxCNT(bg) = mode;	
}

ivoid hrt_SetPaletteEntry(u16 entry, u16 color)
{
	PALETTE[entry] = color;
}

#endif