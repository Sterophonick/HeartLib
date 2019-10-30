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
int __hrt_version(void);
extern gba_system __hrt_system;

inline void hrt_Diff8bitUnFilterWram(u32 source, u32 dest)
{
    if (__hrt_system.hrt_start) {
		hrt_SystemCall (0x16);
    }
}
inline void hrt_Diff8bitUnFilterVram(u32 source, u32 dest)
{
    if (__hrt_system.hrt_start) {
		hrt_SystemCall (0x17);
    }
}

inline void hrt_Diff16bitUnFilter(u32 source, u32 dest)
{
    if (__hrt_system.hrt_start) {
		hrt_SystemCall (0x18);
    }
}
inline void hrt_HuffUnComp(u32 source, u32 dest)
{
    if (__hrt_system.hrt_start) {
		hrt_SystemCall (0x13);
    }
}
inline void hrt_LZ77UnCompWRAM(u32 source, u32 dest)
{
    if (__hrt_system.hrt_start) {
		hrt_SystemCall (0x11);
    }
}
inline void hrt_LZ77UnCompVRAM(u32 source, u32 dest)
{
    if (__hrt_system.hrt_start) {
		hrt_SystemCall(0x12);
    }
}
inline void hrt_RLUnCompVram(u32 source, u32 dest)
{
    if (__hrt_system.hrt_start) {
		hrt_SystemCall (0x15);
    }
}
inline void hrt_RLUnCompWram(u32 source, u32 dest)
{
    if (__hrt_system.hrt_start) {
		hrt_SystemCall (0x14);
    }
}

void gbaprint(const char *msg)
{
    asm volatile(
        "mov r2, %0\n"
        "ldr r0, =0xc0ded00d\n"
        "mov r1, #0\n"
        "and r0, r0, r0\n"
        :
        :
        "r" (msg) :
        "r0", "r1", "r2");
}

void hrt_AGBPrint(const char *str, ...)
{
	if(__hrt_system.hrt_start)
	{
		va_list args;
		char str2[200];
		va_start(args, str);
		vsprintf(str2, str, args);
		va_end(args);
		gbaprint(str2);
		gbaprint("\n");
	}
}


void hrt_ColdReset(void)
{
    if (__hrt_system.hrt_start) {
       hrt_SystemCall(0x26);
    }
}

void hrt_VblankIntrWait(void)
{
    if (__hrt_system.hrt_start) {
        hrt_SystemCall(5);
    }
}

void hrt_CpuSet(const void *source, void *dest, u32 mode)
{
	if (__hrt_system.hrt_start)
	{
		hrt_SystemCall(11);
	}
}

void hrt_CpuFastSet(const void *source, void *dest, u32 mode)
{
	if (__hrt_system.hrt_start)
	{
		hrt_SystemCall(12);
	}
}

void hrt_IntrWait(u32 ReturnFlag, u32 IntFlag)
{
	if (__hrt_system.hrt_start)
	{
		hrt_SystemCall(4);
	}
}

void hrt_Halt(void)
{
	if (__hrt_system.hrt_start)
	{
		hrt_SystemCall(2);
	}
}

void hrt_Stop(void)
{
	if (__hrt_system.hrt_start)
	{
		hrt_SystemCall(3);
	}
}

u8 hrt_ConfigRegisterRamReset(u8 clearwram, u8 cleariwram, u8 clearpal, u8 clearvram, u8 clearoam, u8 resetsio, u8 resetsnd, u8 resetall)
{
	if (__hrt_system.hrt_start)
	{
		register u8 temp = 0;
		temp |= (clearwram << 0);
		temp |= (cleariwram << 1);
		temp |= (clearpal << 2);
		temp |= (clearvram << 3);
		temp |= (clearoam << 4);
		temp |= (resetsio << 5);
		temp |= (resetsnd << 6);
		temp |= (resetall << 7);
		return temp;
	}
	return 0;
}

void hrt_SoftReset(void)
{
	if (__hrt_system.hrt_start)
	{
		hrt_SystemCall(0);
	}
}
void hrt_BitUnPack(void* source, void* destination, BUP* data)
{
	if (__hrt_system.hrt_start)
	{
		hrt_SystemCall(16);
	}
}

void hrt_ObjAffineSet(ObjAffineSource *source, void *dest, s32 num, s32 offset)
{
	if (__hrt_system.hrt_start)
	{
		hrt_SystemCall (15);
	}
}

void hrt_BgAffineSet(BGAffineSource *source, BGAffineDest *dest, s32 num)
{
	if (__hrt_system.hrt_start)
	{
		hrt_SystemCall (14);
	}
}

u32 hrt_GetBiosChecksum(void)
{
	if (__hrt_system.hrt_start)
	{
		hrt_SystemCall (0xd);
	}
	return 0;
}