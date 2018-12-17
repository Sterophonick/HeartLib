#include "libheart.h"
u8* EWRAM = (u8*)0x2000000;
u8* BIOS = (u8*)0x00000000;
u8* IWRAM = (u8*)0x03000000;
u8* MMIO = (u8*)0x04000000;
u8* ROM0 = (u8*)0x08000000;
u8* ROM1 = (u8*)0x0A000000;
u8* ROM2 = (u8*)0x0C000000;
extern int __gettime(void);
extern void sleep12();
extern void __hrt_exittoez4();
extern gba_system __hrt_system;

extern char* hrt_lang_crash_msg;
extern char* hrt_lang_crash_func;
extern char* hrt_lang_crash_arg;
extern char* hrt_lang_crash_reset;

void hrt_Assert(char* func, int arg, char* desc)
{
    if (__hrt_system.hrt_start == 1) {
        hrt_SetDSPMode(3, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0);
        hrt_FillScreen(0x0000);
        hrt_PrintOnBitmap(0, 0, (char*)hrt_lang_crash_msg);
        hrt_PrintOnBitmap(0, 8, (char*)hrt_lang_crash_func);
        hrt_PrintOnBitmap(80, 8, (char*)func);
        hrt_PrintOnBitmap(0, 16, "%s%d", (char*)hrt_lang_crash_arg, (int)arg);
        hrt_PrintOnBitmap(0, 24, (char*)desc);
        hrt_PrintOnBitmap(0, 32, (char*)hrt_lang_crash_reset);
		hrt_irqDisable(IRQ_KEYPAD);
        while (1)
		{
			hrt_VblankIntrWait();
		}
    }
}

s32 hrt_Distance(int x1, int y1, int x2, int y2)
{
	if (__hrt_system.hrt_start == 1) {
		return hrt_Sqrt(((x2 - x1) ^ 2) + ((y2 - y1) ^ 2));
	}
	return 0;
}

s32 hrt_Slope(int x1, int y1, int x2, int y2)
{
	if (__hrt_system.hrt_start == 1) {
		return ((y2 - y1) / (x2 - x1));
	}
	return 0;
}

void *hrt_Memcpy(void *dest, const void *src, size_t len)
{
	if (__hrt_system.hrt_start == 1) {
		register char *d = dest;
		register const char *s = src;
		while (len--)
			*d++ = *s++;
		return dest;
	}
	return 0;
}

void hrt_SleepF(u32 frames) {
	if (__hrt_system.hrt_start == 1) {
		register int i;
		i = frames;
		while (i--) {
			hrt_VblankIntrWait();
		}
	}
}

s32 hrt_VolumeCylinder(double r, double h)
{
	if (__hrt_system.hrt_start == 1)
	{
		return (PI)*(r * r)*h;
	}
	return 0;
}

s32 hrt_AreaTriangle(double a, double b)
{
	if (__hrt_system.hrt_start == 1)
	{
		return (1 / 2)*(a*b);
	}
	return 0;
}

s32 hrt_AreaCircle(double r)
{
	if (__hrt_system.hrt_start == 1)
	{
		return (PI)*(r * r);
	}
	return 0;
}

void hrt_EnableRTC(void)
{
	__hrt_system.__hrt_rtc = 1;
}

void hrt_DisableRTC(void)
{
	__hrt_system.__hrt_rtc = 0;
}

int hrt_GetRTCTime(void)
{
	if (__hrt_system.hrt_start == 1)
	{
		if (__hrt_system.__hrt_rtc == 1)
		{
			return __gettime();
		}
	}
	return 0;
}

int hrt_GetRTCHour_H(void)
{
	if (__hrt_system.hrt_start == 1)
	{
		if (__hrt_system.__hrt_rtc == 1)
		{
			register int timer = hrt_GetRTCTime();
			return ((timer >> 4) & 3);
		}
	}
	return 0;
}
int hrt_GetRTCHour_L(void)
{
	if (__hrt_system.hrt_start == 1)
	{
		if (__hrt_system.__hrt_rtc == 1)
		{
			register int timer = hrt_GetRTCTime();
			return (timer & 15);
		}
	}
	return 0;
}

