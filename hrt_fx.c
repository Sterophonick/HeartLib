#include "libheart.h"
extern gba_system __hrt_system;

void hrt_SetFXMode(u8 bg0, u8 bg1, u8 bg2, u8 bg3, u8 obj, u8 backdrop, u8 mode, u8 bg0_2, u8 bg1_2, u8 bg2_2, u8 bg3_2, u8 obj_2, u8 backdrop_2)
{
    if (__hrt_system.hrt_start == 1) {
        REG_BLDCNT = 1 * bg0 | 2 * bg1 | 4 * bg2 | 8 * bg3 | 0x10 * obj | 0x20 * backdrop | 0x40 * mode | 0x100 * bg0_2 | 0x200 * bg1_2 | 0x400 * bg2_2 | 0x800 * bg3_2 | 0x1000 * obj_2 | 0x2000 * backdrop_2;
    }
}

void hrt_SetFXLevel(u8 level)
{
    if (__hrt_system.hrt_start == 1) {
        REG_BLDY = level;
    }
}

void hrt_SetFXAlphaLevel(u8 src, u8 dst)
{
    if (__hrt_system.hrt_start == 1) {
        REG_BLDALPHA_L = src;
        REG_BLDALPHA_H = dst;
    }
}

void hrt_ConfigWININ(u8 bg0, u8 bg1, u8 bg2, u8 bg3, u8 obj, u8 bld, u8 bg0_2, u8 bg1_2, u8 bg2_2, u8 bg3_2, u8 obj_2, u8 bld_2)
{
    if (__hrt_system.hrt_start == 1) {
        REG_WININ = bg0 * 0x0001 | bg1 * 0x0002 | bg2 * 0x0004 | bg3 * 0x0008 | obj * 0x0010 | bld * 0x0020 | bg0_2 * 0x0100 | bg1_2 * 0x0200 | bg2_2 * 0x0400 | bg3_2 * 0x0800 | obj_2 * 0x1000 | bld_2 * 0x2000;
    }
}
void hrt_ConfigWINOUT(u8 bg0, u8 bg1, u8 bg2, u8 bg3, u8 obj, u8 bld, u8 bg0_obj, u8 bg1_obj, u8 bg2_obj, u8 bg3_obj, u8 obj_obj, u8 bld_obj)
{
    if (__hrt_system.hrt_start == 1) {
        REG_WINOUT = bg0 * 0x0001 | bg1 * 0x0002 | bg2 * 0x0004 | bg3 * 0x0008 | obj * 0x0010 | bld * 0x0020 | bg0_obj * 0x0100 | bg1_obj * 0x0200 | bg2_obj * 0x0400 | bg3_obj * 0x0800 | obj_obj * 0x1000 | bld_obj * 0x2000;
    }
}

void hrt_FXEnableBGTarget1(u8 layer)
{
	if (__hrt_system.hrt_start == 1)
	{
		REG_BLDCNT |= 1UL << layer;
	}
}

void hrt_FXDisableBGTarget1(u8 layer)
{
	if (__hrt_system.hrt_start == 1)
	{
		REG_BLDCNT |= ~(1UL << layer);
	}
}

void hrt_FXEnableOBJTarget1(void)
{
	if (__hrt_system.hrt_start == 1)
	{
		REG_BLDCNT |= BIT04;
	}
}

void hrt_FXDisableOBJTarget1(void)
{
	if (__hrt_system.hrt_start == 1)
	{
		REG_BLDCNT &= NOT_BIT04;
	}
}

void hrt_FXEnableBackdropTarget1(void)
{
	if (__hrt_system.hrt_start == 1)
	{
		REG_BLDCNT |= BIT05;
	}
}

void hrt_FXDisableBackdropTarget1(void)
{
	if (__hrt_system.hrt_start == 1)
	{
		REG_BLDCNT &= NOT_BIT05;
	}
}

void hrt_FXSetBlendMode(u8 mode)
{
	if (__hrt_system.hrt_start == 1)
	{
		REG_BLDCNT &= NOT_BIT06;
		REG_BLDCNT |= (mode << 6);
	}
}

void hrt_FXEnableBGTarget2(u8 layer)
{
	if (__hrt_system.hrt_start == 1)
	{
		REG_BLDCNT |= 1UL << (8+layer);
	}
}

