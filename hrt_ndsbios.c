#include "libheart.h"
extern gba_system __hrt_system;

void hrt_NDS_WaitByLoop(s32 delay)
{
	if(__hrt_system.hrt_start == 1)
	{
		hrt_SystemCall(3);
	}
}

u16 hrt_NDS_GetCRC16(u16 initial, u32 start, u32 length)
{
	if(__hrt_system.hrt_start == 1)
	{
		hrt_SystemCall(14);
	}
}

u8 hrt_NDS_IsDebugger(void)
{
	if(__hrt_system.hrt_start == 1)
	{
		hrt_SystemCall(15);
	}
}

u16 hrt_NDS_GetSineTable(u8 index)
{
	if(__hrt_system.hrt_start == 1)
	{
		hrt_SystemCall(0x1A);
	}
}

u16 hrt_NDS_GetPitchTable(u16 index)
{
	if(__hrt_system.hrt_start == 1)
	{
		hrt_SystemCall(0x1B);
	}
}

u16 hrt_NDS_GetVolumeTable(u16 index)
{
	if(__hrt_system.hrt_start == 1)
	{
		hrt_SystemCall(0x1C);
	}
}

void hrt_NDS_CustomPost(u32 value)
{
	if(__hrt_system.hrt_start == 1)
	{
		hrt_SystemCall(0x1F);
	}
}
void hrt_NDS_GetBootProcs(void)
{
	if(__hrt_system.hrt_start == 1)
	{
		hrt_SystemCall(0x1D);
	}
}