int hrt_GetRTCMinute_H(void)
{
	if (__hrt_system.hrt_start == 1)
	{
		if (__hrt_system.__hrt_rtc == 1)
		{
			int timer = hrt_GetRTCTime();
			return ((timer >> 12) & 15);
		}
	}
	return 0;
}
int hrt_GetRTCMinute_L()
{
	if (__hrt_system.hrt_start == 1)
	{
		if (__hrt_system.__hrt_rtc == 1)
		{
			register int timer = hrt_GetRTCTime();
			return ((timer >> 8) & 15);
		}
	}
	return 0;
}

int hrt_GetRTCSecond_H(void)
{
	if (__hrt_system.hrt_start == 1)
	{
		if (__hrt_system.__hrt_rtc == 1)
		{
			register int timer = hrt_GetRTCTime();
			return ((timer >> 20) & 15);
		}
	}
	return 0;
}
int hrt_GetRTCSecond_L(void)
{
	if (__hrt_system.hrt_start == 1)
	{
		if (__hrt_system.__hrt_rtc == 1)
		{
			register int timer = hrt_GetRTCTime();
			return ((timer >> 16) & 15);
		}
	}
	return 0;
}

void hrt_EZ4Exit(void)
{
	if (__hrt_system.hrt_start == 1)
	{
		hrt_DMA_Copy(3, (u8*)0x02000000, (u8*)&sprites, 0x3FF, 0x80800000);
		hrt_CopyOAM();
		__hrt_exittoez4();
	}
}
void hrt_Suspend(void)
{
	if (__hrt_system.hrt_start == 1)
	{
		sleep12();
	}
}

void hrt_FillMemory(u32* addr, u32 count, u8 value)
{
	register u32 i;
	if (__hrt_system.hrt_start == 1)
	{
		for(i = 0; i < count; i++)
		{
			addr[i] = value;
		}
	}
}

u8 hrt_IsNumberOdd(u32 number)
{
	register u8 ret = 0;
	if(__hrt_system.hrt_start == 1)
	{
		ret = (number % 2 == 1) ? 1 : 0;
	}
	return ret;
}

void hrt_AddByteToMemGroup8(u8* offset, int value, u32 wordcount)
{
	if(__hrt_system.hrt_start == 1)
	{
		for(u32 i = 0; i < wordcount; i++)
		{
			offset[i] = value;
		}
	}
}

void hrt_AddByteToMemGroup16(u16* offset, int value, u32 wordcount)
{
	if(__hrt_system.hrt_start == 1)
	{
		for(u32 i = 0; i < wordcount; i++)
		{
			offset[i] = value;
		}
	}
}

void hrt_AddByteToMemGroup32(u32* offset, int value, u32 wordcount)
{
	if(__hrt_system.hrt_start == 1)
	{
		for(register u32 i = 0; i < wordcount; i++)
		{
			offset[i] = value;
		}
	}
}

u8 hrt_SwapNibbles(u8 n)
{
	if(__hrt_system.hrt_start == 1)
	{
		return ( (n & 0x0F)<<4 | (n & 0xF0)>>4 );
	}
	return 0;
}

void IWRAM_CODE hrt_EZFSetRompage(u16 page)
{
	if(__hrt_system.hrt_start == 1)
	{
		*(vu16 *)0x9fe0000 = 0xd200;
		*(vu16 *)0x8000000 = 0x1500;
		*(vu16 *)0x8020000 = 0xd200;
		*(vu16 *)0x8040000 = 0x1500;
		*(vu16 *)0x9880000 = page;//C4
		*(vu16 *)0x9fc0000 = 0x1500;
	}
}

u16 hrt_SwapBytesInWord(u16 word)
{
	if(__hrt_system.hrt_start == 1)
	{
		return ((word<<8)&0xff00)|((word>>8)&0x00ff);
	}
	return 0;
}

int hrt_SwapWordsInDWord(u32 dword)
{
	if(__hrt_system.hrt_start == 1)
	{
		return (((dword) << 16)&0xffFF0000)|((dword>>16)&0x0000FFff);
	}
	return 0;
}