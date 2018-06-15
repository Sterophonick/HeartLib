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

u8 hrt_NDS_IsDebugger()
{
	if(__hrt_system.hrt_start == 1)
	{
		hrt_SystemCall(15);
	}
}