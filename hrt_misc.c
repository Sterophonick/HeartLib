#include "libheart.h"
u8* ExtWRAM = (u8*)0x2000000;
extern int __gettime(void);
extern void sleep12();
u8 __hrt_mmframeonvbl;
u8 __copyoamonvbl;
u8  __hrt_reset;
u8 __hrt_rtc;
extern u8 hrt_start;
extern void __hrt_exittoez4();
extern int	hrt_offsetOAMData;
extern int hrt_offsetOAMPal;
extern int hrt_offsetBGMap;
extern int hrt_offsetBGTile;
extern int hrt_offsetBGPal;

double hrt_Distance(int x1, int y1, int x2, int y2)
{
	if (hrt_start == 1) {
		return sqrt(((x2 - x1) ^ 2) + ((y2 - y1) ^ 2));
	}
	return 0;
}

double hrt_Slope(int x1, int y1, int x2, int y2)
{
	if (hrt_start == 1) {
		return ((y2 - y1) / (x2 - x1));
	}
	return 0;
}

void *hrt_Memcpy(void *dest, const void *src, size_t len)
{
	if (hrt_start == 1) {
		char *d = dest;
		const char *s = src;
		while (len--)
			*d++ = *s++;
		return dest;
	}
	return 0;
}

void hrt_Sleep(double i) {
	if (hrt_start == 1) {
		int x, y;
		int c;
		for (y = 0; y < i; y++) {
			for (x = 0; x < 4000; x++) {
				c = c + 2;    // do something to slow things down
			}
		}
	}
}

void hrt_SleepF(u32 frames) {
	if (hrt_start == 1) {
		int i;
		i = frames;
		while (i--) {
			hrt_VblankIntrWait();
		}
	}
}

double hrt_VolumeCylinder(double r, double h)
{
	if (hrt_start == 1)
	{
		return (PI)*(r * r)*h;
	}
	return 0;
}

double hrt_AreaTriangle(double a, double b)
{
	if (hrt_start == 1)
	{
		return (1 / 2)*(a*b);
	}
	return 0;
}

double hrt_AreaCircle(double r)
{
	if (hrt_start == 1)
	{
		return (PI)*(r * r);
	}
	return 0;
}

void hrt_EnableRTC(void)
{
	__hrt_rtc = 1;
}

void hrt_EnableSoftReset(void)
{
	__hrt_reset = 1;
}

void hrt_DisableSoftReset(void)
{
	__hrt_reset = 0;
}

void hrt_DisableRTC(void)
{
	__hrt_rtc = 0;
}

void hrt_EnablemmFrameonVBL(void)
{
	__hrt_mmframeonvbl = 1;
}
void hrt_DisablemmFrameonVBL(void)
{
	__hrt_mmframeonvbl = 0;
}
void hrt_EnableCopyOAMOnVBL(void)
{
	__copyoamonvbl = 1;
}
void hrt_DisableCopyOAMOnVBL(void)
{
	__copyoamonvbl = 0;
}

int hrt_GetRTCTime(void)
{
	if (hrt_start == 1)
	{
		if (__hrt_rtc == 1)
		{
			return __gettime();
		}
	}
	return 0;
}

int hrt_GetRTCHour_H(void)
{
	if (hrt_start == 1)
	{
		if (__hrt_rtc == 1)
		{
			int timer = hrt_GetRTCTime();
			return ((timer >> 4) & 3);
		}
	}
	return 0;
}
int hrt_GetRTCHour_L(void)
{
	if (hrt_start == 1)
	{
		if (__hrt_rtc == 1)
		{
			int timer = hrt_GetRTCTime();
			return (timer & 15);
		}
	}
	return 0;
}

int hrt_GetRTCMinute_H(void)
{
	if (hrt_start == 1)
	{
		if (__hrt_rtc == 1)
		{
			int timer = hrt_GetRTCTime();
			return ((timer >> 12) & 15);
		}
	}
	return 0;
}
int hrt_GetRTCMinute_L()
{
	if (hrt_start == 1)
	{
		if (__hrt_rtc == 1)
		{
			int timer = hrt_GetRTCTime();
			return ((timer >> 8) & 15);
		}
	}
	return 0;
}

int hrt_GetRTCSecond_H(void)
{
	if (hrt_start == 1)
	{
		if (__hrt_rtc == 1)
		{
			int timer = hrt_GetRTCTime();
			return ((timer >> 20) & 15);
		}
	}
	return 0;
}
int hrt_GetRTCSecond_L(void)
{
	if (hrt_start == 1)
	{
		if (__hrt_rtc == 1)
		{
			int timer = hrt_GetRTCTime();
			return ((timer >> 16) & 15);
		}
	}
	return 0;
}

void hrt_EZ4Exit(void)
{
	if (hrt_start == 1)
	{
		hrt_DMA_Copy(3, (u8*)0x02000000, (u8*)&sprites, 0x3FF, 0x80800000);
		hrt_CopyOAM();
		__hrt_exittoez4();
	}
}
void hrt_Suspend(void)
{
	if (hrt_start == 1)
	{
		sleep12();
	}
}