void hrt_FXDisableBGTarget2(u8 layer)
{
	if (__hrt_system.hrt_start == 1)
	{
		REG_BLDCNT |= ~(1UL << (layer+8));
	}
}

void hrt_FXEnableOBJTarget2(void)
{
	if (__hrt_system.hrt_start == 1)
	{
		REG_BLDCNT |= BIT12;
	}
}

void hrt_FXDisableOBJTarget2(void)
{
	if (__hrt_system.hrt_start == 1)
	{
		REG_BLDCNT &= NOT_BIT12;
	}
}

void hrt_FXEnableBackdropTarget2(void)
{
	if (__hrt_system.hrt_start == 1)
	{
		REG_BLDCNT |= BIT13;
	}
}

void hrt_FXDisableBackdropTarget2(void)
{
	if (__hrt_system.hrt_start == 1)
	{
		REG_BLDCNT &= NOT_BIT13;
	}
}

u8 hrt_FXGetAlphaSourceLevel(void)
{
	if(__hrt_system.hrt_start == 1)
	{
		return REG_BLDALPHA_L;
	}
	return 0;
}

u8 hrt_FXGetAlphaDestLevel(void)
{
	if(__hrt_system.hrt_start == 1)
	{
		return REG_BLDALPHA_H;
	}
	return 0;
}

u8 hrt_FXGetBlendLevel(void)
{
	if(__hrt_system.hrt_start == 1)
	{
		return REG_BLDY;
	}
	return 0;
}

u8 hrt_FXTarget1IsBgLayerEnabled(u8 bgno)
{
	if(__hrt_system.hrt_start == 1)
	{
		return REG_BLDCNT & bgno;
	}
	return 0;
}

u8 hrt_FXTarget2IsBgLayerEnabled(u8 bgno)
{
	if(__hrt_system.hrt_start == 1)
	{
		return REG_BLDCNT & (bgno+8);
	}
	return 0;
}

u8 hrt_FXTarget1IsObjLayerEnabled()
{
	if(__hrt_system.hrt_start == 1)
	{
		return REG_BLDCNT & 4;
	}
	return 0;
}

u8 hrt_FXTarget2IsObjLayerEnabled()
{
	if(__hrt_system.hrt_start == 1)
	{
		return REG_BLDCNT & 0xC;
	}
	return 0;
}

u8 hrt_FXTarget1IsBackdropEnabled()
{
	if(__hrt_system.hrt_start == 1)
	{
		return REG_BLDCNT & 5;
	}
	return 0;
}

u8 hrt_FXTarget2IsBackdropEnabled()
{
	if(__hrt_system.hrt_start == 1)
	{
		return REG_BLDCNT & 0xD;
	}
	return 0;
}

u8 hrt_FXGetBlendMode()
{
	if(__hrt_system.hrt_start == 1)
	{
		return (REG_BLDCNT & 0x6) + (REG_BLDCNT & 0x7);
	}
	return 0;
}

void hrt_SetMosaic(u8 bh, u8 bv, u8 oh, u8 ov)
{
    if (__hrt_system.hrt_start == 1) {
        REG_MOSAIC = ((bh)+(bv << 4) + (oh << 8) + (ov << 12));
    }
}
void hrt_DSPWinIn0EnableBG(u8 layer)
{
	if (__hrt_system.hrt_start == 1)
	{
		REG_WININ |= 1UL << (layer);	
	}
}

void hrt_DSPWinIn0DisableBG(u8 layer)
{
	if (__hrt_system.hrt_start == 1)
	{
		REG_WININ |= ~(1UL << (layer));
	}
}

void hrt_DSPWinIn0EnableOBJ(void)
{
	if (__hrt_system.hrt_start == 1)
	{
		REG_WININ |= BIT04;
	}
}

void hrt_DSPWinIn0DisableOBJ(void)
{
	if (__hrt_system.hrt_start == 1)
	{
		REG_WININ &= NOT_BIT04;
	}
}

void hrt_DSPWinIn0EnableBlend(void)
{
	if (__hrt_system.hrt_start == 1)
	{
		REG_WININ |= BIT05;
	}
}

void hrt_DSPWinIn0DisableBlend(void)
{
	if (__hrt_system.hrt_start == 1)
	{
		REG_WININ &= NOT_BIT05;
	}
}

void hrt_DSPWinIn1EnableBG(u8 layer)
{
	if (__hrt_system.hrt_start == 1)
	{
		REG_WININ |= 1UL << (layer+8);
	}
}

