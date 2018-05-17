#include "libheart.h"
int __hrt_version(void);
extern u8  __hrt_reset;
extern u8 hrt_start;
extern u8 __hrt_mmframeonvbl;
extern u8 __copyoamonvbl;
extern int	hrt_offsetOAMData;
extern int hrt_offsetOAMPal;
extern int hrt_offsetBGMap;
extern int hrt_offsetBGTile;
extern int hrt_offsetBGPal;

inline void hrt_Diff8bitUnFilterWram(u32 source, u32 dest) {
    if (hrt_start == 1) {
        asm("mov r0, %0\n"
            "mov r1, %1\n"
            "swi 0x16\n"
            :
            : "r" (source), "r" (dest)
            : "r0", "r1");
    }
}
inline void hrt_Diff8bitUnFilterVram(u32 source, u32 dest) {
    if (hrt_start == 1) {
        asm("mov r0, %0\n"
            "mov r1, %1\n"
            "swi 0x17\n"
            :
            : "r" (source), "r" (dest)
            : "r0", "r1");
    }
}

inline void hrt_Diff16bitUnFilter(u32 source, u32 dest) {
    if (hrt_start == 1) {
        asm("mov r0, %0\n"
            "mov r1, %1\n"
            "swi 0x18\n"
            :
            : "r" (source), "r" (dest)
            : "r0", "r1");
    }
}
inline void hrt_HuffUnComp(u32 source, u32 dest) {
    if (hrt_start == 1) {
        asm("mov r0, %0\n"
            "mov r1, %1\n"
            "swi 0x13\n"
            :
            : "r" (source), "r" (dest)
            : "r0", "r1");
    }
}
inline void hrt_LZ77UnCompWRAM(u32 source, u32 dest) {
    if (hrt_start == 1) {
        asm("mov r0, %0\n"
            "mov r1, %1\n"
            "swi 0x11\n"
            :
            : "r" (source), "r" (dest)
            : "r0", "r1");
    }
}
inline void hrt_LZ77UnCompVRAM(u32 source, u32 dest) {
    if (hrt_start == 1) {
        asm("mov r0, %0\n"
            "mov r1, %1\n"
            "swi 0x12\n"
            :
            : "r" (source), "r" (dest)
            : "r0", "r1");
    }
}
inline void hrt_RLUnCompVram(u32 source, u32 dest) {
    if (hrt_start == 1) {
        asm("mov r0, %0\n"
            "mov r1, %1\n"
            "swi 0x15\n"
            :
            : "r" (source), "r" (dest)
            : "r0", "r1");
    }
}
inline void hrt_RLUnCompWram(u32 source, u32 dest) {
    if (hrt_start == 1) {
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

void hrt_ColdReset()
{
	if (hrt_start == 1)
	{
		asm volatile("swi 0x26"::);
	}
}

void hrt_SoftReset()
{
	if (hrt_start == 1)
	{
		asm volatile("swi 0x00"::);
	}
}

void hrt_VblankIntrWait()
{
	if (hrt_start == 1)
	{
		asm volatile("swi 0x05"::);
		if (__copyoamonvbl == 1)
		{
			hrt_CopyOAM();
		}
		if (__hrt_reset == 1)
		{
			if ((keyDown(KEY_A))AND(keyDown(KEY_B))AND(keyDown(KEY_SELECT))AND(keyDown(KEY_START))) {
				asm volatile("swi 0x00"::);
			}
		}
		if (__hrt_mmframeonvbl == 1)
		{
			mmFrame();
		}
	}

}

void hrt_RegisterRamReset()
{
	if (hrt_start == 1)
	{
		asm volatile("swi 0x01"::);
	}
}