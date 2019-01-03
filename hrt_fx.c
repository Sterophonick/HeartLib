/*****************************************************\
*    								8       8                                            8     8            8  8                                          *
*    								8       8                                            8     8                8                                          *
*    								88888    888       888    8  88    888  8            8  8  88                                   *
*    								8       8  8       8           8  88    8    8     8            8  88    8                                 *
*    								8       8  88888    8888  8             8     8            8  8      8                                 *
*    								8       8  8           8       8  8             8     8            8  8      8                                 *
*    								8       8    8888    8888  8               8    88888  8  8888                                  *
*    																		HeartLib                                                                   *
*    A comprehensive game/app engine for the Nintendo® Game Boy Advance™        *
*    												Licensed under the GNU GPL v3.0                                             *
*                                               View the LICENSE file for details                                         *
*    														2017-2019 Sterophonick                                                    *
*    																	For Tubooboo                                                               *
\*****************************************************/
#include "libheart.h"
extern gba_system __hrt_system;

void hrt_SetFXMode(u8 bg0, u8 bg1, u8 bg2, u8 bg3, u8 obj, u8 backdrop, u8 mode, u8 bg0_2, u8 bg1_2, u8 bg2_2, u8 bg3_2, u8 obj_2, u8 backdrop_2)
{
    if (__hrt_system.hrt_start) {
        REG_BLDCNT = 1 * bg0 | 2 * bg1 | 4 * bg2 | 8 * bg3 | 0x10 * obj | 0x20 * backdrop | 0x40 * mode | 0x100 * bg0_2 | 0x200 * bg1_2 | 0x400 * bg2_2 | 0x800 * bg3_2 | 0x1000 * obj_2 | 0x2000 * backdrop_2;
    }
}

void hrt_SetFXLevel(u8 level)
{
    if (__hrt_system.hrt_start) {
        REG_BLDY = level;
    }
}

void hrt_SetFXAlphaLevel(u8 src, u8 dst)
{
    if (__hrt_system.hrt_start) {
        REG_BLDALPHA_L = src;
        REG_BLDALPHA_H = dst;
    }
}

void hrt_ConfigWININ(u8 bg0, u8 bg1, u8 bg2, u8 bg3, u8 obj, u8 bld, u8 bg0_2, u8 bg1_2, u8 bg2_2, u8 bg3_2, u8 obj_2, u8 bld_2)
{
    if (__hrt_system.hrt_start) {
        REG_WININ = bg0 * 0x0001 | bg1 * 0x0002 | bg2 * 0x0004 | bg3 * 0x0008 | obj * 0x0010 | bld * 0x0020 | bg0_2 * 0x0100 | bg1_2 * 0x0200 | bg2_2 * 0x0400 | bg3_2 * 0x0800 | obj_2 * 0x1000 | bld_2 * 0x2000;
    }
}
void hrt_ConfigWINOUT(u8 bg0, u8 bg1, u8 bg2, u8 bg3, u8 obj, u8 bld, u8 bg0_obj, u8 bg1_obj, u8 bg2_obj, u8 bg3_obj, u8 obj_obj, u8 bld_obj)
{
    if (__hrt_system.hrt_start) {
        REG_WINOUT = bg0 * 0x0001 | bg1 * 0x0002 | bg2 * 0x0004 | bg3 * 0x0008 | obj * 0x0010 | bld * 0x0020 | bg0_obj * 0x0100 | bg1_obj * 0x0200 | bg2_obj * 0x0400 | bg3_obj * 0x0800 | obj_obj * 0x1000 | bld_obj * 0x2000;
    }
}

void hrt_FXEnableBG(u8 layer, u8 target)
{
	if (__hrt_system.hrt_start)
	{
		REG_BLDCNT |= 1UL << (layer + (target*8));
	}
}

void hrt_FXDisableBG(u8 layer, u8 target)
{
	if (__hrt_system.hrt_start)
	{
		REG_BLDCNT &= ~(1UL << (layer + (target*8)));
	}
}

void hrt_FXEnableOBJ(u8 target)
{
	if (__hrt_system.hrt_start)
	{
		REG_BLDCNT |= (1UL << (4 + (target*8)));
	}
}

void hrt_FXDisableOBJ(u8 target)
{
	if (__hrt_system.hrt_start)
	{
		REG_BLDCNT &= ~(1UL << (4 + (target*8)));
	}
}

void hrt_FXEnableBackdrop(u8 target)
{
	if (__hrt_system.hrt_start)
	{
		REG_BLDCNT |= (1UL << (5 + (target*8)));
	}
}

void hrt_FXDisableBackdrop(u8 target)
{
	if (__hrt_system.hrt_start)
	{
		REG_BLDCNT &= ~(1UL << (5 + (target*8)));
	}
}

