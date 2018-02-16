#include "libheart.h"

u32 hrt_GetBiosChecksum() {
    if (hrt_start == 1) {
        register u32 result;
#if   defined   ( __thumb__ )
        __asm ("SWI   0x0d\nmov %0,r0\n" :  "=r"(result) :: "r1", "r2", "r3");
#else
        __asm ("SWI   0x0d<<16\nmov %0,r0\n" : "=r"(result) :: "r1", "r2", "r3");
#endif
        return result;
    }
}
void hrt_ColdReset() {
    if (hrt_start == 1) {
        asm volatile("swi 0x26"::);
    }
}
void hrt_SoftReset() {
    if (hrt_start == 1) {
        asm volatile("swi 0x00"::);
    }
}
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
void hrt_PrintToVBA_ARM(char *msg) {
    if (hrt_start == 1) {
        __asm__ volatile (
            "mov r0, %0;"
            "swi 0xFF;"
            : // no output
            : "r" (msg)
            : "r0"
        );
    }
}

void hrt_PrintToVBA_TMB (char *msg) {
    if (hrt_start == 1) {
        __asm__ volatile (
            "mov r0, %0;"
            "swi 0xFF;"
            : // no output
            : "r" (msg)
            : "r0"
        );
    }
}

double hrt_Distance(int x1, int y1, int x2, int y2)
{
	return sqrt(((x2 - x1)^2) + ((y2-y1)^2));
}

double hrt_Slope(int x1, int y1, int x2, int y2)
{
	return ((x2 - x1) / (y2 - y1));
}
