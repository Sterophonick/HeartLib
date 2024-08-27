#ifdef __cplusplus
extern "C" {
#endif

#ifndef HRT_FX
#define HRT_FX

#include "hrt_types.h"
#include "hrt_memmap.h"

//Structs

//Macros

//Functions

//Inlines
static inline void hrt_SetFXMode(u16 mode)
{
	REG_BLDCNT = mode;
}

static inline void hrt_SetFXLevel(u8 level)
{
	REG_BLDY = level;
}

static inline void hrt_FXSetBlendMode(u8 mode)
{
	REG_BLDCNT &= ~(0x00C0);
	REG_BLDCNT |= (mode << 6);
}

static inline void hrt_SetFXAlphaLevel(u8 src, u8 dst)
{
    REG_BLDALPHA_L = src;
    REG_BLDALPHA_H = dst;
}

static inline void hrt_FXToggleBackdrop(u8 target)
{
	REG_BLDCNT ^= 1UL << (5 + (target*8));
}

static inline void hrt_FXToggleOBJ(u8 target)
{
	REG_BLDCNT ^= 1UL << (4 + (target*8));
}

static inline void hrt_FXToggleBG(u8 layer, u8 target)
{
	REG_BLDCNT ^= 1UL << (layer + (target*8));
}

static inline void hrt_FXEnableBackdrop(u8 target)
{
	REG_BLDCNT |= (1UL << (5 + (target*8)));
}

static inline void hrt_FXDisableBackdrop(u8 target)
{
	REG_BLDCNT &= ~(1UL << (5 + (target*8)));
}

static inline void hrt_FXEnableBG(u8 layer, u8 target)
{
	REG_BLDCNT |= 1UL << (layer + (target*8));
}

static inline void hrt_FXDisableBG(u8 layer, u8 target)
{
	REG_BLDCNT &= ~(1UL << (layer + (target*8)));
}

static inline void hrt_FXEnableOBJ(u8 target)
{
	REG_BLDCNT |= (1UL << (4 + (target*8)));
}

static inline void hrt_FXDisableOBJ(u8 target)
{
	REG_BLDCNT &= ~(1UL << (4 + (target*8)));
}

#endif

#ifdef __cplusplus
}
#endif