void hrt_DSPWinIn1DisableBG(u8 layer)
{
	if (__hrt_system.hrt_start == 1)
	{
		REG_WININ |= ~(1UL << (layer+8));
	}
}



void hrt_DSPWinIn1EnableOBJ(void)
{
	if (__hrt_system.hrt_start == 1)
	{
		REG_WININ |= BIT12;
	}
}

void hrt_DSPWinIn1DisableOBJ(void)
{
	if (__hrt_system.hrt_start == 1)
	{
		REG_WININ &= NOT_BIT12;
	}
}

void hrt_DSPWinIn1EnableBlend(void)
{
	if (__hrt_system.hrt_start == 1)
	{
		REG_WININ |= BIT13;
	}
}

void hrt_DSPWinIn1DisableBlend(void)
{
	if (__hrt_system.hrt_start == 1)
	{
		REG_WININ &= NOT_BIT13;
	}
}

void hrt_DSPWinOutEnableBG(u8 layer)
{
	if (__hrt_system.hrt_start == 1)
	{
		REG_WINOUT |= 1UL << (layer);
	}
}

void hrt_DSPWinOutDisableBG(u8 layer)
{
	if (__hrt_system.hrt_start == 1)
	{
		REG_WINOUT |= ~(1UL << (layer));
	}
}

void hrt_DSPWinOutEnableOBJ(void)
{
	if (__hrt_system.hrt_start == 1)
	{
		REG_WINOUT |= BIT04;
	}
}

void hrt_DSPWinOutDisableOBJ(void)
{
	if (__hrt_system.hrt_start == 1)
	{
		REG_WINOUT &= NOT_BIT04;
	}
}

void hrt_DSPWinOutEnableBlend(void)
{
	if (__hrt_system.hrt_start == 1)
	{
		REG_WINOUT |= BIT05;
	}
}

void hrt_DSPWinOutDisableBlend(void)
{
	if (__hrt_system.hrt_start == 1)
	{
		REG_WINOUT &= NOT_BIT05;
	}
}

void hrt_DSPWinOutOBJEnableBG(u8 layer)
{
	if (__hrt_system.hrt_start == 1)
	{
		REG_WINOUT |= 1UL << (layer + 8);
	}
}

void hrt_DSPWinOutOBJDisableBG(u8 layer)
{
	if (__hrt_system.hrt_start == 1)
	{
		REG_WINOUT |= ~(1UL << (layer + 8));
	}
}

void hrt_DSPWinOutOBJEnableOBJ(void)
{
	if (__hrt_system.hrt_start == 1)
	{
		REG_WINOUT |= BIT12;
	}
}

void hrt_DSPWinOutOBJDisableOBJ(void)
{
	if (__hrt_system.hrt_start == 1)
	{
		REG_WINOUT &= NOT_BIT12;
	}
}

void hrt_DSPWinOutOBJEnableBlend(void)
{
	if (__hrt_system.hrt_start == 1)
	{
		REG_WINOUT |= BIT13;
	}
}

void hrt_DSPWinOutOBJDisableBlend(void)
{
	if (__hrt_system.hrt_start == 1)
	{
		REG_WINOUT &= NOT_BIT13;
	}
}

void hrt_FXToggleBGTarget1(u8 layer)
{
	if (__hrt_system.hrt_start == 1)
	{
		REG_BLDCNT ^= 1UL << layer;
	}
}

void hrt_FXToggleBGTarget2(u8 layer)
{
	if (__hrt_system.hrt_start == 1)
	{
		REG_BLDCNT ^= 1UL << (8+layer);
	}
}

void hrt_FXToggleOBJTarget1(void)
{
	if (__hrt_system.hrt_start == 1)
	{
		REG_BLDCNT ^= BIT04;
	}
}

void hrt_FXToggleOBJTarget2(void)
{
	if (__hrt_system.hrt_start == 1)
	{
		REG_BLDCNT ^= BIT12;
	}
}

void hrt_FXToggleBackdropTarget1(void)
{
	if (__hrt_system.hrt_start == 1)
	{
		REG_BLDCNT ^= BIT05;
	}
}

void hrt_FXToggleBackdropTarget2(void)
{
	if (__hrt_system.hrt_start == 1)
	{
		REG_BLDCNT ^= BIT13;
	}
}