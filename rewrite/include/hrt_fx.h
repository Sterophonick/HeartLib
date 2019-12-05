#ifndef HRT_FX
#define HRT_FX

#include "hrt_types.h"
#include "hrt_memmap.h"

//Functions
ivoid hrt_SetFXMode(u16 mode);
ivoid hrt_SetFXLevel(u8 level);
ivoid hrt_FXSetBlendMode(u8 mode);
ivoid hrt_SetFXAlphaLevel(u8 src, u8 dst);
ivoid hrt_FXToggleBackdrop(u8 target);
ivoid hrt_FXToggleOBJ(u8 target);
ivoid hrt_FXToggleBG(u8 layer, u8 target);

//Macros
#define FX_LAYER_BG(bg, target) 	1UL << (bg + (target*8))
#define FX_LAYER_OBJ(target)	 	1UL << (4 + (target*8))
#define FX_LAYER_BACKDROP(target) 	1UL << (5 + (target*8))

//Inline function definitions
ivoid hrt_SetFXMode(u16 mode)
{
	REG_BLDCNT = mode;
}

ivoid hrt_SetFXLevel(u8 level)
{
	REG_BLDY = level;
}

ivoid hrt_FXSetBlendMode(u8 mode)
{
	REG_BLDCNT &= ~(0x00C0);
	REG_BLDCNT |= (mode << 6);
}

ivoid hrt_SetFXAlphaLevel(u8 src, u8 dst)
{
    REG_BLDALPHA_L = src;
    REG_BLDALPHA_H = dst;
}

ivoid hrt_FXToggleBackdrop(u8 target)
{
	REG_BLDCNT ^= 1UL << (5 + (target*8));
}

ivoid hrt_FXToggleOBJ(u8 target)
{
	REG_BLDCNT ^= 1UL << (4 + (target*8));
}

ivoid hrt_FXToggleBG(u8 layer, u8 target)
{
	REG_BLDCNT ^= 1UL << (layer + (target*8));
}

#endif