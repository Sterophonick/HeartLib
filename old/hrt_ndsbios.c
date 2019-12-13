/*******************************************************************\
*             8   8                    8  8     8 8
*             8   8                    8  8       8
*             8   8  888   888  8 888 888 8     8 8 88
*             88888 8   8     8 88     8  8     8 88  8
*             8   8 88888  8888 8      8  8     8 8   8
*             8   8 8     8   8 8      8  8     8 8   8
*             8   8  8888  8888 8       8 88888 8 8888
*                             HeartLib
*A comprehensive game/app engine for the Nintendo® Game Boy Advance™
*                  Licensed under the GNU GPL v3.0
*                 View the LICENSE file for details
*                      2017-2019 Sterophonick
*                          For Tubooboo
\*******************************************************************/
#include "libheart.h"
extern gba_system __hrt_system;

void hrt_NDS_WaitByLoop(s32 delay)
{
	if(__hrt_system.hrt_start)
	{
		hrt_SystemCall(3);
	}
}

u16 hrt_NDS_GetCRC16(u16 initial, u32 start, u32 length)
{
	if(__hrt_system.hrt_start)
	{
		hrt_SystemCall(14);
	}
	return 0;
}

u8 hrt_NDS_IsDebugger(void)
{
	if(__hrt_system.hrt_start)
	{
		hrt_SystemCall(15);
	}
	return 0;
}

u16 hrt_NDS_GetSineTable(u8 index)
{
	if(__hrt_system.hrt_start)
	{
		hrt_SystemCall(0x1A);
	}
	return 0;
}

u16 hrt_NDS_GetPitchTable(u16 index)
{
	if(__hrt_system.hrt_start)
	{
		hrt_SystemCall(0x1B);
	}
	return 0;
}

u16 hrt_NDS_GetVolumeTable(u16 index)
{
	if(__hrt_system.hrt_start)
	{
		hrt_SystemCall(0x1C);
	}
	return 0;
}

void hrt_NDS_CustomPost(u32 value)
{
	if(__hrt_system.hrt_start)
	{
		hrt_SystemCall(0x1F);
	}
}

void hrt_NDS_GetBootProcs(void)
{
	if(__hrt_system.hrt_start)
	{
		hrt_SystemCall(0x1D);
	}
}