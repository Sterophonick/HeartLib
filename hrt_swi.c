#include "libheart.h"
int __hrt_version(void);
extern gba_system __hrt_system;

inline void hrt_Diff8bitUnFilterWram(u32 source, u32 dest)
{
    if (__hrt_system.hrt_start == 1) {
        asm("mov r0, %0\n"
            "mov r1, %1\n"
            "swi 0x16\n"
            :
            : "r" (source), "r" (dest)
            : "r0", "r1");
    }
}
inline void hrt_Diff8bitUnFilterVram(u32 source, u32 dest)
{
    if (__hrt_system.hrt_start == 1) {
        asm("mov r0, %0\n"
            "mov r1, %1\n"
            "swi 0x17\n"
            :
            : "r" (source), "r" (dest)
            : "r0", "r1");
    }
}

inline void hrt_Diff16bitUnFilter(u32 source, u32 dest)
{
    if (__hrt_system.hrt_start == 1) {
        asm("mov r0, %0\n"
            "mov r1, %1\n"
            "swi 0x18\n"
            :
            : "r" (source), "r" (dest)
            : "r0", "r1");
    }
}
inline void hrt_HuffUnComp(u32 source, u32 dest)
{
    if (__hrt_system.hrt_start == 1) {
        asm("mov r0, %0\n"
            "mov r1, %1\n"
            "swi 0x13\n"
            :
            : "r" (source), "r" (dest)
            : "r0", "r1");
    }
}
inline void hrt_LZ77UnCompWRAM(u32 source, u32 dest)
{
    if (__hrt_system.hrt_start == 1) {
        asm("mov r0, %0\n"
            "mov r1, %1\n"
            "swi 0x11\n"
            :
            : "r" (source), "r" (dest)
            : "r0", "r1");
    }
}
inline void hrt_LZ77UnCompVRAM(u32 source, u32 dest)
{
    if (__hrt_system.hrt_start == 1) {
        asm("mov r0, %0\n"
            "mov r1, %1\n"
            "swi 0x12\n"
            :
            : "r" (source), "r" (dest)
            : "r0", "r1");
    }
}
inline void hrt_RLUnCompVram(u32 source, u32 dest)
{
    if (__hrt_system.hrt_start == 1) {
        asm("mov r0, %0\n"
            "mov r1, %1\n"
            "swi 0x15\n"
            :
            : "r" (source), "r" (dest)
            : "r0", "r1");
    }
}
inline void hrt_RLUnCompWram(u32 source, u32 dest)
{
    if (__hrt_system.hrt_start == 1) {
        asm("mov r0, %0\n"
            "mov r1, %1\n"
            "swi 0x14\n"
            :
            : "r" (source), "r" (dest)
            : "r0", "r1");
    }
}

void hrt_AGBPrint(const char *msg)
{
	if(__hrt_system.hrt_start == 1)
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

void hrt_ColdReset(void)
{
    if (__hrt_system.hrt_start == 1) {
        asm volatile("swi 0x26"::);
    }
}

void hrt_SoftReset(void)
{
    if (__hrt_system.hrt_start == 1) {
        asm volatile("swi 0x00"::);
    }
}

void hrt_VblankIntrWait(void)
{
    if (__hrt_system.hrt_start == 1) {
        asm volatile("swi 0x05"::);
        if (__hrt_system.__copyoamonvbl == 1) {
            hrt_CopyOAM();
        }
        if (__hrt_system.__hrt_reset == 1) {
            if ((keyDown(KEY_A))AND(keyDown(KEY_B))AND(keyDown(KEY_SELECT))AND(keyDown(KEY_START))) {
                asm volatile("swi 0x00"::);
            }
        }
        if (__hrt_system.__hrt_mmframeonvbl == 1) {
            mmFrame();
        }
    }
}

void hrt_CpuSet(const void *source, void *dest, u32 mode)
{
	if (__hrt_system.hrt_start == 1)
	{
		hrt_SystemCall(11);
	}
}

void hrt_CpuFastSet(const void *source, void *dest, u32 mode)
{
	if (__hrt_system.hrt_start == 1)
	{
		hrt_SystemCall(12);
	}
}

void hrt_IntrWait(u32 ReturnFlag, u32 IntFlag)
{
	if (__hrt_system.hrt_start == 1)
	{
		hrt_SystemCall(4);
	}
}

void hrt_Halt(void)
{
	if (__hrt_system.hrt_start == 1)
	{
		hrt_SystemCall(2);
	}
}

void hrt_Stop(void)
{
	if (__hrt_system.hrt_start == 1)
	{
		hrt_SystemCall(3);
	}
}

u8 hrt_ConfigRegisterRamReset(u8 clearwram, u8 cleariwram, u8 clearpal, u8 clearvram, u8 clearoam, u8 resetsio, u8 resetsnd, u8 resetall)
{
	if (__hrt_system.hrt_start == 1)
	{
		u8 temp = 0;
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

void hrt_BitUnPack(void* source, void* destination, BUP* data)
{
	if (__hrt_system.hrt_start == 1)
	{
				hrt_SystemCall(16);
	}
}

void hrt_ObjAffineSet(ObjAffineSource *source, void *dest, s32 num, s32 offset)
{
	hrt_SystemCall (15);
}

void hrt_BgAffineSet(BGAffineSource *source, BGAffineDest *dest, s32 num)
{
	hrt_SystemCall (14);
}