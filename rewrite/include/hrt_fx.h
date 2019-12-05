#ifndef HRT_FX
#define HRT_FX

#include "hrt_types.h"
#include "hrt_memmap.h"

ivoid hrt_SetFXMode(u16 mode);
ivoid hrt_SetFXLevel(u8 level);

//Inline function definitions
ivoid hrt_SetFXMode(u16 mode)
{
	REG_BLDCNT = mode;
}

ivoid hrt_SetFXLevel(u8 level)
{
	REG_BLDY = level;
}

#endif