void hrt_FXSetBlendMode(u8 mode)
{
	if (__hrt_system.hrt_start)
	{
		REG_BLDCNT &= NOT_BIT06;
		REG_BLDCNT |= (mode << 6);
	}
}

u8 hrt_FXGetAlphaSourceLevel(void)
{
	if(__hrt_system.hrt_start)
	{
		return REG_BLDALPHA_L;
	}
	return 0;
}

u8 hrt_FXGetAlphaDestLevel(void)
{
	if(__hrt_system.hrt_start)
	{
		return REG_BLDALPHA_H;
	}
	return 0;
}

u8 hrt_FXGetBlendLevel(void)
{
	if(__hrt_system.hrt_start)
	{
		return REG_BLDY;
	}
	return 0;
}

u8 hrt_FXIsBgLayerEnabled(u8 bgno, u8 target)
{
	if(__hrt_system.hrt_start)
	{
		return REG_BLDCNT & (bgno + (target*8));
	}
	return 0;
}

u8 hrt_FXIsObjLayerEnabled(u8 target)
{
	if(__hrt_system.hrt_start)
	{
		return REG_BLDCNT & (4 + (target*8));
	}
	return 0;
}

u8 hrt_FXIsBackdropEnabled(u8 target)
{
	if(__hrt_system.hrt_start)
	{
		return REG_BLDCNT & (5 + (target*8));
	}
	return 0;
}

u8 hrt_FXGetBlendMode(void)
{
	if(__hrt_system.hrt_start)
	{
		return (REG_BLDCNT & 0x6) + (REG_BLDCNT & 0x7);
	}
	return 0;
}

void hrt_SetMosaic(u8 bh, u8 bv, u8 oh, u8 ov)
{
    if (__hrt_system.hrt_start) {
        REG_MOSAIC = ((bh)+(bv << 4) + (oh << 8) + (ov << 12));
    }
}
void hrt_DSPWinInEnableBG(u8 layer, u8 win)
{
	if (__hrt_system.hrt_start)
	{
		REG_WININ |= 1UL << (layer + (win*8));	
	}
}

void hrt_DSPWinInDisableBG(u8 layer, u8 win)
{
	if (__hrt_system.hrt_start)
	{
		REG_WININ |= ~(1UL << (layer + (win*8)));
	}
}

void hrt_DSPWinInEnableOBJ(u8 win)
{
	if (__hrt_system.hrt_start)
	{
		REG_WININ |= 1UL << (4 + (win*8));
	}
}

void hrt_DSPWinInDisableOBJ(u8 win)
{
	if (__hrt_system.hrt_start)
	{
		REG_WININ &= ~(1UL << (4 + (win*8)));
	}
}

void hrt_DSPWinInEnableBlend(u8 win)
{
	if (__hrt_system.hrt_start)
	{
		REG_WININ |= (1UL << (5 + (win*8)));
	}
}

void hrt_DSPWinInDisableBlend(u8 win)
{
	if (__hrt_system.hrt_start)
	{
		REG_WININ &= ~(1UL << (5 + (win*8)));
	}
}

void hrt_DSPWinOutEnableBG(u8 layer, u8 win)
{
	if (__hrt_system.hrt_start)
	{
		REG_WINOUT |= 1UL << (layer + (win*8));
	}
}

void hrt_DSPWinOutDisableBG(u8 layer, u8 win)
{
	if (__hrt_system.hrt_start)
	{
		REG_WINOUT |= ~(1UL << (layer + (win*8)));
	}
}

void hrt_DSPWinOutEnableOBJ(u8 win)
{
	if (__hrt_system.hrt_start)
	{
		REG_WINOUT |= 1UL << (4 + (win*8));
	}
}

void hrt_DSPWinOutDisableOBJ(u8 win)
{
	if (__hrt_system.hrt_start)
	{
		REG_WINOUT &= ~(1UL << (4 + (win*8)));
	}
}

void hrt_DSPWinOutEnableBlend(u8 win)
{
	if (__hrt_system.hrt_start)
	{
		REG_WINOUT |= 1UL << (5 + (win*8));
	}
}

void hrt_DSPWinOutDisableBlend(u8 win)
{
	if (__hrt_system.hrt_start)
	{
		REG_WINOUT &= ~(1UL << (5 + (win*8)));
	}
}

void hrt_FXToggleBG(u8 layer, u8 target)
{
	if (__hrt_system.hrt_start)
	{
		REG_BLDCNT ^= 1UL << (layer + (target*8));
	}
}

void hrt_FXToggleOBJ(u8 target)
{
	if (__hrt_system.hrt_start)
	{
		REG_BLDCNT ^= 1UL << (4 + (target*8));
	}
}

void hrt_FXToggleBackdrop(u8 target)
{
	if (__hrt_system.hrt_start)
	{
		REG_BLDCNT ^= 1UL << (5 + (target*8));
	}
}